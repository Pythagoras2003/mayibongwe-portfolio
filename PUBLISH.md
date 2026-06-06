Publishing this portfolio to GitHub Pages

Option A — Recommended (uses GitHub CLI `gh`)

1. Install Git and GitHub CLI (`gh`).
   - Windows: https://git-scm.com/ and https://cli.github.com/

2. From PowerShell run:

```powershell
cd "c:\wamp64\www\Auction system\portfolio_mayibongwe"
# initialize repo
git init
git branch -M main
git add .
git commit -m "Initial portfolio"

# login to GitHub (interactive)
gh auth login

# create remote repo and push (replace repo name if you like)
gh repo create mayibongwe-portfolio --public --source=. --remote=origin --push

# After push, open the repo page and enable Pages (if not automatically configured).
# The site will be available at: https://<your-github-username>.github.io/mayibongwe-portfolio/
```

Option B — Using standard Git + GitHub website

```bash
cd "c:/wamp64/www/Auction system/portfolio_mayibongwe"
git init
git branch -M main
git add .
git commit -m "Initial portfolio"
# Create an empty repository on GitHub (via web UI) named 'mayibongwe-portfolio'
# Then add remote and push:
git remote add origin https://github.com/<your-username>/mayibongwe-portfolio.git
git push -u origin main
```

Then go to GitHub -> Repository -> Settings -> Pages and select `main` branch, root `/` as the source, Save. The published URL appears there.

Alternative quick hosts
- Netlify: https://app.netlify.com/drop (drag-and-drop the `portfolio_mayibongwe` folder)
- Vercel: import the GitHub repo and deploy

Notes
- Edit `index.html` to add your real email and profile links before publishing.
- If you want the repo created under a specific GitHub organization or username, change the repo name or use `gh repo create <owner>/<repo>`.
