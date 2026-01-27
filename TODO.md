# TODO (notes_clawd)

## Branding / Naming
- [ ] Update site **thumbnail** (social preview image / og:image).  
  - Notes: decide the new image asset + where it’s referenced (Hugo params / meta tags / static file path).
- [ ] Rename GitHub repo: `notes_clawd` → `notes_deploy`.
- [ ] Rename site title to **"blogs"**.

## UX / UI
- [ ] Make post cards clickable as a whole block (not only the link text) in:
  - `tags/`
  - `posts/`
  - `home/`
- [ ] Unify tags main block styling: before entering an article, keep navigation pages consistent (same background + text color), instead of inheriting per-article colors.
- [ ] Add cover image support for posts:
  - If a post has a cover image → show a card with cover.
  - If not → keep the current single-line post row.
  - Layout can be mixed; card and row sizes may differ (need a reasonable grid/list strategy).
- [ ] Improve **previous/next** readability (colors/contrast) — investigate and fix.
- [ ] Make date/meta text (e.g. `2026-01-26`) clickable as part of the post row (currently only link text works).
- [ ] Mobile layout: in home/posts/tags lists, move tags under the date, and limit tags to max 3; fix overflow on small screens.
- [ ] Refactor **Home** and **Posts** pages to match the **Tags** page layout style (sidebar + main block style).

