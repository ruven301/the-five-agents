---
title: yuval.md — סוכן התמונות
file: .claude/agents/yuval.md
owner: יובל
tags:
  - documentation
  - yuval
  - agent
---

# yuval.md — הגדרת יובל, מעצב התמונות

> [!info] קובץ בפרויקט
> **נתיב:** `.claude/agents/yuval.md`
> **משויך ל:** יובל (מעצב התמונות)
> **סוג:** הגדרת סוכן-משנה (sub-agent)

## מה הקובץ עושה
מגדיר את **יובל** — שאחראי על כל התוכן הוויזואלי. לוקח בקשת תמונה, מחלץ סגנון
מ-`yuval/reference/`, מנסח prompt, ויוצר PNG דרך הסקיל [[skill-gpt-image-gen]].
המטרה העליונה שלו: **עקביות ויזואלית** בין כל התמונות בפרויקט.

## פרטים עיקריים
- **כלים:** Read, Write, Bash, Glob (יש Bash — כי הוא מריץ את קריאת ה-API).
- **Flow:** סריקת [[yuval-reference]] → בחירת רכיבי סגנון → ניסוח prompt → יצירה דרך
  [[skill-gpt-image-gen]] → שמירה ב-[[yuval-outputs]] → אימות `size > 0` → דיווח לראובן.
- **תוצר כפול:** `<date>-<slug>.png` + קובץ-אחות `.txt` עם ה-prompt המלא (לאיטרציה).
- **אילוצים:** לא משנה את שם המודל (`gpt-image-2` בלבד), לא כותב טקסט (זה של יעל),
  לא מפעיל סוכנים אחרים.
- **reference ריק זה תקין** — עובד עם ברירת מחדל ויזואלית נקייה עד שיתווספו דוגמאות.

## קבצים קשורים
- [[skill-gpt-image-gen]] — הסקיל היחיד ליצירת תמונה
- [[yuval-reference]] — מקור הסגנון
- [[yuval-outputs]] — יעד התמונות
- [[yuval-gen-script]] — סקריפט עזר ליצירה ב-PowerShell
- [[puss-in-boots-prompt]] — דוגמה לתוצר
- [[yael-agent]] — מקור בקשות התמונה (placeholders)
