# Vault — Map of Content

הזיכרון ארוך-הטווח של פרויקט **the-five-agents**. כל קובץ בפרויקט מתועד כאן בקובץ
`.md` ייעודי — מה הוא עושה, למי הוא משויך, ואילו קבצים קשורים אליו. המבנה מאורגן לפי
**בעלות** (חבר צוות), ובנוי לפי הסקיל [[skill-obsidian-vault-workflow]].

> [!note] היקף
> מתועדים כאן **הקבצים שלנו** בלבד (ראובן, יעל, יובל, חן, הסקילים המותאמים, תיקיות
> העבודה). תוסף ה-superpowers הצד-שלישי שתחת `.claude/skills/` לא מתועד קובץ-קובץ.

## הצוות

- **ראובן** — מנכ"ל / orchestrator → [[Reuven/_index|אינדקס ראובן]]
- **חן** — חוקרת הרשת → [[Chen/_index|אינדקס חן]]
- **יעל** — כותבת התוכן → [[Yael/_index|אינדקס יעל]]
- **יובל** — מעצב התמונות → [[Yuval/_index|אינדקס יובל]]
- **סקילים מותאמים** → [[Skills/_index|אינדקס סקילים]]

## שרשרת התוכן (זרימה)

[[chen-agent|חן]] מוצאת מקור ושומרת ב-[[content-dir|Content/]] → ראובן מחליט →
[[yael-agent|יעל]] משכתבת ל-[[output-dir|Output/]] ומשאירה placeholders →
[[yuval-agent|יובל]] ממלא תמונות דרך [[skill-gpt-image-gen]] → שילוב סופי.

## כל הקבצים המתועדים

### ראובן
- [[claude-md]] · [[env-example]]

### חן
- [[chen-agent]] · [[chen-searches-memory]] · [[content-dir]] · [[content-automation-trends]] · [[content-crm]]

### יעל
- [[yael-agent]] · [[yael-style-guide]] · [[yael-reference]] · [[output-dir]]

### יובל
- [[yuval-agent]] · [[yuval-reference]] · [[yuval-outputs]] · [[yuval-gen-script]] · [[puss-in-boots-prompt]]

### סקילים מותאמים
- [[skill-gpt-image-gen]] · [[skill-obsidian-vault-workflow]] · [[skill-obsidian-markdown]] · [[skill-obsidian-bases]]

## Meeting Notes
- [[project-documentation-vault]] — סשן בניית ה-vault הזה

## Content Briefs
- [[world-cup-2026-article]] — מאמר מונדיאל 2026 שהופק בשרשרת המלאה (חן→יעל→יובל)
