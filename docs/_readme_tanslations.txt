1. Follow https://docs.readthedocs.io/en/latest/guides/manage-translations-sphinx.html:
   - pip install sphinx-build sphinx-rtd-theme sphinx-intl

2. Create or update translatable files
   - in a shell, go to atmoswing-user-manual/docs and run:
   - sphinx-build -b gettext -t fordocs . _build/gettext
   - sphinx-intl update -p _build/gettext -l fr

3. Use https://poedit.net/download
