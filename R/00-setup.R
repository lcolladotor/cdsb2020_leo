## Crea un archivo de setup
usethis::use_r('00-setup.R')

## Crea el repositorio de Git
usethis::use_git()

## Utiliza GitHub
usethis::browse_github_token()
usethis::edit_r_environ() ## y después reinicia R
usethis::use_github() ## crea un commit, luego corre este comando

## Empieza tus notas sobre la introducción a scRNA-seq
usethis::use_r('01-introduction.R')








## Más general:
r_files <- dir('~/Dropbox/code/_ext/cdsb/cdsb2020/scRNAseq', pattern = '[0-9]+.*\\.Rmd$')
r_files <- gsub("Rmd", "R", r_files)
for(i in seq_along(r_files)) {
    r_content <- glue::glue('# Notas para {r_files[i]}
# --------------------------------------
## Copia el código de https://github.com/comunidadbioinfo/cdsb2020/blob/master/scRNAseq/{r_files[i]}
## Tus notas
        ')
    writeLines(r_content, here::here('R', r_files[i]))
}
