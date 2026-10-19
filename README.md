# S51DG HAM News

Statični slovenski HAM novičarski portal, posodobljen s pomočjo RSS, OpenAI API in GitHub Actions.

## Priprava
1. Repository secret `OPENAI_API_KEY` v Settings → Secrets and variables → Actions.
2. V Settings → Actions → General nastavi Workflow permissions na Read and write.
3. Po potrebi ročno sproži Actions → HAM news updater → Run workflow.
4. Objavi javne datoteke `index.html`, `assets/`, `archive/`, `news/` v Document Root cPanel poddomene. **Ne objavljaj `.git`, `.github`, `scripts` ali datotek z API ključi.**

## cPanel
Priporočeno: javni repo kloniraj v `~/repos/s51dg-ham-news` (zunaj Document Root) in z `rsync` kopiraj samo javne datoteke. Primer ukazov je v `deploy-cpanel.sh`.

GitHub Actions se zažene vsak dan in ob sobotah izdela arhiv. API se zaračunava ločeno od ChatGPT. Če OpenAI ni na voljo, je mogoč prikaz izvirnih RSS opisov. Novice so informativne; preverjaj vire.