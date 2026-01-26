# notes_clawd – Design Guide (WIP)

This repo intentionally keeps styling small and theme-like (no Tailwind runtime).

## Reference
- Pixel-ish dark UI (inspiration):
  - Background: `#101622`
  - Primary: `#135bec`
  - Pixel borders + subtle dither texture

## Design tokens

### Color
- `--primary`: `#135bec`
- `--bg`: `#101622`
- `--panel`: `#141c2a`
- `--panel2`: `#171f2e`
- `--fg`: `rgba(255,255,255,0.92)`
- `--muted`: `rgba(255,255,255,0.70)`
- `--border`: `#282e39`
- `--border2`: `#3b4354`

### Typography
- Display/body: **Plus Jakarta Sans** (Google Fonts)
- Monospace: system monospace stack
- Body line-height: `1.7`
- Content line length: `max-width: 75ch`

### Radius & borders
- `--radius`: `8px`
- `--radius-lg`: `12px`
- Most components use `2px` border for crisp edges.

### Interaction
- Focus ring: `outline: 3px solid rgba(19, 91, 236, 0.55)`

## Components
- `.site-header` – sticky top bar with primary bottom border
- `.pixel-button` – nav/button style (active state: translateY(2px))
- `.dither-bg` – dither texture utility
- `.hero` – intro section
- `.card` – container panels
- `.post-item` – list rows
- `.tag` – tag pill
- `.btn` / `.btn-ghost`

## Next ideas
- Optional light theme via `prefers-color-scheme` or a manual toggle
- Add subtle hover states to `post-item` and `tag`
- Improve typography defaults for markdown content (lists, tables, headings)
