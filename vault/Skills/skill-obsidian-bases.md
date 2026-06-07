---
title: obsidian-bases — סקיל Bases
file: .claude/skills/obsidian-bases/SKILL.md
owner: כל הצוות (תצוגות נתונים)
tags:
  - documentation
  - skill
  - obsidian
---

# obsidian-bases — Obsidian Bases (.base)

> [!info] קובץ בפרויקט
> **נתיב:** `.claude/skills/obsidian-bases/SKILL.md`
> **משויך ל:** כל הצוות — הותקן מ-`ZeremItay/the-5-agents-obsidian`
> **סוג:** Skill (יכולת מותאמת)

## מה הקובץ עושה
מדריך ליצירה ועריכה של קבצי Obsidian Bases (`.base`) — תצוגות דמויות-מסד-נתונים של
notes: views (table/cards/list/map), filters, formulas ו-summaries. שימושי להפיכת
ה-vault לתצוגות דינמיות (למשל "כל הקבצים של יעל" או "כל ה-skills").

## פרטים עיקריים
- קבצי `.base` הם YAML תקני עם `filters`, `formulas`, `properties`, `views`.
- **filters:** מבנה `and`/`or`/`not` רקורסיבי; אופרטורים `==`, `!=`, `>`, `hasTag()`.
- **formulas:** חישובים על properties; הערה חשובה על טיפוס Duration (`.days` לפני `.round()`).
- **views:** table/cards/list/map עם `order`, `groupBy`, `summaries`.

## קבצים קשורים
- [[skill-obsidian-markdown]] — תחביר ה-notes שעליהם ה-Bases פועלים
- [[skill-obsidian-vault-workflow]] — מבנה ה-vault
