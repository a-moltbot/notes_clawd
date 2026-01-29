# notes_clawd (site repo)

A Hugo-powered notes site deployed to **GitHub Pages** via **GitHub Actions**.

This repo is intended to hold **site code / layouts / static assets / config**.

Content (Markdown) lives in a separate repo: **`notes_content`**.

## How it works (2-repo pipeline)

- You push Markdown to `notes_content`
- `notes_content` triggers this repo via `repository_dispatch`
- This repo checks out `notes_content`, syncs `notes_content/content/` into this repo’s `content/`, then builds + deploys

## Local preview

1) Sync content from the content repo:

```bash
./scripts/sync_content.sh
```

2) Run Hugo:

```bash
hugo server -D
```

## Deploy

- **Recommended:** push to `notes_content/main` (auto-triggers build)
- You can also manually run this repo’s workflow from GitHub Actions (`workflow_dispatch`).