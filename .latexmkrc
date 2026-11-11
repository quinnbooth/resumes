# Build settings, picked up by `latexmk` here and by the GitHub workflow.
$pdf_mode = 1;          # pdflatex
$out_dir = 'build';     # keep aux files out of the way
@default_files = ('resume.tex');
