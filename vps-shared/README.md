# Preserved VPS shared workflow files

Captured from `/home/ai-dev/scripts` and `/home/ai-dev/templates` on 2026-10-12 (Asia/Tokyo).

The shared `new-project.sh` differs from the newer repository-level `scripts/new-project.sh`. This directory preserves the deployed standalone version without replacing the current implementation. The three templates match the repository templates at commit `3a3db445ec097362a15ae83c3273a79bad40e87d`.

The archived script uses the absolute base path `/home/ai-dev`. Restore the shared script and templates to those locations if recreating that layout. Validation used `bash -n`; the script was not executed during preservation. No runtime credentials or database data are included.
