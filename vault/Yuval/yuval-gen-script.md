---
title: _gen.ps1 — סקריפט יצירת תמונה
file: yuval/outputs/_gen.ps1
owner: יובל
tags:
  - documentation
  - yuval
  - script
---

# _gen.ps1 — סקריפט PowerShell ליצירת תמונה

> [!info] קובץ בפרויקט
> **נתיב:** `yuval/outputs/_gen.ps1`
> **משויך ל:** יובל
> **סוג:** סקריפט עזר (PowerShell)

## מה הקובץ עושה
סקריפט PowerShell עצמאי שמייצר תמונה דרך OpenAI Images API — מימוש קונקרטי של הלוגיקה
שב-[[skill-gpt-image-gen]], מותאם לסביבת Windows/PowerShell של המכונה הזו. נוצר כדי
לייצר את הדוגמה [[puss-in-boots-prompt]].

## פרטים עיקריים
- טוען את `.env` ידנית ומוודא ש-`OPENAI_API_KEY` קיים (אחרת `throw "KEY_MISSING"`).
- קורא prompt מקובץ `.txt`, בונה payload עם `model = "gpt-image-2"`, `quality = "high"`.
- שולח עם `Invoke-RestMethod`, מטפל בשגיאות (מדפיס status + body), מפענח base64 וכותב PNG.
- ⚠️ נתיב ה-root מקודד-קשיח (`C:/Users/Gal/...`) ושם קובץ ה-prompt מקודד בתוכו — זהו
  סקריפט ad-hoc לדוגמה הספציפית, לא כלי גנרי.

## קבצים קשורים
- [[skill-gpt-image-gen]] — הסקיל הרשמי (curl+python) שזה מקביל לו
- [[puss-in-boots-prompt]] — ה-prompt שהסקריפט קרא
- [[env-example]] — מקור ה-`OPENAI_API_KEY`
- [[yuval-agent]] — הסוכן שמפעיל יצירת תמונות
