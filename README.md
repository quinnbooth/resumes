# Resume

My resume, in LaTeX. Every push to `main` builds it and publishes it to

**https://quinnbooth.github.io/resumes/Quinn_Booth_Resume.pdf**

which is where [my website](https://quinnbooth.github.io) links (and
`quinnbooth.github.io/resume` forwards).

## Editing

Everything is in [`resume.tex`](resume.tex). The building blocks (`\role`,
`\subrole`, `bullets`, `\sectionhead`) are defined at the top.

**In VS Code:** install the recommended LaTeX Workshop extension. Saving
rebuilds, and *View LaTeX PDF* (Ctrl+Alt+V) opens a live preview in a tab.

**From a terminal:**

```sh
latexmk          # build once -> build/resume.pdf
latexmk -pvc     # rebuild on every save and keep the PDF open
latexmk -C       # clean the build folder
```

It only uses packages that ship with every TeX install, so a minimal TinyTeX
builds it the same way GitHub does.

## Publishing

Push to `main`. The *Publish resume* workflow compiles it and deploys to GitHub
Pages in a couple of minutes. Each run also attaches the PDF as an artifact,
so you can grab a build without deploying (*Actions → Run workflow* rebuilds
on demand).

One-time setup: *Settings → Pages → Source: GitHub Actions*.

## Checklist before pushing

- Still one page (`latexmk` prints `Output written on build/resume.pdf (1 page…`).
- Dates and titles match LinkedIn.
- No phone number or street address: the PDF is public.
