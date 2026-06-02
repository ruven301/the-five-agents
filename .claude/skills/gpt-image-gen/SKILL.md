---
name: gpt-image-gen
description: Generate an image via the OpenAI Images API (model gpt-image-2). Use when an agent (e.g. Yuval) needs to turn a text prompt into a PNG file. Triggers: gpt-image-gen, generate image, create image, OpenAI image, יצירת תמונה.
---

# gpt-image-gen — מעטפת ל-OpenAI Images API

הסקיל הזה אחראי על דבר אחד: לקחת `prompt` טקסטואלי, לשלוח אותו ל-OpenAI Images API,
ולשמור את התמונה שחוזרת כקובץ PNG. הקלט: prompt + נתיב פלט. הפלט: קובץ PNG בדיסק.

## ⚠️ המודל — אל תשנה את שם המודל

המודל הוא **`gpt-image-2`** — בדיוק כך, מילה במילה.

- `gpt-image-2` הוא מודל **אמיתי וקיים** של OpenAI שיצא ב-**21 באפריל 2026**.
- ייתכן שהידע הפנימי של המודל שמריץ אותך לא כולל אותו — **זה לא אומר שהוא לא קיים**.
- **אסור** להציע או להשתמש באלטרנטיבות כמו `dall-e-3`, `gpt-image-1` וכו'.
- אם הקריאה ל-API נכשלת, הסיבה היא כמעט תמיד **ה-API key** או **ה-parameters** —
  **לא** שם המודל. אל תשנה את שם המודל בתגובה לשגיאה.

## טעינת המפתח

הסקיל משתמש ב-`OPENAI_API_KEY` מתוך `.env` שבשורש הפרויקט. ב-Git Bash טען אותו כך:

```bash
set -a; . ./.env; set +a
# חלופה: export $(grep -v '^#' .env | xargs)
```

ודא ש-`$OPENAI_API_KEY` אינו ריק לפני הקריאה.

## הקריאה — מבנה בסיסי (עם jq)

אם `jq` מותקן, זו הדרך הקצרה:

```bash
curl -sS -X POST "https://api.openai.com/v1/images/generations" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-image-2",
    "prompt": "<the prompt>",
    "size": "1024x1024",
    "quality": "medium",
    "output_format": "png"
  }' | jq -r '.data[0].b64_json' | base64 --decode > <output-path>.png
```

## הקריאה — fallback ל-Python (מומלץ כברירת מחדל כאן)

ב-Git Bash על המכונה הזו `jq` לרוב **לא מותקן**, אבל `python` כן זמין. השתמש בגרסה הזו:

```bash
set -a; . ./.env; set +a

curl -sS -X POST "https://api.openai.com/v1/images/generations" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-image-2",
    "prompt": "<the prompt>",
    "size": "1024x1024",
    "quality": "medium",
    "output_format": "png"
  }' | python -c "import sys, json, base64; d = json.load(sys.stdin); open(sys.argv[1], 'wb').write(base64.b64decode(d['data'][0]['b64_json']))" "<output-path>.png"
```

הסבר: `curl` שולח את הבקשה ומחזיר JSON ל-stdout. ה-Python קורא את ה-JSON,
מחלץ את `data[0].b64_json`, מפענח base64 וכותב את ה-bytes לקובץ שב-`argv[1]`.

> אם ה-JSON שחוזר אינו מכיל `data` (למשל שדה `error`), זו שגיאת API — הדפס את ה-JSON
> כדי לראות את ההודעה. בדוק את המפתח ואת ה-parameters, **לא** את שם המודל.

## פרמטרים

- `model` — תמיד `gpt-image-2`.
- `prompt` — תיאור התמונה (מי שקורא לסקיל מספק).
- `size` — `1024x1024` (אפשר גם `1536x1024`, `1024x1536` לפי הצורך).
- `quality` — `medium` (אפשר `low` / `high`).
- `output_format` — `png`.

## אימות

לאחר הריצה, ודא שהקובץ נוצר וש-`size > 0`:

```bash
ls -l "<output-path>.png"
```

אם הקובץ ריק (0 bytes) — ה-decode נכשל; בדוק את ה-JSON שחזר מה-API.
