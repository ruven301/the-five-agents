---
title: obsidian-vault-workflow — סקיל ה-vault
file: .claude/skills/obsidian-vault-workflow/SKILL.md
owner: כל הצוות (פרוטוקול זיכרון)
tags:
  - documentation
  - skill
  - obsidian
---

# obsidian-vault-workflow — פרוטוקול ה-vault

> [!info] קובץ בפרויקט
> **נתיב:** `.claude/skills/obsidian-vault-workflow/SKILL.md`
> **משויך ל:** כל הצוות (פרוטוקול חוצה-סוכנים) — הותקן מ-`ZeremItay/the-5-agents-obsidian`
> **סוג:** Skill (יכולת מותאמת)

## מה הקובץ עושה
מגדיר פרוטוקול חובה לקריאה/כתיבה אל ה-vault שב-`vault/` — הזיכרון ארוך-הטווח של
הפרויקט. ארגון של קובץ-אחד-לנושא עם Overview + Session Log מתוארך. הסקיל הזה הוא
שמכתיב את המבנה של כל ה-vault הזה (כולל ה-_index.md ו-[[wikilinks]]).

## פרטים עיקריים
- **Phase 1 (לפני משימה):** זיהוי נושא, איתור topic file (exact/close match), קריאה
  מלאה, קריאת Meeting Notes אחרונים.
- **Phase 2 (אחרי משימה):** בחירת תיקייה, עדכון Overview, עדכון Open Questions, הוספת
  entry מתוארך עם status tag, wikilinks חובה, ואימות read-back.
- תיקיות קונבנציה: `Meeting Notes/`, `Content Briefs/`, `Publishing Log/`,
  `Brand Guidelines/` — כל אחת עם `_index.md`.
- **הוראת המשתמש:** להפעיל את הסקיל הזה בתחילת כל סשן / קבלת פקודה.

## קבצים קשורים
- [[skill-obsidian-markdown]] — תחביר ה-Markdown של אובסידיאן
- [[skill-obsidian-bases]] — קבצי `.base` של אובסידיאן
- [[project-documentation-vault]] — סשן שבו נבנה ה-vault לפי הסקיל הזה
- [[claude-md]] — הוראות הפרויקט
