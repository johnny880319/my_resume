# Tsung-Yi Ma - Resume

Senior AI Engineer | Taipei, Taiwan
Email: johnny880319@gmail.com
LinkedIn: https://www.linkedin.com/in/tsung-yi-ma-44bb6a268

## Latest Resume

Please click the link below to view or download the current version of my resume (default/general-purpose variant):

- [resume.pdf](./resume.pdf)

## Setup

To edit and compile this resume locally you need a XeLaTeX toolchain plus a VSCode extension.

**1. Install TeX Live (Ubuntu/WSL):**

```bash
sudo apt update
sudo apt install -y texlive-xetex texlive-latex-recommended texlive-latex-extra texlive-fonts-extra texlive-lang-chinese fonts-noto-cjk latexmk
```

| Package | Why it's needed |
|---|---|
| `texlive-xetex` | The `xelatex` engine itself |
| `texlive-latex-recommended` / `texlive-latex-extra` | `titlesec`, `enumitem`, `fancyhdr`, `tabularx`, etc. |
| `texlive-fonts-extra` | `fontawesome5` (phone/email/GitHub icons) |
| `texlive-lang-chinese` | `xeCJK` (Chinese typesetting) |
| `fonts-noto-cjk` | The `Noto Sans CJK TC` font used via `\setCJKmainfont` |
| `latexmk` | Build tool VSCode's LaTeX Workshop invokes |

This is ~1GB (not the full `texlive-full` distribution) and doesn't require a restart.

**2. Install the VSCode extension:**

- [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) (`James-Yu.latex-workshop`) — provides build, syntax highlighting, and PDF preview. Settings are already configured in `.vscode/settings.json` (autobuild on save, xelatex recipe, PDF opens in a tab).

```bash
code --install-extension James-Yu.latex-workshop
```

**3. Compile:** open any `variants/*/main.tex` and save (autobuild) or press `Ctrl+Alt+B`. The PDF preview opens automatically in a new tab.

## Resume Variants

The resume source is split into shared content (`common/`) and per-audience entry points (`variants/`), so updating a shared fact (e.g. a new role or award) only needs to happen once:

```
common/           # shared LaTeX snippets (preamble, contact, experience bullets, education, projects, skills)
variants/
  genai/main.tex        # general-purpose / GenAI-and-AI-infra focused (default, matches resume.pdf)
  optimization/main.tex # EDA / semiconductor-equipment focused (leads with MIP/LP, CPLEX, SCIP)
build/            # compiled PDFs, gitignored
```

To compile all variants:

```
./build.sh
```

This produces `build/genai.pdf` and `build/optimization.pdf`. When ready to publish a new default resume, copy the desired variant's PDF over `resume.pdf` and commit it:

```
cp build/genai.pdf resume.pdf
```

## Credentials

Supporting documents, including academic transcripts, degrees, and award certificates, are located in the [credentials/](./credentials/) folder.

**Highlights:**

- 2025 ASUS Global Role Model Award
- The Phi Tau Phi Scholastic Honor Society Certificate
- Master's & Bachelor's Degrees (National Taiwan University, Mathematics)
- Academic Transcripts
- NCTS Research & Symposium Certificates
- High School Class of Science & Competition Awards (CKHS)
