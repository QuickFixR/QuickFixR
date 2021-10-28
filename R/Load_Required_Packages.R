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




