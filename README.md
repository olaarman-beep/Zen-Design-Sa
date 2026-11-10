# Zen Design website

Static, bilingual (Arabic/English) site. No build step. The site is the `site/` folder.

## Option A: GitHub Pages (simplest)
1. Create a repo, push this folder to `main`.
2. Repo > Settings > Pages > Source: **GitHub Actions**. The workflow in `.github/workflows/pages.yml` deploys on every push.
3. Custom domain: Settings > Pages > Custom domain. Add DNS records at the domain registrar as GitHub's Pages docs describe.

## Option B: Google Cloud Shell + Firebase Hosting
1. Open Cloud Shell, clone the repo, `cd` into it.
2. `bash deploy-cloudshell.sh YOUR_GCP_PROJECT_ID`
3. Firebase console > Hosting > Add custom domain, then add the DNS records it shows.

## Before pointing zendesignsa.com at this site
The domain may already serve the current company website. Pointing DNS here replaces it. Confirm first, and lower the DNS TTL beforehand so you can roll back quickly.

## Content notes
- Client names and project locations are intentionally not published.
- Articles are general guidance. Saudi regulatory points (SABER, customs, VAT, electrical, energy labels) change; the sources are listed under each article and should be re-checked before relying on them.
- Fonts load from Google Fonts. Images are in `site/img`.
