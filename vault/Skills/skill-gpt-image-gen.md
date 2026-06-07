---
title: gpt-image-gen — סקיל יצירת תמונה
file: .claude/skills/gpt-image-gen/SKILL.md
owner: יובל (משתמש) / ראובן (תשתית)
tags:
  - documentation
  - skill
  - yuval
---

# gpt-image-gen — מעטפת ל-OpenAI Images API

> [!info] קובץ בפרויקט
> **נתיב:** `.claude/skills/gpt-image-gen/SKILL.md`
> **משויך ל:** יובל (הצרכן העיקרי) — סקיל מותאם של הפרויקט
> **סוג:** Skill (יכולת מותאמת)

## מה הקובץ עושה
סקיל ייעודי עם אחריות אחת: לקחת `prompt` טקסטואלי, לשלוח ל-OpenAI Images API, ולשמור
את התמונה כ-PNG. הקלט: prompt + נתיב פלט. הפלט: קובץ PNG בדיסק. זהו הכלי היחיד שדרכו
[[yuval-agent|יובל]] יוצר תמונות.

## פרטים עיקריים
- **מודל:** `gpt-image-2` בלבד — הסקיל מדגיש מפורשות לא לשנות את שם המודל גם אם נראה
  לא מוכר; כשל קריאה הוא כמעט תמיד עניין של מפתח/parameters.
- טוען `OPENAI_API_KEY` מ-`.env` (ראה [[env-example]]).
- שתי דרכי קריאה: `curl | jq` (אם jq מותקן) או fallback ל-`curl | python` (מומלץ
  במכונה הזו, כי jq לרוב חסר).
- פרמטרים: `size` (1024x1024 וכו'), `quality` (low/medium/high), `output_format=png`.
- אימות: לוודא ש-`size > 0`; אם 0 bytes — ה-decode נכשל, לבדוק את ה-JSON.

## קבצים קשורים
- [[yuval-agent]] — הסוכן שמפעיל את הסקיל
- [[yuval-gen-script]] — מימוש PowerShell מקביל
- [[env-example]] — מקור מפתח ה-API
- [[puss-in-boots-prompt]] — דוגמה לתוצר
