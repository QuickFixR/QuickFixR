#Load_Required_Packages.R
#2021/10/28 - 16:53
varPackages <-
  base::data.frame(
    pkgName = c("devtools"
                ,"magrittr"
                ,"available"
    ));

base::apply(varPackages
            , 1
            , function(x)
            {
              varPkgName <- x[["pkgName"]];
              print(varPkgName);
              if(!base::require(package = varPkgName , character.only = TRUE))
                utils::install.packages(pkgs = varPkgName);
              #base::library(package =varPkgName , character.only = TRUE );
            });

rm(varPackages);


usethis::use_github(protocol = "https" , auth_token = Sys.getenv("GITHUB_PAT"));
usethis::git_remotes();
usethis::use_git_remote("origin", url = NULL, overwrite = TRUE);
usethis::use_git_remote("origin", url = "https://github.com/QuickFixR/QuickFixR.git", overwrite = TRUE);
usethis::use_git_remote("QuickFixR", url = "https://github.com/QuickFixR/QuickFixR.git", overwrite = TRUE);
