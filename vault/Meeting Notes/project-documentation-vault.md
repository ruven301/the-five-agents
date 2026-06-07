# Project Documentation Vault

## Overview
הקמת ה-vault שמתעד את כל קבצי הפרויקט שלנו — קובץ `.md` אחד לכל קובץ, המתאר מה הקובץ
עושה, למי הוא משויך (ראובן / יעל / יובל / חן / סקילים), ואילו קבצים קשורים אליו דרך
`[[wikilinks]]`. ה-vault מאורגן לפי בעלות (תיקייה לכל חבר צוות + תיקיית Skills), עם
`_index.md` בכל תיקייה ו-[[_index|Map of Content]] ראשי. נבנה לפי הסקיל
[[skill-obsidian-vault-workflow]].

## Open Questions
- האם לתעד בעתיד גם את קובצי תוסף ה-superpowers הצד-שלישי (הוחלט בסשן הזה: לא — רק הקבצים שלנו).
- [[yael-style-guide]] עדיין תבנית-שלד ריקה; כשימולא — לעדכן את ה-note בהתאם.
- קבצי `references/` של [[skill-obsidian-markdown]] לא קיימים בריפו המקור; לשקול לכתוב אותם ידנית.

## Session Log

### 2026-06-02 — הקמת vault התיעוד [shipped]
- **What was done:** הותקנו 3 סקילים מ-`ZeremItay/the-5-agents-obsidian` (vault-workflow,
  markdown, bases). נסרקו כל קבצי הפרויקט שלנו ונכתבו 20 קובצי תיעוד (קובץ-לכל-קובץ)
  ב-`vault/`, מאורגנים ב-5 תיקיות לפי בעלות + `Meeting Notes/`. נוצרו `_index.md` בכל
  תיקייה ו-Map of Content ראשי.
- **Decisions:** ארגון לפי **בעלות** ולא לפי סוג קובץ — כדי לשרת ישירות את דרישת
  "למי הוא משויך". היקף צומצם לקבצים שלנו בלבד (לא תוסף superpowers) לפי בחירת המשתמש,
  כי תיעוד קובץ-קובץ של תוסף חיצוני הוא בעל ערך נמוך.
- **Notes / Caveats:** שמות ה-notes הם basenames ייחודיים כדי ש-wikilinks יפתרו נכון
  בין תיקיות. המשתמש ביקש שהסקיל [[skill-obsidian-vault-workflow]] יופעל בתחילת כל
  סשן / קבלת פקודה.
- **Related:** [[claude-md]], [[chen-agent]], [[yael-agent]], [[yuval-agent]],
  [[skill-obsidian-vault-workflow]], [[_index]]
