---
title: .env.example — תבנית משתני סביבה
file: .env.example
owner: ראובן
tags:
  - documentation
  - reuven
  - config
---

# .env.example — תבנית משתני סביבה

> [!info] קובץ בפרויקט
> **נתיב:** `.env.example`
> **משויך ל:** ראובן (תשתית / config)
> **סוג:** תבנית קונפיגורציה (מועתקת ל-`.env` שאינו נכנס ל-git)

## מה הקובץ עושה
תבנית לדוגמה של קובץ `.env`. מפרטת אילו מפתחות ומשתני סביבה המערכת צריכה. המשתמש
מעתיק אותה ל-`.env` (שמוחרג ב-`.gitignore`) וממלא ערכים אמיתיים.

## פרטים עיקריים
- `ANTHROPIC_API_KEY` — מפתח ל-Claude API.
- `OPENAI_API_KEY` — מפתח ל-OpenAI, **בשימוש ע"י הסקיל [[skill-gpt-image-gen]] / יובל**
  ליצירת תמונות.
- `CLAUDE_MODEL` (ברירת מחדל `claude-opus-4-8`), `CLAUDE_MAX_TOKENS`.
- `TEAM_NAME` (`the-five-agents`), `LOG_LEVEL`.

> [!warning] אבטחה
> הקובץ האמיתי `.env` מכיל סודות ואסור שייכנס ל-git. רק `.env.example` (בלי ערכים)
> נשמר במאגר.

## קבצים קשורים
- [[skill-gpt-image-gen]] — טוען את `OPENAI_API_KEY` מ-`.env`
- [[yuval-gen-script]] — סקריפט PowerShell שגם טוען את `.env`
- [[claude-md]] — הוראות הפרויקט הראשיות
