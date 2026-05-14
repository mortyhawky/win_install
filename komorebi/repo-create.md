#### Create Repo win_komorebi.git using pwsh 7

```ps1
cd A:\win\01install\komorebi
git config --global --add safe.directory A:\win\01install\komorebi
git init
git status
git add -Av
git commit -m "$(date)"
```

```ps1
gh auth status
gh auth login
```
    > GitHub.com  
    > HTTPS  
    > [Enter]
    > Login with a web browser
        Copy 'one-time code' : mark with mouse then  Ctrl+Shift+C
        [Enter] to open web browser
        Ctrl+Shift+V to paste 'one-time-code'

```ps1
gh auth status
gh repo create win_komorebi --public --source=. --remote=origin
git push -u origin main
```
