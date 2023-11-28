Business Intelligence Project
================
\<Joy Cheptoo Mutai

- [Student Details](#student-details)
- [Setup Chunk](#setup-chunk)

# Student Details

|                                              |           |
|----------------------------------------------|-----------|
| **Student ID Number**                        | 136804    |
| **Student Name**                             | Joy Mutai |
| **BBIT 4.2 Group**                           | C         |
| **BI Project Group Name/ID (if applicable)** | …         |

# Setup Chunk

\#Training the Model

``` r
#Install packages

.libPaths()
```

    ## [1] "C:/Users/Joy/R-4.3.1/library"

``` r
lapply(.libPaths(), list.files)
```

    ## [[1]]
    ##   [1] "abind"           "adabag"          "Amelia"          "arules"         
    ##   [5] "arulesViz"       "askpass"         "av"              "backports"      
    ##   [9] "base"            "base64enc"       "BayesFactor"     "bit"            
    ##  [13] "bit64"           "blob"            "boot"            "brew"           
    ##  [17] "brio"            "broom"           "bslib"           "C50"            
    ##  [21] "ca"              "cachem"          "Cairo"           "callr"          
    ##  [25] "car"             "carData"         "caret"           "caretEnsemble"  
    ##  [29] "cellranger"      "circlize"        "class"           "classInt"       
    ##  [33] "cli"             "clipr"           "clock"           "cluster"        
    ##  [37] "coda"            "codetools"       "collections"     "colorspace"     
    ##  [41] "colourpicker"    "combinat"        "commonmark"      "compiler"       
    ##  [45] "conflicted"      "ConsRank"        "contfrac"        "corrplot"       
    ##  [49] "covr"            "cowplot"         "cpp11"           "crayon"         
    ##  [53] "crosstalk"       "Cubist"          "curl"            "cyclocomp"      
    ##  [57] "data.table"      "datasets"        "DBI"             "dbplyr"         
    ##  [61] "dendextend"      "desc"            "deSolve"         "diagram"        
    ##  [65] "diffobj"         "digest"          "doParallel"      "dplyr"          
    ##  [69] "DT"              "dtplyr"          "e1071"           "ellipse"        
    ##  [73] "ellipsis"        "elliptic"        "emmeans"         "estimability"   
    ##  [77] "evaluate"        "factoextra"      "FactoMineR"      "fansi"          
    ##  [81] "farver"          "fastICA"         "fastmap"         "feather"        
    ##  [85] "flashClust"      "fontawesome"     "forcats"         "foreach"        
    ##  [89] "foreign"         "formatR"         "formattable"     "Formula"        
    ##  [93] "fs"              "future"          "future.apply"    "gapminder"      
    ##  [97] "gargle"          "gclus"           "generics"        "ggcorrplot"     
    ## [101] "ggforce"         "ggplot2"         "ggpubr"          "ggraph"         
    ## [105] "ggrepel"         "ggsci"           "ggsignif"        "gifski"         
    ## [109] "glmnet"          "GlobalOptions"   "globals"         "glue"           
    ## [113] "googledrive"     "googlesheets4"   "gower"           "graphics"       
    ## [117] "graphlayouts"    "grDevices"       "grid"            "gridExtra"      
    ## [121] "gtable"          "gtools"          "hardhat"         "haven"          
    ## [125] "highr"           "hms"             "htmltools"       "htmlwidgets"    
    ## [129] "httpuv"          "httr"            "hunspell"        "hypergeo"       
    ## [133] "ids"             "igraph"          "inum"            "ipred"          
    ## [137] "IRdisplay"       "isoband"         "iterators"       "janeaustenr"    
    ## [141] "jomo"            "jpeg"            "jquerylib"       "jsonlite"       
    ## [145] "kableExtra"      "kernlab"         "KernSmooth"      "klaR"           
    ## [149] "knitr"           "labeling"        "labelled"        "languageserver" 
    ## [153] "later"           "lattice"         "lava"            "lazyeval"       
    ## [157] "leaps"           "libcoin"         "LiblineaR"       "lifecycle"      
    ## [161] "lintr"           "listenv"         "lme4"            "lmtest"         
    ## [165] "lubridate"       "magick"          "magrittr"        "markdown"       
    ## [169] "MASS"            "Matrix"          "MatrixModels"    "memery"         
    ## [173] "memoise"         "methods"         "mgcv"            "mice"           
    ## [177] "mime"            "miniUI"          "minqa"           "mitml"          
    ## [181] "mlbench"         "mockr"           "ModelMetrics"    "modelr"         
    ## [185] "multcompView"    "munsell"         "mvtnorm"         "naivebayes"     
    ## [189] "naniar"          "NHANES"          "nlme"            "nloptr"         
    ## [193] "nnet"            "norm"            "numDeriv"        "openssl"        
    ## [197] "ordinal"         "packrat"         "pan"             "parallel"       
    ## [201] "parallelly"      "partykit"        "pbapply"         "pbkrtest"       
    ## [205] "pdftools"        "permute"         "pillar"          "pkgbuild"       
    ## [209] "pkgconfig"       "pkgload"         "plotly"          "plumber"        
    ## [213] "plyr"            "png"             "polyclip"        "polynom"        
    ## [217] "praise"          "prettyunits"     "pROC"            "processx"       
    ## [221] "prodlim"         "progress"        "progressr"       "promises"       
    ## [225] "proxy"           "ps"              "purrr"           "qap"            
    ## [229] "qpdf"            "quantreg"        "questionr"       "R.cache"        
    ## [233] "R.methodsS3"     "R.oo"            "R.utils"         "R6"             
    ## [237] "radarchart"      "ragg"            "randomForest"    "RANN"           
    ## [241] "rappdirs"        "RColorBrewer"    "Rcpp"            "RcppArmadillo"  
    ## [245] "RcppEigen"       "readr"           "readxl"          "recipes"        
    ## [249] "registry"        "rematch"         "rematch2"        "remotes"        
    ## [253] "renv"            "repr"            "reprex"          "reshape2"       
    ## [257] "rex"             "rgl"             "rlang"           "rlist"          
    ## [261] "rmarkdown"       "roxygen2"        "rpart"           "rprojroot"      
    ## [265] "RRF"             "rsconnect"       "rstatix"         "rstudioapi"     
    ## [269] "rsvg"            "rvest"           "sass"            "scales"         
    ## [273] "scatterplot3d"   "selectr"         "seriation"       "shape"          
    ## [277] "shiny"           "shinyBS"         "shinycssloaders" "shinyjs"        
    ## [281] "showtext"        "showtextdb"      "SnowballC"       "sodium"         
    ## [285] "sourcetools"     "SparseM"         "spatial"         "spelling"       
    ## [289] "splines"         "SQUAREM"         "stats"           "stats4"         
    ## [293] "stringi"         "stringr"         "styler"          "survival"       
    ## [297] "svglite"         "swagger"         "sys"             "sysfonts"       
    ## [301] "systemfonts"     "tcltk"           "tesseract"       "testthat"       
    ## [305] "textdata"        "textshaping"     "tibble"          "tidygraph"      
    ## [309] "tidyr"           "tidyselect"      "tidytext"        "tidyverse"      
    ## [313] "timechange"      "timeDate"        "tinytex"         "tokenizers"     
    ## [317] "tools"           "translations"    "TSP"             "tweenr"         
    ## [321] "tzdb"            "ucminf"          "UpSetR"          "utf8"           
    ## [325] "utils"           "uuid"            "vcd"             "vctrs"          
    ## [329] "vegan"           "viridis"         "viridisLite"     "visdat"         
    ## [333] "visNetwork"      "vroom"           "waldo"           "webp"           
    ## [337] "webshot"         "webutils"        "widyr"           "withr"          
    ## [341] "wordcloud2"      "xfun"            "XML"             "xml2"           
    ## [345] "xmlparsedata"    "xtable"          "yaml"            "yarrr"          
    ## [349] "zoo"

``` r
if (require("languageserver")) {
  require("languageserver")
} else {
  install.packages("languageserver", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: languageserver

``` r
if (require("caret")) {
  require("caret")
} else {
  install.packages("caret", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: caret

    ## Warning: package 'caret' was built under R version 4.3.2

    ## Loading required package: ggplot2

    ## Loading required package: lattice

``` r
## klaR ----
if (require("klaR")) {
  require("klaR")
} else {
  install.packages("klaR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: klaR

    ## Loading required package: MASS

``` r
## e1071 ----
if (require("e1071")) {
  require("e1071")
} else {
  install.packages("e1071", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: e1071

    ## Warning: package 'e1071' was built under R version 4.3.2

``` r
## readr ----
if (require("readr")) {
  require("readr")
} else {
  install.packages("readr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: readr

``` r
## LiblineaR ----
if (require("LiblineaR")) {
  require("LiblineaR")
} else {
  install.packages("LiblineaR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: LiblineaR

``` r
## naivebayes ----
if (require("naivebayes")) {
  require("naivebayes")
} else {
  install.packages("naivebayes", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: naivebayes

    ## naivebayes 0.9.7 loaded

\#Step 2:

``` r
#Step 2:BOOTSTRAPPING: Calfornia Housing Dataset ----
housing <- read_csv("data/housing.csv", col_types = cols(longitude = col_double(), 
                                                         latitude = col_double(), housing_median_age = col_number(), 
                                                         total_rooms = col_number(), total_bedrooms = col_number(), 
                                                         population = col_number(), households = col_number(), 
                                                         median_income = col_number(), ocean_proximity = col_character(), 
                                                         median_house_value = col_number()))


summary(housing)
```

    ##    longitude         latitude     housing_median_age  total_rooms   
    ##  Min.   :-124.3   Min.   :32.54   Min.   : 1.00      Min.   :    2  
    ##  1st Qu.:-121.8   1st Qu.:33.93   1st Qu.:18.00      1st Qu.: 1448  
    ##  Median :-118.5   Median :34.26   Median :29.00      Median : 2127  
    ##  Mean   :-119.6   Mean   :35.63   Mean   :28.64      Mean   : 2636  
    ##  3rd Qu.:-118.0   3rd Qu.:37.71   3rd Qu.:37.00      3rd Qu.: 3148  
    ##  Max.   :-114.3   Max.   :41.95   Max.   :52.00      Max.   :39320  
    ##                                                                     
    ##  total_bedrooms     population      households     median_income    
    ##  Min.   :   1.0   Min.   :    3   Min.   :   1.0   Min.   : 0.4999  
    ##  1st Qu.: 296.0   1st Qu.:  787   1st Qu.: 280.0   1st Qu.: 2.5634  
    ##  Median : 435.0   Median : 1166   Median : 409.0   Median : 3.5348  
    ##  Mean   : 537.9   Mean   : 1425   Mean   : 499.5   Mean   : 3.8707  
    ##  3rd Qu.: 647.0   3rd Qu.: 1725   3rd Qu.: 605.0   3rd Qu.: 4.7432  
    ##  Max.   :6445.0   Max.   :35682   Max.   :6082.0   Max.   :15.0001  
    ##  NA's   :207                                                        
    ##  ocean_proximity    median_house_value
    ##  Length:20640       Min.   : 14999    
    ##  Class :character   1st Qu.:119600    
    ##  Mode  :character   Median :179700    
    ##                     Mean   :206856    
    ##                     3rd Qu.:264725    
    ##                     Max.   :500001    
    ## 

``` r
str(housing)
```

    ## spc_tbl_ [20,640 × 10] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
    ##  $ longitude         : num [1:20640] -122 -122 -122 -122 -122 ...
    ##  $ latitude          : num [1:20640] 37.9 37.9 37.9 37.9 37.9 ...
    ##  $ housing_median_age: num [1:20640] 41 21 52 52 52 52 52 52 42 52 ...
    ##  $ total_rooms       : num [1:20640] 880 7099 1467 1274 1627 ...
    ##  $ total_bedrooms    : num [1:20640] 129 1106 190 235 280 ...
    ##  $ population        : num [1:20640] 322 2401 496 558 565 ...
    ##  $ households        : num [1:20640] 126 1138 177 219 259 ...
    ##  $ median_income     : num [1:20640] 8.33 8.3 7.26 5.64 3.85 ...
    ##  $ ocean_proximity   : chr [1:20640] "NEAR BAY" "NEAR BAY" "NEAR BAY" "NEAR BAY" ...
    ##  $ median_house_value: num [1:20640] 452600 358500 352100 341300 342200 ...
    ##  - attr(*, "spec")=
    ##   .. cols(
    ##   ..   longitude = col_double(),
    ##   ..   latitude = col_double(),
    ##   ..   housing_median_age = col_number(),
    ##   ..   total_rooms = col_number(),
    ##   ..   total_bedrooms = col_number(),
    ##   ..   population = col_number(),
    ##   ..   households = col_number(),
    ##   ..   median_income = col_number(),
    ##   ..   ocean_proximity = col_character(),
    ##   ..   median_house_value = col_number()
    ##   .. )
    ##  - attr(*, "problems")=<externalptr>

``` r
## 1a. Split the dataset ====
# Define a 75:25 train:test data split of the dataset.
# That is, 75% of the original data will be used to train the model and
# 25% of the original data will be used to test the model.

install.packages("caret")
```

    ## Warning: package 'caret' is in use and will not be installed

``` r
library(caret)

# Set the seed for reproducibility
set.seed(42)

train_index <- createDataPartition(housing$median_house_value,
                                   p = 0.75,
                                   list = FALSE)
housing_train <- housing[train_index, ]
housing_test <- housing[-train_index, ]

### 1b. Bootstrapping train control ----
# Replace column names as needed
housing_model_lm <- caret::train(median_house_value ~ longitude + latitude + housing_median_age +
                                   total_rooms + total_bedrooms + population + households +
                                   median_income + ocean_proximity,
                                 data = housing_train,
                                 trControl = trainControl(method = "boot", number = 500),
                                 na.action = na.omit, method = "lm", metric = "RMSE")
```

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

``` r
## 3. Test the trained linear regression model using the testing dataset ----
# Make predictions on the testing dataset
predictions_lm <- predict(housing_model_lm, newdata = housing_test)

## 4. View the RMSE and the predicted values for the 12 observations ----
# Print the RMSE and predicted values
print(housing_model_lm)
```

    ## Linear Regression 
    ## 
    ## 15481 samples
    ##     9 predictor
    ## 
    ## No pre-processing
    ## Resampling: Bootstrapped (500 reps) 
    ## Summary of sample sizes: 15333, 15333, 15333, 15333, 15333, 15333, ... 
    ## Resampling results:
    ## 
    ##   RMSE      Rsquared   MAE     
    ##   68816.32  0.6462341  49703.68
    ## 
    ## Tuning parameter 'intercept' was held constant at a value of TRUE

``` r
print(predictions_lm)
```

    ##           1           2           3           4           5           6 
    ##  255043.983  236088.442  184402.014  212809.662  205566.656  174862.105 
    ##           7           8           9          10          11          12 
    ##  165723.216  162727.590  245621.450  237394.532  139488.746  165492.724 
    ##          13          14          15          16          17          18 
    ##  136639.478  144018.874  146715.839  147375.851  137149.792  108914.670 
    ##          19          20          21          22          23          24 
    ##  127838.752  100189.763  168759.359  160000.580  162342.813  108192.373 
    ##          25          26          27          28          29          30 
    ##  122284.239  365218.435  251549.474  255796.171  250795.337  278478.411 
    ##          31          32          33          34          35          36 
    ##  298967.530  347356.023  316674.494  326763.094  401463.808  386073.329 
    ##          37          38          39          40          41          42 
    ##  380491.755  400070.479  229413.444  229358.900  292225.106  264428.418 
    ##          43          44          45          46          47          48 
    ##  327710.602  232123.331  177623.701  194933.728  190259.317  184445.763 
    ##          49          50          51          52          53          54 
    ##  174120.427  202026.595  172812.065  137238.855  293480.689  280663.218 
    ##          55          56          57          58          59          60 
    ##  183760.548  197911.587  171492.722  263906.810  200786.463  197833.665 
    ##          61          62          63          64          65          66 
    ##  302479.472  363716.854  212491.421  234925.587  210808.253  155373.807 
    ##          67          68          69          70          71          72 
    ##  176036.012  197079.477  153665.731  112574.441  187837.140  246036.516 
    ##          73          75          76          77          78          79 
    ##  142788.160  169732.299  166261.715  193172.245  186070.724  286434.343 
    ##          80          81          82          83          84          85 
    ##  370901.444  288394.943  207186.469  188213.886  223544.654  227629.213 
    ##          86          87          88          89          90          91 
    ##  178717.631  226328.488  227915.972  233248.132  266790.653  174293.732 
    ##          92          93          94          95          96          97 
    ##  302615.908  271561.280  409465.593  368631.347  491603.091  324356.117 
    ##          98          99         100         101         102         103 
    ##  270900.704  360296.310  359023.721  352092.061  231789.480  208952.135 
    ##         104         105         106         107         108         109 
    ##  226203.472  217323.670  201392.840  159466.173  118777.446  234042.081 
    ##         110         111         112         113         114         115 
    ##  244624.545  207950.086  246153.761  222167.027  212917.072  254094.835 
    ##         116         117         118         119         120         121 
    ##  239740.470  250055.942  374786.409  301811.109  187644.533  406731.466 
    ##         122         123         124         125         126         127 
    ##  258423.071  193713.536  149891.153  158845.550  241936.119  609747.812 
    ##         128         129         130         131         132         133 
    ##  572510.967  416607.852  307719.595  268273.342  220899.472  207478.290 
    ##         134         135         137         138         139         140 
    ##  253626.634  140634.475  279232.133  223398.660  273599.084  232514.379 
    ##         141         142         143         144         145         147 
    ##  231918.926  235814.882  265958.606  256026.192  229052.393  258262.818 
    ##         148         149         150         151         152         153 
    ##  284059.728  274808.161  263835.483  278532.908  293429.813  292276.095 
    ##         154         155         156         157         158         159 
    ##  281805.411  235066.541  286632.231  282451.006  276577.944  262316.131 
    ##         160         161         162         163         164         165 
    ##  244079.615  224126.713  260897.688  235255.002  261859.693  220722.741 
    ##         166         167         168         169         170         171 
    ##  296323.748  238038.138  223226.228  278297.859  227786.050  251839.239 
    ##         172         173         174         175         176         177 
    ##  235150.576  249542.728  241923.138  226555.897  238611.061  256047.010 
    ##         178         179         180         181         182         183 
    ##  227234.605  208452.838  213837.267  240293.735  188073.733  168246.699 
    ##         184         185         186         187         188         189 
    ##  314894.202  314409.432  226961.444  255875.613  267976.669  235743.167 
    ##         190         191         192         193         194         195 
    ##  189263.523  218552.727  203119.701  196647.957  254801.121  232870.515 
    ##         196         197         198         199         200         201 
    ##  209148.904  326518.266  311864.518  203793.151  205551.330  203599.554 
    ##         202         203         204         205         206         207 
    ##  243859.946  260269.725  161351.566  238952.481  281856.543  230697.350 
    ##         208         209         210         211         212         213 
    ##  240772.235  285812.214  222475.916  239467.255  225327.360  228018.444 
    ##         214         215         216         217         218         219 
    ##  247716.259  231547.001  235760.220  249943.725  185430.718  283196.161 
    ##         220         221         222         223         224         225 
    ##  203050.434  278536.375  241066.421  240184.888  262739.108  257425.268 
    ##         226         227         228         229         230         231 
    ##  259416.929  304754.497  278323.583  204036.922  278664.667  320789.878 
    ##         232         233         234         235         236         237 
    ##  275969.681  266313.789  260400.913  291772.906  271833.020  259918.461 
    ##         238         239         240         241         242         243 
    ##  238773.410  237175.465  268551.688  276607.291  271752.320  250464.733 
    ##         244         245         246         247         248         249 
    ##  276617.036  250351.791  220969.415  224850.785  216700.834  290106.249 
    ##         250         251         252         253         254         255 
    ##  279718.109  260675.235  239499.701  253752.710  239644.748  256293.225 
    ##         256         257         258         259         260         261 
    ##  297865.440  304421.398  280694.751  334827.919  319769.631  453354.811 
    ##         262         263         264         265         266         267 
    ##  329380.270  281172.756  251254.323  191105.630  231930.597  382224.522 
    ##         268         269         270         271         272         273 
    ##  217331.577  172656.526  179064.348  183859.732  150344.895  247511.839 
    ##         274         275         276         277         278         279 
    ##  229476.348  265955.392   98213.703  101859.961   88651.728  105041.911 
    ##         280         281         282         283         284         285 
    ##  118871.327  110747.126  116988.920   79275.496   97547.583  123644.825 
    ##         286         287         288         289         290         291 
    ##  114833.677  126691.874   78922.857  125531.238  104214.878    6416.145 
    ##         292         293         294         295         296         297 
    ##  101117.729   34954.511  107828.368   59593.055   97339.177   77788.749 
    ##         298         299         300         301         302         303 
    ##  122955.300   90008.088  110798.336   66553.361   59925.334   69201.233 
    ##         304         305         306         307         308         309 
    ##   50999.925   47590.026   46490.676   68483.428   11996.196   62594.261 
    ##         310         311         312         313         314         315 
    ##   99745.450   85275.928   63546.438   57649.994   26579.110   97709.625 
    ##         316         317         318         319         320         321 
    ##   62225.226   42960.335  121443.316   89627.931   86713.511   70767.262 
    ##         322         323         324         325         326         327 
    ##   36219.005   66813.889   46143.662   40437.262   35645.426   48442.200 
    ##         328         329         330         331         332         333 
    ##  110241.767  104789.243   71582.659   55344.723   61039.598   87246.328 
    ##         334         335         336         337         338         339 
    ##   98351.190   77027.321   93946.673  139471.766   84697.216   74212.451 
    ##         340         341         342         343         344         345 
    ##  126231.490  105168.708  181519.827  148947.714  196390.454   99857.516 
    ##         346         347         348         349         350         351 
    ##  212336.283  200889.237  195805.204  126046.701  152304.664  178559.032 
    ##         352         353         354         355         356         357 
    ##  164994.115  197019.049  212222.676  196353.318  161335.139  186350.080 
    ##         358         359         360         361         362         363 
    ##  214820.168  135333.806  161991.072  192203.198   95997.255  235047.913 
    ##         364         365         366         367         368         369 
    ##  206952.111   94525.422  187211.936  209828.581  261502.068  244310.474 
    ##         370         371         372         373         374         375 
    ##  247242.395  218257.810  277328.202  225258.253  253640.015  233654.400 
    ##         376         377         378         379         380         381 
    ##  312336.448  287041.426  268016.574  259359.639  288910.047  197705.923 
    ##         382         383         384         385         386         387 
    ##  277328.049  288983.612  240142.157  204588.218  229036.309  264450.949 
    ##         388         389         391         392         393         394 
    ##  266497.841  171224.067  244717.340  252516.768  258683.772  213728.026 
    ##         395         396         397         398         399         400 
    ##  207775.394  220712.538  163922.131  207167.031  271405.675  322962.695 
    ##         401         402         403         404         405         406 
    ##  162426.852  281724.835  249715.545  289561.059  306902.200  284396.557 
    ##         407         408         409         410         411         412 
    ##  219335.946  298382.238  332590.197  244246.283  316847.915  306244.741 
    ##         413         414         415         416         417         418 
    ##  302204.861  192184.812  300685.311  314462.976  401577.171  413038.171 
    ##         419         420         421         422         423         424 
    ##  283773.408  373710.761  251052.274  374143.116  463394.646  482961.929 
    ##         425         426         427         428         429         431 
    ##  371260.111  381113.329  401435.512  343731.952  458734.843  201999.205 
    ##         432         433         434         435         436         437 
    ##  359968.822  367926.934  283178.389  399932.462  372305.998  137868.746 
    ##         438         439         440         441         442         443 
    ##  204029.092  279858.118  360533.464  296086.439  223646.457  295389.861 
    ##         444         445         446         447         448         449 
    ##  237196.206  287502.251  209942.141  296243.564  293410.545  233758.046 
    ##         450         451         452         453         454         455 
    ##  249417.986  253977.420  179816.993  103139.157  128680.101  154226.484 
    ##         456         457         458         459         460         461 
    ##  255139.933  254536.831  239190.356  183736.855  241330.080  185659.587 
    ##         462         463         464         465         466         467 
    ##  175601.828  180483.555  239325.735  211318.543  241412.001  224594.204 
    ##         468         469         470         471         472         473 
    ##  252473.025  260155.875  224489.742  195108.190  259038.147  145368.117 
    ##         474         475         476         477         478         479 
    ##  204963.429  212182.537  148142.717  174192.128  121444.320  129722.732 
    ##         480         481         482         483         484         485 
    ##  171435.605  200027.853  221816.772  250005.683  296226.632  294700.341 
    ##         486         487         488         489         490         491 
    ##  320723.939  261523.224  235665.332  318030.640  266328.029  347227.485 
    ##         492         493         494         495         496         497 
    ##  166308.902  123697.193  127724.579  108291.675  101152.905   18916.916 
    ##         498         499         500         501         502         503 
    ##   31690.622   61080.073   67419.299   31223.835   71196.006   38811.979 
    ##         504         505         506         507         508         509 
    ##   68881.514   42258.676  105247.632  126355.218  143391.912  125202.227 
    ##         510         511         512         513         514         515 
    ##  107322.593   87102.095  135527.478   68754.555   24594.111   94552.772 
    ##         516         517         518         519         520         521 
    ##   66274.065  114872.200  106676.991  176752.394   81640.344   77261.852 
    ##         522         523         524         525         526         527 
    ##   66701.758   94598.930   54698.569   40585.498   30199.458  168203.879 
    ##         528         529         530         531         532         533 
    ##   56452.976   53720.859  111528.464  130351.820  280763.512  137164.855 
    ##         534         535         536         537         538         539 
    ##  100631.146  246033.119   89589.610  192946.591   92553.140   67516.508 
    ##         540         541         542         543         544         545 
    ##   71063.898   75574.758  131528.877  146854.131   86206.164  105947.336 
    ##         546         547         548         549         550         551 
    ##   77812.676  116413.911  144186.084   83773.144   56785.261  108088.292 
    ##         552         553         554         555         556         557 
    ##  100401.363  110077.884   36743.443   79848.875   70846.178  111659.425 
    ##         558         559         560         561         562         563 
    ##   96894.049  105004.857  130045.464  136548.880  104088.087   90490.004 
    ##         564         565         566         567         568         569 
    ##  110090.563  127972.846  107534.313  121368.594   67303.108  144032.800 
    ##         570         571         572         573         574         575 
    ##  127553.616  131295.159  122513.135  120194.187  317823.308  255802.915 
    ##         576         577         578         579         580         581 
    ##  222449.744  201165.049  209761.577   95662.649   47299.266  148280.124 
    ##         582         583         584         585         586         587 
    ##  184897.019  138350.156  126289.661  155086.829  100274.052  147794.844 
    ##         588         589         590         591         592         593 
    ##  164578.962  155269.934  116867.199  104725.795  109498.080   88687.949 
    ##         594         595         596         597         598         599 
    ##  104530.053  147006.882  108183.523   63195.644  119712.996  133359.452 
    ##         600         601         603         604         606         607 
    ##   43219.561  131035.749  136910.315   59775.540  170019.386   92067.988 
    ##         608         609         610         611         612         613 
    ##  126924.167  166941.544  161905.907  160340.117   83834.816  125017.947 
    ##         614         615         616         617         618         619 
    ##   82288.530  133517.528  156181.296  164945.666   86058.463  116276.139 
    ##         620         621         622         623         624         625 
    ##   46738.658  113740.159  134654.975  126836.589  121149.705   81125.705 
    ##         626         627         629         630         631         632 
    ##  133301.289   39613.426  133005.200   50073.302  102799.697   84033.814 
    ##         633         634         635         636         637         638 
    ##  110720.898  115145.745  127781.100   77842.019   88810.804   96692.504 
    ##         639         640         641         642         643         644 
    ##  211357.484  150343.180   76366.127   95644.734   55405.261   94364.693 
    ##         645         646         647         648         649         650 
    ##  176533.135   62221.997   79553.336   55729.108  133997.595   18255.448 
    ##         651         652         653         654         655         656 
    ##   91244.963  104915.738   47928.401  140205.268  162218.254  139832.529 
    ##         657         658         659         660         661         662 
    ##  197640.668  147692.775  165902.309  160851.634  149110.798  174259.432 
    ##         664         665         666         667         668         669 
    ##  110973.824  145469.105  164689.580  212528.409  165677.222   94691.872 
    ##         670         671         672         673         674         675 
    ##   75811.397  134076.024  155862.218  148479.127  188832.773  119395.635 
    ##         676         677         678         679         680         681 
    ##  170477.281  211892.627  167884.384  172330.226  123379.743   29431.107 
    ##         682         683         684         685         686         687 
    ##   85673.565   93336.833   92451.148   59949.606  131293.197  108030.696 
    ##         688         689         690         691         692         693 
    ##   84143.382  201328.089  127922.464   53692.634   49813.879  121812.653 
    ##         694         695         696         697         698         699 
    ##  163021.861   96530.853   63434.726  134038.998   21976.470   46400.881 
    ##         700         701         702         703         704         705 
    ##   31737.411  171417.011   68375.751  139152.420  144775.990   26235.885 
    ##         706         707         708         709         710         711 
    ##   23579.139  135194.712   66557.785   49268.326  112718.093   80007.485 
    ##         712         713         714         715         716         717 
    ##   62116.091   39216.032  160958.898   94980.586   42426.526   46416.001 
    ##         718         719         720         721         722         723 
    ##   95273.511   75131.691   -2696.453   71465.278  136288.275  181776.532 
    ##         724         725         726         727         728         729 
    ##  102318.053  104927.953  113691.146   98172.032   95217.768  141979.191 
    ##         730         731         732         733         734         735 
    ##  143889.895  149646.630  150519.136  173074.755  165278.655  129316.992 
    ##         736         737         738         739         740         741 
    ##  128618.626   86281.294  122356.022   68438.677   34362.988  102001.635 
    ##         742         743         744         745         746         747 
    ##  173920.259  151525.026   87605.538   57503.483   60703.635   88773.250 
    ##         748         749         750         751         752         753 
    ##  130283.898   82144.983   48108.728  107708.062  105197.158  119580.745 
    ##         754         755         756         757         758         759 
    ##  152400.263  229775.975  139143.919  117553.897  134895.264   82626.212 
    ##         760         761         762         763         764         765 
    ##  113598.369   95614.724  170860.915  146182.097  118899.481  182754.405 
    ##         766         767         768         769         770         771 
    ##  117457.517  162283.485  163664.824  153875.873  189505.296  183817.682 
    ##         772         773         774         775         776         777 
    ##  102945.010  162197.223  136751.243  188362.857   55381.488   59987.164 
    ##         778         779         780         781         782         783 
    ##   59933.849  111232.273   39604.989   83642.266   46394.389   85383.674 
    ##         784         785         786         787         788         789 
    ##  120539.261   79911.323  107839.690  112757.139  122151.292  110270.191 
    ##         790         791         792         793         794         795 
    ##  187986.341  122971.879  134826.975   65896.295  131860.287  114138.184 
    ##         796         797         798         799         800         801 
    ##  113221.730  141018.331  152745.087  157718.006  103926.620  111986.124 
    ##         802         803         804         805         806         807 
    ##  135040.741  166124.550  113442.565   75425.860   83384.711  126521.905 
    ##         808         809         810         811         812         813 
    ##  184065.171  187876.256  108549.951   74775.971  178125.294  145689.380 
    ##         814         815         816         817         818         819 
    ##  121732.278   53094.534   96544.442   56470.911   60039.968  144511.310 
    ##         820         821         822         823         824         825 
    ##   25876.413  214191.442  102527.887  158529.180  143461.877   94861.708 
    ##         826         827         828         829         830         831 
    ##   85406.218   79398.223  106114.697  114612.772   73339.264  118557.203 
    ##         832         833         834         835         836         837 
    ##  112020.535   90760.726  100112.674  111665.897   92267.855   68166.890 
    ##         838         839         840         841         842         843 
    ##  126215.609  168918.332  129743.452  185231.747  108894.135   37675.253 
    ##         844         845         846         847         848         849 
    ##   27098.109  -27000.012   41197.862   55510.724  -24647.510   -1500.258 
    ##         850         851         852         853         854         855 
    ##  261446.724  212060.075  245350.029  247532.150  324603.233  226187.980 
    ##         856         857         858         859         860         861 
    ##  204647.198  201142.536  189613.352  220296.042  129704.661  180218.830 
    ##         862         863         864         865         866         867 
    ##  179275.934  186257.724  110812.266  199469.721  229532.127  198005.975 
    ##         868         869         870         871         872         873 
    ##  174700.514  319755.932  338511.278  348739.969  368689.321  382233.961 
    ##         874         876         877         878         879         880 
    ##  306005.688  368811.263  333941.065  267651.697  287873.292  261958.602 
    ##         881         882         883         884         885         886 
    ##  207770.045  247661.755  269579.334  245958.091  375385.393  245640.139 
    ##         887         888         889         890         891         892 
    ##  293133.352  288902.525  254425.279  319006.022  319350.963  284308.348 
    ##         893         894         895         896         897         898 
    ##  295300.788  339865.383  292601.431  298978.081  280026.085  236697.021 
    ##         899         900         901         902         903         904 
    ##  407052.197  398090.789  248177.298  305856.249  267577.215  273115.486 
    ##         905         906         907         908         909         910 
    ##  209611.281  157332.321  326514.282  310833.627  307573.157  265082.212 
    ##         911         912         913         914         915         916 
    ##  219468.980  191213.589  248885.457  237707.439  220553.441  264993.682 
    ##         917         918         919         920         921         922 
    ##  241379.121  202462.347  233976.721  211107.969  253935.890  166518.617 
    ##         923         924         925         926         927         928 
    ##  119646.741  238292.662  211587.781  190954.781  218976.672  226209.931 
    ##         929         930         931         932         933         934 
    ##  184165.736  125940.767  158650.747  220285.192  228908.859  198716.664 
    ##         935         936         937         938         939         940 
    ##  154296.252  203255.264  147378.736  120133.351  187632.813  108205.579 
    ##         941         942         943         944         945         946 
    ##  165990.942  226300.153  228352.942  300612.223  268172.238  202250.925 
    ##         947         948         949         950         951         952 
    ##  232161.552  183429.199  205892.352  233335.854  204117.772  158622.990 
    ##         953         954         955         956         957         958 
    ##  224960.906  242664.957  237050.570  165890.854   96114.129  274861.360 
    ##         959         960         961         962         963         964 
    ##  212893.504  193313.092  203529.520  165386.992  188535.045  189305.595 
    ##         965         966         967         968         969         970 
    ##  181924.644  176776.400  253425.990  190366.813  186505.563  177378.071 
    ##         971         972         973         974         975         976 
    ##  214777.659  230499.114  236817.103  258614.844  287291.811  239801.945 
    ##         977         978         979         980         981         982 
    ##  271864.580  268319.622  236355.688  197646.489  212199.007  218430.069 
    ##         983         984         985         987         988         989 
    ##  257362.914  250043.932  282864.579  265391.867  226221.933  222532.277 
    ##         990         991         992         994         995         996 
    ##  287313.735  293777.878  212141.359  238721.110  265931.499  290271.334 
    ##         997         998         999        1000        1001        1002 
    ##  287597.842  248669.585  244605.732  350747.905  246114.660  369879.417 
    ##        1003        1004        1005        1006        1007        1008 
    ##  303109.046  396043.688  236074.378  267660.317  270828.479  385502.921 
    ##        1009        1010        1011        1012        1013        1014 
    ##  338384.422  574594.603  424786.759  303304.674  201222.908  480270.806 
    ##        1015        1016        1017        1018        1019        1020 
    ##  302072.496  222936.526  269693.997  310145.843  434499.040  418740.753 
    ##        1021        1022        1023        1024        1025        1026 
    ##  391738.989  448937.250  272184.226  229695.061  237477.882  297080.877 
    ##        1027        1028        1029        1030        1031        1032 
    ##  102446.315  303083.700  331654.094  275363.093  436047.724  230045.971 
    ##        1033        1034        1035        1036        1037        1038 
    ##  353301.832  500948.618  294262.753  181308.170  232441.910  217558.327 
    ##        1039        1040        1041        1042        1043        1044 
    ##  243599.800  209702.942  236774.068  197777.384  190768.596  159205.989 
    ##        1045        1046        1047        1048        1049        1050 
    ##  155450.171  137764.098  216945.977  159996.427  236791.044  162167.435 
    ##        1051        1052        1053        1054        1056        1057 
    ##  151693.370  150623.076  153898.346  248662.137  196949.005  284438.575 
    ##        1058        1059        1060        1061        1062        1063 
    ##  274155.831  170094.369  159536.233  173876.711  198179.887  181252.332 
    ##        1064        1065        1066        1067        1068        1069 
    ##  243992.155  299676.577  288855.939  218069.202  200866.170  216788.533 
    ##        1070        1071        1072        1073        1074        1075 
    ##  226449.077  269353.772  391792.434  284133.603  361950.527  322011.659 
    ##        1076        1077        1078        1079        1080        1081 
    ##  220556.102  239862.661  145445.140  192396.295  182884.699  139024.683 
    ##        1082        1083        1084        1085        1086        1087 
    ##  147944.156  157232.574  168203.564  133297.601  182763.093  173702.312 
    ##        1088        1089        1090        1091        1092        1093 
    ##  199061.291  166730.197  159691.279  123980.859  153912.499  195888.361 
    ##        1094        1095        1096        1097        1098        1099 
    ##  246854.138  184687.946  265710.415  148303.844  191741.934  322323.227 
    ##        1100        1101        1102        1103        1104        1106 
    ##  248752.838  181859.778  258149.372  277500.029  177319.398  198885.594 
    ##        1107        1108        1109        1110        1111        1112 
    ##  281396.561  189163.225  234180.675  172605.029  212349.543  237898.883 
    ##        1113        1114        1115        1116        1117        1118 
    ##  163646.667  175241.249  136563.974  157340.198  115702.266  142834.522 
    ##        1119        1120        1121        1122        1123        1124 
    ##  156111.489  128886.862  142194.344  144422.872  127972.254  243282.052 
    ##        1125        1126        1127        1128        1129        1130 
    ##  133584.704  191877.159  195191.862  217587.031   95091.924  144932.503 
    ##        1131        1132        1133        1134        1135        1136 
    ##  158659.334  165925.702  137617.726  128213.027  159443.068  144002.772 
    ##        1137        1138        1139        1140        1141        1142 
    ##  138561.518  166905.499  143102.879  157759.490  112896.145  146417.043 
    ##        1143        1144        1145        1146        1147        1148 
    ##  171365.858  178735.852  173999.227  134493.530  176958.863  161634.594 
    ##        1149        1150        1151        1152        1153        1154 
    ##  130701.323  189771.009  150447.710  159560.383  149887.400  163618.383 
    ##        1155        1156        1157        1158        1160        1161 
    ##  292372.843  123182.126  142413.253  151951.704  147753.108  435826.961 
    ##        1162        1163        1164        1165        1166        1167 
    ##  677139.717  381698.918  180789.311  153883.211  174516.388  185263.260 
    ##        1168        1169        1170        1171        1172        1173 
    ##  203052.217  152614.555  203157.229  418134.990  210726.476  155227.530 
    ##        1174        1175        1176        1177        1178        1180 
    ##  201197.236  673834.627  245928.857  234798.553  285252.328  242837.128 
    ##        1181        1182        1183        1184        1185        1186 
    ##  248558.854  237550.867  258714.656  243123.754  223311.490  239714.837 
    ##        1187        1188        1189        1190        1191        1192 
    ##  242239.183  249740.000  307732.280  239754.520  274006.292  238524.134 
    ##        1193        1194        1195        1197        1198        1199 
    ##  255790.861  263478.848  236330.991  242581.482  141585.170  192040.446 
    ##        1201        1202        1203        1204        1205        1206 
    ##  207772.637  217979.904  200533.023  182807.900  160401.917  153206.934 
    ##        1207        1208        1209        1210        1211        1212 
    ##  218658.740  217694.325  201102.685  148216.679  140860.389  127445.285 
    ##        1213        1214        1215        1216        1217        1218 
    ##  133214.057  142900.486  156592.480  129361.981  144144.970  144606.546 
    ##        1219        1220        1221        1222        1223        1224 
    ##  159864.714  190826.579  179822.865  147073.199  169218.592  184739.756 
    ##        1226        1227        1228        1229        1230        1231 
    ##  145644.940  161788.352  107465.206  134444.118  128790.247   14216.646 
    ##        1232        1233        1234        1235        1236        1237 
    ##  152516.915  149491.463  110430.090  131142.405  139832.098  169873.926 
    ##        1238        1239        1240        1241        1242        1243 
    ##  123604.645  147611.591  105527.070  151452.229  171276.270  131614.596 
    ##        1244        1245        1246        1247        1248        1249 
    ##  129310.656  115223.198  109933.607  128023.306  122571.671  155438.163 
    ##        1250        1251        1252        1253        1254        1255 
    ##  129003.430   98098.364  139061.782  124126.831  162291.164  140555.731 
    ##        1256        1257        1258        1259        1260        1261 
    ##  150397.113  180698.831  160338.320  161192.586  194009.679  134476.495 
    ##        1262        1263        1264        1265        1266        1267 
    ##  163591.651  123101.553  169586.679  130568.758  142455.631  257585.275 
    ##        1268        1269        1270        1271        1272        1273 
    ##  255314.738  161188.187  331338.396  244626.030  224997.438  220356.745 
    ##        1274        1275        1276        1277        1278        1279 
    ##  141879.938  158703.862  177282.162  189171.314  218897.312  209063.365 
    ##        1280        1281        1282        1283        1284        1285 
    ##  212189.529  185149.117  214952.120  211738.724  150841.128  223662.916 
    ##        1286        1287        1288        1289        1290        1291 
    ##  194840.080  132272.654  218014.838  236554.493  127516.820  130008.844 
    ##        1292        1293        1294        1295        1296        1297 
    ##  138386.347  147698.153  122716.606  131376.360  144714.217  150850.918 
    ##        1298        1299        1300        1301        1302        1303 
    ##   91770.272  128697.307  142013.721  148598.624  122411.268  152172.807 
    ##        1304        1305        1306        1307        1308        1309 
    ##  128511.557  132409.697  158037.267  143488.044  142394.634  154538.693 
    ##        1310        1311        1312        1313        1314        1315 
    ##  145036.255  117898.439  111869.259   79233.130  199680.956  178798.499 
    ##        1316        1317        1318        1319        1320        1321 
    ##  217947.721  156006.561  187227.333  121709.949  169922.188  221454.300 
    ##        1322        1323        1324        1325        1326        1327 
    ##  124079.142   77559.667   92578.405  110328.914  102218.178  114229.313 
    ##        1328        1329        1330        1331        1332        1333 
    ##  100993.472  100627.542  417182.097  374428.490  526074.842  591517.626 
    ##        1334        1335        1336        1337        1338        1339 
    ##  414450.208  507928.317  394312.502  621396.204  414586.705  390576.103 
    ##        1340        1341        1342        1343        1344        1345 
    ##  468250.869  313857.248  290713.813  364225.394  370966.272  410024.784 
    ##        1346        1347        1348        1349        1350        1351 
    ##  168101.889  143634.222  279449.032  353486.283  300104.559  274308.211 
    ##        1352        1353        1354        1355        1356        1357 
    ##  316532.024  268612.179  296827.679  307937.897  285946.788  395046.152 
    ##        1358        1359        1360        1361        1362        1363 
    ##  263511.321  309818.754  341234.561  185454.481  335801.293  173966.578 
    ##        1364        1365        1366        1367        1368        1369 
    ##  209814.901  345360.714  275851.450  290010.414  194557.416  247191.556 
    ##        1370        1371        1372        1373        1374        1375 
    ##  296048.437  225274.368  224572.937  233441.663  225017.029  248321.139 
    ##        1376        1377        1378        1379        1380        1381 
    ##  331403.757  337098.514  278696.278  263416.478  279119.198  339160.600 
    ##        1382        1383        1384        1385        1386        1387 
    ##  273662.960  277206.969  257366.032  213346.112  256162.811  282502.633 
    ##        1388        1389        1390        1391        1392        1393 
    ##  267652.009  253473.517  174035.197  196577.933  162658.311  263852.052 
    ##        1394        1395        1396        1397        1398        1399 
    ##  237963.080  224067.914  266556.145  313421.359  252221.529  543340.064 
    ##        1400        1401        1402        1403        1404        1405 
    ##  288560.609  234290.875  231293.327  262270.461  182475.005  223365.303 
    ##        1406        1407        1408        1409        1410        1411 
    ##  184306.404  295645.597  316416.531  252792.478  124742.667  168487.265 
    ##        1412        1413        1414        1415        1416        1417 
    ##  278765.246  207222.117  281898.556  201473.222  183858.904  150417.479 
    ##        1418        1419        1420        1421        1422        1423 
    ##  149693.972  128952.563  319267.155  198061.977  181926.739  133576.832 
    ##        1424        1425        1426        1427        1428        1429 
    ##  107951.782  229555.309  274787.357  268587.085  178332.789  215358.472 
    ##        1430        1431        1432        1433        1434        1435 
    ##  197291.153  258853.900  272573.881  158532.599  221424.106  272737.393 
    ##        1436        1437        1438        1439        1440        1441 
    ##  278773.525  314635.348  275587.702  278804.142  218044.323  221503.733 
    ##        1442        1443        1444        1445        1446        1447 
    ##  356188.113  320246.410  199936.276  290117.823  333117.533  286020.376 
    ##        1448        1449        1450        1451        1452        1453 
    ##  295210.530  236352.613  200272.114  372400.357  355695.315  218198.704 
    ##        1454        1455        1456        1457        1458        1459 
    ##  213605.031  258215.646  204738.301  223604.530  198356.229  212015.857 
    ##        1460        1461        1462        1463        1464        1465 
    ##  209057.969  180159.477  213857.829  242595.467  222076.119  190101.613 
    ##        1466        1467        1468        1469        1470        1471 
    ##  173351.290  160981.914  163933.028  163028.904  184724.088  118811.911 
    ##        1472        1473        1474        1475        1476        1477 
    ##  152330.589  257599.040  345138.925  223880.058  153792.855  196637.679 
    ##        1478        1479        1480        1481        1482        1483 
    ##  256002.198  202284.697  212735.211  190094.780  288784.515  167248.059 
    ##        1484        1485        1486        1487        1488        1489 
    ##  259282.124  217951.303  258149.910  311040.357  189728.431  261274.756 
    ##        1490        1491        1492        1493        1494        1495 
    ##  231441.127  326378.910  259248.659  227828.345  201921.714  214466.211 
    ##        1496        1497        1498        1499        1500        1501 
    ##  245762.154  206119.290  174800.654  208658.610  190404.249  142494.889 
    ##        1502        1503        1504        1505        1506        1507 
    ##  186294.876  130920.245  193270.038  256364.341  249359.402  186347.219 
    ##        1508        1509        1510        1511        1512        1513 
    ##  167361.038  311094.991  251598.337  194613.053  216134.527  172382.105 
    ##        1514        1515        1516        1517        1518        1519 
    ##  257350.688  258988.336  238858.638  168251.009  172271.890  180443.893 
    ##        1520        1521        1522        1523        1524        1525 
    ##  163005.744  164809.165  227799.442  111109.370   24660.469  176452.830 
    ##        1526        1527        1528        1529        1530        1531 
    ##  172229.114  133222.662  173702.488  238193.732   77773.983   83323.622 
    ##        1532        1533        1534        1535        1536        1537 
    ##  160664.641  247513.226  151797.180  113340.277   70648.056   83084.415 
    ##        1538        1540        1541        1543        1544        1545 
    ##  107083.858  266507.310  278129.794  343715.743  364889.955  492001.647 
    ##        1546        1547        1548        1549        1550        1551 
    ##  281251.286  209728.013  261877.807  221380.462  205093.995  211652.721 
    ##        1552        1553        1554        1555        1556        1557 
    ##  202665.675  196790.063  146123.226  199534.303  159224.384  159745.145 
    ##        1558        1559        1560        1561        1562        1563 
    ##  133550.435  123480.015  144333.582  229100.993  224450.675  209688.266 
    ##        1564        1565        1566        1567        1568        1569 
    ##  249637.507  214407.542  166566.545  233178.358  205393.715  286085.104 
    ##        1570        1571        1573        1574        1575        1576 
    ##  259045.288  270012.743  176253.479  223510.398  236832.802  211621.880 
    ##        1577        1578        1579        1580        1581        1582 
    ##  197846.473  194120.924  163198.889  202908.853  204019.398  217767.570 
    ##        1583        1584        1585        1586        1587        1588 
    ##  227700.269  217702.500  159265.494  194063.374  211299.852  209536.268 
    ##        1589        1590        1591        1592        1593        1594 
    ##  205808.798  235029.593  307361.870  297879.719  295897.273  228757.481 
    ##        1595        1596        1597        1598        1599        1600 
    ##  236186.356  280949.558   75784.085  103329.788  232994.783  128837.365 
    ##        1601        1602        1603        1604        1605        1606 
    ##  177981.345  150815.673  287053.907  233155.019  224225.872  212241.439 
    ##        1607        1608        1609        1610        1611        1612 
    ##  195029.829  287224.474  201051.121  183536.487  245364.476  263968.779 
    ##        1613        1614        1615        1616        1617        1618 
    ##  182584.954  225891.560  410978.773  613399.902  213186.921  229408.851 
    ##        1619        1620        1621        1623        1624        1625 
    ##  183431.098  156586.926  197257.858  131022.220   73357.499  211432.205 
    ##        1626        1627        1628        1629        1630        1631 
    ##  192777.614  152759.463  215741.148  101561.796  238299.214  290094.649 
    ##        1632        1633        1634        1635        1636        1637 
    ##  239109.416  217547.052  188450.150  229159.358  192115.302  152084.267 
    ##        1638        1639        1640        1641        1642        1643 
    ##  163551.171  149465.339  134467.496  151679.300  140601.299  191559.122 
    ##        1644        1645        1646        1647        1648        1649 
    ##  165428.257  214520.610  128453.880   42967.270  113595.356  132212.065 
    ##        1650        1651        1652        1654        1655        1656 
    ##  150823.910  128912.558  166949.216  137788.208  425224.258  336817.648 
    ##        1657        1658        1659        1660        1661        1662 
    ##  253553.894  152430.208  227626.026  229081.983  347736.738  349642.890 
    ##        1663        1664        1665        1666        1667        1668 
    ##  142998.633  158215.071  230153.891  177159.880  210354.461  151124.950 
    ##        1669        1670        1671        1672        1673        1674 
    ##   88857.451  219979.509  239839.528  320887.048  179886.473  168475.573 
    ##        1675        1676        1677        1678        1679        1680 
    ##  111422.894  105350.551  185083.580  163695.573  135064.042  190028.760 
    ##        1681        1682        1683        1684        1685        1686 
    ##  237263.248  212018.779  171353.367  257657.000  216522.173  180781.343 
    ##        1687        1688        1689        1690        1691        1692 
    ##  192607.296  187376.816  181697.294  369553.183  160590.083  234001.469 
    ##        1693        1694        1695        1696        1697        1698 
    ##  380039.480  541237.771  392434.076  501620.959  307050.472  218109.766 
    ##        1699        1700        1701        1702        1703        1704 
    ##  495188.305  436492.153  561866.572  326630.089  205432.499  231623.587 
    ##        1705        1706        1707        1708        1709        1710 
    ##  296261.263  233756.175  289946.789  287468.096  247994.099  190309.005 
    ##        1711        1712        1713        1714        1715        1716 
    ##  258830.609  259458.921  229870.025  234397.886  219652.615  188946.156 
    ##        1717        1718        1719        1720        1721        1722 
    ##  216536.502  200668.794  187316.526  179436.537  195527.834  250621.557 
    ##        1723        1724        1725        1726        1727        1728 
    ##  237227.506  217727.403  228514.070  209291.170  187208.104  229145.670 
    ##        1729        1730        1731        1732        1733        1734 
    ##  174244.525  152614.643  155975.867  141891.442  148648.032  184388.930 
    ##        1735        1736        1737        1738        1739        1740 
    ##  259599.567  208830.740  197653.938  149758.616  175789.170  245527.354 
    ##        1741        1742        1743        1744        1745        1746 
    ##  227568.199  336251.636  205907.797  172476.726  142607.663  217438.442 
    ##        1747        1748        1749        1750        1751        1752 
    ##  204685.119  172457.719  206761.043  198314.695  237064.008  201890.333 
    ##        1753        1754        1755        1756        1757        1758 
    ##  277878.621  156960.632  239918.494  285584.824  185190.573  171315.999 
    ##        1759        1760        1761        1762        1763        1764 
    ##  244520.702  232974.343  197070.612  162652.832  234115.349  211906.073 
    ##        1765        1766        1767        1768        1769        1770 
    ##  213842.660  228459.530  200957.163  213225.978  266805.751  137009.535 
    ##        1771        1772        1773        1774        1775        1776 
    ##  198319.211  203117.447  211148.933  184558.750  238933.188  224806.010 
    ##        1777        1778        1779        1780        1781        1782 
    ##  249353.321  236143.422  303345.137  217726.208  240715.764  198425.267 
    ##        1783        1784        1785        1786        1787        1788 
    ##  276448.941  294099.343  276862.729  283676.810  262561.306  243264.173 
    ##        1789        1790        1791        1792        1793        1794 
    ##  221843.248  287003.459  249897.818  278448.878  213751.237  252589.915 
    ##        1795        1796        1797        1798        1799        1800 
    ##  215756.777  227193.534  233528.205  140494.749  222932.088  199131.396 
    ##        1801        1802        1803        1804        1805        1806 
    ##  157036.167   92048.938   70565.355  175530.916  162476.344  135405.883 
    ##        1807        1808        1809        1810        1811        1812 
    ##  147591.194  199034.599  170851.688  135121.169  194405.336  173934.060 
    ##        1814        1815        1816        1817        1818        1819 
    ##  144707.165  163612.063  126818.137  160310.860  162509.153  145286.951 
    ##        1820        1821        1823        1824        1825        1826 
    ##  175768.494  146604.624  173977.946  171703.720  155255.448  184630.326 
    ##        1827        1828        1829        1830        1831        1832 
    ##  135076.211  208560.594  126726.730  201023.769  161421.947  134269.991 
    ##        1833        1834        1835        1836        1837        1838 
    ##  117181.833  193282.436  171866.159  144888.558  138667.712  153276.347 
    ##        1839        1840        1841        1842        1843        1844 
    ##  157215.660  142859.050  165199.541  143373.113  137537.087  152118.094 
    ##        1845        1846        1847        1848        1849        1850 
    ##  142096.998  126045.502  100885.142  126480.520  146702.081  187485.526 
    ##        1851        1852        1853        1854        1855        1856 
    ##  183527.751  138669.514  158778.179  157438.731  136108.219  147733.327 
    ##        1857        1858        1859        1860        1861        1862 
    ##  128473.052   89331.064  138703.228  161409.235  163413.942  173977.963 
    ##        1863        1864        1865        1866        1867        1868 
    ##  186414.911  191124.691  168542.616  224851.174  163338.441  183157.215 
    ##        1869        1870        1871        1872        1873        1874 
    ##  207775.582  262605.657  245796.199  136363.924  195536.726  192757.462 
    ##        1875        1876        1877        1878        1879        1880 
    ##  184984.739  132135.681  171646.259  169032.301  156499.340   99251.164 
    ##        1881        1882        1883        1884        1885        1886 
    ##  122565.550  121269.159  159287.144  169318.755  179618.394  134203.970 
    ##        1887        1888        1889        1890        1891        1892 
    ##  193331.698  123459.370  170885.209  102759.234  145990.308  129950.399 
    ##        1893        1894        1895        1896        1897        1898 
    ##  213026.783  135735.981  112154.688  124475.711  195613.626  192371.399 
    ##        1899        1900        1901        1902        1903        1904 
    ##  171579.344  149792.658  172354.963  242798.739  205155.391  155121.290 
    ##        1905        1906        1907        1908        1909        1910 
    ##  127165.914  171037.246  127340.945  113494.228  156468.287  225878.920 
    ##        1911        1912        1913        1914        1915        1916 
    ##  212334.385  202541.137  188926.354  264810.706  227021.294  196752.270 
    ##        1917        1918        1919        1920        1921        1922 
    ##  287019.024  204369.916  231237.565  253621.615  246202.709  237156.935 
    ##        1923        1924        1925        1926        1927        1928 
    ##  250283.167  198530.339  204437.967  184310.043  250679.749  309449.961 
    ##        1929        1930        1931        1932        1933        1934 
    ##  260076.896  193202.279  247812.792  282035.604  347476.214  193446.222 
    ##        1935        1936        1937        1938        1939        1940 
    ##  223349.171  273559.516  200026.177  269760.536  217609.810  197212.540 
    ##        1941        1942        1943        1944        1945        1946 
    ##  221788.700  203006.448  217263.401  209223.181  245000.702  212946.230 
    ##        1947        1948        1950        1951        1952        1953 
    ##  249003.456  233941.551  227887.924  223072.038  257826.128  182961.719 
    ##        1954        1955        1956        1957        1958        1959 
    ##  167187.004  230149.434  177580.839  258144.900  216868.924  253325.061 
    ##        1960        1961        1962        1963        1964        1965 
    ##  210793.243  247587.331  211886.320  226306.765  156461.518  220349.819 
    ##        1966        1967        1968        1969        1970        1971 
    ##  182961.559  374083.354  227939.496  221726.326  212267.843  256774.894 
    ##        1972        1973        1974        1975        1976        1977 
    ##  296757.473  211558.488  203600.545  189734.518  217605.465  140872.006 
    ##        1978        1979        1980        1981        1982        1983 
    ##  259465.420  260273.664  240503.547  193448.608  215494.099  238989.301 
    ##        1984        1985        1986        1987        1988        1989 
    ##  160149.943  233346.032  177762.397  236399.421  259447.479  268620.155 
    ##        1990        1991        1992        1993        1994        1995 
    ##  239876.386  253661.935  219817.628  267453.106  275657.998  237729.075 
    ##        1996        1997        1998        1999        2000        2001 
    ##  238308.196  264752.216  233710.560  261982.023  269874.900  275298.563 
    ##        2002        2003        2004        2005        2006        2007 
    ##  249166.591  252029.885  239567.340  247450.282  168780.706  287461.593 
    ##        2008        2009        2010        2011        2012        2013 
    ##  284568.133  273038.484  261764.828  289753.601  227340.037  304655.666 
    ##        2014        2015        2016        2017        2018        2019 
    ##  189605.863  224472.703  163743.189  159891.654  126296.879  238740.648 
    ##        2020        2021        2022        2023        2024        2025 
    ##  301055.517  249130.925  265698.152  277435.043  242174.720  262537.995 
    ##        2026        2027        2028        2029        2030        2031 
    ##  246080.872  288403.687  245749.479  275487.697  263426.959  202290.002 
    ##        2032        2033        2034        2035        2036        2037 
    ##  276194.476  302066.675  270057.461  258840.628  275243.227  252477.293 
    ##        2038        2039        2040        2041        2042        2043 
    ##  233988.124  165358.365  122215.239  157669.926  158751.589  173749.939 
    ##        2044        2045        2046        2047        2048        2049 
    ##  201526.616  278810.176  164059.526  172071.529  178796.041  164472.102 
    ##        2050        2051        2052        2053        2054        2055 
    ##  139098.226  139489.316  227122.906  219478.484  194959.741  257747.511 
    ##        2056        2057        2058        2059        2060        2061 
    ##  276332.261  305166.513  343704.593  287509.008  398952.431  479702.027 
    ##        2062        2063        2064        2065        2066        2067 
    ##  335389.294  337757.449  338745.610  132136.760  156402.353  144033.537 
    ##        2068        2069        2070        2071        2072        2073 
    ##  133149.267  232080.167  271842.975  247257.561  256321.131  240303.656 
    ##        2074        2075        2076        2077        2078        2079 
    ##  259428.276  200588.507  243678.797  163468.439  212227.719  262098.486 
    ##        2080        2081        2082        2083        2084        2085 
    ##  227145.056  200013.359  255780.954  158639.693  247821.663  198372.809 
    ##        2086        2087        2088        2089        2090        2091 
    ##  143976.185  166776.409  193350.194  138791.547  145127.788  200560.060 
    ##        2092        2093        2094        2095        2096        2097 
    ##  176733.504  218981.615  208666.492  203342.142  219654.129  263210.762 
    ##        2098        2099        2100        2101        2102        2103 
    ##  240225.842  300222.140  240496.795  233546.789  198609.445  242834.786 
    ##        2104        2105        2106        2107        2108        2109 
    ##  220085.412  200902.195  209830.161  296787.675  261149.112  229247.412 
    ##        2110        2111        2112        2113        2114        2115 
    ##  276203.418  174874.104  209890.102  205610.702  225196.199  238997.058 
    ##        2116        2117        2118        2119        2120        2121 
    ##  294464.929  291156.884  280311.411  244746.351  211731.646  223196.557 
    ##        2122        2123        2124        2125        2126        2127 
    ##  278421.185  237013.035  285740.941  371746.271  399111.749  421462.578 
    ##        2128        2129        2130        2131        2132        2133 
    ##  367789.379  359243.175  333658.900  378679.556  283366.716  301634.995 
    ##        2134        2135        2136        2137        2138        2139 
    ##  307265.158  275933.884  255315.157  217115.290  304869.217  373511.973 
    ##        2140        2141        2142        2143        2144        2145 
    ##  279630.994  275913.419  412748.861  366352.652  366698.817  322908.709 
    ##        2146        2147        2148        2149        2150        2151 
    ##  324977.179  316868.138  324002.964  384233.047  250663.763  328875.915 
    ##        2152        2153        2154        2155        2156        2157 
    ##  375722.668  293381.820  217946.253  264459.325  270218.902  298246.686 
    ##        2158        2159        2160        2161        2162        2163 
    ##  332308.862  290742.033  325661.033  290768.207  317181.445  321135.771 
    ##        2164        2165        2166        2167        2168        2169 
    ##  253259.417  231607.663  283618.256  270197.452  255154.062  325211.455 
    ##        2170        2171        2172        2173        2174        2175 
    ##  324765.110  327478.256  312379.131  293320.326  340103.423  333529.911 
    ##        2176        2177        2178        2179        2180        2181 
    ##  359666.045  328741.760  276836.660  213503.422  227853.522  216747.916 
    ##        2182        2183        2184        2185        2186        2187 
    ##  288034.935  365627.394  554238.825  460528.162  441328.133  335607.516 
    ##        2188        2189        2190        2191        2192        2193 
    ##  334376.512  190641.463  201734.607  288205.738  333193.705  225059.502 
    ##        2194        2195        2196        2197        2198        2199 
    ##  275103.187  391239.284  656598.633  226128.592  409076.984  321469.850 
    ##        2200        2201        2202        2203        2204        2205 
    ##  421627.114  542566.902  326668.587  304148.171  202940.800  219743.374 
    ##        2206        2207        2208        2209        2210        2211 
    ##  251304.243  246714.510  253212.261  227467.261  131890.354  185658.810 
    ##        2212        2213        2214        2215        2216        2217 
    ##  192553.895  226830.436  272710.403  222981.399  330738.588  242184.546 
    ##        2218        2219        2220        2221        2222        2223 
    ##  256241.657  160489.150  243681.633  171782.418  266720.576  283796.909 
    ##        2224        2225        2226        2227        2228        2229 
    ##  286786.390  270639.606  291846.363  293822.169  273198.867  281186.904 
    ##        2230        2231        2232        2233        2234        2235 
    ##  217294.771  209804.720  230031.296  259498.215  241602.705  411029.942 
    ##        2236        2237        2238        2239        2240        2241 
    ##  354802.540  373405.102  102268.787  186052.287  171654.282  163323.237 
    ##        2242        2243        2244        2245        2246        2247 
    ##   65995.022  146509.797  136446.970  137207.918  156149.618  239230.933 
    ##        2248        2249        2250        2251        2252        2253 
    ##  172356.280  114233.711   74154.159  174482.097  205398.352   90854.108 
    ##        2254        2255        2256        2257        2258        2259 
    ##  193869.095  180111.232  129721.584   90627.443  164873.884  108986.359 
    ##        2260        2261        2262        2263        2264        2265 
    ##  168790.304  175832.167  229253.773  157287.067  155813.204  160726.229 
    ##        2266        2267        2268        2270        2271        2272 
    ##  132866.557  367699.087  198248.715  258050.829  278301.593  250268.086 
    ##        2273        2274        2275        2276        2277        2278 
    ##  173065.955  147114.780  243620.438  268846.706  349127.219  197852.878 
    ##        2279        2280        2281        2282        2283        2284 
    ##  103413.669   97190.728   90466.832   95426.693   85812.042  118285.798 
    ##        2285        2286        2287        2288        2289        2290 
    ##  108712.223   72103.699   87402.991   89733.185   94733.710   79748.693 
    ##        2291        2292        2293        2294        2295        2296 
    ##   50726.615  138575.770  144543.131  132734.856  111157.898   54970.503 
    ##        2297        2298        2299        2300        2301        2302 
    ##  110693.400   93818.970  287749.041  355096.860  279567.976  283646.192 
    ##        2303        2304        2305        2306        2307        2308 
    ##  330232.749  315778.860  216873.051  306314.622  261212.126  374661.736 
    ##        2309        2310        2311        2312        2313        2314 
    ##  236589.952  262898.041  284237.513  306679.987  325213.909  201315.777 
    ##        2315        2316        2317        2318        2319        2320 
    ##  331600.158  303439.217  301528.364  302049.655  293191.818  340534.698 
    ##        2321        2322        2323        2324        2325        2326 
    ##  489602.650  420394.325  321870.357  315269.770  443673.204  337735.398 
    ##        2327        2328        2329        2330        2331        2332 
    ##  398891.039  441806.219  230818.093  284953.850  258202.601  442214.611 
    ##        2333        2334        2335        2336        2337        2338 
    ##  369415.441  361846.432  285134.036  249153.910   55951.162  120206.502 
    ##        2339        2340        2341        2342        2343        2344 
    ##   91695.120   84137.310   83102.394  156334.521  135650.446  156714.307 
    ##        2345        2346        2347        2348        2349        2350 
    ##  112249.016  169889.178  199024.287  195152.341  154616.905  145947.643 
    ##        2351        2352        2353        2354        2355        2356 
    ##  130420.082  136405.932  153773.993  211057.165  194264.202  220934.759 
    ##        2357        2358        2359        2360        2361        2362 
    ##  140650.408  277736.271  179116.689   99764.076   90819.897  100737.534 
    ##        2363        2364        2365        2366        2367        2368 
    ##   89660.439  156700.683   93407.207  165535.574   70782.439   59465.666 
    ##        2370        2371        2372        2373        2374        2375 
    ##  110286.637   80388.935   93215.879  113333.411  179706.964  187638.945 
    ##        2376        2377        2378        2379        2380        2381 
    ##  144920.355   97077.260  120921.320   65061.278   20113.548   52086.886 
    ##        2382        2384        2385        2386        2387        2388 
    ##   66416.314   84967.091   63756.328  152653.388   50899.744  130509.887 
    ##        2389        2390        2391        2392        2393        2394 
    ##   81794.406   97119.130   11789.194   80055.681  126266.446  180840.824 
    ##        2395        2396        2397        2398        2399        2400 
    ##  162424.989  227724.721  227677.765  230780.363  242898.660  140067.892 
    ##        2401        2402        2403        2404        2405        2406 
    ##  139786.288  181929.800   64316.159  290298.082  262195.828  169281.189 
    ##        2407        2408        2409        2410        2411        2412 
    ##  235562.614  155925.333  241434.874  279535.036  223481.367  234559.717 
    ##        2413        2414        2415        2416        2417        2418 
    ##  200282.107  272215.718  294256.346  227658.470  325398.455  389576.492 
    ##        2419        2420        2421        2422        2423        2424 
    ##  237792.396  183845.016  191562.606  143209.460  160218.413  233774.193 
    ##        2425        2426        2427        2428        2429        2430 
    ##  249714.906  207402.559  372779.798  317407.845  292631.408  356182.388 
    ##        2431        2432        2433        2434        2435        2436 
    ##  296004.701  281096.188  359463.916  407943.611  336229.082  375519.028 
    ##        2437        2438        2439        2440        2441        2442 
    ##  683848.532  275259.180  267041.150  216205.263  307184.541  260790.665 
    ##        2443        2444        2445        2446        2447        2448 
    ##  278174.821  239152.274  279663.860  329274.767  149995.891  232125.317 
    ##        2449        2450        2451        2452        2453        2454 
    ##  289282.415  319241.190  353472.553  251960.551  229959.950  202300.317 
    ##        2455        2456        2457        2458        2459        2460 
    ##  165299.002  224166.784  213735.619  246439.152  178019.998 -155960.393 
    ##        2461        2462        2463        2464        2465        2466 
    ##  208736.085  173902.462  152648.664  207012.753  299253.203  133223.477 
    ##        2467        2468        2469        2470        2471        2472 
    ##  277389.198  178845.111  201948.863  241275.009  245879.479  223426.455 
    ##        2473        2474        2475        2476        2477        2478 
    ##  158313.593  240650.265  230170.421  253568.702  202408.243  283173.547 
    ##        2479        2480        2481        2482        2483        2484 
    ##  222354.339  294914.743  164702.132  184650.814  193325.917  186143.622 
    ##        2485        2486        2487        2488        2489        2490 
    ##  178424.968  135104.129  118547.601  180190.498  112246.983  167354.833 
    ##        2491        2492        2493        2494        2495        2496 
    ##   68316.708   74055.528   80501.230   84745.031  107553.415   25545.673 
    ##        2497        2498        2499        2500        2501        2502 
    ##   96306.179   90654.702   90476.387   80339.272   95828.511   93716.988 
    ##        2503        2504        2505        2506        2507        2508 
    ##  138631.072  110680.489   83740.518  105007.891  -37209.797   95710.317 
    ##        2509        2510        2511        2512        2513        2514 
    ##  128050.411  256699.411  227597.832  241576.401  172230.054  187830.806 
    ##        2515        2516        2517        2518        2519        2520 
    ##  209256.534  231029.750  228515.405  232729.807  286050.434  290638.493 
    ##        2521        2522        2523        2524        2525        2526 
    ##  259959.640  188676.829  271537.485  555578.434  257991.277  303812.908 
    ##        2527        2528        2529        2530        2531        2532 
    ##  289774.357  196566.303  214641.570  296155.251  232728.395  142324.489 
    ##        2533        2534        2535        2536        2537        2538 
    ##  258579.608  216645.249  160649.716  175715.974  237161.316  271442.170 
    ##        2539        2540        2541        2542        2543        2544 
    ##  250658.713  187841.899  272091.156  279729.726  192469.321  277207.697 
    ##        2545        2546        2547        2548        2549        2550 
    ##  189492.186  208038.484  297291.646  213686.426  332198.720  294775.513 
    ##        2551        2552        2553        2554        2555        2556 
    ##  299202.640  254810.010  270002.305  179086.678  247741.510  148406.269 
    ##        2557        2558        2559        2560        2561        2562 
    ##  168122.771  255365.597  220021.133  322985.302  402496.512  265756.079 
    ##        2563        2564        2565        2566        2567        2568 
    ##  338101.485  258561.319  294546.393  347618.312  335989.188  344149.602 
    ##        2569        2570        2571        2572        2573        2574 
    ##  279018.460  279241.386  446173.709  448837.824  353434.383  422760.562 
    ##        2575        2576        2577        2578        2579        2580 
    ##  334656.999  294358.967  309092.905  372277.333  287508.304  275533.214 
    ##        2581        2582        2583        2584        2585        2586 
    ##  240720.347  254541.737  288011.743  331950.561  281790.589  247252.452 
    ##        2587        2588        2589        2590        2591        2592 
    ##  329030.565  271933.484  261989.124  236089.053  251424.687  209314.306 
    ##        2593        2594        2595        2596        2597        2598 
    ##  254901.672  294079.105  257873.110  337616.305  298519.020  186345.715 
    ##        2599        2600        2601        2602        2603        2604 
    ##  201623.845  229664.486  265149.206  155575.222  324502.021  273700.720 
    ##        2605        2606        2607        2608        2609        2610 
    ##  295044.194  357447.381  272570.804  297063.064  256074.828  162237.497 
    ##        2611        2612        2613        2614        2615        2616 
    ##  365574.299  289756.403  286505.005  219660.429  205490.484  302696.685 
    ##        2617        2618        2619        2620        2621        2622 
    ##  300506.803  554277.143  218058.308  240234.605  355443.563  323471.804 
    ##        2623        2624        2625        2626        2627        2628 
    ##  347352.692  264568.255  438055.081  200508.842  311655.123  290402.852 
    ##        2629        2630        2631        2632        2633        2634 
    ##  109919.641  356027.991  329634.851  263194.136  151208.485  244229.237 
    ##        2635        2636        2637        2638        2639        2640 
    ##  271887.603  180129.348  336961.298  283887.344  240475.577  343490.598 
    ##        2641        2642        2643        2644        2645        2646 
    ##  342905.136  279363.353  261296.218  306201.672  267603.954  188467.394 
    ##        2647        2648        2649        2650        2651        2652 
    ##  304087.407  283491.832  336196.667  309916.450  373170.312  366682.238 
    ##        2653        2654        2655        2656        2657        2658 
    ##  354947.507  338100.136  400693.514  356171.099  275609.180  246267.846 
    ##        2659        2660        2661        2662        2663        2664 
    ##  231734.951  210459.331  216998.508  198963.046  188871.455  196267.848 
    ##        2665        2666        2667        2668        2669        2670 
    ##  205990.330  301043.926  515097.643  342480.549  286395.680  482355.214 
    ##        2671        2672        2673        2675        2676        2677 
    ##  530099.409  333249.203  504086.679  349591.031  242319.261  156589.400 
    ##        2678        2679        2680        2681        2682        2683 
    ##  259133.928  224804.631  211851.329  439246.939  313202.758  295170.622 
    ##        2684        2685        2686        2687        2688        2689 
    ##  215240.987  237653.997  173006.957  174450.571  154935.784  203977.142 
    ##        2690        2691        2692        2693        2694        2695 
    ##  265730.903  225225.030  163595.945  127780.735  272439.577  230589.637 
    ##        2696        2697        2698        2699        2700        2701 
    ##  252100.450  271896.550  226550.314  197825.171  209792.158  167450.609 
    ##        2702        2703        2704        2705        2707        2708 
    ##  217242.145  231439.934  283667.154  293409.920  110449.036  187727.040 
    ##        2709        2710        2711        2712        2713        2714 
    ##  103188.263  134442.886  115927.418  144027.879  115952.622  177185.461 
    ##        2715        2716        2717        2718        2719        2720 
    ##  142960.522  156198.444  143368.723   93722.753  119757.122  154565.318 
    ##        2721        2722        2723        2724        2725        2726 
    ##  199826.416  334827.481  212677.096  259917.155  250026.641  240521.207 
    ##        2727        2728        2729        2730        2731        2732 
    ##  263125.366  242350.841  176618.301  201092.733  323641.199  484551.019 
    ##        2733        2734        2735        2736        2737        2738 
    ##  581797.589  321950.133  474570.459  236515.244  363938.975  211647.874 
    ##        2739        2740        2741        2742        2743        2744 
    ##  169424.319  369248.297  290203.341  221965.010  204991.578  252381.364 
    ##        2745        2746        2747        2748        2749        2750 
    ##  253533.669  169675.845  293587.742  272067.762  274229.674  234203.056 
    ##        2751        2752        2753        2754        2755        2756 
    ##  284664.123  235575.801  198186.597  216461.585  226394.117  248622.229 
    ##        2757        2758        2759        2760        2761        2762 
    ##  154713.871  225740.220  195894.921  190423.115  205843.054  225737.653 
    ##        2763        2764        2765        2766        2767        2768 
    ##  202521.235  214578.382  193804.377  234870.493  258268.730  225715.071 
    ##        2769        2770        2771        2772        2773        2774 
    ##  231965.350  204809.057  102058.253  172790.771  191332.618  159213.934 
    ##        2775        2776        2777        2778        2779        2780 
    ##  170161.611  151158.001  164588.643  236795.749  178978.807  248445.759 
    ##        2781        2782        2783        2784        2785        2786 
    ##  237706.110  221486.562  238933.940  200070.187  210437.972  216625.999 
    ##        2787        2788        2789        2790        2791        2792 
    ##  210507.197  227268.672  169520.234  227844.015  194300.708  205245.696 
    ##        2793        2794        2795        2796        2797        2798 
    ##  221067.164  214661.198  191838.305  238835.916  316957.887  188824.038 
    ##        2799        2800        2801        2802        2803        2804 
    ##  260331.229  240282.399  203613.097  213666.432  246421.969  168932.907 
    ##        2805        2806        2807        2808        2809        2810 
    ##  228531.105  202357.703  173918.171  220583.900  247897.655  223777.118 
    ##        2811        2812        2813        2814        2815        2816 
    ##  190416.128  183064.122  231920.280  170431.114  208497.896  200244.315 
    ##        2817        2818        2819        2820        2821        2822 
    ##  213818.427  182375.595  166123.950  197979.152  252805.831  264236.583 
    ##        2823        2824        2825        2826        2827        2828 
    ##  280148.216  246166.545  255088.940  226785.010  232751.597  284290.138 
    ##        2829        2830        2831        2832        2833        2834 
    ##  233124.042  278506.428  290655.951  288811.456  272062.579  257656.874 
    ##        2835        2836        2837        2838        2839        2840 
    ##  287821.386  296431.815  283408.815  267243.570  208675.873  446304.993 
    ##        2841        2842        2843        2844        2845        2846 
    ##  123371.244  285435.190  281157.543  239688.283  492102.064  261629.089 
    ##        2847        2848        2849        2850        2851        2852 
    ##  414346.117  341619.639  282285.662  294425.221  283936.073  292162.081 
    ##        2853        2854        2855        2856        2857        2858 
    ##  416153.136  418817.240  473039.434  357394.097  265015.510  276537.152 
    ##        2859        2860        2861        2862        2863        2864 
    ##  179771.419  172316.449  174946.462  242285.079  287705.289  238454.279 
    ##        2865        2866        2867        2868        2869        2870 
    ##  184882.118  219629.307  132795.000  257483.476  291268.391  168905.686 
    ##        2871        2872        2873        2874        2875        2876 
    ##  224600.848  336022.824  239735.976  277198.130  290869.906  315918.356 
    ##        2877        2878        2879        2880        2881        2882 
    ##  321634.668  340168.337  274521.355  289232.592  173455.306  248032.654 
    ##        2883        2884        2885        2886        2887        2888 
    ##  309733.214  253570.112  295623.440  237216.468  273327.585  230173.487 
    ##        2889        2890        2891        2892        2893        2894 
    ##  235476.580  241871.368  218787.366  246194.131  230419.566  216224.302 
    ##        2895        2896        2897        2898        2899        2900 
    ##  224523.312  160434.026  221706.263  174819.179  234118.205  184689.161 
    ##        2901        2902        2903        2904        2905        2906 
    ##  180429.874  386050.658   35682.743   63526.399    1058.545   33231.338 
    ##        2907        2908        2909        2910        2911        2912 
    ##   49035.615  122278.237   99764.955   81313.661  115981.144  200405.907 
    ##        2913        2914        2915        2916        2917        2918 
    ##  166960.405  140916.258  170693.308  171493.976   97410.417  180007.103 
    ##        2919        2920        2921        2922        2923        2924 
    ##  163558.741   98202.514  178198.424  181174.467  143527.701  115610.695 
    ##        2925        2926        2927        2928        2929        2930 
    ##   13492.011  185803.620  130898.381   90885.531  143214.854   71882.613 
    ##        2931        2932        2933        2934        2935        2936 
    ##  128634.303   93033.150  108579.737  122096.475  134129.108   69505.210 
    ##        2937        2938        2939        2940        2941        2942 
    ##   56032.489   76061.659   24779.547   75848.135   55100.976   45806.801 
    ##        2943        2944        2945        2946        2947        2948 
    ##   13990.588   28509.603   61634.444  101361.576    2680.375   82289.785 
    ##        2949        2950        2951        2952        2953        2954 
    ##   15438.529  155381.167  126198.213  123909.240   83958.263   98654.757 
    ##        2955        2956        2957        2958        2959        2960 
    ##   90903.726  105400.750   77794.872  120347.425   91715.061  138374.247 
    ##        2961        2962        2963        2964        2965        2966 
    ##  161368.309  213173.834  122326.352  501177.317  139801.188  131765.560 
    ##        2967        2968        2969        2970        2971        2972 
    ##  145455.987  172852.351  168952.227  134278.534  191948.587  104264.994 
    ##        2973        2974        2975        2976        2977        2978 
    ##  159046.789   76248.244  121619.655  131750.176  135411.511  163573.119 
    ##        2979        2980        2981        2982        2983        2984 
    ##  153279.544  160546.322  164064.087  145368.826  157177.355  217104.820 
    ##        2985        2986        2987        2988        2989        2990 
    ##  166999.391  225330.255  189525.229  140046.916  234448.125  303031.540 
    ##        2991        2992        2993        2994        2995        2996 
    ##  189490.411  150011.740   54313.321  135241.830  145940.060  149691.992 
    ##        2997        2998        2999        3000        3001        3002 
    ##  141011.510   94443.081  174770.040  113230.499   84689.928  101551.674 
    ##        3003        3004        3005        3006        3007        3008 
    ##  209489.500  157239.763  180887.806  169632.131  208891.195  186278.973 
    ##        3009        3010        3011        3013        3014        3015 
    ##  101487.590  157807.474  163866.819  123516.914  161548.685  116079.804 
    ##        3016        3017        3018        3019        3020        3021 
    ##  128505.059   29298.654  118887.679   97631.835  161959.613   90786.980 
    ##        3022        3023        3024        3025        3026        3027 
    ##  130394.290  207193.701  184638.556   77934.197   96481.000  129768.417 
    ##        3028        3029        3030        3031        3032        3033 
    ##  125056.082  149753.054   91266.479   99295.055  108281.041  146552.509 
    ##        3034        3035        3036        3037        3038        3039 
    ##  113067.876  211238.644  156678.546  197415.343  148946.838  203129.574 
    ##        3040        3041        3042        3043        3044        3045 
    ##  186315.443  150228.680  159646.590  156885.343  189304.953   99585.861 
    ##        3046        3047        3048        3049        3050        3051 
    ##   92187.641  137534.963  132840.626   96863.679  130956.524  112523.318 
    ##        3052        3053        3054        3055        3056        3057 
    ##   82557.926   93853.847  138270.217  100738.240  110362.152   92426.613 
    ##        3058        3059        3060        3061        3062        3063 
    ##  131920.272   51076.476   27833.755   82123.705  115882.530  132455.448 
    ##        3064        3065        3066        3067        3068        3069 
    ##  128680.150  126277.640  156356.206   63272.096  113923.613   91915.429 
    ##        3070        3071        3072        3073        3074        3075 
    ##   91157.245  238905.672  193411.797  115782.065  156231.686   98236.912 
    ##        3076        3077        3078        3079        3080        3081 
    ##  112411.159  199453.748  135928.299  112726.636  142159.571  237408.032 
    ##        3082        3083        3084        3085        3086        3087 
    ##  143754.878   56713.057   92542.089  167900.294  186251.783  284775.921 
    ##        3088        3089        3090        3091        3092        3093 
    ##  136568.123  127614.620  355195.213  142014.915  109547.042   50146.736 
    ##        3094        3095        3096        3097        3098        3099 
    ##   14772.604   40433.849   42367.864   37470.225  -32435.818   -4548.183 
    ##        3100        3101        3102        3103        3104        3105 
    ##   -3291.901    5000.435  189300.280  163958.714  190052.324  149892.350 
    ##        3106        3107        3108        3109        3110        3111 
    ##   32312.498  116648.750   98186.418  165298.261  212713.936  150759.564 
    ##        3112        3113        3114        3115        3116        3117 
    ##  140141.757  145014.235  240783.965   94759.919  105995.342   79397.248 
    ##        3118        3119        3120        3121        3122        3123 
    ##   74132.903  148984.534  184407.437  148245.449  350288.740  165542.757 
    ##        3124        3125        3126        3127        3128        3129 
    ##  306186.038  193094.686   67466.088  123135.306   70885.801   81029.524 
    ##        3130        3131        3132        3134        3135        3136 
    ##  141407.553  145999.378  128654.557  127417.824  130924.523  121834.550 
    ##        3137        3138        3139        3140        3141        3142 
    ##  215568.659  165676.704  222781.601  225293.701  182760.625  145163.388 
    ##        3143        3144        3145        3146        3147        3148 
    ##   62350.872   63717.866  109636.826  132742.637  123452.369  161388.693 
    ##        3149        3150        3151        3152        3153        3154 
    ##  170639.008  176439.444  287746.186  206090.232   90604.649   92238.063 
    ##        3155        3156        3157        3158        3159        3160 
    ##   75405.506  106118.620   81201.054   79588.068   84918.255  103920.833 
    ##        3161        3162        3163        3164        3165        3166 
    ##  120012.243  122875.573  152586.820   85633.327  332804.938  183313.378 
    ##        3167        3168        3169        3170        3171        3172 
    ##   86974.484  102099.425  159165.494  142551.734  311126.890  174263.676 
    ##        3173        3174        3175        3176        3177        3178 
    ##  116355.127  139956.919  120723.218  257818.037  228002.214  184969.710 
    ##        3179        3180        3181        3182        3183        3184 
    ##  130808.227  180601.020  197605.995  319035.398  308190.674  143006.428 
    ##        3185        3186        3187        3188        3189        3190 
    ##  157956.137  180398.331  180179.508  190014.111  194537.420  129558.770 
    ##        3191        3192        3193        3194        3195        3196 
    ##  129146.580  106417.449  175493.842   63169.414   95367.863   60986.831 
    ##        3197        3198        3199        3200        3202        3203 
    ##   85272.909  121712.211   68382.305  207622.358  209087.561   75153.479 
    ##        3204        3205        3206        3207        3208        3209 
    ##  126373.192  136783.796  112587.983  108343.939  121202.110  108295.034 
    ##        3210        3211        3212        3213        3214        3215 
    ##  159794.803   91916.401   70968.868   99342.294  102759.257  124645.694 
    ##        3216        3217        3218        3219        3220        3221 
    ##   87354.911  116584.876   95722.136  120460.252  127043.794   99721.533 
    ##        3222        3223        3224        3225        3226        3227 
    ##  140287.503  106337.598   76949.918  163605.069  194961.071  114820.333 
    ##        3228        3229        3230        3231        3232        3233 
    ##  156054.294  187515.787  193885.128  163228.506  164699.579  400210.783 
    ##        3234        3235        3236        3237        3238        3239 
    ##  145222.782  143844.929  167501.308  136926.055  133359.950  122666.215 
    ##        3240        3241        3242        3243        3244        3245 
    ##  126543.744  127350.487  127927.413  187762.699  168685.373  146329.552 
    ##        3246        3247        3248        3250        3251        3252 
    ##  149834.317  149322.669  158638.931  204005.044   99170.233  137654.221 
    ##        3253        3254        3255        3256        3257        3258 
    ##  152733.177  103832.259  160395.636  224121.512  184137.936    6548.685 
    ##        3259        3260        3261        3262        3263        3264 
    ##   92246.220  111790.506  127155.809   66850.801  104583.432  145477.027 
    ##        3265        3266        3267        3268        3269        3270 
    ##  102086.395   84052.789  165260.569  182801.621  107727.527  173800.544 
    ##        3271        3272        3273        3274        3275        3276 
    ##  102989.266  161810.756  113753.060  174751.920  221631.154  168440.990 
    ##        3277        3278        3279        3280        3281        3282 
    ##  163639.920  166242.047  104335.177  106643.623  155214.455  125533.322 
    ##        3283        3284        3285        3286        3287        3288 
    ##  180311.113  184069.349  171542.711  183320.365  113473.019  198561.584 
    ##        3289        3290        3291        3292        3293        3294 
    ##  312972.383  332448.829  102025.715  164684.540  146628.559  139907.598 
    ##        3295        3296        3297        3298        3299        3300 
    ##  161345.962   68731.701  163379.081  175704.845   97899.182  120346.713 
    ##        3301        3302        3303        3304        3305        3306 
    ##  145685.259  177640.429  141238.450  257396.045  327476.995  233301.762 
    ##        3307        3308        3309        3310        3311        3312 
    ##  340939.887  216118.009  172372.054  208588.827  211359.401  109381.900 
    ##        3313        3314        3315        3316        3317        3318 
    ##  166324.089  111701.492  143968.562  161642.449  122670.112  238960.032 
    ##        3319        3320        3321        3322        3323        3324 
    ##  152666.375  164066.727  165879.788  117977.198   88445.919  126551.325 
    ##        3325        3326        3327        3328        3329        3330 
    ##  161002.383  173388.090  161049.272  166330.962  215595.741  140278.727 
    ##        3331        3332        3333        3334        3335        3336 
    ##  153977.041  171934.505  137576.965  111520.130  187214.652  290668.888 
    ##        3337        3338        3339        3340        3341        3342 
    ##  102128.725  183593.318  137657.166  165529.739  223975.739  181521.870 
    ##        3343        3344        3345        3346        3347        3348 
    ##   76592.051  111789.294   15327.811  125940.996  120569.711  144647.189 
    ##        3349        3350        3351        3352        3353        3354 
    ##  126638.354   83920.267  153263.898  125762.718  108724.194  113649.766 
    ##        3355        3356        3357        3358        3359        3360 
    ##  116194.452  123483.430  132669.666  133912.099  135112.037   65521.181 
    ##        3361        3362        3363        3364        3365        3366 
    ##  136945.256  130744.722   86084.223  121846.896  108336.856  159071.141 
    ##        3367        3368        3369        3370        3371        3372 
    ##  125846.868   94675.821  114253.405  133053.789  146212.614  122524.411 
    ##        3373        3374        3375        3376        3377        3378 
    ##  124324.274  107889.794   57431.638   77792.071  109252.003  109823.678 
    ##        3379        3380        3381        3382        3383        3384 
    ##  105803.616  157042.249  150827.753   87121.428   84176.467   79929.962 
    ##        3385        3386        3387        3388        3389        3390 
    ##   97078.547   70306.271  246757.292  111457.974  116666.030  121058.602 
    ##        3391        3392        3393        3394        3395        3396 
    ##   97410.950   95018.737   90373.116   76987.361  132940.616  142949.187 
    ##        3397        3398        3399        3400        3401        3402 
    ##  171880.945  180471.229  135765.120  129083.670   62956.288   49073.518 
    ##        3403        3404        3405        3406        3407        3408 
    ##   84481.325   89969.728   85142.628  103917.416  102358.490  182854.335 
    ##        3409        3410        3411        3412        3413        3414 
    ##  125394.304  195373.437  180118.870   36499.561   59746.864   57923.043 
    ##        3415        3416        3417        3418        3419        3420 
    ##  176517.507  213646.010  284794.925   45269.782  130949.312  115070.017 
    ##        3421        3422        3423        3424        3425        3426 
    ##  134605.811  112680.584   92047.764  107340.581  119845.029  159211.786 
    ##        3427        3428        3429        3430        3431        3432 
    ##  201941.479  109693.060   93263.949  174032.956  131679.634  228687.697 
    ##        3433        3434        3435        3436        3437        3438 
    ##  191079.734  143109.934  191131.498  180078.607  146848.316  222195.538 
    ##        3439        3440        3441        3442        3443        3444 
    ##   89355.784  277502.221  235217.667  250469.247  162753.175  116131.694 
    ##        3445        3446        3447        3448        3449        3450 
    ##   89023.755  153792.839  111515.447  122980.942  152316.709  113294.173 
    ##        3451        3452        3453        3454        3455        3456 
    ##   77980.852   40256.321  180633.768  212023.174  195674.360   89444.597 
    ##        3457        3458        3459        3460        3461        3462 
    ##   78055.499  105809.959   87897.352   59725.391   92564.029  133632.756 
    ##        3463        3464        3465        3466        3467        3468 
    ##   58281.337   31330.272   96109.774  100666.597  123047.735  111162.304 
    ##        3469        3470        3471        3472        3473        3474 
    ##  126836.120   84097.983  100639.940   46723.509  117373.997   81980.331 
    ##        3475        3476        3477        3478        3479        3480 
    ##   87380.767   91438.004   25322.815  131173.065  130775.619   87182.796 
    ##        3481        3482        3483        3484        3485        3486 
    ##  106728.615  116826.020  133110.357  100191.184   76494.688  106524.851 
    ##        3487        3489        3490        3492        3493        3494 
    ##    6946.456   13247.225   13833.614   81341.863  202021.912   71209.091 
    ##        3495        3496        3497        3498        3499        3500 
    ##  279681.076  225175.079  278629.686  200213.672  149849.419  151157.002 
    ##        3501        3502        3503        3504        3505        3506 
    ##  214407.353  225490.357  167329.124  239117.671  192812.358  111819.885 
    ##        3507        3508        3509        3510        3511        3512 
    ##  113989.121   78025.987   61850.509   68905.553  108554.298  -23665.004 
    ##        3513        3514        3515        3516        3517        3518 
    ##  107719.507  228773.389  275474.936  206323.683  283413.400  215868.431 
    ##        3519        3520        3521        3522        3523        3524 
    ##  214036.922  232630.577  225533.848  191320.540  187785.417  215210.384 
    ##        3525        3526        3527        3528        3529        3530 
    ##  197119.294  204036.199  228310.771  238524.668  197638.972  173673.445 
    ##        3531        3532        3533        3534        3535        3536 
    ##  181440.561  187698.843  273806.403  231777.127  232095.274  168922.274 
    ##        3537        3538        3539        3540        3541        3542 
    ##  145846.913  163645.554  158179.167  123337.891  173656.235  163899.680 
    ##        3543        3544        3545        3546        3547        3548 
    ##  177701.659  200124.736  207997.356  136969.387  133036.513  172349.098 
    ##        3549        3550        3552        3553        3554        3555 
    ##  193597.115  190492.918  221010.663  195623.669  163913.645  202485.081 
    ##        3556        3557        3558        3559        3560        3561 
    ##  177860.531  215524.076  247224.986  214955.520  198770.113  201209.937 
    ##        3562        3563        3564        3565        3566        3567 
    ##  182867.564  210849.486  228326.469  225864.678  106784.310  107580.938 
    ##        3568        3569        3570        3571        3572        3573 
    ##  220452.124  157638.618  128424.747  130821.047  151848.605  115207.952 
    ##        3574        3575        3576        3577        3578        3580 
    ##  161452.232   88721.783  152660.369  204094.501  137597.350  137726.393 
    ##        3581        3582        3583        3584        3585        3586 
    ##  163770.913  151287.376  127124.704  223248.820  372053.643  391635.527 
    ##        3587        3588        3589        3590        3591        3592 
    ##  260867.191  184149.062  314750.393  337421.700  289250.910  255733.226 
    ##        3593        3595        3596        3597        3598        3599 
    ##  255792.065  195957.187  221520.187  203612.409  170813.050  250366.384 
    ##        3600        3601        3602        3603        3604        3605 
    ##  276396.393  269823.728  203228.021  225482.613  234644.144  207587.565 
    ##        3606        3607        3608        3609        3610        3611 
    ##  219143.286  217040.718  214571.673  230618.305  222268.439  171740.844 
    ##        3612        3613        3614        3615        3616        3617 
    ##  259659.894  182406.515  237477.103  268942.268  363211.386  297655.816 
    ##        3618        3619        3620        3621        3622        3623 
    ##  226533.558  271536.870  267221.065  271023.125  298219.592  409974.917 
    ##        3624        3625        3626        3627        3628        3629 
    ##   82423.165  254175.408  314007.368  366143.945  284886.019  313569.619 
    ##        3630        3631        3632        3633        3634        3635 
    ##  281767.128  473436.585  229709.334  269235.968  222457.240  216512.658 
    ##        3636        3637        3638        3639        3640        3641 
    ##  256363.014  202003.077  222951.925  241504.276  258012.637  243961.876 
    ##        3642        3643        3644        3645        3646        3647 
    ##  324875.916  341699.545  301951.600  299695.633  300235.332  285746.937 
    ##        3648        3649        3650        3651        3652        3653 
    ##  215571.437  210214.380  274046.619  250420.114  286808.149  238750.107 
    ##        3654        3655        3656        3657        3658        3659 
    ##  236399.861  243201.823  189663.006  227294.021  222072.811  195326.424 
    ##        3660        3661        3662        3663        3664        3665 
    ##  244876.295  278004.676  147388.669  170028.880  177786.111  290247.046 
    ##        3666        3667        3668        3669        3670        3671 
    ##  250885.569  272755.847  260173.788  209853.494  209555.850  200261.719 
    ##        3672        3673        3674        3675        3676        3677 
    ##  229563.416  171864.123  268462.846  228649.939  221325.543  266646.787 
    ##        3678        3679        3680        3681        3682        3683 
    ##  147361.439  324696.608  432969.966  364181.121  221702.971  263619.584 
    ##        3684        3685        3686        3687        3688        3689 
    ##  236396.245  311137.916  274889.020  306435.275  153294.324  184571.796 
    ##        3690        3691        3692        3693        3694        3695 
    ##  215396.267  209002.053  206829.972  247202.717  216099.983   97225.270 
    ##        3696        3697        3698        3699        3700        3701 
    ##  113030.984  118650.729  169506.908  160664.075  236559.793  209372.675 
    ##        3702        3703        3704        3705        3706        3707 
    ##  173155.912  212296.231  260804.847  168618.630  194032.950  196569.584 
    ##        3708        3709        3710        3711        3712        3713 
    ##  166686.628  172261.781  223031.121  437444.161  301523.893  285596.721 
    ##        3714        3715        3716        3717        3718        3719 
    ##  159990.201  145647.387  132048.367  167462.314  217474.426  173080.366 
    ##        3720        3721        3722        3723        3724        3725 
    ##  146993.892  170296.769  168487.814  152705.331  189258.739  210623.007 
    ##        3726        3727        3728        3729        3730        3731 
    ##  180690.057  199473.736  238990.312  164472.605  221554.010  199063.725 
    ##        3732        3733        3734        3735        3736        3737 
    ##  191749.984  203388.366  148923.504  153673.392  171803.442  257498.358 
    ##        3738        3739        3740        3741        3742        3744 
    ##  205097.201  199975.411  176144.413  216695.658  300760.252  224444.100 
    ##        3745        3746        3747        3748        3749        3751 
    ##  300702.467  260015.314  237167.040  237932.269  216895.506  158351.998 
    ##        3752        3753        3754        3755        3756        3757 
    ##  152843.459  183642.203  230929.344  190351.974  192696.660  208578.909 
    ##        3758        3759        3761        3762        3763        3764 
    ##  193388.682  232873.924  196048.521  221056.753  210137.752  197250.771 
    ##        3765        3766        3767        3768        3769        3770 
    ##  168645.057  108734.243  212973.764  254123.180  235732.312  246586.397 
    ##        3771        3772        3773        3774        3775        3776 
    ##  235419.396  277602.883  285780.987  204784.789  149906.581  239213.297 
    ##        3777        3778        3780        3781        3782        3783 
    ##  275982.745  310779.975  247831.540  234444.276  275816.560  190593.623 
    ##        3784        3785        3786        3787        3788        3789 
    ##  232555.533  183172.090  262086.765  201490.733  183418.297  179718.541 
    ##        3790        3791        3792        3793        3794        3795 
    ##  136138.564  195730.309  188079.886  220664.144  228104.714  238548.605 
    ##        3796        3797        3798        3799        3800        3801 
    ##  230838.829  186019.215  207040.027  199739.521  242961.112  168750.979 
    ##        3802        3803        3804        3805        3806        3807 
    ##  315055.758  271929.875  200242.009  224850.844  216449.799  198191.314 
    ##        3808        3809        3810        3811        3812        3813 
    ##  279112.958  300590.223  301661.663  257819.904  267122.765  223350.774 
    ##        3814        3815        3816        3817        3818        3819 
    ##  244470.764  225916.030  340393.354  335139.167  303008.153  245357.397 
    ##        3820        3821        3822        3823        3824        3825 
    ##  295858.453  251342.075  288358.817  302513.611  197382.254  201827.249 
    ##        3826        3827        3828        3829        3830        3831 
    ##  312958.825  282240.111  279670.966  250156.516  196148.613  294708.757 
    ##        3832        3833        3834        3835        3836        3837 
    ##  237599.421  159509.106  225286.516  117532.035  247937.007  195780.282 
    ##        3838        3839        3840        3841        3842        3843 
    ##  210520.928  224202.791  180686.296  195308.709  172985.856  159382.750 
    ##        3844        3845        3846        3847        3848        3849 
    ##  197136.163  199106.148  173934.439  219483.194  170665.915  187736.585 
    ##        3850        3851        3852        3853        3854        3855 
    ##  180163.974  210670.733  124357.976  314189.275  182969.786  210848.485 
    ##        3856        3857        3858        3859        3860        3861 
    ##  164388.543  208834.005  204081.525  120623.010  269130.475  173569.172 
    ##        3862        3863        3864        3865        3866        3867 
    ##  210697.006  209292.406  236254.015  214325.257  246058.748  239888.844 
    ##        3868        3869        3871        3872        3873        3874 
    ##  178454.075  200494.344  233477.947  227029.243  205644.577  190883.164 
    ##        3875        3876        3877        3878        3879        3880 
    ##  174418.229  273490.146  288939.096  305207.098  299193.488  184935.891 
    ##        3881        3882        3883        3884        3885        3886 
    ##  253062.940  186128.170  220798.421  191961.502  266495.525  200438.491 
    ##        3887        3888        3889        3890        3891        3892 
    ##  206113.213  236727.644  162765.009  246382.049  156249.674  155711.262 
    ##        3893        3894        3895        3896        3897        3898 
    ##  309242.663  252788.805  261457.756  268817.833  222196.610  195827.621 
    ##        3899        3900        3901        3902        3903        3904 
    ##  230733.892  237540.192  168206.453  184416.744  220126.770  253303.236 
    ##        3905        3906        3907        3908        3909        3910 
    ##  139707.174   76147.667  144499.443   84073.106   84036.811  274893.138 
    ##        3911        3912        3913        3914        3915        3916 
    ##  194813.595  283608.115  287314.230  331721.625  147799.528  373868.973 
    ##        3917        3918        3919        3920        3921        3922 
    ##  268847.724  233071.398  267459.721  261895.980  301909.076  317222.209 
    ##        3923        3924        3925        3926        3927        3928 
    ##  364456.146  530116.772  694509.181  503211.281  528619.348  664837.985 
    ##        3929        3930        3931        3932        3933        3934 
    ##  323720.818  400373.690  292434.730  301387.963  245105.886  257031.286 
    ##        3935        3936        3937        3938        3939        3940 
    ##  171590.588  149983.541  251464.998  240658.695  264565.376  272144.342 
    ##        3941        3942        3943        3944        3945        3946 
    ##  238421.036  263866.906  278453.647  230639.308  259605.756  257945.579 
    ##        3947        3948        3949        3950        3951        3952 
    ##  308978.914  175424.278  185064.481  189623.471  324558.058  261812.243 
    ##        3953        3954        3955        3956        3957        3958 
    ##  308752.239  279377.947  183558.850  208443.575  209773.689  237299.100 
    ##        3959        3960        3961        3962        3963        3964 
    ##  282843.353  286128.458  251650.979  242560.672  251530.105  316974.626 
    ##        3965        3966        3967        3968        3969        3970 
    ##  322253.139  310013.900  311255.916  286302.550  195184.037  182170.547 
    ##        3971        3972        3973        3974        3975        3976 
    ##  203834.766  231032.805  135597.154  181234.895  171163.347  185014.992 
    ##        3977        3978        3979        3980        3981        3982 
    ##  245747.891  223307.176  302586.394  264927.720  249273.180  259392.233 
    ##        3983        3984        3985        3986        3987        3988 
    ##  174222.143  238044.837  243035.790  237791.969  228992.720  254694.432 
    ##        3989        3990        3991        3992        3993        3994 
    ##  275432.673  278613.001  285901.997  320173.358  284710.236  472988.214 
    ##        3995        3996        3997        3998        3999        4000 
    ##  290326.713  332945.675  292065.030  176031.277  325583.742  535585.886 
    ##        4001        4002        4003        4004        4005        4006 
    ##  307289.544  414506.307  375778.133  377825.790  309274.281  273238.495 
    ##        4007        4008        4009        4010        4011        4012 
    ##  265335.918  206959.754  275053.960  247426.660  266848.145  334062.064 
    ##        4013        4014        4015        4016        4017        4018 
    ##  266425.177  262118.480  255098.909  356448.186  300962.318  321036.353 
    ##        4019        4020        4021        4022        4023        4024 
    ##  305503.739  267165.931  273946.995  258748.093  241883.725  255571.475 
    ##        4025        4026        4027        4028        4029        4030 
    ##  286303.175  271605.044  272453.746  224920.862  312085.823  269995.466 
    ##        4031        4032        4033        4034        4035        4036 
    ##  278493.231  266631.895  268754.166  283180.781  249904.452  249503.394 
    ##        4037        4038        4039        4040        4041        4042 
    ##  306239.399  262638.832  299692.116  192257.438  144827.587  164592.589 
    ##        4043        4044        4045        4046        4047        4048 
    ##  506843.220  315933.876   76603.015   46452.877  102782.513  113311.576 
    ##        4049        4050        4051        4052        4053        4054 
    ##  168915.661   88692.752   70419.747   56624.953   67682.996  116859.251 
    ##        4055        4056        4057        4058        4059        4060 
    ##   67722.000   90604.453  150099.204  150347.027  229071.325  205501.485 
    ##        4061        4062        4063        4064        4065        4066 
    ##  132819.430   93163.055  131076.612   75252.993   53125.141   68845.042 
    ##        4067        4068        4069        4070        4071        4072 
    ##   90070.743  105857.669   80951.091  136082.902  166429.298  248731.209 
    ##        4073        4074        4075        4076        4077        4078 
    ##  142213.522  208640.304  184774.350  181212.415  154476.510  118509.780 
    ##        4079        4080        4081        4082        4083        4084 
    ##  172152.512  181977.943   91359.475   98915.332  140811.266  121245.920 
    ##        4085        4086        4087        4088        4089        4090 
    ##   87272.504  120043.681   67488.017   44276.683  106993.795  132618.311 
    ##        4091        4092        4093        4094        4095        4096 
    ##  125285.240  119471.513   97215.350  109678.873   99162.043  232536.059 
    ##        4097        4098        4099        4100        4101        4102 
    ##  111454.362  117593.322  131773.244  177552.141  128863.704  249777.836 
    ##        4103        4104        4105        4106        4107        4108 
    ##  118624.454  184057.734  105735.261  113934.722   98491.650  139338.446 
    ##        4109        4110        4111        4112        4113        4114 
    ##  129428.686  140161.642  149439.349  139164.483   99754.012  127721.731 
    ##        4115        4116        4117        4118        4119        4120 
    ##  118915.457  140291.321  177916.626  168973.260  132779.211   93687.635 
    ##        4121        4122        4123        4124        4125        4126 
    ##  112392.682  151408.999   86124.067  147480.345  111882.964   51761.431 
    ##        4127        4128        4129        4130        4131        4132 
    ##  159375.483  189790.274  144947.030   82816.472  132990.610  153488.381 
    ##        4133        4134        4135        4136        4137        4138 
    ##  165404.688  184220.210  114794.976  219479.327  214901.907  162509.446 
    ##        4139        4140        4141        4142        4143        4144 
    ##  161969.603  224898.523  140358.826  149478.893  195880.667  149203.594 
    ##        4145        4146        4147        4148        4149        4150 
    ##  140875.709  169545.255  165515.357   63229.086  117040.741  135210.875 
    ##        4151        4152        4153        4154        4155        4156 
    ##  144284.494  226010.053  189238.926  246864.793  190113.677  221855.398 
    ##        4157        4158        4159        4160        4161        4162 
    ##  238284.405  259837.127  171427.179  176444.943  262799.349  282798.634 
    ##        4163        4164        4165        4166        4167        4168 
    ##  240111.611  244894.404  250670.191  240477.116  253755.463  227809.028 
    ##        4169        4170        4171        4172        4173        4174 
    ##  225560.584  235231.282  145861.411  355284.236  168089.195  274222.040 
    ##        4175        4176        4177        4178        4179        4180 
    ##  192999.399  254557.058  248204.405  228677.566  232612.353  221154.284 
    ##        4181        4182        4183        4184        4185        4186 
    ##  322932.575  313888.567  237670.066  239021.926  177267.363  208282.600 
    ##        4187        4188        4189        4190        4191        4192 
    ##  238666.718  210688.097  238958.853  247142.272  214628.008  211957.024 
    ##        4193        4194        4195        4196        4197        4198 
    ##  255055.227  224246.005  245030.701  131504.011  254515.184  334558.170 
    ##        4199        4200        4201        4202        4203        4204 
    ##  269238.672  267805.581  256307.488  269406.833  234372.753  274831.128 
    ##        4205        4206        4207        4208        4209        4210 
    ##  241766.226  283439.350  233702.369  284744.887  269559.364  275657.598 
    ##        4211        4212        4213        4214        4215        4216 
    ##  238786.585  269309.354  283995.419  268112.965  304162.761  294886.728 
    ##        4217        4218        4219        4220        4221        4222 
    ##  270604.305  246457.627  276915.801  255036.867  290590.888  278650.541 
    ##        4223        4224        4225        4226        4227        4228 
    ##  237342.792  270314.823  264502.991  269984.910  303777.179  341127.063 
    ##        4229        4230        4231        4232        4233        4234 
    ##  282302.072  276138.453  284726.314  249995.216  232761.894  287695.651 
    ##        4235        4236        4237        4238        4240        4241 
    ##  269639.034  226158.804  330004.770  360013.407  411647.425  331885.088 
    ##        4242        4243        4244        4245        4246        4247 
    ##  283302.490  445576.998  297020.471  271982.420  291317.137  676460.181 
    ##        4248        4249        4250        4251        4252        4253 
    ##  443790.786  294203.299  225848.161  260623.292  480269.015  379472.450 
    ##        4254        4255        4256        4257        4258        4259 
    ##  284154.939  357935.397  343916.343  341961.154  335021.999  280637.358 
    ##        4260        4261        4262        4263        4264        4265 
    ##  287442.725  300924.104  332802.940  242504.739  277759.312  315197.937 
    ##        4266        4267        4268        4269        4270        4271 
    ##  280811.116  299320.530  351317.475  414570.107  334934.210  288005.320 
    ##        4272        4273        4274        4275        4276        4277 
    ##  260705.911  380660.553  320699.337  250683.705  329901.711  319240.937 
    ##        4278        4279        4280        4281        4282        4283 
    ##  302260.747  364452.317  422893.618  374027.622  376296.560  346591.253 
    ##        4284        4285        4286        4287        4288        4289 
    ##  284300.240  361401.792  374284.173  181980.074  184106.469  280970.235 
    ##        4290        4291        4292        4293        4294        4295 
    ##  223050.612  270728.243  323465.149  278794.967  392293.971  689339.615 
    ##        4296        4297        4298        4299        4300        4301 
    ##  482355.242  316381.719  162145.482  182309.487  304699.668  282218.291 
    ##        4302        4303        4304        4305        4306        4307 
    ##  482344.026  682327.006  355907.854  309531.826  229118.488  336396.824 
    ##        4308        4309        4310        4311        4312        4313 
    ##  364320.764  304632.331  249266.441  221954.164  227500.219  231328.585 
    ##        4314        4315        4316        4317        4318        4319 
    ##  210876.768  277215.801  238735.831  378922.706  334096.046  224842.141 
    ##        4320        4321        4322        4323        4324        4325 
    ##  247422.186  209016.102  291427.439  198535.276  208348.531  265938.130 
    ##        4326        4327        4328        4329        4330        4331 
    ##  274462.908  244917.417  231877.704  303746.242  308303.141  328153.603 
    ##        4332        4333        4334        4335        4336        4337 
    ##  316228.390  368874.695  313540.244  202520.319  332540.433  263730.768 
    ##        4338        4339        4340        4341        4342        4343 
    ##  206945.568  343586.500  263804.127  307717.723  276107.910  222146.033 
    ##        4344        4345        4346        4347        4348        4349 
    ##  281170.667  244300.421  299991.784  276694.287  271175.680  303633.820 
    ##        4350        4351        4352        4353        4354        4355 
    ##  269512.923  178165.812  249168.141  251742.793  272401.002  260667.836 
    ##        4356        4357        4358        4359        4360        4361 
    ##  273486.640  222778.837  168482.440  168060.262  191389.472  168172.853 
    ##        4362        4363        4364        4365        4366        4367 
    ##  198328.003  165852.353  168100.930  201342.012  217208.086  134809.635 
    ##        4368        4369        4370        4371        4372        4373 
    ##  204147.482  198513.375  229221.614  186714.965  257576.691  239282.215 
    ##        4374        4375        4376        4377        4378        4379 
    ##  273929.508  283163.621  304811.842  249512.772  334778.652  181354.716 
    ##        4380        4381        4382        4383        4384        4385 
    ##  246831.513  335697.774  342308.485  388806.155  343580.389  316834.763 
    ##        4386        4387        4388        4389        4390        4391 
    ##  305446.069  302203.131  205834.623  279116.816  195891.582  326042.500 
    ##        4392        4393        4394        4395        4396        4397 
    ##  306828.657  255714.026  301965.406  123685.644  135596.510  238713.353 
    ##        4398        4399        4400        4401        4402        4403 
    ##  215876.560  193079.912  171680.260  177458.541  219835.292  186102.798 
    ##        4404        4405        4406        4407        4408        4409 
    ##  188706.609  288289.596  328390.979  264659.216  285106.549  266042.793 
    ##        4410        4411        4412        4413        4414        4415 
    ##  274286.292  268376.056  386539.671  307472.436  284304.859  293493.968 
    ##        4416        4417        4418        4419        4420        4421 
    ##  309310.790  267803.883  325636.593  296706.848  331185.827  273981.111 
    ##        4422        4423        4424        4425        4426        4427 
    ##  250796.433  317820.873  294059.404  245639.183  270867.762  257565.046 
    ##        4428        4429        4430        4431        4432        4433 
    ##  305364.867  176533.500  227220.641  178303.219  195619.971  201199.438 
    ##        4434        4435        4436        4437        4438        4439 
    ##  227744.062  221861.239  206072.594  242408.749  226601.244  265636.840 
    ##        4440        4441        4442        4443        4444        4445 
    ##  249932.503  308055.971  309566.264  266175.415  301127.310  250707.940 
    ##        4446        4447        4448        4449        4450        4451 
    ##  275321.537  233491.781  245097.120  255359.100  279355.971  187172.224 
    ##        4452        4453        4454        4455        4456        4457 
    ##  170018.066  186137.668  208382.652  190240.102  192610.305  177071.232 
    ##        4458        4459        4460        4461        4462        4463 
    ##  260556.788  224375.201  215200.073  268364.293  296624.175  337660.551 
    ##        4464        4465        4466        4467        4468        4469 
    ##  289199.963  279118.743  346355.241  236952.309  264727.175  280868.572 
    ##        4470        4471        4472        4473        4474        4475 
    ##  220185.066  238724.667  260283.769  261361.878  198958.383  185130.191 
    ##        4476        4477        4478        4479        4480        4481 
    ##  247907.158  283097.618  272821.833  289074.210  244615.185  298250.676 
    ##        4482        4483        4484        4485        4486        4487 
    ##  252531.760  254562.652  211559.095  212123.192  196714.300  266837.198 
    ##        4488        4489        4490        4491        4492        4493 
    ##  335357.946  269616.740  393601.236  233762.347  300846.167  260574.426 
    ##        4494        4495        4496        4497        4498        4499 
    ##  246037.717  237406.750  217843.044  253980.272  280813.003  303215.358 
    ##        4500        4501        4502        4503        4504        4505 
    ##  281785.177  225794.679  328783.216  290652.129  322480.459  232280.408 
    ##        4506        4507        4508        4509        4510        4511 
    ##  272474.674  360362.812  239482.272  279942.953  239445.049  282919.914 
    ##        4512        4513        4514        4515        4516        4517 
    ##  386513.417  301808.743  294158.980  342088.786  304768.551  256175.415 
    ##        4518        4519        4520        4521        4522        4523 
    ##  270587.193  325674.967  274908.968  271072.601  318189.256  398639.162 
    ##        4524        4525        4526        4527        4528        4529 
    ##  337120.793  486390.639  365542.050  519312.376  415642.056  546992.049 
    ##        4530        4531        4532        4533        4534        4535 
    ##  404201.909  437875.317  386203.743  307648.624  318263.747  280121.106 
    ##        4536        4537        4538        4539        4540        4541 
    ##  290267.108  395985.302  313262.124  397089.764  343568.242  399337.396 
    ##        4542        4543        4544        4545        4546        4547 
    ##  305062.240  345743.308  352777.629  315334.794  292310.169  256767.340 
    ##        4548        4549        4550        4551        4552        4553 
    ##  335513.044  292147.167  305374.411  219238.872  244330.966  293346.175 
    ##        4554        4555        4556        4557        4558        4559 
    ##  264370.314  265571.869  361073.441  253554.178  250125.377  264678.229 
    ##        4560        4561        4562        4563        4564        4565 
    ##  255154.321  221499.988  271051.156  311576.555  303894.247  309379.767 
    ##        4566        4567        4568        4569        4570        4571 
    ##  270325.853  303783.458  268132.799  188738.698  242064.328  257589.302 
    ##        4572        4573        4574        4575        4576        4577 
    ##  221090.382  250158.517  290260.366  270167.577  299534.239  309091.054 
    ##        4578        4579        4581        4582        4583        4584 
    ##  339183.511  356000.594  219713.035  284603.557  367199.130  357001.993 
    ##        4585        4586        4587        4588        4589        4590 
    ##  448429.626  378623.484  489683.405  568455.612  419469.669  413850.659 
    ##        4591        4592        4593        4594        4595        4596 
    ##  389743.298  366587.404  437529.942  422278.726  481142.557  270932.897 
    ##        4597        4598        4599        4600        4601        4603 
    ##  312061.719  314093.912  351976.457  400381.555  346011.337  210281.461 
    ##        4604        4605        4606        4607        4608        4609 
    ##  478868.511  543334.841  606002.020  308888.184  523976.573  334997.316 
    ##        4610        4611        4612        4613        4614        4615 
    ##  253654.900  360441.328  366601.911  315737.879  369397.001  284286.691 
    ##        4616        4617        4618        4619        4620        4621 
    ##  305402.243  300651.621  200370.106  348523.081  247193.050  309465.305 
    ##        4622        4623        4624        4625        4626        4627 
    ##  309077.333  343798.931  278864.425  294135.143  256894.169  319822.198 
    ##        4628        4629        4630        4632        4633        4634 
    ##  321009.775  246314.028  246755.924  284105.282  227728.499  284923.479 
    ##        4635        4636        4637        4638        4639        4640 
    ##  299819.329  277343.135  251091.244  116461.833  144037.674  184400.723 
    ##        4641        4642        4643        4644        4645        4646 
    ##  189839.245  690757.570  177675.068  304266.862  471601.616  322118.721 
    ##        4647        4648        4649        4650        4651        4652 
    ##  277160.774  262453.786  270506.044  246192.295  224825.303  231440.167 
    ##        4653        4654        4655        4656        4657        4658 
    ##  170383.332  197455.613  242064.433  220700.084  214636.793  229290.627 
    ##        4659        4660        4661        4662        4663        4664 
    ##  286538.520  225395.065  163163.779  198747.305  259124.090  204376.326 
    ##        4665        4666        4667        4668        4669        4670 
    ##  197278.817  159305.982  184437.238  156266.800  230519.164  198719.535 
    ##        4671        4672        4673        4674        4675        4676 
    ##  290248.646  291059.658  286669.132  278091.362  345531.121  240830.137 
    ##        4677        4678        4679        4680        4681        4682 
    ##  306316.986  367774.335  328967.169  354332.379  313866.687  483670.416 
    ##        4683        4684        4685        4686        4687        4688 
    ##  295057.390  329077.473  375113.790  322248.417  295072.881  224045.397 
    ##        4689        4690        4691        4692        4693        4694 
    ##  246978.682  271212.663  248600.112  266366.814  197570.732  262909.367 
    ##        4695        4696        4697        4698        4699        4700 
    ##  274616.865  202483.001  262094.146  199543.433   22507.291   57183.397 
    ##        4701        4702        4703        4704        4705        4706 
    ##   51254.925   62665.378   34090.403   99368.837   77621.646   72289.330 
    ##        4707        4708        4709        4710        4711        4712 
    ##   63240.341   55987.654   52246.933   56311.489   99140.057  105590.318 
    ##        4713        4714        4715        4716        4717        4718 
    ##   70633.029   54922.105   38042.006  102438.187   43268.679   80381.209 
    ##        4719        4720        4721        4722        4723        4724 
    ##   35201.621  142522.576   41720.879   71208.842   15818.900   45801.302 
    ##        4725        4726        4727        4728        4729        4730 
    ##   15062.969   13869.332   11560.428   14958.853   32430.624   49084.380 
    ##        4731        4732        4733        4734        4735        4736 
    ##   89931.223   64258.416   69106.279   51848.163   28403.411  -20644.158 
    ##        4737        4738        4739        4740        4741        4743 
    ##  192720.429  192349.960  213855.814  226651.852  256248.568  196114.873 
    ##        4744        4745        4746        4747        4748        4749 
    ##  206974.385  179649.000  191046.371  239811.748  189636.057  201126.861 
    ##        4750        4751        4752        4753        4754        4755 
    ##  170739.612  221133.162  208303.802  217175.280  194055.292  179684.096 
    ##        4756        4757        4758        4759        4760        4761 
    ##  231885.668  213020.797  252358.664  140034.346  301437.871  186943.559 
    ##        4762        4763        4764        4765        4766        4767 
    ##  161255.455  179029.897  131579.475  157427.458  276248.554  134679.548 
    ##        4768        4769        4770        4771        4772        4773 
    ##  150964.886  151434.051  198460.401   72094.374  127077.873  177785.976 
    ##        4774        4775        4776        4777        4778        4779 
    ##  185794.984  161173.116  280470.951  162903.780  179659.914  130904.635 
    ##        4780        4781        4782        4783        4784        4785 
    ##  164970.631  238781.992  222528.353  243137.570  136759.780  158391.538 
    ##        4786        4787        4788        4789        4790        4792 
    ##  144103.537  174109.090  109493.232  243080.666  227389.374  201174.332 
    ##        4793        4794        4795        4796        4797        4798 
    ##  176383.703  207130.251  240398.191  212242.482  246362.068  244811.767 
    ##        4799        4800        4801        4802        4803        4804 
    ##  262092.319  269965.008  244491.841  262484.284  243874.926  262229.686 
    ##        4805        4806        4807        4808        4809        4810 
    ##  239675.722  193212.183  204374.429  213967.095  189714.631  261500.663 
    ##        4811        4812        4813        4814        4815        4816 
    ##  194783.118  241979.893  309567.704  198713.583  234559.711  296389.208 
    ##        4817        4818        4819        4820        4821        4822 
    ##  186274.442  202864.646  166544.991  147954.216  209726.956  199378.948 
    ##        4823        4824        4825        4826        4827        4828 
    ##  178757.439  213165.673  263800.295  171060.015  220836.898  218277.492 
    ##        4829        4830        4831        4832        4833        4834 
    ##  210611.076  256157.229  238666.166  178430.572  139466.824  241875.101 
    ##        4835        4836        4837        4838        4839        4840 
    ##  220177.944  219006.642  238890.422  272234.724  217549.202  160362.439 
    ##        4841        4842        4843        4844        4845        4846 
    ##  203602.744  248527.434  230424.180  246460.079  219855.376  204063.709 
    ##        4847        4848        4849        4850        4851        4852 
    ##  194416.422  253759.852  241862.635  202105.367  225834.403  233503.971 
    ##        4853        4854        4855        4856        4857        4859 
    ##  120800.970  135542.578  165834.011   97491.714  117287.248  104028.166 
    ##        4860        4861        4862        4863        4864        4865 
    ##   33870.450  162595.600   94807.543  182600.216  123508.214   99597.552 
    ##        4866        4867        4868        4869        4870        4871 
    ##  127119.701  174470.373  133945.366  118994.884  167098.046  144686.565 
    ##        4872        4873        4874        4875        4876        4877 
    ##  173049.298   81255.097  159628.669  110997.779  196819.887  125945.260 
    ##        4878        4879        4880        4881        4883        4884 
    ##   79167.565  114604.104  142606.854  113965.169   87265.616  121150.898 
    ##        4885        4886        4887        4888        4889        4890 
    ##  181864.232  114906.935   70742.025   86702.083  139852.214   82146.950 
    ##        4891        4892        4893        4894        4895        4896 
    ##   76308.976   51182.575  164884.976  309621.420  116850.544  116817.928 
    ##        4897        4898        4899        4901        4902        4903 
    ##  150732.501   75379.692  154983.052  139762.642  174387.997   74944.237 
    ##        4904        4905        4906        4907        4908        4909 
    ##   30590.050  147551.932  118240.536   75464.963   40056.678  152103.492 
    ##        4910        4911        4912        4913        4914        4916 
    ##  140663.375  176534.490  111441.659   70632.341  105502.686  154048.045 
    ##        4917        4918        4919        4920        4921        4922 
    ##  176046.383   71226.599   84541.633  204836.299   99796.778  129415.253 
    ##        4923        4924        4925        4926        4927        4928 
    ##  122793.750  153630.878   93793.857  104858.478   84468.306  165597.812 
    ##        4929        4930        4931        4932        4933        4934 
    ##  194843.488   76130.980  142473.903  136284.309  142799.048   51472.528 
    ##        4935        4936        4937        4938        4939        4940 
    ##   78967.449  107253.697   71054.899  121073.063   97226.853  110102.838 
    ##        4941        4942        4943        4944        4945        4946 
    ##   60402.944   67823.328   84778.435  107662.732   62128.308  133468.062 
    ##        4947        4948        4949        4950        4952        4953 
    ##   87147.051   49072.226   74004.127   46063.629   86403.395  118481.798 
    ##        4954        4955        4956        4957        4958        4959 
    ##  112342.321   83033.847   58901.801   59821.076   36290.642  137614.115 
    ##        4960        4961        4962        4963        4964        4965 
    ##  140203.231   47599.843  130901.548   88887.896   23743.652  109558.195 
    ##        4966        4967        4968        4969        4970        4971 
    ##  130737.297   69564.840   56272.908   83460.517   39103.117   58998.802 
    ##        4972        4973        4974        4975        4976        4977 
    ##   47496.687   69767.506  111918.606   96567.888   17436.872  113667.306 
    ##        4978        4979        4981        4982        4983        4984 
    ##   95710.468   82188.334   57359.854   41748.484   54046.662   52850.273 
    ##        4985        4986        4987        4988        4989        4990 
    ##  101135.660  173741.444  146469.878  103284.714  198534.156  186001.769 
    ##        4991        4992        4993        4994        4995        4996 
    ##  173691.686  124218.317   87526.505  105432.196   59452.556  140469.163 
    ##        4997        4998        4999        5000        5001        5002 
    ##  132571.389   91612.521  134938.147   82698.909  119534.427   58530.042 
    ##        5003        5004        5005        5006        5007        5008 
    ##   84004.943   26400.674   96832.511  107460.815   57544.634   74393.017 
    ##        5009        5010        5011        5012        5013        5014 
    ##  112016.318   61220.108   70685.548   98114.103   87066.748   56438.474 
    ##        5015        5016        5017        5018        5019        5020 
    ##   55433.069   53183.716   86889.717   54651.643   63888.510  102751.190 
    ##        5021        5022        5023        5024        5025        5026 
    ##   43916.592   44139.315  133592.858  123088.237   89036.687  113723.396 
    ##        5027        5028        5029        5030        5031        5032 
    ##  103028.793   87984.724   78671.639  105907.033   99477.488  104363.539 
    ##        5033        5034        5035        5036        5037        5038 
    ##   57712.911   79956.520   93897.052   91383.305  121357.792  148334.509 
    ##        5039        5040        5042        5043        5044        5045 
    ##  132626.592  161919.222  301889.052  185987.917  190535.557  240383.308 
    ##        5046        5047        5048        5049        5050        5051 
    ##  143027.181  238514.468  222482.526  205842.876  292774.084  369649.556 
    ##        5052        5053        5054        5055        5056        5057 
    ##  246216.376  194834.936  193349.403  204501.398  252425.448  330494.611 
    ##        5058        5059        5060        5061        5062        5063 
    ##  273799.370  183100.435  252095.339  234904.502  227923.728  238590.494 
    ##        5064        5065        5066        5067        5068        5069 
    ##  295404.324  255665.978  311089.246  283633.977  230679.536  177085.399 
    ##        5070        5071        5072        5073        5074        5075 
    ##  279423.151  291906.096  403287.130  271653.064  253011.050  256124.859 
    ##        5076        5077        5078        5079        5080        5081 
    ##  210201.142  230268.890  183017.812  127762.091  355428.356  283458.376 
    ##        5082        5083        5084        5085        5086        5087 
    ##  241369.306  187071.406  248430.880  196206.707  238307.986  214896.449 
    ##        5088        5089        5090        5091        5092        5093 
    ##  272764.275  217643.079  317852.678  152085.870  193841.176  252068.946 
    ##        5094        5095        5096        5097        5098        5099 
    ##  180460.244  208579.514  287674.748  319849.095  296769.405  239548.430 
    ##        5100        5101        5102        5103        5104        5105 
    ##  226971.270  266571.539  323565.782  158077.860  305016.748  319456.158 
    ##        5106        5107        5108        5109        5110        5111 
    ##  214968.537  281581.803  412736.791  373180.040  228250.385  306426.616 
    ##        5112        5113        5114        5115        5116        5117 
    ##  208375.444  237454.184  312259.402  326893.176  219987.833  339545.283 
    ##        5118        5119        5120        5121        5122        5123 
    ##  282143.539  296188.842  262819.658  235670.273  256810.648  298557.264 
    ##        5124        5125        5126        5127        5128        5129 
    ##  297348.163  289728.289  341991.463  216516.651  304470.856  309978.680 
    ##        5130        5131        5132        5133        5134        5135 
    ##  393620.431  296865.601   88570.148  112844.225   81875.412   52438.609 
    ##        5136        5137        5138        5139        5140        5141 
    ##   70196.578   99337.391  174782.321  161520.894  139210.335  198238.043 
    ##        5142        5143        5144        5145        5146        5147 
    ##   64690.029   96425.684  195093.765  116367.806  226917.357   57132.356 
    ##        5148        5149        5150        5151        5152        5153 
    ##  162814.470   84237.376  125669.214   75225.355   41746.985   78904.540 
    ##        5154        5155        5156        5157        5158        5159 
    ##   63393.790   54289.635  100438.161   83493.460  106017.589  127019.434

``` r
#### ## 5. Use the model to make a prediction on unseen new data ----
new_data <- data.frame(longitude = -122.3,  
                       latitude = 37.5,     
                       housing_median_age = 30,  
                       total_rooms = 2000,  
                       total_bedrooms = 400,  
                       population = 1000,  
                       households = 350,  
                       median_income = 5.0,  
                       ocean_proximity = "NEAR BAY" ,
                       check.names = FALSE)

# The variables that are factors (categorical) in the training dataset must
# also be defined as factors in the new data
new_data$ocean_proximity <- as.factor(new_data$ocean_proximity)

# Use the model to predict the output based on the unseen new data
predictions_lm_new_data <- predict(housing_model_lm, new_data)

# Print the predictions for the dependent variable
print(predictions_lm_new_data)
```

    ##        1 
    ## 286409.8

\#Step 3:

``` r
# Load the housing dataset using base R read.csv function
housing <- read.csv("data/housing.csv", header = TRUE)
```

\#Step 4

``` r
# Split the dataset
train_index <- createDataPartition(housing$median_house_value, p = 0.75, list = FALSE)
housing_train <- housing[train_index, ]
housing_test <- housing[-train_index, ]

# Linear Regression Model
train_control <- trainControl(method = "cv", number = 10)

housing_model_lm <- caret::train(median_house_value ~ .,
                                 data = housing_train,
                                 trControl = train_control,
                                 na.action = na.omit,
                                 method = "lm",
                                 metric = "RMSE")

# Test the trained model using the testing dataset
predictions_lm <- predict(housing_model_lm, newdata = housing_test)

# View the RMSE and the predicted values
print(housing_model_lm)
```

    ## Linear Regression 
    ## 
    ## 15481 samples
    ##     9 predictor
    ## 
    ## No pre-processing
    ## Resampling: Cross-Validated (10 fold) 
    ## Summary of sample sizes: 13790, 13791, 13791, 13790, 13791, 13791, ... 
    ## Resampling results:
    ## 
    ##   RMSE      Rsquared   MAE     
    ##   68923.38  0.6429218  49953.27
    ## 
    ## Tuning parameter 'intercept' was held constant at a value of TRUE

``` r
print(predictions_lm)
```

    ##          12          14          15          20          25          29 
    ##  257857.032  212024.284  202632.129  207275.915  211908.984  176509.497 
    ##          34          36          37          41          46          48 
    ##  161903.596  164303.783  149161.070  194786.052  225514.139  171979.465 
    ##          56          61          62          72          75          78 
    ##  160710.243  233698.068  335388.926  135679.313  166806.542  104933.325 
    ##          79          86          87          92          95          96 
    ##  100616.369  193610.948  159006.382  110423.564  181227.959  357001.223 
    ##          98         105         111         114         115         118 
    ##  156166.563  330427.808  308989.968  251604.152  242279.442  286160.734 
    ##         121         123         127         130         136         137 
    ##  331610.257  348822.344  402249.203  315288.843  399505.901  343521.040 
    ##         149         152         160         162         167         168 
    ##  229277.315  328746.084  236029.068  233094.836  166828.105  185346.483 
    ##         170         178         181         187         189         193 
    ##  168823.816  222736.277  227732.649  199472.526  166618.604  176422.490 
    ##         199         204         206         207         214         218 
    ##  200616.214  150303.766  163569.194  177003.620  199783.811  210624.873 
    ##         223         237         245         252         253         258 
    ##  292437.984  194607.901  180261.027  163099.083  265112.873  155248.154 
    ##         268         274         275         279         281         282 
    ##  242278.711  275042.789  290145.079  203785.524  326780.012  328584.473 
    ##         284         285         298         301         303         310 
    ##  331906.973  234810.395  187189.043  167795.605  169869.238  181796.009 
    ##         315         318         320         323         325         326 
    ##  135222.333  153613.199  125210.457  128271.722  173198.761  188394.212 
    ##         327         332         333         337         340         344 
    ##  142988.613  178685.583  180640.480  208544.461  247133.011  163226.224 
    ##         351         360         366         367         368         372 
    ##  158702.367  298198.912  266837.894  288998.195  295665.078  208193.384 
    ##         385         386         388         389         394         401 
    ##  171893.841  229388.592  246752.576  243256.172  267958.480  272977.888 
    ##         402         408         411         414         423         426 
    ##  309036.199  442976.298  293089.425  316906.073  359597.645  292242.619 
    ##         429         433         439         443         446         447 
    ##  275719.264  232855.286  208155.265  229431.015  224582.504  258752.815 
    ##         450         451         461         463         464         466 
    ##  226855.067  248776.389   75206.751  222711.064  225204.005  256579.965 
    ##         470         471         472         473         474         483 
    ##  199861.294  192970.568  221341.964  209909.504  193402.572  223737.797 
    ##         484         486         487         489         498         503 
    ##  214406.157  246177.413  254514.828  251220.495  242102.838  151400.501 
    ##         505         509         512         517         522         532 
    ##  160377.673  391932.562  609661.388  413067.138  287209.082  222409.596 
    ##         543         552         559         562         568         572 
    ##  309534.048  282913.368  267472.323  325857.566  285579.418  259968.876 
    ##         577         580         582         583         589         592 
    ##  331913.168  294334.642  280154.075  318245.115  258263.904  247398.499 
    ##         596         610         614         615         617         619 
    ##  277136.373  220445.348  284830.271  192758.297  255981.785  235749.107 
    ##         621         622         635         636         639         641 
    ##  224913.403  253376.630  263345.552  217664.939  205757.368  231853.551 
    ##         643         645         646         647         656         669 
    ##  220521.815  348640.886  381187.359  235671.600  226312.768  239183.681 
    ##         684         688         689         699         702         703 
    ##  227283.806  201421.823  211556.635  229782.737  315114.410  224997.545 
    ##         704         705         708         709         711         720 
    ##  255465.156  198652.633  267902.899  210320.029  189062.730  229344.398 
    ##         724         727         729         735         738         740 
    ##  211639.363  257548.446  236900.039  252344.412  212218.636  274919.153 
    ##         744         750         753         754         760         761 
    ##  209810.338  311151.284  237942.583  240965.764  181389.791  205088.598 
    ##         763         768         776         780         782         785 
    ##  228140.638  214061.983  259670.415  161880.668  247260.890  281856.066 
    ##         792         795         796         799         809         812 
    ##  303967.196  200172.934  199521.891  232797.303  247983.515  211286.373 
    ##         817         818         819         821         822         829 
    ##  250365.974  209148.829  184743.056  248418.086  236373.199  288601.543 
    ##         837         842         843         845         853         860 
    ##  233453.351  216635.718  246857.794  304031.080  213843.617  255049.574 
    ##         864         868         883         886         887         888 
    ##  278152.018  275467.581  265758.848  222447.386  229353.842  262902.562 
    ##         892         895         899         903         915         916 
    ##  310918.566  344367.316  197419.110  260195.186  269018.105  252430.230 
    ##         921         928         936         942         943         949 
    ##  273643.273  302465.253  185858.994  245263.880  194131.440  285367.251 
    ##         953         954         962         969         980         984 
    ##  267748.571  309732.280  298046.838  277743.504  247904.686  198481.705 
    ##         985         986         989         990         991         995 
    ##  258498.693  273924.949  253959.952  257200.681  288064.457  189186.643 
    ##         998         999        1000        1001        1005        1006 
    ##  218811.646  217904.801  213373.686  173350.360  203193.801  247888.944 
    ##        1009        1011        1015        1016        1019        1025 
    ##  197935.608  284064.945  236527.148  248794.595  266706.586   99272.473 
    ##        1027        1028        1029        1039        1040        1043 
    ##   94895.853   93895.747   81828.187  105522.166   -4782.624  111519.844 
    ##        1048        1050        1054        1055        1057        1066 
    ##  101644.601   91048.803  123055.979  115395.581   90036.375   86043.555 
    ##        1067        1069        1073        1074        1076        1083 
    ##   79311.686    6597.482  103179.838  146217.724  115256.442   48501.873 
    ##        1091        1094        1099        1100        1101        1103 
    ##   63479.858  124260.734   69726.051   95068.114   77148.587   60832.246 
    ##        1106        1109        1113        1115        1116        1119 
    ##   70370.652   49751.326   27436.823   51849.461   52119.774   48877.720 
    ##        1122        1123        1125        1126        1128        1132 
    ##   80287.525   47578.617   37092.518   52492.973   56890.887   85545.231 
    ##        1144        1145        1147        1153        1154        1158 
    ##   27207.356   56098.115   69035.074   43565.904  112226.928   87668.922 
    ##        1159        1160        1162        1167        1173        1176 
    ##  164072.207   72507.147   96763.863   52472.665   39033.452   -7267.743 
    ##        1178        1186        1187        1188        1195        1196 
    ##   42489.968   50448.568   33828.851   78515.967   69222.946   33567.019 
    ##        1198        1201        1202        1203        1210        1215 
    ##  106841.103   84881.237   73294.679   57206.206   87789.547  135234.917 
    ##        1218        1220        1221        1223        1226        1229 
    ##   77488.806  121669.576  135699.515  109693.718   60791.953   97628.559 
    ##        1230        1237        1242        1269        1270        1271 
    ##   95013.209  102747.273  127227.901  144234.223  155330.536  153359.869 
    ##        1282        1287        1291        1294        1301        1304 
    ##  138337.149  162243.527  176251.048  207335.313  158878.130  120939.655 
    ##        1307        1309        1310        1315        1322        1327 
    ##  205736.403  190650.071  104822.774  215334.176  101313.069  158219.181 
    ##        1329        1330        1335        1336        1340        1343 
    ##  149618.285  170598.196  206695.758  190826.755  135695.328  198268.403 
    ##        1348        1349        1354        1357        1358        1364 
    ##  234781.095  211452.793  110278.884  167002.028  144619.666  181367.843 
    ##        1368        1378        1380        1382        1389        1395 
    ##  274512.016  221195.894  218929.192  276234.822  290805.731  237890.548 
    ##        1400        1413        1417        1421        1425        1426 
    ##  323384.813  270754.243  208777.670  185056.344  141267.443  147474.161 
    ##        1431        1432        1433        1456        1465        1468 
    ##  240314.261  262177.056  245411.467  170475.408  160389.415  307024.008 
    ##        1470        1476        1477        1483        1484        1493 
    ##  259949.901  183648.893  186287.197  163116.820  206649.619  242506.525 
    ##        1500        1505        1509        1515        1516        1517 
    ##  198777.702  269163.835  348586.919  273568.064  280143.977  282412.917 
    ##        1518        1522        1526        1537        1550        1551 
    ##  261567.126  264067.107  268668.012  287931.523  179530.440  317755.572 
    ##        1554        1555        1560        1564        1565        1568 
    ##  343299.249  370293.879  314984.377  440561.306  539449.376  310673.154 
    ##        1579        1586        1589        1597        1614        1631 
    ##  373963.614  415347.027  372547.569  283379.975  355503.778  374470.267 
    ##        1635        1637        1639        1643        1644        1647 
    ##  372956.809  493126.484  432335.863  190266.557  124448.302  515662.076 
    ##        1652        1655        1656        1662        1674        1677 
    ##  280746.585  362186.695  360274.048  301891.958  241342.500  202729.220 
    ##        1679        1681        1685        1689        1691        1692 
    ##  285124.950  233821.877  213323.800  296468.878  261518.516  278785.558 
    ##        1702        1705        1709        1715        1717        1720 
    ##  233815.635  217205.713  262967.131  180664.767  255589.751  300498.491 
    ##        1730        1731        1734        1746        1747        1749 
    ##  229443.105  222679.791  187541.955  180491.548  169038.881  212645.216 
    ##        1756        1766        1769        1771        1786        1807 
    ##  309840.267  260984.478  218964.277  211020.875  149399.746  147510.357 
    ##        1816        1825        1828        1831        1841        1850 
    ##  272659.414  218790.595  232637.691  261017.286  294296.757  383689.663 
    ##        1852        1854        1866        1882        1884        1886 
    ##  111419.390  127404.461  117468.088  112484.057   91563.267   47477.708 
    ##        1887        1890        1894        1897        1905        1911 
    ##   58557.929  158945.774   17956.982   78174.844  105482.480   83334.765 
    ##        1914        1915        1917        1933        1937        1941 
    ##  127449.803   45608.822  125445.656  146074.020  187378.962  121539.216 
    ##        1947        1948        1950        1953        1962        1963 
    ##  141290.900  118018.209   69303.833   92944.043   84125.645   83958.743 
    ##        1964        1968        1969        1970        1972        1973 
    ##  120929.967   78493.240  126352.798  125851.603   79324.345  114992.041 
    ##        1977        1986        1989        1991        1993        1995 
    ##  101536.439   81487.502   68550.285   81960.397   76427.353   96789.661 
    ##        1999        2000        2008        2011        2015        2021 
    ##   56856.568   69846.606   30545.675   82400.104   32018.079   48884.173 
    ##        2023        2024        2027        2033        2036        2040 
    ##   70697.819   64542.144   54849.302   90911.528   89105.487  130672.002 
    ##        2044        2054        2062        2063        2073        2077 
    ##  165634.164   72495.302   70617.023  148472.554   35497.281   58404.801 
    ##        2078        2079        2080        2086        2088        2090 
    ##  148828.689  115528.248  102567.469  133983.790   54847.806  112547.781 
    ##        2096        2103        2104        2107        2108        2112 
    ##   84362.905   97322.145  151677.659  140868.380   21831.351   76380.319 
    ##        2114        2119        2123        2129        2136        2139 
    ##   45113.928  150702.716  104696.260   78254.224  104842.348  126185.156 
    ##        2143        2151        2154        2158        2162        2163 
    ##   95234.780  111581.291  187667.984  173891.667  159725.585  112149.298 
    ##        2165        2166        2171        2173        2174        2176 
    ##  132835.499  105138.660  121102.129  106403.529  103835.794  119796.059 
    ##        2183        2184        2185        2187        2189        2194 
    ##  129350.005   88042.464   61114.678  114030.978   62465.831  153176.813 
    ##        2197        2198        2199        2201        2205        2215 
    ##  148424.271   52188.638  268400.029  240818.857  202537.777  330965.312 
    ##        2217        2221        2222        2231        2236        2238 
    ##  256200.360  223060.614  201951.255  120939.219   48069.872  146784.782 
    ##        2242        2251        2254        2256        2261        2265 
    ##  195515.199  266153.085  125147.909  116564.876   39799.007  134104.550 
    ##        2271        2276        2285        2290        2294        2299 
    ##   98201.892   84795.281  132533.257  105549.500  117966.965  132060.687 
    ##        2301        2304        2309        2310        2312        2313 
    ##  143305.059  167386.036  168156.809  148203.328  204629.570  187079.678 
    ##        2317        2318        2327        2344        2348        2349 
    ##  165838.938  176935.332   74661.120  159366.728  127859.873  126471.286 
    ##        2356        2361        2364        2365        2370        2371 
    ##  220582.474  131270.735  134256.819  156788.903   84062.944  111354.075 
    ##        2373        2375        2377        2379        2388        2391 
    ##   80634.830  113862.554   47243.632   58246.033  143603.019  127259.166 
    ##        2394        2400        2411        2418        2419        2420 
    ##  121043.880   81711.618  106194.850   40901.096  134079.182   67271.586 
    ##        2426        2432        2438        2442        2446        2447 
    ##    6122.577  105040.112  106998.013   76144.063   84647.053   58480.856 
    ##        2452        2454        2458        2466        2474        2479 
    ##   72131.556  129543.161  123841.446  114404.550   86096.844   41973.774 
    ##        2487        2489        2499        2501        2507        2517 
    ##  212782.035   93281.549   72619.802   81062.347   72801.347   96156.161 
    ##        2529        2530        2531        2536        2541        2542 
    ##   18409.949   73671.327   93315.104  107368.480  160722.292  158177.899 
    ##        2545        2552        2556        2557        2560        2562 
    ##  189277.852  185517.185  151711.008  230411.836  145604.174  153909.756 
    ##        2576        2577        2582        2584        2585        2590 
    ##  149745.280  174936.113  116065.779  123513.213  164310.861  146434.278 
    ##        2591        2599        2603        2607        2608        2611 
    ##  132604.628   80225.965   76570.608  132532.622  173095.603  172804.832 
    ##        2617        2621        2628        2629        2635        2636 
    ##  148208.691  153503.261  161877.638  216709.215  186010.313  176584.671 
    ##        2640        2642        2643        2669        2685        2694 
    ##  144146.638  166179.570  150256.859   30519.647  108552.034  216397.954 
    ##        2695        2704        2707        2708        2709        2710 
    ##   92692.230   67295.293  116920.587   97102.281  110771.974   59770.213 
    ##        2715        2716        2717        2722        2728        2735 
    ##   88025.067  111243.526   34163.454   22473.732   24891.336  119523.059 
    ##        2737        2738        2741        2748        2750        2752 
    ##   74790.190  121757.988  108362.457  214711.707  144983.596   28289.067 
    ##        2753        2757        2759        2763        2775        2779 
    ##   32347.005   18103.802   35830.549   24432.383  160146.270   47014.037 
    ##        2782        2790        2792        2797        2800        2803 
    ##  -13717.649    7572.446   54635.615   60247.858   11841.176  143612.194 
    ##        2804        2805        2806        2814        2824        2832 
    ##  137745.859  165797.819  116852.654  117276.438  195426.691   96517.511 
    ##        2833        2836        2838        2840        2847        2849 
    ##   88226.793  180001.117  187099.619  174785.667  151231.036  145803.827 
    ##        2851        2853        2855        2865        2868        2872 
    ##  166748.842  156158.633  160341.789  133371.504  113757.735  138411.206 
    ##        2877        2879        2880        2882        2884        2889 
    ##   65630.399   68958.100  104181.347   69296.830   54681.145   94344.957 
    ##        2899        2900        2902        2903        2905        2909 
    ##   77068.495   81339.840   72498.679   85327.155   94255.928  153511.171 
    ##        2910        2915        2918        2919        2922        2923 
    ##  154382.456  190045.632  186983.369  153185.204  134315.113  139057.625 
    ##        2925        2927        2933        2935        2936        2948 
    ##   97230.194   84520.896   74064.061   73839.024   44689.430   83705.423 
    ##        2949        2952        2965        2971        2976        2978 
    ##   49480.953  109050.643  165034.379  289207.506  221085.166  139301.483 
    ##        2981        2983        2987        2988        2999        3005 
    ##  159497.539  134864.541   99056.811  114790.648  129470.411  141824.159 
    ##        3006        3011        3017        3018        3019        3022 
    ##  118764.407   65640.594  163485.939  144111.809  156110.041  161931.465 
    ##        3026        3029        3033        3034        3039        3040 
    ##  180671.703  143967.535  162603.638  137612.513  150388.966  182651.496 
    ##        3043        3046        3047        3048        3062        3069 
    ##  119968.072  141827.415  118572.742   56039.574   40238.088   79760.647 
    ##        3073        3074        3077        3080        3083        3084 
    ##   64829.624   81157.716   84876.308  121149.510   67434.709  116783.697 
    ##        3085        3094        3101        3104        3110        3114 
    ##  117910.396   85422.739  112542.410  189528.805  187888.677  139550.977 
    ##        3116        3118        3125        3126        3128        3132 
    ##   66054.611  175250.844  129843.366   18090.438  114499.626  147556.339 
    ##        3137        3139        3140        3141        3142        3147 
    ##  158854.766  113188.228  103962.080  179767.533  112166.146  167078.895 
    ##        3148        3149        3154        3161        3162        3168 
    ##  183315.683   89926.663  129527.671   88469.280   76485.150   61392.912 
    ##        3174        3175        3180        3185        3189        3190 
    ##  131354.179  144577.975  149879.525   93739.728  126906.386  185196.505 
    ##        3192        3198        3199        3211        3213        3214 
    ##  123835.590  178148.796  144940.320  103904.642  106830.437  154280.257 
    ##        3217        3221        3227        3231        3232        3236 
    ##  129292.392  155937.206   56673.771   62545.686   96007.605   84767.905 
    ##        3241        3246        3247        3249        3251        3252 
    ##   59497.089  106632.576   94128.311  101613.832   79104.709  125491.772 
    ##        3253        3254        3256        3261        3266        3267 
    ##  148093.984  100833.274   95298.460  114345.575  136664.133  102860.868 
    ##        3276        3282        3289        3301        3306        3316 
    ##  145167.617  103022.577  115447.947  111999.315  111447.122  145415.213 
    ##        3320        3322        3328        3333        3335        3339 
    ##   92849.128   86999.163  182290.061  130869.370  186376.649  171383.516 
    ##        3345        3346        3352        3366        3379        3384 
    ##   39547.336   28504.527   53255.818   58192.337  208069.220  248505.595 
    ##        3385        3388        3396        3403        3406        3410 
    ##  250689.566  232644.208  237616.605  308583.340  337973.057  232720.825 
    ##        3412        3414        3420        3429        3431        3436 
    ##  190374.584  128593.844  142542.004  177071.150  175142.494  111017.951 
    ##        3437        3439        3441        3445        3456        3459 
    ##  158118.352  191784.472   86327.323  157481.143  245808.983  162019.766 
    ##        3462        3465        3468        3471        3475        3476 
    ##  225610.669  192686.299  261032.134  166133.669  320184.820  338442.222 
    ##        3478        3479        3484        3485        3491        3493 
    ##  344041.242  315166.162  168754.927  306556.139  264076.723  277400.392 
    ##        3499        3500        3507        3512        3517        3518 
    ##  208687.455  267036.945  235403.565  232999.834  282150.567  268620.252 
    ##        3523        3531        3533        3534        3537        3541 
    ##  265189.237  283663.885  290768.172  473412.160  267164.058  252727.234 
    ##        3544        3548        3555        3556        3559        3561 
    ##  320350.095  284101.520  285961.254  191041.623  293829.069  294919.392 
    ##        3562        3566        3569        3575        3576        3578 
    ##  390151.312  263036.600  264893.880  194089.644  397860.776  234868.462 
    ##        3583        3590        3591        3596        3597        3598 
    ##  267184.594  275443.155  225283.449  283653.616  310503.013  262132.868 
    ##        3601        3602        3604        3615        3616        3627 
    ##  247229.519  274550.361  156252.030  192549.034  218508.659  238528.811 
    ##        3633        3640        3643        3653        3654        3659 
    ##  251882.469  228294.710  167370.766  193832.876  234067.878  222820.313 
    ##        3660        3665        3669        3675        3693        3696 
    ##  271107.605  200979.403  157908.927  260947.710  149209.728  117834.866 
    ##        3699        3702        3703        3704        3706        3711 
    ##  147953.251  199692.036  187844.311  206150.475  201716.941  157518.950 
    ##        3712        3716        3724        3729        3731        3736 
    ##  223787.984  244199.761  187661.636  239560.413  230339.137  223213.846 
    ##        3740        3743        3749        3750        3756        3757 
    ##  203550.508  165656.265  185383.036  211416.410  222375.872  213707.154 
    ##        3769        3771        3778        3781        3782        3783 
    ##  314873.122  240231.332  215585.613  275047.843  293702.401  288171.168 
    ##        3785        3786        3787        3789        3792        3793 
    ##  245326.851  237161.113  183607.377  180678.858  269441.633  225210.623 
    ##        3799        3802        3808        3809        3815        3820 
    ##  211703.206  249021.152  216984.152  218979.604  162977.352  190135.638 
    ##        3821        3822        3827        3830        3832        3842 
    ##  188033.723  218315.376  175443.126  207656.438  197926.039  192703.407 
    ##        3850        3853        3856        3862        3863        3865 
    ##  262700.891  267348.395  249511.950  258921.293  244483.543  209137.019 
    ##        3870        3871        3873        3874        3877        3878 
    ##  267385.723  269478.550  235049.871  254825.603  252939.387  272622.847 
    ##        3880        3885        3886        3894        3896        3898 
    ##  241006.636  237403.607  278657.769  262235.457  218190.683  242746.261 
    ##        3899        3902        3905        3907        3912        3914 
    ##  248631.313  250448.692  248693.247  283569.120  223296.627  203263.736 
    ##        3926        3929        3942        3954        3955        3957 
    ##  266291.209  262088.414  268455.322  403170.987  336247.147  325176.442 
    ##        3963        3964        3968        3972        3973        3978 
    ##  239011.877  233692.575  278504.773  233876.674  221063.954  293551.238 
    ##        3985        3997        4005        4006        4008        4010 
    ##  309084.232  359747.642  293735.730  348352.643  369070.883  207577.625 
    ##        4014        4023        4027        4030        4032        4035 
    ##  324401.418  237163.925  293340.857  266841.517  304570.650  349038.301 
    ##        4040        4045        4050        4055        4056        4058 
    ##  415655.350  477882.682  461404.277  201593.981  288462.468  299840.359 
    ##        4066        4067        4071        4072        4077        4083 
    ##  307193.729  274459.198  476160.654  435076.787  391856.911  227013.579 
    ##        4094        4103        4112        4116        4117        4125 
    ##  104872.665  315836.721  501772.883  272697.491  583937.129  294840.860 
    ##        4129        4131        4135        4136        4141        4145 
    ##  244896.098  244999.931  219485.622  230619.702  221304.211  235555.467 
    ##        4148        4151        4153        4158        4162        4164 
    ##  211378.081  221923.491  188932.175  191520.081  174207.011  205165.338 
    ##        4166        4167        4170        4176        4177        4178 
    ##  155522.719  157168.762  288033.408  162941.471  223996.417  152731.594 
    ##        4179        4188        4193        4206        4209        4210 
    ##  163043.444  197666.028  170035.745  198902.192  195368.339  224053.012 
    ##        4218        4219        4222        4230        4231        4237 
    ##  299400.982  287688.753  202354.679  592422.275  220050.082  399771.846 
    ##        4240        4250        4253        4254        4260        4261 
    ##  269003.291  290882.885  222375.591  372143.097  246862.651  173573.742 
    ##        4266        4267        4268        4269        4271        4273 
    ##  167239.576  310865.906  167542.094  151850.245  158406.393  174848.484 
    ##        4274        4284        4293        4295        4299        4300 
    ##  189760.389  167353.019  171024.537  192117.405  150918.747  153697.955 
    ##        4302        4305        4322        4328        4331        4332 
    ##  146190.333  122682.211  246584.108  258698.522  157308.828  198079.043 
    ##        4333        4335        4339        4344        4346        4347 
    ##  183902.158  267291.162  165536.321  160033.422  537408.085  408888.165 
    ##        4351        4353        4355        4356        4357        4359 
    ##  457707.309  667578.942  451664.385  254882.743  224983.813  283580.035 
    ##        4360        4365        4371        4378        4383        4384 
    ##  253429.044  242787.801  310328.370  259626.566  222975.493  279105.595 
    ##        4388        4390        4393        4398        4405        4408 
    ##  217061.460  149910.307  170593.497  153766.786  199551.802  181685.843 
    ##        4409        4410        4411        4422        4423        4439 
    ##  190419.584  178583.851  242521.025  195152.471  157631.692  151069.323 
    ##        4440        4443        4446        4451        4452        4453 
    ##  242480.562  157003.686  130017.834  145517.705  128439.040  156215.479 
    ##        4459        4461        4462        4463        4464        4470 
    ##  141708.996  258643.911  259883.822  245365.424  172404.883  202686.739 
    ##        4472        4476        4481        4490        4491        4493 
    ##  133580.414  193113.619  218628.118  195405.562  160528.298  489598.065 
    ##        4498        4499        4502        4503        4512        4514 
    ##  138405.857  120042.277  134943.722  146305.725  139868.794  210671.341 
    ##        4515        4517        4519        4521        4525        4526 
    ##  161052.783  168607.278  143650.652   98411.868  111792.667  166904.872 
    ##        4528        4534        4537        4541        4544        4549 
    ##  177761.671  147582.476  170693.958  175997.669  178583.563  385521.253 
    ##        4551        4554        4560        4567        4568        4570 
    ##  211855.021  124809.953  254842.615  163409.625  160322.769  166180.953 
    ##        4573        4583        4585        4587        4589        4595 
    ##  149649.790  108886.039  143921.201  140205.747  163402.577  128112.888 
    ##        4609        4613        4614        4615        4616        4620 
    ##  238515.205  133485.181  201524.804  188503.817  179880.630  172694.201 
    ##        4621        4624        4628        4629        4631        4637 
    ##  208163.899  120401.465  246410.845  205031.018  201546.630  196426.900 
    ##        4639        4642        4644        4653        4656        4657 
    ##  200470.711  170269.229  149485.244  283612.396  181249.735  178946.726 
    ##        4661        4666        4670        4671        4682        4684 
    ##  202272.892  172661.147  157396.261  149776.867  335845.861  246910.178 
    ##        4687        4689        4696        4697        4700        4708 
    ##  355885.511  287059.527  249023.630  233847.029  280532.922  244593.844 
    ##        4709        4710        4726        4735        4747        4749 
    ##  240806.440  318446.462  258540.813  235027.055  221558.774  244205.054 
    ##        4756        4758        4760        4772        4773        4784 
    ##  239185.496  172615.470  141878.451  192833.303  187849.459  179247.516 
    ##        4792        4793        4799        4800        4801        4802 
    ##  184147.415  169086.839  161476.899  162275.369  163939.015  166696.876 
    ##        4808        4818        4830        4836        4837        4838 
    ##  219404.449  173574.482  133044.143  144507.712  150885.615  147782.284 
    ##        4843        4848        4850        4851        4857        4859 
    ##  152496.834  141110.688  149006.931  170552.260  178142.587  142647.895 
    ##        4860        4872        4885        4890        4901        4902 
    ##  134963.090  171343.250  137552.489  154529.699  116448.847  126598.412 
    ##        4904        4909        4912        4916        4918        4923 
    ##  110763.724  162220.385  111926.316  141164.609  140577.127  124771.378 
    ##        4924        4926        4928        4930        4935        4950 
    ##  115690.299  111998.382  127753.029  122407.516  137163.623  148003.753 
    ##        4951        4954        4956        4966        4975        4977 
    ##  164196.558  181174.590  197420.408   98906.468  132059.718  166157.283 
    ##        4979        4981        4984        4986        4987        4989 
    ##  124238.112  124832.594  181783.801  157895.867  171787.056  186787.994 
    ##        4995        4997        5009        5014        5018        5021 
    ##  157763.800  160066.338  242325.498  186979.261  184891.054  165481.580 
    ##        5024        5027        5030        5040        5041        5044 
    ##  278978.428  202046.837  209043.009  145896.401  177088.962  146463.023 
    ##        5048        5054        5066        5067        5068        5072 
    ##  332092.510  181120.090  160340.840  122837.520  180963.788  202051.099 
    ##        5074        5076        5081        5082        5087        5091 
    ##  237770.315  191306.729  159501.953  210731.948  169397.505  128409.347 
    ##        5097        5099        5103        5104        5108        5111 
    ##  186849.133  225715.252  193236.284  216980.951  207200.717  225326.216 
    ##        5113        5123        5124        5130        5134        5147 
    ##  240619.451  262545.947  238022.439  131562.060  152939.168  145910.329 
    ##        5150        5151        5152        5156        5160        5163 
    ##   93410.965  129800.093  125731.722  128688.926  150036.000  128176.163 
    ##        5165        5166        5174        5176        5178        5180 
    ##  151598.483  153253.077  150365.167  162439.619  110067.097  145181.769 
    ##        5181        5186        5187        5194        5197        5200 
    ##  144128.721  156359.719  123422.235  176602.818  146454.005  103151.771 
    ##        5204        5206        5212        5215        5218        5219 
    ##  179942.532  188437.240  171630.344  176795.501   78570.064  120430.773 
    ##        5226        5233        5240        5242        5244        5245 
    ##  111843.181  116145.545  101841.837  417406.492  557242.183  576951.923 
    ##        5247        5248        5252        5268        5271        5274 
    ##  469700.482  669648.648  399639.751  415409.866  393112.012  448618.835 
    ##        5275        5278        5285        5286        5289        5290 
    ##  384145.436  490566.946  247654.437  287960.329  289547.511  364260.128 
    ##        5295        5299        5310        5312        5322        5326 
    ##  382579.029  167218.283  350632.984  301022.206  364059.402  337096.612 
    ##        5328        5330        5335        5349        5352        5357 
    ##  266263.225  312337.617  223814.246  304282.506  445559.621  262359.930 
    ##        5360        5366        5373        5374        5375        5384 
    ##  262627.659  374512.876  336852.074  174100.506  217832.065  327324.389 
    ##        5389        5397        5405        5414        5417        5418 
    ##  215391.093  248462.865  226179.336  314093.586  254707.776  296740.079 
    ##        5421        5425        5432        5433        5434        5435 
    ##  407798.391  249503.917  232370.384  275570.759  206592.802  272295.868 
    ##        5454        5455        5456        5457        5464        5465 
    ##  283275.722  268465.663  254478.932  203791.277  163575.691  228772.235 
    ##        5469        5473        5474        5483        5485        5502 
    ##  244106.933  269074.608  245375.340  224830.216  312888.035  262610.557 
    ##        5506        5510        5511        5514        5519        5549 
    ##  280555.004  109718.469  240046.823  224296.481  332904.981  316758.071 
    ##        5552        5556        5559        5561        5563        5569 
    ##  251372.258  216384.810  341526.419  333551.230  178924.093  237512.834 
    ##        5573        5578        5585        5590        5596        5600 
    ##  281424.072  276700.860  167800.653  204875.355  149000.063  204305.648 
    ##        5607        5611        5613        5614        5633        5636 
    ##  222470.759  150403.706  184847.162  170312.634  182496.466  132535.568 
    ##        5639        5644        5645        5647        5654        5656 
    ##  297241.374  267807.655  178115.897  197967.719  233439.325  232920.872 
    ##        5658        5659        5667        5673        5676        5677 
    ##  316469.995  257377.062  220795.466  275084.569  360319.691  254681.462 
    ##        5683        5690        5693        5696        5699        5701 
    ##  243177.348  255524.914  276694.086  257085.305  290314.304  261865.650 
    ##        5704        5705        5709        5719        5730        5733 
    ##  261601.242  369020.689  216376.539  237653.981  248832.802  341809.598 
    ##        5736        5745        5765        5768        5773        5790 
    ##  194678.649  212710.771  170613.746  205341.682  191588.197  180553.894 
    ##        5793        5794        5795        5799        5800        5803 
    ##  188141.531  175226.028  195856.942  214245.269  309546.795  163489.682 
    ##        5811        5814        5817        5824        5828        5834 
    ##  196490.063  156569.192  170192.184  260750.493  261792.417  231258.513 
    ##        5838        5841        5842        5845        5847        5853 
    ##  192831.182  244668.090  205092.020  247583.187  193051.648  239933.261 
    ##        5858        5860        5864        5866        5874        5877 
    ##  214032.175  234905.407  255710.527  200918.970  245389.849  265184.399 
    ##        5879        5885        5886        5890        5892        5893 
    ##  259396.762  235516.929  236942.384  261270.617  322531.642  260285.168 
    ##        5894        5901        5904        5905        5907        5908 
    ##  227830.999  203968.478  209533.184  189172.829  125831.937  243675.588 
    ##        5915        5919        5920        5924        5929        5937 
    ##  153385.312  208202.385  158394.339  219376.665  249546.740  214434.655 
    ##        5938        5942        5944        5945        5954        5958 
    ##  143108.184  171791.661  176398.834  218232.206  201289.226  191139.983 
    ##        5961        5962        5969        5984        5988        5990 
    ##  202588.003  191723.722  182714.059  247962.817  179454.293  259338.549 
    ##        5994        5996        5998        5999        6002        6005 
    ##  155180.858   94397.438  113924.607  134480.672  185450.215  121713.842 
    ##        6006        6009        6021        6029        6030        6036 
    ##  120389.131  148450.564  179765.306  204502.471  249582.077  107288.901 
    ##        6040        6041        6046        6055        6056        6059 
    ##  105524.926  132781.023   96162.772  262651.623  261321.189  233760.363 
    ##        6064        6066        6075        6076        6080        6084 
    ##  267870.630  265100.846  348413.335  281557.209  281560.644  230457.501 
    ##        6089        6091        6095        6098        6100        6102 
    ##  192554.857  221442.877  252526.597  241894.894  212051.901  210401.216 
    ##        6103        6105        6108        6113        6115        6118 
    ##  237960.660  201139.035  217024.443  155864.312  178327.964  183828.804 
    ##        6119        6122        6125        6127        6128        6139 
    ##  144414.971  219728.794  112658.920  177122.528  182957.645  133754.430 
    ##        6142        6144        6151        6156        6158        6161 
    ##  151227.733  101501.140  134294.722  173785.650  151955.193  143918.988 
    ##        6162        6164        6166        6169        6170        6172 
    ##  229699.149  249670.028  223740.095  219485.573  235811.611  223632.885 
    ##        6177        6181        6186        6188        6192        6195 
    ##  217527.098  197763.319  220956.763  215447.483  174999.381  265589.894 
    ##        6203        6206        6208        6209        6210        6213 
    ##  201276.894  286347.127  272994.508  280191.952  216461.719  265784.369 
    ##        6214        6215        6227        6234        6240        6247 
    ##  291172.950  259748.178  443101.139  184853.642  193885.515  180104.427 
    ##        6256        6258        6267        6270        6277        6282 
    ##  187330.868  235410.686  194854.007  184119.498  204732.472  194836.805 
    ##        6287        6293        6294        6296        6303        6305 
    ##  242326.712  189714.698  159192.036  187997.070  151944.736  210027.578 
    ##        6307        6312        6314        6316        6318        6324 
    ##  209615.501  240932.500  233909.977  307980.989  179842.640  298258.785 
    ##        6327        6329        6334        6343        6346        6348 
    ##  209085.179  267994.737  318448.092  111396.986   73036.210  105451.447 
    ##        6352        6353        6358        6367        6368        6370 
    ##  231837.975  176079.052  150870.259  272839.304  255653.690  204604.383 
    ##        6371        6383        6386        6394        6397        6405 
    ##  235360.235  265220.247  184480.420  213905.427  221386.141  188671.667 
    ##        6410        6414        6415        6417        6421        6426 
    ##  270114.914  283223.118  149437.508  196404.964  196340.887  162621.687 
    ##        6430        6433        6439        6444        6446        6450 
    ##  186343.597  210642.294  103466.842  152093.828  230076.734  233344.994 
    ##        6455        6461        6464        6471        6472        6474 
    ##  207965.693  218644.655  223890.847  261116.252  193246.228  165113.784 
    ##        6477        6479        6481        6490        6491        6498 
    ##  208324.084  166888.091  145543.185  168314.985  157544.848   85793.515 
    ##        6501        6512        6515        6517        6518        6520 
    ##  173696.482  127108.778  215456.493   68743.435  129236.917   89970.201 
    ##        6525        6530        6535        6538        6541        6544 
    ##  158079.153  120606.056  148120.630  102781.451  182308.734  120494.705 
    ##        6547        6553        6556        6557        6560        6561 
    ##  187008.123  337901.568  335927.446  413481.041  297822.401  235828.321 
    ##        6566        6568        6569        6570        6576        6577 
    ##  229456.169  180164.713  205490.068  213216.117  303475.600  442031.303 
    ##        6578        6580        6581        6588        6589        6595 
    ##  393881.662  362444.579  327074.819  305461.596  321861.199  452630.042 
    ##        6597        6605        6607        6610        6614        6619 
    ##  155169.029  235658.018  201786.271  159249.815  305212.568  178848.914 
    ##        6625        6632        6640        6651        6652        6653 
    ##  236073.475  140712.204  134953.319  183445.933  168873.708  128305.526 
    ##        6654        6657        6658        6659        6665        6671 
    ##  171192.517  163143.614  134973.419  189464.238  193806.753  218750.109 
    ##        6672        6674        6675        6677        6678        6684 
    ##  182988.352  222040.574  213913.994  252668.575  147618.764  238951.854 
    ##        6687        6690        6711        6712        6714        6716 
    ##  173547.306  160342.055  377492.253  380803.736  393334.696  382688.198 
    ##        6719        6720        6724        6725        6726        6727 
    ##  390897.736  401910.646  218660.998  539350.513  496070.767  530968.415 
    ##        6728        6729        6732        6733        6739        6748 
    ##  665587.099  482681.324  561843.828  458211.571  288476.489  273577.635 
    ##        6751        6757        6758        6763        6764        6766 
    ##  297215.737  347040.895  291483.851  204570.574  198750.421  271528.408 
    ##        6768        6772        6774        6781        6796        6797 
    ##  212252.444  244220.799  297517.265  240409.513  187476.453  159205.905 
    ##        6803        6811        6813        6816        6818        6828 
    ##  184355.980  173258.757  211122.010  208311.617  220887.801  214473.875 
    ##        6831        6834        6837        6838        6851        6855 
    ##  285300.055  211839.068  177387.502  206428.174  219852.084  183697.173 
    ##        6857        6858        6859        6863        6873        6876 
    ##  299250.620  288768.051  208914.460  187224.469  184828.525  195845.798 
    ##        6877        6887        6889        6890        6892        6896 
    ##  156791.171  153992.085  151445.163  181386.194  160610.337  259950.048 
    ##        6909        6910        6917        6921        6928        6929 
    ##  228472.441  346952.851  337292.862  144164.963  166320.323  173128.499 
    ##        6938        6942        6959        6966        6968        6969 
    ##  221790.998  173283.621  226625.702  211592.367  205705.522  161505.068 
    ##        6977        6979        6981        6985        6988        6989 
    ##  240991.066  232004.636  307820.559  258638.726  209711.364  190307.831 
    ##        6990        6998        7000        7001        7002        7006 
    ##  177362.638  233988.406  198103.878  198369.649  163226.080  235080.816 
    ##        7009        7013        7018        7020        7030        7032 
    ##  225129.473  161695.990  214981.258  200499.087  229464.792  182480.424 
    ##        7036        7044        7046        7049        7052        7054 
    ##  183652.597  178389.002  229756.317  138280.986  165037.172  202426.741 
    ##        7061        7071        7080        7082        7083        7087 
    ##  185366.002  253908.263  229477.585  261624.619  231476.884  259730.628 
    ##        7089        7092        7093        7094        7100        7101 
    ##  264259.080  275546.577  277109.627  294656.749  286433.069  284204.884 
    ##        7113        7119        7125        7126        7134        7139 
    ##  250881.282  214380.480  268885.940   88725.823  157355.135  178370.072 
    ##        7150        7151        7154        7155        7165        7181 
    ##  174179.834  175558.655  164042.097  187121.345   72516.168  184546.746 
    ##        7183        7184        7185        7187        7190        7195 
    ##  144408.814  161341.690  150587.937  179320.548  195562.807  146036.593 
    ##        7196        7199        7200        7202        7206        7210 
    ##  148483.976  136791.369  133964.872  142711.934  122546.919  140845.848 
    ##        7211        7213        7215        7216        7220        7222 
    ##  163265.312  149536.723  128530.315  151479.836  139705.111  177240.116 
    ##        7234        7237        7239        7240        7242        7254 
    ##  189576.294  170170.525  153268.194  196572.458  174103.707  153698.367 
    ##        7255        7257        7259        7261        7263        7264 
    ##  133820.902  209336.690  142065.916  175824.841  128172.454  155702.106 
    ##        7269        7274        7282        7284        7285        7286 
    ##  160967.040  150964.500  128819.104  154343.312  142108.936  153131.620 
    ##        7292        7295        7296        7298        7300        7301 
    ##  128019.432  143198.682  136260.257  172929.271  145290.799  140207.202 
    ##        7303        7304        7311        7314        7315        7319 
    ##  191755.313  173785.633  162705.409  121019.983  135866.928  128635.017 
    ##        7320        7322        7325        7339        7349        7350 
    ##  153304.764  134054.737  146696.536  148204.115  143265.862  134010.478 
    ##        7356        7357        7360        7368        7371        7374 
    ##  137081.468  125940.735  108625.558  232425.666  196865.580  164310.632 
    ##        7376        7377        7381        7385        7387        7392 
    ##  193394.769  139046.907  159349.836  139569.046  133539.876  149733.992 
    ##        7393        7395        7397        7398        7409        7414 
    ##  173556.087  115665.179  139081.117  129589.404  158236.517  164151.597 
    ##        7415        7426        7431        7438        7439        7441 
    ##  153431.652  143578.859  141721.887  212030.454  190242.947  211002.279 
    ##        7442        7445        7447        7449        7459        7461 
    ##  218166.275  175913.775  216736.031  186094.865  175003.258  137642.802 
    ##        7468        7479        7486        7488        7492        7497 
    ##  194160.047  186259.944  157556.572   98307.826  121905.639  185946.371 
    ##        7501        7507        7508        7511        7513        7516 
    ##  161475.602  186988.788  178990.383  242437.609  172761.208  235617.209 
    ##        7520        7523        7526        7530        7537        7538 
    ##  172282.334  137138.570  132307.422  158682.070  129562.041  145694.314 
    ##        7540        7547        7557        7563        7568        7569 
    ##  214220.191  213929.786  189649.300  149619.569  135789.042  172587.195 
    ##        7570        7573        7579        7580        7581        7585 
    ##  171782.932  167373.125  161347.578  187424.081  151772.746  127870.298 
    ##        7589        7596        7608        7609        7611        7617 
    ##  142820.930  207731.009  203911.558  201292.809  154621.353  277588.325 
    ##        7619        7620        7623        7629        7631        7632 
    ##  264954.432  232475.137  285207.968  266061.309  218191.651  195356.400 
    ##        7633        7634        7637        7640        7644        7657 
    ##  205684.855  287193.717  220200.477  261416.145  224890.752  162011.688 
    ##        7671        7672        7674        7681        7683        7685 
    ##  199559.067  213495.197  194317.632  222593.553  185093.122  226523.744 
    ##        7686        7696        7698        7702        7705        7706 
    ##  188317.836  254376.041  310155.970  255095.585  239442.754  249987.317 
    ##        7707        7709        7714        7715        7719        7722 
    ##  282702.308  353304.013  223925.728  274484.877  266320.519  268244.466 
    ##        7728        7731        7732        7739        7742        7744 
    ##  182004.300  234818.760  207729.763  240119.469  203114.117  217232.023 
    ##        7745        7748        7766        7773        7774        7784 
    ##  232304.080  246028.861  255106.465  258408.456  266295.160  251573.183 
    ##        7786        7787        7789        7790        7791        7793 
    ##  140418.043  186547.480  250421.436  230692.847  161307.683  158098.128 
    ##        7794        7795        7805        7806        7811        7825 
    ##  178410.294  194197.858  220584.836  220460.616  207540.847  248569.920 
    ##        7828        7830        7832        7834        7841        7844 
    ##  203546.822  222669.867  184159.401  156460.860  218616.548  169388.825 
    ##        7854        7860        7868        7870        7871        7873 
    ##  194992.336  272291.887  194642.163  210249.699  195811.342  255607.260 
    ##        7883        7885        7889        7890        7891        7893 
    ##  197499.207  203391.412  280222.590  255627.612  266564.517  287109.160 
    ##        7896        7899        7903        7905        7908        7913 
    ##  274596.519  237609.109  326077.308  268274.886  266775.891  199839.879 
    ##        7915        7917        7918        7919        7920        7921 
    ##  157515.911  211387.679  194515.525  229467.950  204589.094  187054.341 
    ##        7923        7924        7925        7930        7937        7939 
    ##  222926.124  198421.522  207232.691  213256.241  130444.949  280414.482 
    ##        7940        7941        7943        7945        7953        7956 
    ##  241684.080  260683.236  273355.751  228782.261  188843.444  142470.309 
    ##        7957        7964        7965        7970        7971        7972 
    ##  186197.103  237274.203  230390.434  233343.471  240047.113  187776.929 
    ##        7973        7975        7983        7984        7991        7992 
    ##  146961.659  160592.267  230232.951  251720.087  193694.848  178785.015 
    ##        7993        7996        7997        8005        8009        8014 
    ##  244743.056  237423.962  189231.103  272277.113  263105.841  273879.176 
    ##        8015        8017        8019        8026        8029        8041 
    ##  261688.239  293811.441  274515.898  268088.144  239371.384  226219.485 
    ##        8042        8043        8044        8045        8046        8049 
    ##  241416.207  219203.460  238968.996  276246.762  249912.714  285809.095 
    ##        8053        8056        8057        8060        8068        8074 
    ##  268051.029  240435.226  195217.776  168610.660  296364.163  275235.187 
    ##        8077        8095        8098        8104        8107        8108 
    ##  243152.293  254931.432  233141.083  221553.461  142188.891  254321.404 
    ##        8109        8110        8114        8118        8124        8126 
    ##  175954.540  165455.568  225927.900  259547.212  125966.509  239464.834 
    ##        8133        8135        8138        8140        8142        8147 
    ##  282541.679  215443.761  311525.265  274454.025  265428.042  285619.121 
    ##        8148        8150        8151        8154        8157        8163 
    ##  287460.777  284355.372  360950.528  232398.818  255125.464  223036.350 
    ##        8164        8168        8169        8171        8175        8177 
    ##  288946.180  248497.446  212921.711  264288.134  300282.771  276918.467 
    ##        8178        8179        8184        8185        8191        8196 
    ##  255730.467  261587.122  302651.573  301584.223  294211.028  276247.286 
    ##        8200        8202        8203        8219        8221        8224 
    ##  228857.546  232522.454  233326.521  134475.339  174090.792  140810.381 
    ##        8227        8228        8235        8244        8245        8255 
    ##  163130.443  188578.651  168975.184  145107.163  167554.113  244861.603 
    ##        8256        8265        8270        8274        8276        8277 
    ##  229421.773  226399.996  293486.461  226185.704  191991.067  215970.512 
    ##        8281        8282        8283        8286        8292        8302 
    ##  247220.649  262873.569  245513.838  277066.485  274163.257  317340.615 
    ##        8306        8307        8309        8314        8317        8319 
    ##  384154.367  270791.486  324199.356  334723.410  481249.053  411503.553 
    ##        8320        8325        8328        8335        8336        8337 
    ##  138145.772  136991.162  165669.229  233469.224  180712.327  208384.459 
    ##        8340        8341        8349        8355        8362        8366 
    ##  273280.216  257498.664  235614.381  284880.379  186246.496  203440.445 
    ##        8368        8369        8372        8376        8379        8387 
    ##  196479.465  241697.994  226051.792  215351.815  191347.014  289589.634 
    ##        8392        8393        8395        8399        8404        8406 
    ##  214729.188  208073.280  219693.025  196501.576  141135.929  172764.665 
    ##        8407        8408        8410        8413        8415        8419 
    ##  193940.480  160227.607  146196.851  164514.399  197095.759  171117.198 
    ##        8423        8432        8433        8438        8439        8441 
    ##  218128.470  197289.432  165736.722  268900.559  264656.598  240464.194 
    ##        8444        8456        8472        8477        8480        8487 
    ##  285089.561  253955.890  244585.681  229692.594  270865.790  189267.396 
    ##        8488        8489        8496        8498        8503        8506 
    ##  183588.460  186561.929  228981.469  227015.145  220797.727  222714.983 
    ##        8507        8508        8511        8515        8525        8526 
    ##  205973.394  206312.888  181614.331  239869.704  245729.499  250996.010 
    ##        8528        8530        8535        8556        8557        8561 
    ##  315295.057  190047.172  217737.146  306437.625  277451.205  271465.381 
    ##        8563        8565        8566        8567        8573        8574 
    ##  295410.589  260301.700  286856.334  293046.515  421682.269  383555.505 
    ##        8577        8578        8584        8586        8589        8592 
    ##  339138.630  372685.166  350161.257  403494.762  333741.851  280593.360 
    ##        8594        8598        8602        8604        8610        8613 
    ##  265224.924  306642.202  255525.779  304744.919  308484.955  253270.593 
    ##        8624        8625        8628        8629        8633        8637 
    ##  278060.669  280360.755  318278.589  400007.762  450504.264  413165.268 
    ##        8642        8648        8651        8652        8653        8659 
    ##  325062.750  322143.401  340195.097  287242.613  343095.363  323310.218 
    ##        8662        8663        8666        8667        8671        8674 
    ##  319202.494  259216.333  291809.596  371892.921  278565.613  275493.291 
    ##        8677        8680        8683        8689        8691        8706 
    ##  252847.342  215369.447  262956.510  261585.273  332743.967  286748.562 
    ##        8709        8714        8723        8725        8730        8731 
    ##  308837.744  317757.716  309077.372  314150.199  247054.057  254483.899 
    ##        8732        8733        8734        8739        8747        8751 
    ##  265028.097  166525.815  226978.864  283865.405  284376.752  325273.048 
    ##        8755        8757        8758        8764        8770        8777 
    ##  312500.328  275449.408  293782.246  359931.987  260479.004  256368.412 
    ##        8779        8780        8781        8784        8786        8787 
    ##  260036.587  214644.316  243878.099  228769.164  285405.614  410103.766 
    ##        8788        8791        8794        8800        8804        8806 
    ##  405625.162  483971.873  505064.904  470500.781  408816.537  667576.209 
    ##        8807        8813        8817        8820        8827        8828 
    ##  461866.063  270171.332  545630.307  198007.772  189864.483  328961.144 
    ##        8829        8841        8843        8850        8851        8852 
    ##  201782.708  262106.262  268415.900  675816.869  663408.431  666590.875 
    ##        8854        8855        8856        8858        8861        8863 
    ##  674754.230  681587.090  287419.503  331687.951  226691.802  410194.984 
    ##        8878        8882        8883        8885        8886        8888 
    ##  409670.209  289888.485  542483.569  402137.962  353921.514  370647.807 
    ##        8889        8890        8893        8901        8905        8907 
    ##  324603.371  335298.505  262992.235  444606.199  292710.094  228104.408 
    ##        8909        8911        8927        8928        8930        8932 
    ##  247093.667  184742.792  261427.733  270636.187  272593.864  224035.147 
    ##        8938        8939        8944        8948        8950        8953 
    ##  293361.517  280659.193  331737.189  339335.846  339456.100  244639.897 
    ##        8956        8958        8961        8963        8965        8966 
    ##  232667.104  172003.639  304475.779  284854.254  287816.513  239960.824 
    ##        8971        8973        8978        8982        8985        8995 
    ##  274486.471  275121.812  215561.437  210365.887  324316.278  267168.819 
    ##        9002        9005        9010        9011        9014        9015 
    ##  239508.439  412285.874  241390.558  457051.612  406642.294  223503.274 
    ##        9018        9021        9022        9033        9039        9041 
    ##  273545.628  322917.423  268276.303  372822.451  108189.032  195135.821 
    ##        9054        9055        9056        9058        9059        9064 
    ##  146260.633   75009.754  166707.738  133826.504  148414.051  155319.748 
    ##        9068        9069        9071        9076        9079        9084 
    ##  173744.718  156314.852   64491.589  206596.389  123437.246  246483.640 
    ##        9085        9092        9094        9103        9104        9105 
    ##  164031.810  122941.158  128274.056  129570.753  137393.234  153749.391 
    ##        9111        9112        9113        9123        9124        9125 
    ##  110129.249  169823.749  176475.444  167336.812  155849.120  141389.737 
    ##        9128        9136        9144        9154        9159        9160 
    ##  127489.951  224265.941  197102.483  284086.559  286043.869  259709.517 
    ##        9165        9168        9174        9175        9179        9182 
    ##  254846.360  239445.697  256655.040  224078.439  233305.193  310192.075 
    ##        9184        9186        9187        9194        9195        9196 
    ##  346999.625  347272.233  315957.453   97403.802  103780.363   97667.715 
    ##        9198        9203        9206        9207        9212        9220 
    ##  115390.993   71995.329   89115.797  122575.194  103647.553   91834.231 
    ##        9221        9222        9234        9240        9241        9247 
    ##  118709.004   89059.551   95553.762  145455.144  151934.153   71028.008 
    ##        9248        9260        9263        9271        9284        9286 
    ##   52565.501  112658.233   30139.330  279488.851  303198.329  301655.458 
    ##        9292        9296        9303        9309        9310        9314 
    ##  258945.924  373964.529  332051.642  328223.754  284641.398  327054.478 
    ##        9320        9321        9323        9330        9337        9339 
    ##  184016.134  228966.010  325500.056  241914.302  302192.849  321570.415 
    ##        9342        9347        9353        9356        9357        9365 
    ##  245861.896  301447.564  457729.514  463374.079  489717.700  296883.133 
    ##        9366        9371        9372        9376        9392        9393 
    ##  312943.675  646250.049  315924.350  328581.699  290454.868  331561.409 
    ##        9394        9398        9401        9409        9411        9422 
    ##  348915.212  266627.046  395110.726  343210.828  275814.496  234301.586 
    ##        9423        9430        9435        9443        9452        9455 
    ##  282100.362  309006.888   65495.408   84555.297  121733.527   69196.894 
    ##        9459        9461        9469        9470        9477        9478 
    ##  156457.129  188240.453  170774.671  196451.924  141185.289  213124.598 
    ##        9479        9484        9485        9486        9488        9489 
    ##  208527.707  205338.115  131292.099  144864.490  184308.942  165300.512 
    ##        9496        9501        9503        9504        9506        9512 
    ##  200452.986  175951.915  169473.990  211335.962  168410.505  221158.044 
    ##        9520        9524        9533        9534        9536        9538 
    ##  163927.736  223316.045   99763.949  144892.290   91985.674   91471.877 
    ##        9542        9547        9549        9550        9553        9555 
    ##   94873.364   80293.584  120208.763  159759.709   87556.416   89836.275 
    ##        9558        9559        9568        9576        9578        9581 
    ##  105750.722  117419.213  106936.498   81883.520  127538.775   76712.189 
    ##        9586        9592        9593        9597        9600        9605 
    ##  108899.535  180421.647  123328.297  145755.526  128442.991  118862.269 
    ##        9606        9607        9619        9629        9634        9639 
    ##  122598.230  112138.114   97599.767   64558.629  146251.698  145000.765 
    ##        9640        9644        9654        9657        9661        9662 
    ##  156972.505   93975.380  135801.301  104478.532   19511.522  -20522.565 
    ##        9665        9668        9672        9673        9677        9685 
    ##  -28444.678   24464.655   88419.132   65516.744  150623.779  225715.147 
    ##        9687        9693        9698        9703        9705        9707 
    ##  246068.586  249510.236   61429.178  205662.253  290752.519  263248.342 
    ##        9711        9712        9717        9723        9726        9730 
    ##  239385.628  236666.407  240636.841  279269.031  199283.682  205804.420 
    ##        9734        9736        9737        9738        9741        9743 
    ##  270118.286  234734.427  203454.204  167822.219  249398.048  272424.164 
    ##        9744        9746        9753        9757        9758        9763 
    ##  254412.507  228953.608  313274.731  152626.885  205630.433  328925.976 
    ##        9764        9766        9771        9774        9779        9784 
    ##  265015.372  278123.759  192899.341  142419.029  209924.687  220223.142 
    ##        9806        9810        9813        9816        9819        9827 
    ##  282893.272  336383.129  280136.032  254008.521  280767.011  307479.589 
    ##        9829        9830        9833        9835        9854        9856 
    ##  273787.576  283375.789  246787.490  292293.754  286580.600  233337.223 
    ##        9858        9862        9866        9871        9876        9879 
    ##  353401.423  252702.001  229413.199  164799.176  217046.599  208593.752 
    ##        9880        9881        9882        9885        9887        9888 
    ##  179041.384 -156055.080  206900.119  232215.364  128385.475  171971.710 
    ##        9889        9895        9898        9905        9908        9910 
    ##  173565.619  185192.232  189658.724  157413.238  193092.392  206199.112 
    ##        9914        9921        9929        9931        9933        9934 
    ##  202533.193  252359.819  232395.699  246018.793  189041.346  197423.819 
    ##        9936        9938        9941        9945        9951        9961 
    ##  191113.968  242527.619  229460.120  209869.211  203512.396  313195.427 
    ##        9962        9964        9966        9973        9974        9977 
    ##  295391.936  309845.533  221678.299  107161.836  167804.119  225793.863 
    ##        9983        9989       10001       10007       10014       10019 
    ##  148034.547  229886.922  122575.959  107590.654   98850.205  167378.651 
    ##       10020       10024       10027       10038       10041       10042 
    ##   68679.579   80687.934   73386.297   23337.168   98464.092   93192.780 
    ##       10046       10047       10060       10061       10064       10074 
    ##  109827.412   68062.406   93389.027  117399.869   12096.860  101258.650 
    ##       10077       10081       10088       10102       10104       10107 
    ##  129483.229   96580.368  230954.005  285829.702  187974.108  160216.774 
    ##       10113       10114       10116       10118       10123       10129 
    ##  240464.217  243175.451  295006.416  202890.827  153775.880  242223.730 
    ##       10130       10141       10143       10145       10147       10150 
    ##  270163.863  154921.636  359957.200  254089.211  246532.213  420674.806 
    ##       10156       10158       10159       10165       10167       10169 
    ##  554057.998  286381.635  313603.131  233310.439  446126.296  283338.479 
    ##       10174       10176       10177       10180       10182       10183 
    ##  226909.877  203545.217  205806.705  230350.464  244672.996  270507.897 
    ##       10184       10189       10190       10191       10197       10203 
    ##  206612.672  198879.606  259195.657  217598.722  244391.309  162368.085 
    ##       10209       10212       10216       10221       10224       10231 
    ##  272272.408  371171.443  195278.993  186057.398  280080.258  180122.264 
    ##       10238       10241       10249       10250       10255       10256 
    ##  223495.221  190650.058  319174.757  294655.116  213124.889  210682.323 
    ##       10262       10276       10282       10286       10289       10291 
    ##  321880.332  176017.746  208688.019  323142.433  304963.165  287066.179 
    ##       10294       10297       10300       10309       10312       10318 
    ##  266093.423  292108.841  288524.407  348060.463  335898.812  445820.476 
    ##       10320       10324       10329       10333       10337       10339 
    ##  379065.761  353329.362  379085.851  427249.890  305388.771  183456.565 
    ##       10341       10343       10354       10355       10356       10359 
    ##  309384.522  251439.605  252176.001  269571.259  288686.582  331615.500 
    ##       10360       10361       10364       10371       10377       10381 
    ##  336401.820  355144.197  283861.208  264880.621  394290.808  221042.685 
    ##       10391       10400       10402       10403       10409       10418 
    ##  219199.163  323828.684  430710.975  455510.451  272095.913  436978.686 
    ##       10421       10428       10430       10431       10432       10434 
    ##  324127.289  298417.592  220394.767  256934.164  193829.736  185704.133 
    ##       10435       10439       10440       10442       10449       10457 
    ##  233523.207  212975.811  276152.733  235298.230  150788.029  267876.396 
    ##       10465       10468       10469       10470       10474       10477 
    ##  495514.956  356912.049  255668.282  253894.772  314255.749  255917.302 
    ##       10482       10486       10487       10491       10494       10498 
    ##  378189.986  294422.815  251670.100  364225.029  299243.188  192845.959 
    ##       10501       10503       10505       10506       10510       10521 
    ##  234273.926  205942.532  219456.189  204779.737  306183.378  356662.436 
    ##       10522       10526       10531       10533       10534       10540 
    ##  273199.798  231476.083  205573.208  261238.282  288559.339  334706.896 
    ##       10545       10556       10557       10562       10563       10565 
    ##  355354.824  231779.782  185230.813  275961.307  437343.046  372940.892 
    ##       10568       10570       10575       10582       10589       10592 
    ##  200552.108  310528.654  109703.735  309717.263  247252.780  284739.312 
    ##       10597       10602       10605       10607       10610       10616 
    ##  235122.446  346538.642  321165.218  255283.408  328879.941  304386.150 
    ##       10620       10622       10626       10639       10643       10650 
    ##  347376.812  238048.225  342505.257  253174.083  261969.896  305476.998 
    ##       10651       10665       10666       10667       10673       10675 
    ##  303850.064  117848.903  372920.944  402308.968  368445.369  277055.258 
    ##       10676       10679       10680       10686       10687       10688 
    ##  355329.753  220623.715  226649.053  279685.900  276114.352  274315.130 
    ##       10699       10701       10703       10706       10707       10708 
    ##  294649.783  190435.911  185303.582  190073.372  199561.617  214587.916 
    ##       10709       10710       10713       10714       10715       10723 
    ##  188723.460  196177.973  273728.126  222853.375  204566.630  203825.466 
    ##       10725       10728       10730       10731       10732       10738 
    ##  481042.945  512936.307  337951.993  293163.841  351635.967  287282.989 
    ##       10745       10754       10757       10759       10763       10764 
    ##  482133.327  303224.280  235196.958  288189.254  305897.750  455264.950 
    ##       10766       10767       10770       10772       10773       10774 
    ##  314215.947  210861.482  262021.435  272069.271  301255.509  337216.944 
    ##       10778       10779       10780       10784       10785       10791 
    ##  179033.028  215464.292  156162.117  226126.740  188597.765  213799.532 
    ##       10796       10797       10799       10801       10803       10805 
    ##  257609.203  439323.067  263653.388  338367.510  295074.618  370985.566 
    ##       10807       10810       10812       10813       10816       10817 
    ##  311419.098  174216.845  203239.264  146656.484  301919.614  263760.579 
    ##       10818       10820       10824       10827       10828       10839 
    ##  296514.479  162532.303  127665.101  182270.963  265786.807  302087.269 
    ##       10840       10845       10851       10852       10867       10869 
    ##  428699.715  295894.181  202206.031  225051.234  255194.209  266054.613 
    ##       10870       10871       10872       10873       10878       10884 
    ##  209235.430  208255.407  200702.107  189377.523  216626.911  283450.415 
    ##       10885       10892       10895       10901       10907       10915 
    ##  292926.260  133000.985  180416.166  201227.251  154564.292  128063.532 
    ##       10918       10921       10922       10923       10926       10928 
    ##  163875.482  153329.879  129220.156  206177.064  202229.077  157439.550 
    ##       10929       10943       10947       10951       10954       10961 
    ##  171094.741  142438.391  119679.026  204461.534  121008.843  199062.664 
    ##       10963       10966       10969       10973       10974       10976 
    ##  200005.624  239890.250  404862.008  239291.447  181905.949  198620.975 
    ##       10978       10984       10990       11001       11003       11005 
    ##  243056.523  253836.266  244703.143  581050.670  278970.890  210284.917 
    ##       11016       11019       11021       11023       11032       11034 
    ##  334919.651  396513.577  419298.266  211684.076  245030.126  192587.291 
    ##       11035       11042       11047       11048       11049       11055 
    ##  301167.067  466874.581  264020.544  269498.416  290794.658  194917.460 
    ##       11058       11063       11064       11065       11071       11078 
    ##  222091.394  198498.256  239033.076  226732.870  252138.825  213164.676 
    ##       11079       11086       11098       11099       11100       11105 
    ##  224639.828  202467.691  300055.914  321585.383  232926.300  298034.118 
    ##       11106       11107       11117       11118       11123       11136 
    ##  259223.115  235466.134  226385.393  236917.619  246602.044  194388.932 
    ##       11140       11143       11153       11154       11157       11160 
    ##  254075.706  191594.588  228080.719  168133.579  243836.223  217524.438 
    ##       11161       11163       11174       11177       11184       11187 
    ##  212154.656  221233.151  225364.238  205969.578  199490.669  313114.388 
    ##       11191       11193       11195       11206       11208       11212 
    ##  164245.575  177305.169  185737.998  192257.280  230313.828  170481.658 
    ##       11217       11218       11219       11232       11236       11238 
    ##  278519.308  240444.244  236453.866  238729.551  263706.659  240021.961 
    ##       11240       11241       11248       11251       11261       11267 
    ##  197336.208  264280.407  215991.249  177493.769  169905.610  228567.222 
    ##       11269       11272       11273       11274       11275       11283 
    ##  220850.132  200272.425  215227.862  231628.256  242947.794  235819.755 
    ##       11289       11297       11306       11307       11308       11316 
    ##  268549.059  174319.720  202906.771  216057.057  194680.133  171784.964 
    ##       11325       11329       11330       11340       11345       11347 
    ##  223806.067  217639.612  208328.652  182772.863  187648.529  219398.484 
    ##       11351       11363       11368       11371       11373       11383 
    ##  166731.456  202563.004  280423.501  207931.371  300850.927  203533.348 
    ##       11384       11386       11387       11390       11392       11396 
    ##  381632.333  352976.570  238944.491  237201.313  199849.978  310297.864 
    ##       11401       11404       11412       11415       11422       11429 
    ##  306595.309  226096.070  277181.408  323549.228  298703.528  287962.599 
    ##       11432       11439       11440       11441       11444       11446 
    ##  308942.739  256274.070  328810.472  287798.671  264406.440  304209.395 
    ##       11447       11453       11455       11458       11460       11466 
    ##  314883.317  283568.686  286825.007  233081.787  211104.079  220995.239 
    ##       11470       11472       11475       11482       11491       11492 
    ##  445528.866  278808.530  151394.837  267077.396  489867.855  262126.160 
    ##       11502       11505       11510       11515       11535       11539 
    ##  316269.624  282237.085  283715.479  292469.569  144757.959  242361.936 
    ##       11550       11553       11557       11559       11561       11562 
    ##  300139.530  192801.888  252182.912  185599.311  191100.366  163915.607 
    ##       11566       11569       11570       11571       11577       11583 
    ##  254085.433  198946.045  276723.515  291849.687  165118.969  271492.127 
    ##       11585       11586       11592       11595       11596       11604 
    ##  282918.655  240129.807  318588.591  316233.494  355255.144  287776.285 
    ##       11611       11618       11623       11627       11637       11638 
    ##  320442.761  217668.067  282744.172  260822.305  237599.396  187380.869 
    ##       11640       11641       11647       11650       11651       11653 
    ##  270667.509  249834.887  266130.957  272761.961  272864.338  333015.144 
    ##       11658       11659       11662       11674       11675       11676 
    ##  205985.736  213304.854  258258.407  275901.081  202638.400  260384.003 
    ##       11681       11691       11694       11698       11715       11719 
    ##  224984.365  172882.387  179743.457  385758.721  101689.404   65455.025 
    ##       11725       11730       11740       11743       11744       11749 
    ##   68142.396   59320.209  178344.327  144892.662  200209.215  171499.527 
    ##       11755       11758       11768       11769       11770       11772 
    ##  219562.321  162426.108  173033.157  133580.538  112220.504  125693.255 
    ##       11775       11777       11778       11780       11787       11792 
    ##  127850.250  115626.801  119253.088  186507.490  186745.526  210425.975 
    ##       11803       11805       11813       11817       11821       11825 
    ##   95112.923  124830.936  138735.440  139605.611   68557.880   56749.655 
    ##       11828       11829       11836       11837       11838       11843 
    ##  125989.690  376237.628   76940.669  101737.546   87130.642   76715.043 
    ##       11846       11848       11849       11851       11855       11863 
    ##   32207.232   59998.997   99611.222   53945.114   30309.398   62786.209 
    ##       11867       11870       11871       11875       11884       11886 
    ##    3391.574   16455.588  104912.520  138936.970   28552.794   83722.222 
    ##       11890       11891       11896       11902       11910       11912 
    ##   64955.761   86111.520  109762.724  296939.465  123165.741  186462.144 
    ##       11918       11921       11924       11944       11945       11949 
    ##  138727.885  110236.496  145972.743  170247.525  191069.028  103281.535 
    ##       11953       11954       11956       11957       11959       11971 
    ##  182934.341  160404.477  151991.723  104115.760  153821.830  125758.425 
    ##       11977       11978       11980       11988       11996       11997 
    ##  141950.006  153671.974  118502.180  145686.594  124228.151  161353.508 
    ##       12006       12008       12013       12015       12021       12022 
    ##  226242.042  273292.310  224696.218  302626.442  151304.143  153993.991 
    ##       12024       12025       12026       12034       12035       12049 
    ##  189197.818   55014.048  131004.672  132305.362  146400.372  175416.480 
    ##       12052       12054       12056       12057       12058       12061 
    ##   84684.766  100479.232  105773.309   91998.266  100042.513  114438.305 
    ##       12064       12065       12070       12073       12074       12077 
    ##  144404.751  158637.155  152904.453  151049.767  255567.640  168820.084 
    ##       12087       12089       12091       12097       12098       12121 
    ##  181357.986  113832.810  101934.208  177770.848   50361.343   29707.421 
    ##       12130       12138       12153       12155       12162       12163 
    ##  115018.487  121259.963  289905.092  188963.735   50808.337  106321.160 
    ##       12168       12179       12180       12181       12183       12186 
    ##  129770.925   99454.179  116375.498  114317.978  146848.427  160137.951 
    ##       12189       12202       12207       12210       12214       12224 
    ##  153461.339  315695.924  205061.001  109576.103  305510.885  189611.105 
    ##       12225       12228       12232       12239       12240       12242 
    ##  153564.809  234227.170  108514.457  134944.378  138101.173   97330.689 
    ##       12243       12244       12250       12253       12260       12261 
    ##   80506.714  176743.791  124659.977  153074.702   63016.533   71883.029 
    ##       12264       12265       12268       12271       12273       12274 
    ##   55217.588   91059.274  151024.890  102500.924  172181.362  103311.354 
    ##       12290       12295       12297       12300       12305       12306 
    ##   88853.607  115064.906   66165.331   87018.883  133954.963  228601.121 
    ##       12309       12318       12323       12330       12335       12344 
    ##  125938.385   65086.681   39349.525   89185.987  146513.839  135515.067 
    ##       12346       12348       12349       12351       12352       12354 
    ##   78948.677  180221.702  120363.340  114996.543  245385.186  163491.215 
    ##       12355       12358       12361       12363       12367       12368 
    ##  232018.297  130313.910  151061.568  198672.474  141738.832  150883.417 
    ##       12369       12372       12376       12381       12382       12383 
    ##  223466.155  411767.354  311885.465  178851.138  133522.586  220641.426 
    ##       12386       12388       12389       12391       12397       12402 
    ##  284228.487  153881.110  136171.124  290701.958  225817.423  141782.224 
    ##       12404       12407       12408       12414       12416       12424 
    ##   80991.036  238200.730  114629.854   96657.880   50280.639   80286.958 
    ##       12425       12427       12428       12434       12435       12438 
    ##   37288.894   63850.402  110514.820   12874.349   60238.278   46196.029 
    ##       12440       12442       12443       12447       12451       12460 
    ##   32231.863    9401.705   55465.773   58907.756   -8534.881   49497.532 
    ##       12461       12463       12464       12465       12473       12476 
    ##    5364.718  183975.803  165578.092  176010.111  110558.492  107855.501 
    ##       12482       12486       12496       12499       12502       12505 
    ##  -34920.629  100872.707  138323.491  152359.371  160583.626  179912.419 
    ##       12508       12509       12524       12529       12530       12532 
    ##  147217.995  243222.274  111215.151  100141.024  108187.178  112817.011 
    ##       12535       12536       12537       12547       12552       12569 
    ##   75940.278   45162.854  150712.405  167607.434  222601.173  128326.931 
    ##       12572       12577       12605       12607       12608       12610 
    ##  124757.028  129059.225   66147.812  134134.984  116942.261  124702.071 
    ##       12624       12630       12633       12634       12640       12641 
    ##  286165.361   98685.538   64609.202   89568.011   77319.845  103553.806 
    ##       12645       12654       12656       12658       12660       12664 
    ##   67902.288  116259.616   89668.687  107353.690  163746.083   94993.356 
    ##       12665       12667       12670       12671       12675       12676 
    ##  159093.886  112065.264  134720.846  119480.724  126588.751   77002.889 
    ##       12688       12690       12704       12707       12721       12722 
    ##   77993.773  250188.891  303524.169  144430.023  148317.455  294127.159 
    ##       12734       12736       12748       12755       12756       12763 
    ##  319508.411  220188.158  191456.509  129081.002  137574.780   85122.803 
    ##       12764       12768       12770       12771       12772       12773 
    ##  120641.030   93520.011  100293.233  114711.385   78908.726  103760.603 
    ##       12779       12783       12784       12787       12794       12796 
    ##   76923.990   43325.610   35137.476   55149.782   61040.102   38277.897 
    ##       12799       12800       12803       12804       12806       12807 
    ##   69849.941   58889.491   59791.143  209439.585   72450.165  107195.532 
    ##       12808       12813       12823       12830       12834       12841 
    ##   40984.235  224629.457  317347.681  148216.167  137861.786  109903.183 
    ##       12846       12855       12860       12864       12866       12878 
    ##  161130.553   73243.916   44885.408  126696.927  125200.703  111579.462 
    ##       12884       12886       12891       12893       12896       12898 
    ##  118286.321  107946.757  139258.897  118587.144  126776.919  100505.730 
    ##       12906       12919       12921       12927       12928       12929 
    ##  100791.356  163853.978  172220.432  157381.300  167299.970  140677.321 
    ##       12931       12940       12941       12942       12943       12947 
    ##  194388.520  155897.968  206255.364  165342.027  120093.286  141216.711 
    ##       12948       12952       12954       12960       12976       12977 
    ##  187590.384  132721.458  133432.245  110844.410   99938.302  180313.341 
    ##       12979       12981       12984       12990       13001       13002 
    ##  162698.695  126617.982  188237.771  120113.950  145788.752  122860.662 
    ##       13006       13011       13018       13021       13024       13033 
    ##  135361.012  154946.349  154214.560  153780.019  157964.897  224976.677 
    ##       13036       13038       13041       13047       13050       13053 
    ##   92740.810  112279.281  112424.465   77700.863  153766.837  156722.804 
    ##       13056       13057       13059       13065       13068       13074 
    ##  104919.786   91969.617  144939.929  132616.380  102884.957   87266.809 
    ##       13078       13083       13087       13092       13095       13097 
    ##  109896.034  125099.243  180271.326  174243.978   70154.196  143195.629 
    ##       13100       13104       13105       13107       13112       13120 
    ##  145931.953  200821.458  208164.104  133178.924  222006.853  162081.705 
    ##       13129       13131       13135       13143       13146       13147 
    ##  114639.239  134786.149  143016.127   98911.828  105535.155  116094.147 
    ##       13152       13153       13155       13158       13163       13168 
    ##  155533.182  149541.060  197902.344  125488.244  121065.743  204961.160 
    ##       13177       13180       13183       13190       13195       13196 
    ##  248219.410  313866.401  170315.919  103125.085  146159.530  140727.086 
    ##       13198       13199       13201       13210       13219       13223 
    ##  148903.555  123092.836   88305.413  150380.244  190063.512  132400.590 
    ##       13224       13236       13238       13239       13242       13256 
    ##  163449.698  305816.753  287565.831  281221.074  234194.799  208586.411 
    ##       13257       13260       13261       13265       13266       13276 
    ##  261347.778  169916.403  165280.595  121794.586  110368.369  144052.253 
    ##       13281       13286       13288       13290       13292       13293 
    ##  145621.178  167382.898  162933.069  122323.604  124032.798  150444.530 
    ##       13294       13295       13296       13297       13298       13308 
    ##  167842.216  154683.542  156467.725  179562.322  240407.425  166378.287 
    ##       13313       13318       13320       13322       13331       13338 
    ##  182660.120   88919.571  137191.370   70125.888  173711.777  162001.604 
    ##       13341       13342       13345       13353       13356       13363 
    ##  189064.904  246590.100  110894.236  172359.786  193042.557  289714.570 
    ##       13364       13371       13375       13376       13377       13380 
    ##  103696.404  182714.018  137386.394  179211.006  263432.551  199889.359 
    ##       13388       13396       13400       13405       13409       13417 
    ##  220671.229  192236.117  137953.695  113226.891  127253.992  161786.227 
    ##       13420       13423       13432       13433       13445       13446 
    ##  165344.231  163306.434  161854.541  154463.249  115985.219  114380.645 
    ##       13447       13451       13458       13464       13469       13470 
    ##   91039.951  154231.880  135512.037  131254.120  120221.539  123403.034 
    ##       13473       13477       13479       13480       13481       13487 
    ##  158721.184  126349.203  123512.498   95385.322  116087.818  132639.569 
    ##       13496       13499       13510       13514       13521       13523 
    ##  101429.154   60611.229   78475.887   84227.503  205820.311  224704.750 
    ##       13526       13531       13532       13535       13539       13542 
    ##  147266.579  199463.206  140764.802  121958.775  107979.260  137008.828 
    ##       13547       13548       13550       13553       13557       13559 
    ##   81051.451   53660.739  113053.993   94704.216   57607.041   82032.960 
    ##       13560       13564       13565       13573       13579       13586 
    ##   98829.646  165595.910  136444.519  118003.160   86599.621  118680.112 
    ##       13594       13602       13614       13615       13618       13619 
    ##   70132.377  151022.604  130465.172  102181.146  130791.521  109294.454 
    ##       13621       13622       13631       13635       13637       13644 
    ##   62889.961  109460.604  158535.767  118302.341   85776.540  121458.159 
    ##       13645       13653       13658       13659       13662       13667 
    ##   82921.863  104306.447  149676.528  151219.743  175045.912  179387.759 
    ##       13673       13676       13678       13680       13683       13684 
    ##  226424.161  114988.431  121145.030  182731.569  105147.477  110090.506 
    ##       13685       13690       13695       13698       13699       13700 
    ##  177367.358  124276.900   46748.635  113906.121  126440.237  133299.850 
    ##       13713       13715       13716       13717       13720       13725 
    ##  129933.356  134159.907  204331.969  110960.364  114332.520   55651.289 
    ##       13727       13733       13744       13745       13746       13763 
    ##   81966.687  142620.555  163885.341  143485.884  155507.932  116264.287 
    ##       13770       13773       13774       13777       13778       13781 
    ##  143548.451  168105.018  246391.775  111873.943  124788.383  120777.310 
    ##       13782       13792       13799       13803       13804       13811 
    ##  121818.726  126018.379   40077.884  212752.194  179586.242   99371.628 
    ##       13812       13813       13820       13827       13828       13836 
    ##   79076.032  100646.792  136582.704   70109.713   92273.627  120428.260 
    ##       13838       13840       13845       13852       13858       13859 
    ##   98680.117   32413.147   93680.276   77559.525  203139.329  153652.603 
    ##       13861       13868       13872       13873       13876       13881 
    ##  138139.596  116385.562  121073.336   95938.071   81234.322   88086.496 
    ##       13882       13884       13888       13890       13894       13897 
    ##   87587.672   91850.489   20136.694  -43946.043   42608.009   31546.058 
    ##       13909       13911       13913       13919       13921       13929 
    ##   96545.645  116664.024  132052.927  106340.258    8458.701   16226.570 
    ##       13944       13948       13961       13963       13974       13975 
    ##  227563.915  201044.861  132510.691  167218.615  163544.203  111947.147 
    ##       13976       13987       13993       13998       14009       14012 
    ##  113710.192   99541.014  122558.327  108361.961  424685.058  229456.308 
    ##       14014       14018       14020       14022       14025       14027 
    ##  225795.160  206832.382  209852.032  181143.225  247197.290  214892.835 
    ##       14030       14036       14043       14054       14056       14057 
    ##  211737.040  283659.066  216510.354  182832.499  219459.791  211078.158 
    ##       14059       14064       14068       14074       14078       14081 
    ##  255402.331  183864.522  169308.450  169604.249  191590.543  216299.016 
    ##       14082       14083       14084       14091       14092       14094 
    ##  227175.052  360501.001  275424.008  205143.211  168750.639  169664.017 
    ##       14096       14100       14102       14105       14111       14116 
    ##  124236.423  185021.749  196671.727  155709.995  162279.541  173626.175 
    ##       14118       14120       14128       14130       14132       14134 
    ##  231836.953  140376.303  139585.739  132933.558  140066.816  187067.403 
    ##       14141       14143       14146       14150       14156       14158 
    ##  145238.183  132165.638  226138.146  135189.279  261683.230  212440.996 
    ##       14160       14161       14163       14166       14168       14169 
    ##  201347.913  177991.465  167797.355  184163.027  203358.890  185196.593 
    ##       14179       14180       14186       14190       14191       14194 
    ##  185774.339  221536.038  190737.012  136339.185  164108.872  177201.118 
    ##       14196       14199       14202       14206       14208       14212 
    ##  179893.635  185570.783  201739.323  218667.865  143449.886  189229.557 
    ##       14213       14221       14222       14229       14232       14235 
    ##  142878.221  295658.278  198761.860  250359.476  208161.331  215669.281 
    ##       14237       14238       14239       14240       14244       14245 
    ##  224932.131  203139.278  136025.430  106555.906  105717.873  210360.395 
    ##       14247       14248       14253       14261       14265       14267 
    ##  127158.956  189541.492  157691.011  106333.619  147397.846  149406.851 
    ##       14268       14272       14273       14274       14281       14282 
    ##  127970.677  115538.048  116946.411  121227.664  133568.884  145803.767 
    ##       14283       14292       14298       14303       14304       14311 
    ##  161064.870  259654.584  186191.763  162073.045  194261.872  135793.082 
    ##       14321       14335       14336       14345       14352       14358 
    ##  151645.510  156642.270  176170.818  163062.015  204602.191  373092.864 
    ##       14368       14369       14371       14372       14377       14381 
    ##  315414.635  323942.558  242705.274  366411.736  339391.571  242188.220 
    ##       14389       14391       14402       14405       14408       14411 
    ##  246362.264  256932.744  203182.192  193973.836  280528.568  248999.849 
    ##       14412       14414       14416       14418       14419       14420 
    ##  252996.080  270492.308  230770.397  224347.724  233059.015  143266.210 
    ##       14421       14422       14423       14425       14440       14443 
    ##  206604.853  196567.044  181721.770  218704.615  195086.524  268757.027 
    ##       14455       14459       14460       14467       14472       14477 
    ##  256727.766  276222.336  540111.478  354278.033   80485.242  275978.430 
    ##       14479       14481       14485       14486       14491       14495 
    ##  282471.857  380675.453  398127.408  345249.250  337151.644  271807.151 
    ##       14496       14505       14510       14514       14517       14521 
    ##  192751.894  214162.054  228649.426  221842.815  206214.428  200892.766 
    ##       14523       14526       14527       14538       14547       14549 
    ##  204040.842  206536.880  190724.490  240723.322  324237.811  300833.746 
    ##       14557       14559       14561       14563       14565       14571 
    ##  355363.208  366757.735  300013.010  224081.748  257160.553  224125.457 
    ##       14577       14579       14584       14586       14591       14602 
    ##  201328.137  218647.480  224587.053  288158.073  272328.796  222814.788 
    ##       14603       14607       14608       14610       14611       14612 
    ##  200801.648  174007.918  252701.459  286598.398  277030.701  228183.159 
    ##       14625       14627       14628       14630       14633       14635 
    ##  232563.637  228086.125  259522.577  190509.044  253115.296  251309.424 
    ##       14639       14644       14652       14663       14665       14686 
    ##  235863.889  260868.002  200862.865  256322.406  200751.370  284368.063 
    ##       14688       14697       14699       14702       14706       14713 
    ##  364354.055  241802.397  211840.194  236679.066  311264.642  324906.442 
    ##       14716       14719       14727       14730       14731       14732 
    ##  306776.331  433955.430  215178.394  247220.603  272703.549  219303.283 
    ##       14736       14750       14751       14757       14765       14775 
    ##  246991.219  220376.774  186204.941    9833.999  155298.155  147519.577 
    ##       14787       14793       14794       14795       14796       14798 
    ##  252861.994  215201.871  182730.811  196429.536  161956.381  169947.575 
    ##       14799       14808       14814       14824       14844       14847 
    ##  155007.999  309371.675  286318.956  156740.088  218211.670  231095.119 
    ##       14849       14852       14856       14860       14862       14866 
    ##  134569.670  191449.229  209043.906  170573.321  183269.345  198543.756 
    ##       14867       14879       14880       14886       14887       14891 
    ##  186315.442  269009.117  219654.911  172792.337  164699.947  209552.024 
    ##       14895       14896       14898       14904       14908       14917 
    ##  215203.996  189596.894  137160.014  161633.781  248547.060  223332.590 
    ##       14919       14928       14936       14938       14940       14943 
    ##  261891.601  309350.465  247405.991  222551.529  271844.938  181010.794 
    ##       14945       14948       14949       14952       14956       14959 
    ##  250853.564  244194.331  215755.828  170074.227  250737.443  248067.147 
    ##       14964       14966       14970       14980       14983       14989 
    ##  323405.507  204437.073  240182.010  205377.349  228667.306  196944.554 
    ##       14991       14992       14995       14996       15001       15006 
    ##  223943.225  232431.027  217213.340  210724.666  224773.754  199477.321 
    ##       15007       15018       15019       15022       15023       15029 
    ##  199747.870  260990.872  242869.400  234807.742  192677.743  226262.264 
    ##       15035       15041       15049       15054       15055       15058 
    ##  278072.364  205671.130  302041.000  241315.087  240360.354  276752.605 
    ##       15071       15077       15080       15084       15086       15089 
    ##  180616.990  232994.549  159535.245  155574.396  263920.581  262660.776 
    ##       15091       15094       15096       15099       15102       15106 
    ##  127831.981  182901.780  191379.416  134968.649  209699.358  292235.929 
    ##       15110       15112       15118       15122       15126       15128 
    ##  209214.756  205613.675  221322.541  251918.761  240482.296  170146.397 
    ##       15130       15136       15139       15140       15143       15152 
    ##  148041.704  213915.800  199794.365  220836.440  240216.571  239364.993 
    ##       15154       15157       15165       15166       15167       15171 
    ##  387536.228  277428.350  200754.174  224762.713  216216.065  196418.195 
    ##       15174       15176       15186       15191       15196       15198 
    ##  339084.898  313981.108  233754.909  279069.780  339024.672  320841.643 
    ##       15204       15211       15217       15218       15220       15223 
    ##  300403.642  245315.758  243913.924  283081.208  238281.890  289146.379 
    ##       15227       15228       15229       15234       15236       15237 
    ##  264619.934  294447.510  276021.505  483880.819  480161.305  303203.789 
    ##       15238       15246       15247       15248       15249       15253 
    ##  300926.682  288828.465  350105.541  166461.912  295274.606  252400.562 
    ##       15255       15261       15265       15266       15273       15277 
    ##  288014.911  201184.436  206546.611  203098.045  297763.453  228489.033 
    ##       15281       15283       15286       15303       15326       15329 
    ##  213923.420  224845.186  227543.665  234606.258  267253.785  161187.122 
    ##       15339       15343       15345       15347       15354       15355 
    ##  145740.256  219918.409  147779.473  130245.813  160908.538  221971.352 
    ##       15368       15370       15373       15377       15378       15379 
    ##  218924.057  170107.089  180039.596  113002.284  212598.513  216556.041 
    ##       15380       15381       15389       15392       15396       15397 
    ##  131712.558  260157.432  182769.771  210726.735  244343.886  208719.400 
    ##       15399       15409       15418       15420       15425       15426 
    ##  201090.266  165595.759  202243.013  174647.796  235779.797  155268.085 
    ##       15427       15429       15433       15435       15438       15444 
    ##  186864.628  122429.874  152564.408  141073.417  237015.657  165952.498 
    ##       15448       15451       15466       15470       15475       15478 
    ##  199448.827  218914.444  185863.885  177502.186  199548.849  153111.174 
    ##       15487       15490       15493       15498       15501       15512 
    ##  204465.788  206575.948  233558.070  287961.653  355712.797  236067.319 
    ##       15523       15532       15533       15540       15542       15547 
    ##  189897.449  199990.933  205658.893  167120.245  230774.638  206554.048 
    ##       15549       15550       15554       15558       15560       15561 
    ##  134904.129  149277.364  185183.449  176758.344  192948.217  206305.974 
    ##       15563       15564       15566       15567       15571       15577 
    ##  308514.750  208070.284  252996.901  274318.938  235472.541  175497.652 
    ##       15578       15579       15582       15583       15588       15589 
    ##  237376.768  167721.111  252653.279  121478.681  167976.806   72217.798 
    ##       15590       15591       15592       15594       15599       15604 
    ##  247313.197  200162.135  137913.613   76366.985   84295.353  176077.757 
    ##       15605       15611       15613       15620       15623       15625 
    ##  305226.276  269091.256  230231.523  283317.352  287991.553  212250.589 
    ##       15626       15641       15646       15649       15650       15651 
    ##  283701.944  328520.400  247427.333  292119.355  268153.136  190430.447 
    ##       15660       15662       15667       15668       15671       15674 
    ##  363858.366  177413.861  277947.775  339846.291  230257.015  340335.556 
    ##       15680       15682       15687       15689       15691       15692 
    ##  246141.255  316904.605  348247.696  444220.412  329166.117  530563.987 
    ##       15693       15694       15699       15705       15709       15714 
    ##  432253.843  693940.449  664385.340  342053.144  292215.475  245899.300 
    ##       15715       15719       15723       15726       15727       15731 
    ##  257017.943  168855.352  320387.810  265281.993  272346.793  240400.915 
    ##       15743       15744       15748       15749       15753       15755 
    ##  215050.843  140820.426  231215.787  210455.416  285874.627  259701.160 
    ##       15765       15773       15776       15782       15783       15787 
    ##  228364.181  311215.914  276869.639  214482.196  185516.650  226193.557 
    ##       15790       15793       15797       15799       15804       15807 
    ##  179171.440  177831.466  247209.618  263021.933  273595.479  262730.243 
    ##       15819       15821       15831       15841       15864       15869 
    ##  187842.451  202786.526  283921.374  287030.639  311723.157  196334.053 
    ##       15885       15894       15902       15904       15913       15916 
    ##  231751.209  214347.887  267120.121  267464.204  260970.279  219543.084 
    ##       15926       15929       15941       15942       15943       15954 
    ##  278131.439  265436.290  279437.882  243392.579  242270.666  251708.952 
    ##       15955       15956       15965       15975       15978       15981 
    ##  279632.080  262092.974  306788.733  260843.726  266715.214  324563.599 
    ##       15986       15990       15995       15998       15999       16005 
    ##  279084.911  260173.711  285770.171  473704.050  349406.383  365566.884 
    ##       16010       16013       16016       16031       16035       16036 
    ##  350355.448  423141.028  415853.552  268533.490  240403.503  274570.058 
    ##       16037       16043       16054       16055       16059       16060 
    ##  240815.928  230727.099  268346.624  294593.927  268060.981  246572.550 
    ##       16067       16068       16069       16071       16085       16087 
    ##  263521.465  297509.966  263494.766  306361.172  312445.278  321599.178 
    ##       16088       16089       16090       16091       16107       16125 
    ##  232369.342  246528.373  304855.717  281822.927  266137.874  272450.174 
    ##       16134       16135       16137       16139       16145       16157 
    ##  242459.539  270035.833  353571.019  278714.979  268101.079  244741.309 
    ##       16160       16161       16162       16163       16166       16175 
    ##  220620.224  250098.289  281585.456  256683.611  262766.659  163955.366 
    ##       16176       16191       16192       16193       16196       16203 
    ##  506975.226  100774.101  101687.156  101556.967  171432.509   72494.180 
    ##       16207       16208       16209       16215       16216       16218 
    ##   69841.706   99742.945   70562.097  129794.025   68847.999   90755.864 
    ##       16226       16227       16231       16232       16238       16239 
    ##  172145.382  167214.300  112705.608  177209.850  151481.711  207330.274 
    ##       16242       16243       16245       16246       16248       16251 
    ##   62925.346  135773.282  136872.922  114299.871  131045.728   69677.650 
    ##       16253       16257       16262       16264       16266       16270 
    ##   97980.122  112126.207   87322.529   88292.778   67077.167  100118.623 
    ##       16271       16272       16274       16277       16278       16281 
    ##  163232.748   76852.256   72660.486   54333.629   88386.078   98905.967 
    ##       16288       16289       16293       16295       16297       16298 
    ##   75968.069   91035.375  124329.895   90644.820  107508.097   85141.372 
    ##       16305       16307       16309       16310       16312       16317 
    ##  380655.490  161893.924  171574.399  136200.208  184973.102   95761.672 
    ##       16319       16321       16324       16325       16335       16337 
    ##  141995.268  159014.697   54991.327  192593.175  190538.322  104470.588 
    ##       16338       16345       16358       16365       16375       16376 
    ##  175621.214  186734.442   99065.117  158515.768  120107.772   89596.290 
    ##       16377       16384       16385       16386       16392       16394 
    ##   74182.959  147412.849  106901.239  132790.753  119563.551  236623.610 
    ##       16396       16402       16404       16406       16414       16415 
    ##  125016.963  202063.761  137725.503  153609.225  112262.299   96578.000 
    ##       16419       16422       16423       16425       16427       16428 
    ##  131340.433  116059.666  174691.907  119926.135   93931.046  193491.657 
    ##       16429       16433       16440       16445       16449       16451 
    ##  129163.549  150274.356  156017.514  119546.203  108543.820  186106.788 
    ##       16453       16456       16458       16461       16462       16464 
    ##  127842.093  122851.951  193442.101  284452.796  176900.901  144752.411 
    ##       16467       16471       16475       16476       16480       16484 
    ##  140080.130   84597.637   89736.462  129259.885  141208.098  127960.372 
    ##       16491       16516       16520       16525       16528       16531 
    ##  178942.252  108604.067   88675.066  148276.259  180635.220  163945.363 
    ##       16532       16533       16541       16543       16548       16551 
    ##  296972.273  118469.314  123124.752  151759.853  152913.264  165274.445 
    ##       16558       16559       16562       16566       16569       16570 
    ##  107438.124  114036.528  177322.549  219838.233  162846.283  178412.845 
    ##       16571       16580       16585       16587       16588       16593 
    ##  163349.496  176894.957  166790.648  148525.808   63809.507  145879.088 
    ##       16598       16606       16607       16610       16611       16613 
    ##  246736.055  236156.575  258491.923  213463.058  176736.146  261432.773 
    ##       16616       16623       16624       16628       16629       16638 
    ##  256597.134  206799.197  244860.809  252878.050  275574.917  241637.602 
    ##       16646       16647       16648       16650       16655       16656 
    ##  168104.298  214095.012  274481.347  192566.293  263045.119  255915.205 
    ##       16657       16664       16670       16672       16674       16675 
    ##  190166.297  249398.683   50076.614  220186.848  283175.602  323053.903 
    ##       16681       16682       16683       16692       16700       16701 
    ##  270285.828  266992.289  229767.111  211600.962  187173.402  207907.981 
    ##       16708       16710       16714       16716       16719       16723 
    ##  230407.303  201275.244  220904.954  238885.302  214028.899  196929.337 
    ##       16725       16726       16727       16729       16733       16738 
    ##  237197.946  255310.553  223774.038  274651.161  245473.489  163227.889 
    ##       16739       16743       16744       16746       16747       16750 
    ##  233589.211  257182.795  279681.180  268086.017  234904.876  239675.936 
    ##       16751       16752       16772       16773       16774       16777 
    ##  202031.363  242883.962  284696.329  279323.275  270799.512  234607.409 
    ##       16784       16787       16788       16797       16804       16805 
    ##  236041.742  272118.727  277034.959  267591.341  290150.822  259810.397 
    ##       16810       16813       16815       16818       16819       16821 
    ##  235242.958  287765.408  315338.617  277635.772  259412.130  276680.922 
    ##       16824       16825       16828       16829       16835       16837 
    ##  279106.126  313617.149  231507.519  558707.765  264951.411  270268.866 
    ##       16841       16852       16853       16855       16857       16860 
    ##  300081.133  270696.955  251348.805  288279.546  249499.157  188915.650 
    ##       16871       16879       16883       16889       16890       16891 
    ##  292163.733  294028.736  256536.331  283330.755  299164.419  344924.412 
    ##       16896       16901       16903       16909       16914       16918 
    ##  332252.356  304018.029  287108.408  581399.951  603692.517  444892.066 
    ##       16920       16921       16922       16927       16928       16930 
    ##  292853.929  252877.763  278218.457  266888.125  203455.583  220920.112 
    ##       16931       16934       16935       16941       16944       16946 
    ##  237593.454  259009.661  235522.567  481356.456  247967.756  294077.827 
    ##       16952       16953       16961       16967       16975       16981 
    ##  354065.988  259348.925  288169.973  282064.238  301583.897  279539.223 
    ##       16996       17004       17005       17008       17009       17041 
    ##  398377.058  280207.489  285559.599  300841.321  306175.569  344477.927 
    ##       17047       17048       17050       17054       17060       17064 
    ##  320115.147  387958.285  365354.043  347045.698  359967.233  153807.343 
    ##       17067       17069       17070       17072       17076       17079 
    ##  211242.417  359142.751  373651.451  235626.954  182632.218  222971.393 
    ##       17081       17082       17089       17092       17097       17102 
    ##  278138.543  294971.754  289005.080  247267.350  271296.937  323927.783 
    ##       17103       17108       17111       17112       17114       17116 
    ##  279279.795  678092.494  688424.457  676854.684  612908.748  324768.008 
    ##       17121       17129       17131       17136       17148       17156 
    ##  209333.471  186958.592  194162.084  349303.453  457290.593  383197.507 
    ##       17158       17173       17175       17183       17194       17195 
    ##  465502.041  400801.719  309338.773  370641.718  221359.195  329301.636 
    ##       17196       17201       17204       17211       17219       17221 
    ##  277242.402  332268.344  310900.999  189056.421  222877.235  338408.375 
    ##       17224       17225       17240       17252       17253       17258 
    ##  309709.035  265450.562  194846.002  221216.390  231589.598  207966.866 
    ##       17259       17261       17262       17269       17270       17285 
    ##  262628.728  234923.650  292512.255  285102.633  243361.572  328120.327 
    ##       17292       17297       17304       17313       17319       17321 
    ##  368431.096  237218.696  229206.002  205453.412  304392.631  223955.649 
    ##       17324       17328       17332       17336       17342       17343 
    ##  270105.082  268682.335  307529.124  191495.315  183500.309  281765.648 
    ##       17357       17367       17377       17380       17385       17390 
    ##  276986.927  271126.728  190397.123  249174.632  273064.974  217706.010 
    ##       17391       17392       17396       17398       17403       17409 
    ##  208077.250  228481.127  217310.270  168620.310  200069.186  160504.826 
    ##       17417       17419       17420       17430       17433       17438 
    ##  167934.315  227089.708  217703.361  239135.104  229111.369  238802.600 
    ##       17441       17444       17445       17454       17457       17460 
    ##  281190.204  273602.814  231905.558  326316.344  259205.819  179220.532 
    ##       17463       17464       17465       17482       17483       17486 
    ##  273149.014  257187.405  246407.376  354614.956  289418.441  301453.795 
    ##       17489       17496       17500       17502       17507       17512 
    ##  257179.571  297385.131  292950.438  196858.216  219196.516  255545.334 
    ##       17514       17515       17520       17523       17525       17528 
    ##  327812.304  308503.760  199560.867  242605.172  153079.740  163820.474 
    ##       17531       17535       17542       17543       17555       17557 
    ##  199493.702  197600.975  213661.220  194408.943  173364.584  213829.702 
    ##       17562       17564       17574       17579       17588       17592 
    ##  167433.469  285490.945  188622.007  268944.606  266085.692  286118.153 
    ##       17594       17596       17597       17599       17600       17604 
    ##  243401.735  233356.341  270253.443  281002.591  267233.516  269709.669 
    ##       17606       17615       17621       17643       17645       17648 
    ##  310578.567  343329.518  247479.122  271946.904  331554.088  250881.269 
    ##       17652       17653       17658       17673       17674       17678 
    ##  232695.972  244533.790  329234.791  178244.904  198002.125  125380.873 
    ##       17681       17688       17692       17693       17698       17702 
    ##  249009.006  229133.383  233470.413  281318.565  222725.931  242283.047 
    ##       17704       17719       17721       17723       17728       17729 
    ##  191496.585  320851.738  308157.801  266232.947  251896.303  253953.439 
    ##       17732       17735       17736       17741       17742       17743 
    ##  250414.601  245107.606  255209.516  254038.726  312067.097  292468.640 
    ##       17745       17751       17754       17755       17757       17767 
    ##  333980.175  204358.585  187116.795  201868.377  226630.130  170350.461 
    ##       17769       17777       17782       17783       17792       17793 
    ##  148822.476  220791.728  204799.629  260248.274  261014.519  225268.905 
    ##       17795       17798       17800       17802       17803       17807 
    ##  233694.882  305863.055  345735.101  271756.283  358203.837  268455.532 
    ##       17810       17815       17822       17834       17840       17842 
    ##  324781.203  296606.611  246032.835  279179.222  389197.778  199675.335 
    ##       17844       17846       17851       17854       17855       17856 
    ##  301661.727  299157.374  264562.359  277806.263  448308.255  473830.839 
    ##       17864       17871       17872       17873       17877       17879 
    ##  228677.011  262274.164  198109.131  184943.079  272094.512  288014.541 
    ##       17881       17882       17884       17886       17887       17889 
    ##  249124.061  310782.709  298505.059  297792.100  248912.655  204395.487 
    ##       17891       17892       17893       17894       17901       17904 
    ##  267934.241  212826.417  229703.554  213883.664  263292.800  317154.975 
    ##       17908       17918       17919       17921       17922       17926 
    ##  239022.535  305746.881  235788.242  298594.959  260662.560  322084.493 
    ##       17938       17939       17944       17946       17948       17954 
    ##  219294.829  253823.567  263424.255  280621.308  255541.197  329130.482 
    ##       17957       17964       17965       17967       17973       17977 
    ##  317304.718  310665.328  359191.946  312716.250  196883.448  333510.019 
    ##       17980       17986       17990       17993       17994       17995 
    ##  214057.027  253796.688  151019.262  246923.491  279661.839  276444.152 
    ##       17999       18000       18002       18007       18009       18021 
    ##  335373.260  275298.227  306330.288  289652.740  295577.551  326167.775 
    ##       18023       18027       18034       18044       18048       18049 
    ##  331969.233  275972.847  366067.753  464821.982  259985.399  337601.215 
    ##       18052       18055       18057       18060       18061       18063 
    ##  411852.276  391248.165  425415.366  479576.304  403242.701  393597.518 
    ##       18066       18068       18078       18084       18085       18087 
    ##  518536.456  485181.458  442769.894  404440.777  334638.776  438224.992 
    ##       18090       18092       18093       18097       18105       18108 
    ##  353159.168  363429.042  386545.188  381260.345  293015.675  332471.578 
    ##       18109       18111       18112       18116       18127       18131 
    ##  384900.374  253118.182  322576.624  340713.794  294667.951  269004.397 
    ##       18132       18133       18140       18142       18146       18150 
    ##  324090.544  307403.320  337170.759  397509.748  379380.015  238002.227 
    ##       18155       18158       18161       18169       18173       18176 
    ##  256501.979  304905.946  345593.918  300662.541  290045.010  290633.148 
    ##       18183       18184       18186       18191       18193       18195 
    ##  244829.794  249679.246  261621.151  261735.384  226823.099  223902.355 
    ##       18199       18206       18209       18210       18212       18213 
    ##  250169.260  303544.440  255509.158  359237.187  233748.921  269670.149 
    ##       18215       18216       18218       18222       18223       18230 
    ##  338845.724  302103.257  308792.177  268713.774  303306.432  240869.008 
    ##       18236       18237       18238       18241       18253       18256 
    ##  254487.243  220338.146  244594.682  210593.642  299666.688  339170.836 
    ##       18259       18260       18267       18268       18273       18274 
    ##  284752.651  289708.884  394716.025  367554.732  383468.337  400676.535 
    ##       18286       18291       18292       18294       18300       18303 
    ##  419669.486  390395.821  420897.419  341699.967  319746.652  261477.723 
    ##       18304       18310       18311       18316       18317       18319 
    ##  269668.930  329556.640  311742.672  316918.862  352159.413  308614.636 
    ##       18321       18322       18327       18334       18343       18345 
    ##  351575.350  400354.022  409024.643  207865.842  368721.674  285939.088 
    ##       18348       18351       18358       18359       18363       18365 
    ##  493820.477  354354.968  453169.628  422434.616  582495.883  404475.361 
    ##       18367       18370       18371       18382       18384       18385 
    ##  522715.316  316460.731  321654.482  422647.882  275691.822  377407.507 
    ##       18390       18394       18402       18403       18416       18424 
    ##  380479.231  284504.241  297990.208  320603.380  246789.841  193271.233 
    ##       18431       18433       18437       18442       18444       18461 
    ##  288072.182  343767.177  258563.704  296576.299  265704.449  288708.144 
    ##       18469       18470       18475       18480       18486       18491 
    ##  365585.288  339940.729  227386.866  285354.467  185992.530  268132.804 
    ##       18500       18501       18512       18516       18518       18521 
    ##  287145.153  191627.091  258022.665  183269.024  329088.797   46362.105 
    ##       18522       18524       18527       18534       18535       18537 
    ##  242127.229  263719.717  272288.996  196749.173  225178.088  221071.473 
    ##       18546       18547       18548       18553       18558       18560 
    ##  287377.423  223782.029  164714.166  270241.352  219102.108  299743.744 
    ##       18564       18572       18575       18578       18581       18582 
    ##  196443.757  229086.025  176263.593  178473.148  175549.177  209939.925 
    ##       18583       18588       18591       18593       18594       18595 
    ##  191913.471  191432.758  290823.107  287064.925  268882.419  253976.264 
    ##       18598       18600       18604       18608       18609       18610 
    ##  278615.461  242407.591  367112.891  386946.442  354397.368  262012.612 
    ##       18616       18618       18619       18621       18629       18633 
    ##  277053.743  273454.268  309638.874  307242.676  374756.944  322868.237 
    ##       18634       18638       18640       18643       18651       18654 
    ##  325516.150  264397.924  278262.424  272006.395  314863.588  270803.394 
    ##       18666       18667       18668       18675       18689       18697 
    ##  227881.320  271462.984  295906.661  286433.740  281078.049   77283.474 
    ##       18698       18699       18708       18710       18711       18712 
    ##   53011.187   64352.509   80210.840  101092.715   36361.744   99979.322 
    ##       18718       18725       18726       18729       18735       18737 
    ##   77876.551  116082.844   63253.864   76365.797  122170.053  108870.433 
    ##       18738       18746       18752       18758       18759       18761 
    ##   37083.964  100091.455   60292.655   36397.369   38765.173  103021.574 
    ##       18776       18777       18784       18789       18790       18797 
    ##   43172.304   53992.070   66790.271   73913.918   88936.113   42663.360 
    ##       18802       18804       18809       18810       18811       18814 
    ##   58443.133   95823.990   63218.606   48957.546   35469.891   45195.066 
    ##       18815       18816       18818       18820       18822       18826 
    ##   47482.893   48780.318   32290.542  105174.621   64950.567   28337.156 
    ##       18829       18835       18837       18839       18845       18846 
    ##   15699.452   48882.208   47802.587   30734.166   73230.172   52570.030 
    ##       18848       18851       18855       18856       18858       18860 
    ##   37386.335   25830.980   83244.482   29928.785   75815.132   82511.482 
    ##       18866       18870       18871       18872       18880       18882 
    ##  209846.005  227747.849  184800.459  233313.392  134362.182  183836.977 
    ##       18884       18896       18899       18902       18905       18907 
    ##  211279.917  253610.272  204444.141  172433.077  224196.928  208400.451 
    ##       18911       18914       18916       18935       18938       18946 
    ##  169474.851  194975.771  134982.850  363117.329  230746.647  179817.041 
    ##       18950       18952       18953       18955       18960       18961 
    ##  133389.940  182411.952  159216.836  161737.634  146983.454  157790.579 
    ##       18962       18969       18979       18981       18993       18994 
    ##  145940.395  145371.871  180253.986  148591.742  186209.089  154614.241 
    ##       18995       18998       19002       19003       19006       19007 
    ##  205475.559  225220.309  213577.744  156139.801  203691.209  164112.436 
    ##       19011       19019       19020       19023       19024       19027 
    ##  188675.422  156917.614  130181.623  170380.460  127206.408  239973.085 
    ##       19029       19030       19031       19032       19033       19035 
    ##  223494.167  216773.007  243158.954  250173.068  234692.417  123589.402 
    ##       19037       19040       19041       19042       19044       19045 
    ##  148998.948  159904.466  154839.066  142533.988  150868.025  145165.263 
    ##       19047       19050       19051       19052       19057       19062 
    ##  184767.588  111392.870   95212.212  170367.274  196848.027  217855.641 
    ##       19064       19070       19082       19084       19086       19088 
    ##  242710.096  249925.356  183454.401  224222.439  272275.949  198030.568 
    ##       19096       19098       19101       19102       19104       19119 
    ##  265306.779  212733.286  246368.829  194491.852  262036.527  246449.264 
    ##       19121       19122       19124       19129       19130       19137 
    ##  221492.174  245227.919  263758.020  228565.587  275006.896  228925.119 
    ##       19141       19142       19143       19152       19153       19159 
    ##  240422.129  204461.452  275334.701  144548.838  189715.743  254430.412 
    ##       19161       19164       19167       19176       19178       19182 
    ##  261487.946  222085.840  136993.277  281865.816  199765.277  289416.683 
    ##       19201       19204       19208       19211       19213       19215 
    ##  217506.943  168662.718  199173.928  220378.853  220909.008  148366.885 
    ##       19218       19223       19230       19232       19249       19252 
    ##  186761.247  280274.443  194220.931  225991.251  190403.013  237779.382 
    ##       19265       19266       19275       19276       19281       19284 
    ##  183540.444  169680.446  224720.744  255995.555  179044.055  192848.399 
    ##       19288       19289       19290       19300       19302       19305 
    ##  194527.826  215709.667  191652.562  238949.010  215227.181  279119.119 
    ##       19308       19309       19310       19311       19315       19316 
    ##  234647.272  276503.207  272352.170  239873.901  246347.083  255625.319 
    ##       19317       19319       19321       19323       19324       19325 
    ##  253926.463  219254.695  161525.363  207244.755  204996.347  222578.952 
    ##       19327       19329       19332       19341       19346       19357 
    ##  220941.928  230222.429  231454.287  217051.263  222710.247  199282.836 
    ##       19359       19360       19371       19372       19374       19375 
    ##  227246.523  205462.964  317324.986  126601.279  149360.273   80018.859 
    ##       19378       19383       19386       19394       19395       19406 
    ##  123385.056  167490.060   75442.965   95735.804   65125.997  182027.133 
    ##       19408       19414       19416       19427       19430       19436 
    ##  124171.888  104049.872  152369.128  120573.970  146207.537   10667.523 
    ##       19437       19442       19451       19452       19476       19479 
    ##  149178.941  159218.876  152384.173  151208.414  112058.180  133870.703 
    ##       19480       19484       19490       19499       19500       19502 
    ##  143067.248  141227.910  125796.796  129919.105  135685.993   97951.416 
    ##       19504       19505       19507       19509       19512       19521 
    ##   87336.349  115775.401  114509.141  154799.487   87991.277  142516.286 
    ##       19529       19530       19536       19538       19540       19541 
    ##  120130.617  310688.851  102806.728   61763.711  109824.402  129567.934 
    ##       19545       19547       19559       19567       19568       19569 
    ##   89610.615   79908.328  107456.210   92277.444   81409.054  135753.781 
    ##       19570       19579       19593       19597       19601       19606 
    ##  145891.208  118127.226  197812.662  137817.888  135014.574   90961.023 
    ##       19613       19629       19644       19647       19649       19657 
    ##  146166.890  124136.873  237516.433  157881.065  119916.300   74649.488 
    ##       19662       19668       19670       19674       19678       19685 
    ##  127603.054  178729.784   94405.364  138404.462  195621.308   87434.622 
    ##       19687       19688       19690       19709       19713       19716 
    ##   72015.343   77830.090   48273.858  126366.007  175948.131   53734.894 
    ##       19727       19730       19735       19736       19741       19743 
    ##  122051.013   62273.329  108905.899  106255.305   92369.711   30794.066 
    ##       19753       19768       19769       19771       19778       19779 
    ##   78467.749   73945.776   42347.480   74669.769   39743.616   79815.719 
    ##       19780       19781       19782       19793       19796       19797 
    ##   73823.042  119786.050   85518.592   58493.612   37863.385   51661.757 
    ##       19803       19806       19809       19810       19816       19824 
    ##   28182.861  140997.150  108731.270   48830.446   58179.965   95900.738 
    ##       19835       19842       19846       19847       19850       19852 
    ##   73636.704   84590.305   40479.816  109466.535  151279.572   71428.565 
    ##       19862       19863       19865       19866       19867       19868 
    ##   47146.236   51712.593  198274.541  344715.706  173397.143  148973.145 
    ##       19870       19871       19876       19881       19882       19885 
    ##  108314.260  113025.372   18249.439    6247.695   87441.079   95706.767 
    ##       19886       19892       19893       19898       19902       19903 
    ##   82996.624   58693.669   64165.031   21534.143   62237.937   86740.560 
    ##       19907       19910       19924       19928       19932       19935 
    ##  161751.986  140380.136   97771.075  199038.511  186211.469  105394.146 
    ##       19945       19956       19959       19961       19963       19974 
    ##   85270.978   39251.415  133707.068  127524.307   92813.718  120456.304 
    ##       19976       19977       19983       19988       19993       20001 
    ##  100121.836   82654.401   58793.335   80017.717   61913.170   92076.143 
    ##       20005       20013       20014       20017       20018       20020 
    ##  164291.598   75644.768   92820.995   82646.474  117135.579  129525.368 
    ##       20022       20028       20038       20045       20049       20052 
    ##  149151.498   98553.608   86364.606   88307.207   77020.278   67117.907 
    ##       20053       20059       20066       20068       20073       20075 
    ##   73523.867   63156.506   79995.113   92023.591   73128.919  126170.191 
    ##       20077       20078       20080       20083       20086       20087 
    ##   80199.442   75989.138   72322.916   90357.415   88344.529   79566.294 
    ##       20089       20093       20095       20096       20101       20105 
    ##  100709.827  147782.786  132544.584  104535.366   90139.245   68866.318 
    ##       20106       20108       20112       20114       20120       20121 
    ##   80524.660  139847.104  129190.727   94246.766   69620.691  148642.945 
    ##       20128       20132       20138       20146       20151       20155 
    ##  251378.750  163949.357  153761.466  222493.800  200345.875  358664.456 
    ##       20159       20164       20165       20168       20171       20177 
    ##  368894.362  554537.854  195559.890  204565.765  252526.059  274068.466 
    ##       20179       20182       20185       20196       20198       20200 
    ##  330395.965  172110.065  272238.609  225096.479  251022.918  288221.867 
    ##       20215       20217       20218       20221       20223       20225 
    ##  251483.545  294041.381  308319.820  289662.823  282443.387  218811.053 
    ##       20232       20233       20234       20239       20244       20246 
    ##  278645.130  241911.533  351803.400  292768.751  235626.481  251794.896 
    ##       20258       20260       20261       20263       20277       20279 
    ##  123684.855  165894.232  241912.462  255880.494  282681.932  240802.334 
    ##       20285       20288       20290       20291       20293       20299 
    ##  204589.914  198686.648  233153.343  215040.718  238619.605  265280.409 
    ##       20300       20301       20314       20315       20324       20326 
    ##  270768.435  216959.492  252076.913  227887.849  175128.270  246803.521 
    ##       20328       20329       20333       20339       20342       20346 
    ##  362950.438  312443.305  288305.686  280485.246  256241.036  239478.011 
    ##       20348       20349       20352       20372       20381       20383 
    ##  258458.552  210893.334  226807.014  281577.271  469587.191  385424.074 
    ##       20388       20389       20398       20400       20401       20408 
    ##  208053.394  370556.955  269429.855  311483.912  262892.671  345099.870 
    ##       20409       20414       20415       20416       20419       20424 
    ##  374840.968  251120.705  256388.617  218800.168  339577.875  313024.446 
    ##       20431       20434       20435       20436       20451       20455 
    ##  283647.661  260420.647  258743.493  313503.772  261736.695  249686.881 
    ##       20458       20465       20466       20469       20470       20478 
    ##  255228.860  247559.838  268160.719  191936.551  241792.657  289993.656 
    ##       20481       20482       20484       20493       20494       20496 
    ##  261467.967  212405.027  272177.435  251877.321  296978.937  268063.143 
    ##       20497       20498       20499       20511       20515       20520 
    ##  246844.254  298344.660  304019.697   83019.507   71432.108  127896.176 
    ##       20522       20529       20537       20539       20540       20542 
    ##  176137.144  189279.647  121369.992  130767.877  176912.080  189751.205 
    ##       20550       20551       20555       20560       20561       20569 
    ##  127784.123  105870.962  108922.936  196441.954  181714.252  177173.483 
    ##       20571       20581       20582       20588       20591       20615 
    ##  116182.926  115987.755  132017.731   38391.728   77084.132   79497.194 
    ##       20625       20631       20633       20638 
    ##   95170.619  102654.228   91985.220   38369.798

\#Step 5:

``` r
######### Step 5:Model performance comparison using resampling(for classification and regression)
# Load necessary libraries
# Set the CRAN mirror
options(repos = c(CRAN = "https://cloud.r-project.org"))

# Load necessary libraries
install.packages(c("caret", "boot", "MASS"))
```

    ## Warning: packages 'caret', 'MASS' are in use and will not be installed

    ## package 'boot' successfully unpacked and MD5 sums checked
    ## 
    ## The downloaded binary packages are in
    ##  C:\Users\Joy\AppData\Local\Temp\RtmpO6BbK5\downloaded_packages

``` r
library(caret)
library(boot)
```

    ## Warning: package 'boot' was built under R version 4.3.2

    ## 
    ## Attaching package: 'boot'

    ## The following object is masked from 'package:lattice':
    ## 
    ##     melanoma

``` r
library(MASS)

# Load the housing dataset
housing <- read_csv("data/housing.csv", col_types = cols(longitude = col_double(), 
                                                         latitude = col_double(), 
                                                         housing_median_age = col_number(), 
                                                         total_rooms = col_number(), 
                                                         total_bedrooms = col_number(), 
                                                         population = col_number(), 
                                                         households = col_number(), 
                                                         median_income = col_number(), 
                                                         ocean_proximity = col_character(), 
                                                         median_house_value = col_number()))

# 1. Bootstrapping
# 1a. Split the dataset
set.seed(42)
train_index_boot <- createDataPartition(housing$median_house_value,
                                        p = 0.75,
                                        list = FALSE)
housing_train_boot <- housing[train_index_boot, ]
housing_test_boot <- housing[-train_index_boot, ]

# 1b. Bootstrapping train control
housing_model_lm_boot <- caret::train(median_house_value ~ .,
                                      data = housing_train_boot,
                                      trControl = trainControl(method = "boot", number = 500),
                                      na.action = na.omit, method = "lm", metric = "RMSE")
```

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

    ## Warning in predict.lm(modelFit, newdata): prediction from rank-deficient fit;
    ## attr(*, "non-estim") has doubtful cases

``` r
# 3. Test the trained linear regression model using the testing dataset
predictions_lm_boot <- predict(housing_model_lm_boot, newdata = housing_test_boot)

# 4. View the RMSE and the predicted values for the testing dataset
print(housing_model_lm_boot)
```

    ## Linear Regression 
    ## 
    ## 15481 samples
    ##     9 predictor
    ## 
    ## No pre-processing
    ## Resampling: Bootstrapped (500 reps) 
    ## Summary of sample sizes: 15333, 15333, 15333, 15333, 15333, 15333, ... 
    ## Resampling results:
    ## 
    ##   RMSE      Rsquared   MAE     
    ##   68816.32  0.6462341  49703.68
    ## 
    ## Tuning parameter 'intercept' was held constant at a value of TRUE

``` r
print(predictions_lm_boot)
```

    ##           1           2           3           4           5           6 
    ##  255043.983  236088.442  184402.014  212809.662  205566.656  174862.105 
    ##           7           8           9          10          11          12 
    ##  165723.216  162727.590  245621.450  237394.532  139488.746  165492.724 
    ##          13          14          15          16          17          18 
    ##  136639.478  144018.874  146715.839  147375.851  137149.792  108914.670 
    ##          19          20          21          22          23          24 
    ##  127838.752  100189.763  168759.359  160000.580  162342.813  108192.373 
    ##          25          26          27          28          29          30 
    ##  122284.239  365218.435  251549.474  255796.171  250795.337  278478.411 
    ##          31          32          33          34          35          36 
    ##  298967.530  347356.023  316674.494  326763.094  401463.808  386073.329 
    ##          37          38          39          40          41          42 
    ##  380491.755  400070.479  229413.444  229358.900  292225.106  264428.418 
    ##          43          44          45          46          47          48 
    ##  327710.602  232123.331  177623.701  194933.728  190259.317  184445.763 
    ##          49          50          51          52          53          54 
    ##  174120.427  202026.595  172812.065  137238.855  293480.689  280663.218 
    ##          55          56          57          58          59          60 
    ##  183760.548  197911.587  171492.722  263906.810  200786.463  197833.665 
    ##          61          62          63          64          65          66 
    ##  302479.472  363716.854  212491.421  234925.587  210808.253  155373.807 
    ##          67          68          69          70          71          72 
    ##  176036.012  197079.477  153665.731  112574.441  187837.140  246036.516 
    ##          73          75          76          77          78          79 
    ##  142788.160  169732.299  166261.715  193172.245  186070.724  286434.343 
    ##          80          81          82          83          84          85 
    ##  370901.444  288394.943  207186.469  188213.886  223544.654  227629.213 
    ##          86          87          88          89          90          91 
    ##  178717.631  226328.488  227915.972  233248.132  266790.653  174293.732 
    ##          92          93          94          95          96          97 
    ##  302615.908  271561.280  409465.593  368631.347  491603.091  324356.117 
    ##          98          99         100         101         102         103 
    ##  270900.704  360296.310  359023.721  352092.061  231789.480  208952.135 
    ##         104         105         106         107         108         109 
    ##  226203.472  217323.670  201392.840  159466.173  118777.446  234042.081 
    ##         110         111         112         113         114         115 
    ##  244624.545  207950.086  246153.761  222167.027  212917.072  254094.835 
    ##         116         117         118         119         120         121 
    ##  239740.470  250055.942  374786.409  301811.109  187644.533  406731.466 
    ##         122         123         124         125         126         127 
    ##  258423.071  193713.536  149891.153  158845.550  241936.119  609747.812 
    ##         128         129         130         131         132         133 
    ##  572510.967  416607.852  307719.595  268273.342  220899.472  207478.290 
    ##         134         135         137         138         139         140 
    ##  253626.634  140634.475  279232.133  223398.660  273599.084  232514.379 
    ##         141         142         143         144         145         147 
    ##  231918.926  235814.882  265958.606  256026.192  229052.393  258262.818 
    ##         148         149         150         151         152         153 
    ##  284059.728  274808.161  263835.483  278532.908  293429.813  292276.095 
    ##         154         155         156         157         158         159 
    ##  281805.411  235066.541  286632.231  282451.006  276577.944  262316.131 
    ##         160         161         162         163         164         165 
    ##  244079.615  224126.713  260897.688  235255.002  261859.693  220722.741 
    ##         166         167         168         169         170         171 
    ##  296323.748  238038.138  223226.228  278297.859  227786.050  251839.239 
    ##         172         173         174         175         176         177 
    ##  235150.576  249542.728  241923.138  226555.897  238611.061  256047.010 
    ##         178         179         180         181         182         183 
    ##  227234.605  208452.838  213837.267  240293.735  188073.733  168246.699 
    ##         184         185         186         187         188         189 
    ##  314894.202  314409.432  226961.444  255875.613  267976.669  235743.167 
    ##         190         191         192         193         194         195 
    ##  189263.523  218552.727  203119.701  196647.957  254801.121  232870.515 
    ##         196         197         198         199         200         201 
    ##  209148.904  326518.266  311864.518  203793.151  205551.330  203599.554 
    ##         202         203         204         205         206         207 
    ##  243859.946  260269.725  161351.566  238952.481  281856.543  230697.350 
    ##         208         209         210         211         212         213 
    ##  240772.235  285812.214  222475.916  239467.255  225327.360  228018.444 
    ##         214         215         216         217         218         219 
    ##  247716.259  231547.001  235760.220  249943.725  185430.718  283196.161 
    ##         220         221         222         223         224         225 
    ##  203050.434  278536.375  241066.421  240184.888  262739.108  257425.268 
    ##         226         227         228         229         230         231 
    ##  259416.929  304754.497  278323.583  204036.922  278664.667  320789.878 
    ##         232         233         234         235         236         237 
    ##  275969.681  266313.789  260400.913  291772.906  271833.020  259918.461 
    ##         238         239         240         241         242         243 
    ##  238773.410  237175.465  268551.688  276607.291  271752.320  250464.733 
    ##         244         245         246         247         248         249 
    ##  276617.036  250351.791  220969.415  224850.785  216700.834  290106.249 
    ##         250         251         252         253         254         255 
    ##  279718.109  260675.235  239499.701  253752.710  239644.748  256293.225 
    ##         256         257         258         259         260         261 
    ##  297865.440  304421.398  280694.751  334827.919  319769.631  453354.811 
    ##         262         263         264         265         266         267 
    ##  329380.270  281172.756  251254.323  191105.630  231930.597  382224.522 
    ##         268         269         270         271         272         273 
    ##  217331.577  172656.526  179064.348  183859.732  150344.895  247511.839 
    ##         274         275         276         277         278         279 
    ##  229476.348  265955.392   98213.703  101859.961   88651.728  105041.911 
    ##         280         281         282         283         284         285 
    ##  118871.327  110747.126  116988.920   79275.496   97547.583  123644.825 
    ##         286         287         288         289         290         291 
    ##  114833.677  126691.874   78922.857  125531.238  104214.878    6416.145 
    ##         292         293         294         295         296         297 
    ##  101117.729   34954.511  107828.368   59593.055   97339.177   77788.749 
    ##         298         299         300         301         302         303 
    ##  122955.300   90008.088  110798.336   66553.361   59925.334   69201.233 
    ##         304         305         306         307         308         309 
    ##   50999.925   47590.026   46490.676   68483.428   11996.196   62594.261 
    ##         310         311         312         313         314         315 
    ##   99745.450   85275.928   63546.438   57649.994   26579.110   97709.625 
    ##         316         317         318         319         320         321 
    ##   62225.226   42960.335  121443.316   89627.931   86713.511   70767.262 
    ##         322         323         324         325         326         327 
    ##   36219.005   66813.889   46143.662   40437.262   35645.426   48442.200 
    ##         328         329         330         331         332         333 
    ##  110241.767  104789.243   71582.659   55344.723   61039.598   87246.328 
    ##         334         335         336         337         338         339 
    ##   98351.190   77027.321   93946.673  139471.766   84697.216   74212.451 
    ##         340         341         342         343         344         345 
    ##  126231.490  105168.708  181519.827  148947.714  196390.454   99857.516 
    ##         346         347         348         349         350         351 
    ##  212336.283  200889.237  195805.204  126046.701  152304.664  178559.032 
    ##         352         353         354         355         356         357 
    ##  164994.115  197019.049  212222.676  196353.318  161335.139  186350.080 
    ##         358         359         360         361         362         363 
    ##  214820.168  135333.806  161991.072  192203.198   95997.255  235047.913 
    ##         364         365         366         367         368         369 
    ##  206952.111   94525.422  187211.936  209828.581  261502.068  244310.474 
    ##         370         371         372         373         374         375 
    ##  247242.395  218257.810  277328.202  225258.253  253640.015  233654.400 
    ##         376         377         378         379         380         381 
    ##  312336.448  287041.426  268016.574  259359.639  288910.047  197705.923 
    ##         382         383         384         385         386         387 
    ##  277328.049  288983.612  240142.157  204588.218  229036.309  264450.949 
    ##         388         389         391         392         393         394 
    ##  266497.841  171224.067  244717.340  252516.768  258683.772  213728.026 
    ##         395         396         397         398         399         400 
    ##  207775.394  220712.538  163922.131  207167.031  271405.675  322962.695 
    ##         401         402         403         404         405         406 
    ##  162426.852  281724.835  249715.545  289561.059  306902.200  284396.557 
    ##         407         408         409         410         411         412 
    ##  219335.946  298382.238  332590.197  244246.283  316847.915  306244.741 
    ##         413         414         415         416         417         418 
    ##  302204.861  192184.812  300685.311  314462.976  401577.171  413038.171 
    ##         419         420         421         422         423         424 
    ##  283773.408  373710.761  251052.274  374143.116  463394.646  482961.929 
    ##         425         426         427         428         429         431 
    ##  371260.111  381113.329  401435.512  343731.952  458734.843  201999.205 
    ##         432         433         434         435         436         437 
    ##  359968.822  367926.934  283178.389  399932.462  372305.998  137868.746 
    ##         438         439         440         441         442         443 
    ##  204029.092  279858.118  360533.464  296086.439  223646.457  295389.861 
    ##         444         445         446         447         448         449 
    ##  237196.206  287502.251  209942.141  296243.564  293410.545  233758.046 
    ##         450         451         452         453         454         455 
    ##  249417.986  253977.420  179816.993  103139.157  128680.101  154226.484 
    ##         456         457         458         459         460         461 
    ##  255139.933  254536.831  239190.356  183736.855  241330.080  185659.587 
    ##         462         463         464         465         466         467 
    ##  175601.828  180483.555  239325.735  211318.543  241412.001  224594.204 
    ##         468         469         470         471         472         473 
    ##  252473.025  260155.875  224489.742  195108.190  259038.147  145368.117 
    ##         474         475         476         477         478         479 
    ##  204963.429  212182.537  148142.717  174192.128  121444.320  129722.732 
    ##         480         481         482         483         484         485 
    ##  171435.605  200027.853  221816.772  250005.683  296226.632  294700.341 
    ##         486         487         488         489         490         491 
    ##  320723.939  261523.224  235665.332  318030.640  266328.029  347227.485 
    ##         492         493         494         495         496         497 
    ##  166308.902  123697.193  127724.579  108291.675  101152.905   18916.916 
    ##         498         499         500         501         502         503 
    ##   31690.622   61080.073   67419.299   31223.835   71196.006   38811.979 
    ##         504         505         506         507         508         509 
    ##   68881.514   42258.676  105247.632  126355.218  143391.912  125202.227 
    ##         510         511         512         513         514         515 
    ##  107322.593   87102.095  135527.478   68754.555   24594.111   94552.772 
    ##         516         517         518         519         520         521 
    ##   66274.065  114872.200  106676.991  176752.394   81640.344   77261.852 
    ##         522         523         524         525         526         527 
    ##   66701.758   94598.930   54698.569   40585.498   30199.458  168203.879 
    ##         528         529         530         531         532         533 
    ##   56452.976   53720.859  111528.464  130351.820  280763.512  137164.855 
    ##         534         535         536         537         538         539 
    ##  100631.146  246033.119   89589.610  192946.591   92553.140   67516.508 
    ##         540         541         542         543         544         545 
    ##   71063.898   75574.758  131528.877  146854.131   86206.164  105947.336 
    ##         546         547         548         549         550         551 
    ##   77812.676  116413.911  144186.084   83773.144   56785.261  108088.292 
    ##         552         553         554         555         556         557 
    ##  100401.363  110077.884   36743.443   79848.875   70846.178  111659.425 
    ##         558         559         560         561         562         563 
    ##   96894.049  105004.857  130045.464  136548.880  104088.087   90490.004 
    ##         564         565         566         567         568         569 
    ##  110090.563  127972.846  107534.313  121368.594   67303.108  144032.800 
    ##         570         571         572         573         574         575 
    ##  127553.616  131295.159  122513.135  120194.187  317823.308  255802.915 
    ##         576         577         578         579         580         581 
    ##  222449.744  201165.049  209761.577   95662.649   47299.266  148280.124 
    ##         582         583         584         585         586         587 
    ##  184897.019  138350.156  126289.661  155086.829  100274.052  147794.844 
    ##         588         589         590         591         592         593 
    ##  164578.962  155269.934  116867.199  104725.795  109498.080   88687.949 
    ##         594         595         596         597         598         599 
    ##  104530.053  147006.882  108183.523   63195.644  119712.996  133359.452 
    ##         600         601         603         604         606         607 
    ##   43219.561  131035.749  136910.315   59775.540  170019.386   92067.988 
    ##         608         609         610         611         612         613 
    ##  126924.167  166941.544  161905.907  160340.117   83834.816  125017.947 
    ##         614         615         616         617         618         619 
    ##   82288.530  133517.528  156181.296  164945.666   86058.463  116276.139 
    ##         620         621         622         623         624         625 
    ##   46738.658  113740.159  134654.975  126836.589  121149.705   81125.705 
    ##         626         627         629         630         631         632 
    ##  133301.289   39613.426  133005.200   50073.302  102799.697   84033.814 
    ##         633         634         635         636         637         638 
    ##  110720.898  115145.745  127781.100   77842.019   88810.804   96692.504 
    ##         639         640         641         642         643         644 
    ##  211357.484  150343.180   76366.127   95644.734   55405.261   94364.693 
    ##         645         646         647         648         649         650 
    ##  176533.135   62221.997   79553.336   55729.108  133997.595   18255.448 
    ##         651         652         653         654         655         656 
    ##   91244.963  104915.738   47928.401  140205.268  162218.254  139832.529 
    ##         657         658         659         660         661         662 
    ##  197640.668  147692.775  165902.309  160851.634  149110.798  174259.432 
    ##         664         665         666         667         668         669 
    ##  110973.824  145469.105  164689.580  212528.409  165677.222   94691.872 
    ##         670         671         672         673         674         675 
    ##   75811.397  134076.024  155862.218  148479.127  188832.773  119395.635 
    ##         676         677         678         679         680         681 
    ##  170477.281  211892.627  167884.384  172330.226  123379.743   29431.107 
    ##         682         683         684         685         686         687 
    ##   85673.565   93336.833   92451.148   59949.606  131293.197  108030.696 
    ##         688         689         690         691         692         693 
    ##   84143.382  201328.089  127922.464   53692.634   49813.879  121812.653 
    ##         694         695         696         697         698         699 
    ##  163021.861   96530.853   63434.726  134038.998   21976.470   46400.881 
    ##         700         701         702         703         704         705 
    ##   31737.411  171417.011   68375.751  139152.420  144775.990   26235.885 
    ##         706         707         708         709         710         711 
    ##   23579.139  135194.712   66557.785   49268.326  112718.093   80007.485 
    ##         712         713         714         715         716         717 
    ##   62116.091   39216.032  160958.898   94980.586   42426.526   46416.001 
    ##         718         719         720         721         722         723 
    ##   95273.511   75131.691   -2696.453   71465.278  136288.275  181776.532 
    ##         724         725         726         727         728         729 
    ##  102318.053  104927.953  113691.146   98172.032   95217.768  141979.191 
    ##         730         731         732         733         734         735 
    ##  143889.895  149646.630  150519.136  173074.755  165278.655  129316.992 
    ##         736         737         738         739         740         741 
    ##  128618.626   86281.294  122356.022   68438.677   34362.988  102001.635 
    ##         742         743         744         745         746         747 
    ##  173920.259  151525.026   87605.538   57503.483   60703.635   88773.250 
    ##         748         749         750         751         752         753 
    ##  130283.898   82144.983   48108.728  107708.062  105197.158  119580.745 
    ##         754         755         756         757         758         759 
    ##  152400.263  229775.975  139143.919  117553.897  134895.264   82626.212 
    ##         760         761         762         763         764         765 
    ##  113598.369   95614.724  170860.915  146182.097  118899.481  182754.405 
    ##         766         767         768         769         770         771 
    ##  117457.517  162283.485  163664.824  153875.873  189505.296  183817.682 
    ##         772         773         774         775         776         777 
    ##  102945.010  162197.223  136751.243  188362.857   55381.488   59987.164 
    ##         778         779         780         781         782         783 
    ##   59933.849  111232.273   39604.989   83642.266   46394.389   85383.674 
    ##         784         785         786         787         788         789 
    ##  120539.261   79911.323  107839.690  112757.139  122151.292  110270.191 
    ##         790         791         792         793         794         795 
    ##  187986.341  122971.879  134826.975   65896.295  131860.287  114138.184 
    ##         796         797         798         799         800         801 
    ##  113221.730  141018.331  152745.087  157718.006  103926.620  111986.124 
    ##         802         803         804         805         806         807 
    ##  135040.741  166124.550  113442.565   75425.860   83384.711  126521.905 
    ##         808         809         810         811         812         813 
    ##  184065.171  187876.256  108549.951   74775.971  178125.294  145689.380 
    ##         814         815         816         817         818         819 
    ##  121732.278   53094.534   96544.442   56470.911   60039.968  144511.310 
    ##         820         821         822         823         824         825 
    ##   25876.413  214191.442  102527.887  158529.180  143461.877   94861.708 
    ##         826         827         828         829         830         831 
    ##   85406.218   79398.223  106114.697  114612.772   73339.264  118557.203 
    ##         832         833         834         835         836         837 
    ##  112020.535   90760.726  100112.674  111665.897   92267.855   68166.890 
    ##         838         839         840         841         842         843 
    ##  126215.609  168918.332  129743.452  185231.747  108894.135   37675.253 
    ##         844         845         846         847         848         849 
    ##   27098.109  -27000.012   41197.862   55510.724  -24647.510   -1500.258 
    ##         850         851         852         853         854         855 
    ##  261446.724  212060.075  245350.029  247532.150  324603.233  226187.980 
    ##         856         857         858         859         860         861 
    ##  204647.198  201142.536  189613.352  220296.042  129704.661  180218.830 
    ##         862         863         864         865         866         867 
    ##  179275.934  186257.724  110812.266  199469.721  229532.127  198005.975 
    ##         868         869         870         871         872         873 
    ##  174700.514  319755.932  338511.278  348739.969  368689.321  382233.961 
    ##         874         876         877         878         879         880 
    ##  306005.688  368811.263  333941.065  267651.697  287873.292  261958.602 
    ##         881         882         883         884         885         886 
    ##  207770.045  247661.755  269579.334  245958.091  375385.393  245640.139 
    ##         887         888         889         890         891         892 
    ##  293133.352  288902.525  254425.279  319006.022  319350.963  284308.348 
    ##         893         894         895         896         897         898 
    ##  295300.788  339865.383  292601.431  298978.081  280026.085  236697.021 
    ##         899         900         901         902         903         904 
    ##  407052.197  398090.789  248177.298  305856.249  267577.215  273115.486 
    ##         905         906         907         908         909         910 
    ##  209611.281  157332.321  326514.282  310833.627  307573.157  265082.212 
    ##         911         912         913         914         915         916 
    ##  219468.980  191213.589  248885.457  237707.439  220553.441  264993.682 
    ##         917         918         919         920         921         922 
    ##  241379.121  202462.347  233976.721  211107.969  253935.890  166518.617 
    ##         923         924         925         926         927         928 
    ##  119646.741  238292.662  211587.781  190954.781  218976.672  226209.931 
    ##         929         930         931         932         933         934 
    ##  184165.736  125940.767  158650.747  220285.192  228908.859  198716.664 
    ##         935         936         937         938         939         940 
    ##  154296.252  203255.264  147378.736  120133.351  187632.813  108205.579 
    ##         941         942         943         944         945         946 
    ##  165990.942  226300.153  228352.942  300612.223  268172.238  202250.925 
    ##         947         948         949         950         951         952 
    ##  232161.552  183429.199  205892.352  233335.854  204117.772  158622.990 
    ##         953         954         955         956         957         958 
    ##  224960.906  242664.957  237050.570  165890.854   96114.129  274861.360 
    ##         959         960         961         962         963         964 
    ##  212893.504  193313.092  203529.520  165386.992  188535.045  189305.595 
    ##         965         966         967         968         969         970 
    ##  181924.644  176776.400  253425.990  190366.813  186505.563  177378.071 
    ##         971         972         973         974         975         976 
    ##  214777.659  230499.114  236817.103  258614.844  287291.811  239801.945 
    ##         977         978         979         980         981         982 
    ##  271864.580  268319.622  236355.688  197646.489  212199.007  218430.069 
    ##         983         984         985         987         988         989 
    ##  257362.914  250043.932  282864.579  265391.867  226221.933  222532.277 
    ##         990         991         992         994         995         996 
    ##  287313.735  293777.878  212141.359  238721.110  265931.499  290271.334 
    ##         997         998         999        1000        1001        1002 
    ##  287597.842  248669.585  244605.732  350747.905  246114.660  369879.417 
    ##        1003        1004        1005        1006        1007        1008 
    ##  303109.046  396043.688  236074.378  267660.317  270828.479  385502.921 
    ##        1009        1010        1011        1012        1013        1014 
    ##  338384.422  574594.603  424786.759  303304.674  201222.908  480270.806 
    ##        1015        1016        1017        1018        1019        1020 
    ##  302072.496  222936.526  269693.997  310145.843  434499.040  418740.753 
    ##        1021        1022        1023        1024        1025        1026 
    ##  391738.989  448937.250  272184.226  229695.061  237477.882  297080.877 
    ##        1027        1028        1029        1030        1031        1032 
    ##  102446.315  303083.700  331654.094  275363.093  436047.724  230045.971 
    ##        1033        1034        1035        1036        1037        1038 
    ##  353301.832  500948.618  294262.753  181308.170  232441.910  217558.327 
    ##        1039        1040        1041        1042        1043        1044 
    ##  243599.800  209702.942  236774.068  197777.384  190768.596  159205.989 
    ##        1045        1046        1047        1048        1049        1050 
    ##  155450.171  137764.098  216945.977  159996.427  236791.044  162167.435 
    ##        1051        1052        1053        1054        1056        1057 
    ##  151693.370  150623.076  153898.346  248662.137  196949.005  284438.575 
    ##        1058        1059        1060        1061        1062        1063 
    ##  274155.831  170094.369  159536.233  173876.711  198179.887  181252.332 
    ##        1064        1065        1066        1067        1068        1069 
    ##  243992.155  299676.577  288855.939  218069.202  200866.170  216788.533 
    ##        1070        1071        1072        1073        1074        1075 
    ##  226449.077  269353.772  391792.434  284133.603  361950.527  322011.659 
    ##        1076        1077        1078        1079        1080        1081 
    ##  220556.102  239862.661  145445.140  192396.295  182884.699  139024.683 
    ##        1082        1083        1084        1085        1086        1087 
    ##  147944.156  157232.574  168203.564  133297.601  182763.093  173702.312 
    ##        1088        1089        1090        1091        1092        1093 
    ##  199061.291  166730.197  159691.279  123980.859  153912.499  195888.361 
    ##        1094        1095        1096        1097        1098        1099 
    ##  246854.138  184687.946  265710.415  148303.844  191741.934  322323.227 
    ##        1100        1101        1102        1103        1104        1106 
    ##  248752.838  181859.778  258149.372  277500.029  177319.398  198885.594 
    ##        1107        1108        1109        1110        1111        1112 
    ##  281396.561  189163.225  234180.675  172605.029  212349.543  237898.883 
    ##        1113        1114        1115        1116        1117        1118 
    ##  163646.667  175241.249  136563.974  157340.198  115702.266  142834.522 
    ##        1119        1120        1121        1122        1123        1124 
    ##  156111.489  128886.862  142194.344  144422.872  127972.254  243282.052 
    ##        1125        1126        1127        1128        1129        1130 
    ##  133584.704  191877.159  195191.862  217587.031   95091.924  144932.503 
    ##        1131        1132        1133        1134        1135        1136 
    ##  158659.334  165925.702  137617.726  128213.027  159443.068  144002.772 
    ##        1137        1138        1139        1140        1141        1142 
    ##  138561.518  166905.499  143102.879  157759.490  112896.145  146417.043 
    ##        1143        1144        1145        1146        1147        1148 
    ##  171365.858  178735.852  173999.227  134493.530  176958.863  161634.594 
    ##        1149        1150        1151        1152        1153        1154 
    ##  130701.323  189771.009  150447.710  159560.383  149887.400  163618.383 
    ##        1155        1156        1157        1158        1160        1161 
    ##  292372.843  123182.126  142413.253  151951.704  147753.108  435826.961 
    ##        1162        1163        1164        1165        1166        1167 
    ##  677139.717  381698.918  180789.311  153883.211  174516.388  185263.260 
    ##        1168        1169        1170        1171        1172        1173 
    ##  203052.217  152614.555  203157.229  418134.990  210726.476  155227.530 
    ##        1174        1175        1176        1177        1178        1180 
    ##  201197.236  673834.627  245928.857  234798.553  285252.328  242837.128 
    ##        1181        1182        1183        1184        1185        1186 
    ##  248558.854  237550.867  258714.656  243123.754  223311.490  239714.837 
    ##        1187        1188        1189        1190        1191        1192 
    ##  242239.183  249740.000  307732.280  239754.520  274006.292  238524.134 
    ##        1193        1194        1195        1197        1198        1199 
    ##  255790.861  263478.848  236330.991  242581.482  141585.170  192040.446 
    ##        1201        1202        1203        1204        1205        1206 
    ##  207772.637  217979.904  200533.023  182807.900  160401.917  153206.934 
    ##        1207        1208        1209        1210        1211        1212 
    ##  218658.740  217694.325  201102.685  148216.679  140860.389  127445.285 
    ##        1213        1214        1215        1216        1217        1218 
    ##  133214.057  142900.486  156592.480  129361.981  144144.970  144606.546 
    ##        1219        1220        1221        1222        1223        1224 
    ##  159864.714  190826.579  179822.865  147073.199  169218.592  184739.756 
    ##        1226        1227        1228        1229        1230        1231 
    ##  145644.940  161788.352  107465.206  134444.118  128790.247   14216.646 
    ##        1232        1233        1234        1235        1236        1237 
    ##  152516.915  149491.463  110430.090  131142.405  139832.098  169873.926 
    ##        1238        1239        1240        1241        1242        1243 
    ##  123604.645  147611.591  105527.070  151452.229  171276.270  131614.596 
    ##        1244        1245        1246        1247        1248        1249 
    ##  129310.656  115223.198  109933.607  128023.306  122571.671  155438.163 
    ##        1250        1251        1252        1253        1254        1255 
    ##  129003.430   98098.364  139061.782  124126.831  162291.164  140555.731 
    ##        1256        1257        1258        1259        1260        1261 
    ##  150397.113  180698.831  160338.320  161192.586  194009.679  134476.495 
    ##        1262        1263        1264        1265        1266        1267 
    ##  163591.651  123101.553  169586.679  130568.758  142455.631  257585.275 
    ##        1268        1269        1270        1271        1272        1273 
    ##  255314.738  161188.187  331338.396  244626.030  224997.438  220356.745 
    ##        1274        1275        1276        1277        1278        1279 
    ##  141879.938  158703.862  177282.162  189171.314  218897.312  209063.365 
    ##        1280        1281        1282        1283        1284        1285 
    ##  212189.529  185149.117  214952.120  211738.724  150841.128  223662.916 
    ##        1286        1287        1288        1289        1290        1291 
    ##  194840.080  132272.654  218014.838  236554.493  127516.820  130008.844 
    ##        1292        1293        1294        1295        1296        1297 
    ##  138386.347  147698.153  122716.606  131376.360  144714.217  150850.918 
    ##        1298        1299        1300        1301        1302        1303 
    ##   91770.272  128697.307  142013.721  148598.624  122411.268  152172.807 
    ##        1304        1305        1306        1307        1308        1309 
    ##  128511.557  132409.697  158037.267  143488.044  142394.634  154538.693 
    ##        1310        1311        1312        1313        1314        1315 
    ##  145036.255  117898.439  111869.259   79233.130  199680.956  178798.499 
    ##        1316        1317        1318        1319        1320        1321 
    ##  217947.721  156006.561  187227.333  121709.949  169922.188  221454.300 
    ##        1322        1323        1324        1325        1326        1327 
    ##  124079.142   77559.667   92578.405  110328.914  102218.178  114229.313 
    ##        1328        1329        1330        1331        1332        1333 
    ##  100993.472  100627.542  417182.097  374428.490  526074.842  591517.626 
    ##        1334        1335        1336        1337        1338        1339 
    ##  414450.208  507928.317  394312.502  621396.204  414586.705  390576.103 
    ##        1340        1341        1342        1343        1344        1345 
    ##  468250.869  313857.248  290713.813  364225.394  370966.272  410024.784 
    ##        1346        1347        1348        1349        1350        1351 
    ##  168101.889  143634.222  279449.032  353486.283  300104.559  274308.211 
    ##        1352        1353        1354        1355        1356        1357 
    ##  316532.024  268612.179  296827.679  307937.897  285946.788  395046.152 
    ##        1358        1359        1360        1361        1362        1363 
    ##  263511.321  309818.754  341234.561  185454.481  335801.293  173966.578 
    ##        1364        1365        1366        1367        1368        1369 
    ##  209814.901  345360.714  275851.450  290010.414  194557.416  247191.556 
    ##        1370        1371        1372        1373        1374        1375 
    ##  296048.437  225274.368  224572.937  233441.663  225017.029  248321.139 
    ##        1376        1377        1378        1379        1380        1381 
    ##  331403.757  337098.514  278696.278  263416.478  279119.198  339160.600 
    ##        1382        1383        1384        1385        1386        1387 
    ##  273662.960  277206.969  257366.032  213346.112  256162.811  282502.633 
    ##        1388        1389        1390        1391        1392        1393 
    ##  267652.009  253473.517  174035.197  196577.933  162658.311  263852.052 
    ##        1394        1395        1396        1397        1398        1399 
    ##  237963.080  224067.914  266556.145  313421.359  252221.529  543340.064 
    ##        1400        1401        1402        1403        1404        1405 
    ##  288560.609  234290.875  231293.327  262270.461  182475.005  223365.303 
    ##        1406        1407        1408        1409        1410        1411 
    ##  184306.404  295645.597  316416.531  252792.478  124742.667  168487.265 
    ##        1412        1413        1414        1415        1416        1417 
    ##  278765.246  207222.117  281898.556  201473.222  183858.904  150417.479 
    ##        1418        1419        1420        1421        1422        1423 
    ##  149693.972  128952.563  319267.155  198061.977  181926.739  133576.832 
    ##        1424        1425        1426        1427        1428        1429 
    ##  107951.782  229555.309  274787.357  268587.085  178332.789  215358.472 
    ##        1430        1431        1432        1433        1434        1435 
    ##  197291.153  258853.900  272573.881  158532.599  221424.106  272737.393 
    ##        1436        1437        1438        1439        1440        1441 
    ##  278773.525  314635.348  275587.702  278804.142  218044.323  221503.733 
    ##        1442        1443        1444        1445        1446        1447 
    ##  356188.113  320246.410  199936.276  290117.823  333117.533  286020.376 
    ##        1448        1449        1450        1451        1452        1453 
    ##  295210.530  236352.613  200272.114  372400.357  355695.315  218198.704 
    ##        1454        1455        1456        1457        1458        1459 
    ##  213605.031  258215.646  204738.301  223604.530  198356.229  212015.857 
    ##        1460        1461        1462        1463        1464        1465 
    ##  209057.969  180159.477  213857.829  242595.467  222076.119  190101.613 
    ##        1466        1467        1468        1469        1470        1471 
    ##  173351.290  160981.914  163933.028  163028.904  184724.088  118811.911 
    ##        1472        1473        1474        1475        1476        1477 
    ##  152330.589  257599.040  345138.925  223880.058  153792.855  196637.679 
    ##        1478        1479        1480        1481        1482        1483 
    ##  256002.198  202284.697  212735.211  190094.780  288784.515  167248.059 
    ##        1484        1485        1486        1487        1488        1489 
    ##  259282.124  217951.303  258149.910  311040.357  189728.431  261274.756 
    ##        1490        1491        1492        1493        1494        1495 
    ##  231441.127  326378.910  259248.659  227828.345  201921.714  214466.211 
    ##        1496        1497        1498        1499        1500        1501 
    ##  245762.154  206119.290  174800.654  208658.610  190404.249  142494.889 
    ##        1502        1503        1504        1505        1506        1507 
    ##  186294.876  130920.245  193270.038  256364.341  249359.402  186347.219 
    ##        1508        1509        1510        1511        1512        1513 
    ##  167361.038  311094.991  251598.337  194613.053  216134.527  172382.105 
    ##        1514        1515        1516        1517        1518        1519 
    ##  257350.688  258988.336  238858.638  168251.009  172271.890  180443.893 
    ##        1520        1521        1522        1523        1524        1525 
    ##  163005.744  164809.165  227799.442  111109.370   24660.469  176452.830 
    ##        1526        1527        1528        1529        1530        1531 
    ##  172229.114  133222.662  173702.488  238193.732   77773.983   83323.622 
    ##        1532        1533        1534        1535        1536        1537 
    ##  160664.641  247513.226  151797.180  113340.277   70648.056   83084.415 
    ##        1538        1540        1541        1543        1544        1545 
    ##  107083.858  266507.310  278129.794  343715.743  364889.955  492001.647 
    ##        1546        1547        1548        1549        1550        1551 
    ##  281251.286  209728.013  261877.807  221380.462  205093.995  211652.721 
    ##        1552        1553        1554        1555        1556        1557 
    ##  202665.675  196790.063  146123.226  199534.303  159224.384  159745.145 
    ##        1558        1559        1560        1561        1562        1563 
    ##  133550.435  123480.015  144333.582  229100.993  224450.675  209688.266 
    ##        1564        1565        1566        1567        1568        1569 
    ##  249637.507  214407.542  166566.545  233178.358  205393.715  286085.104 
    ##        1570        1571        1573        1574        1575        1576 
    ##  259045.288  270012.743  176253.479  223510.398  236832.802  211621.880 
    ##        1577        1578        1579        1580        1581        1582 
    ##  197846.473  194120.924  163198.889  202908.853  204019.398  217767.570 
    ##        1583        1584        1585        1586        1587        1588 
    ##  227700.269  217702.500  159265.494  194063.374  211299.852  209536.268 
    ##        1589        1590        1591        1592        1593        1594 
    ##  205808.798  235029.593  307361.870  297879.719  295897.273  228757.481 
    ##        1595        1596        1597        1598        1599        1600 
    ##  236186.356  280949.558   75784.085  103329.788  232994.783  128837.365 
    ##        1601        1602        1603        1604        1605        1606 
    ##  177981.345  150815.673  287053.907  233155.019  224225.872  212241.439 
    ##        1607        1608        1609        1610        1611        1612 
    ##  195029.829  287224.474  201051.121  183536.487  245364.476  263968.779 
    ##        1613        1614        1615        1616        1617        1618 
    ##  182584.954  225891.560  410978.773  613399.902  213186.921  229408.851 
    ##        1619        1620        1621        1623        1624        1625 
    ##  183431.098  156586.926  197257.858  131022.220   73357.499  211432.205 
    ##        1626        1627        1628        1629        1630        1631 
    ##  192777.614  152759.463  215741.148  101561.796  238299.214  290094.649 
    ##        1632        1633        1634        1635        1636        1637 
    ##  239109.416  217547.052  188450.150  229159.358  192115.302  152084.267 
    ##        1638        1639        1640        1641        1642        1643 
    ##  163551.171  149465.339  134467.496  151679.300  140601.299  191559.122 
    ##        1644        1645        1646        1647        1648        1649 
    ##  165428.257  214520.610  128453.880   42967.270  113595.356  132212.065 
    ##        1650        1651        1652        1654        1655        1656 
    ##  150823.910  128912.558  166949.216  137788.208  425224.258  336817.648 
    ##        1657        1658        1659        1660        1661        1662 
    ##  253553.894  152430.208  227626.026  229081.983  347736.738  349642.890 
    ##        1663        1664        1665        1666        1667        1668 
    ##  142998.633  158215.071  230153.891  177159.880  210354.461  151124.950 
    ##        1669        1670        1671        1672        1673        1674 
    ##   88857.451  219979.509  239839.528  320887.048  179886.473  168475.573 
    ##        1675        1676        1677        1678        1679        1680 
    ##  111422.894  105350.551  185083.580  163695.573  135064.042  190028.760 
    ##        1681        1682        1683        1684        1685        1686 
    ##  237263.248  212018.779  171353.367  257657.000  216522.173  180781.343 
    ##        1687        1688        1689        1690        1691        1692 
    ##  192607.296  187376.816  181697.294  369553.183  160590.083  234001.469 
    ##        1693        1694        1695        1696        1697        1698 
    ##  380039.480  541237.771  392434.076  501620.959  307050.472  218109.766 
    ##        1699        1700        1701        1702        1703        1704 
    ##  495188.305  436492.153  561866.572  326630.089  205432.499  231623.587 
    ##        1705        1706        1707        1708        1709        1710 
    ##  296261.263  233756.175  289946.789  287468.096  247994.099  190309.005 
    ##        1711        1712        1713        1714        1715        1716 
    ##  258830.609  259458.921  229870.025  234397.886  219652.615  188946.156 
    ##        1717        1718        1719        1720        1721        1722 
    ##  216536.502  200668.794  187316.526  179436.537  195527.834  250621.557 
    ##        1723        1724        1725        1726        1727        1728 
    ##  237227.506  217727.403  228514.070  209291.170  187208.104  229145.670 
    ##        1729        1730        1731        1732        1733        1734 
    ##  174244.525  152614.643  155975.867  141891.442  148648.032  184388.930 
    ##        1735        1736        1737        1738        1739        1740 
    ##  259599.567  208830.740  197653.938  149758.616  175789.170  245527.354 
    ##        1741        1742        1743        1744        1745        1746 
    ##  227568.199  336251.636  205907.797  172476.726  142607.663  217438.442 
    ##        1747        1748        1749        1750        1751        1752 
    ##  204685.119  172457.719  206761.043  198314.695  237064.008  201890.333 
    ##        1753        1754        1755        1756        1757        1758 
    ##  277878.621  156960.632  239918.494  285584.824  185190.573  171315.999 
    ##        1759        1760        1761        1762        1763        1764 
    ##  244520.702  232974.343  197070.612  162652.832  234115.349  211906.073 
    ##        1765        1766        1767        1768        1769        1770 
    ##  213842.660  228459.530  200957.163  213225.978  266805.751  137009.535 
    ##        1771        1772        1773        1774        1775        1776 
    ##  198319.211  203117.447  211148.933  184558.750  238933.188  224806.010 
    ##        1777        1778        1779        1780        1781        1782 
    ##  249353.321  236143.422  303345.137  217726.208  240715.764  198425.267 
    ##        1783        1784        1785        1786        1787        1788 
    ##  276448.941  294099.343  276862.729  283676.810  262561.306  243264.173 
    ##        1789        1790        1791        1792        1793        1794 
    ##  221843.248  287003.459  249897.818  278448.878  213751.237  252589.915 
    ##        1795        1796        1797        1798        1799        1800 
    ##  215756.777  227193.534  233528.205  140494.749  222932.088  199131.396 
    ##        1801        1802        1803        1804        1805        1806 
    ##  157036.167   92048.938   70565.355  175530.916  162476.344  135405.883 
    ##        1807        1808        1809        1810        1811        1812 
    ##  147591.194  199034.599  170851.688  135121.169  194405.336  173934.060 
    ##        1814        1815        1816        1817        1818        1819 
    ##  144707.165  163612.063  126818.137  160310.860  162509.153  145286.951 
    ##        1820        1821        1823        1824        1825        1826 
    ##  175768.494  146604.624  173977.946  171703.720  155255.448  184630.326 
    ##        1827        1828        1829        1830        1831        1832 
    ##  135076.211  208560.594  126726.730  201023.769  161421.947  134269.991 
    ##        1833        1834        1835        1836        1837        1838 
    ##  117181.833  193282.436  171866.159  144888.558  138667.712  153276.347 
    ##        1839        1840        1841        1842        1843        1844 
    ##  157215.660  142859.050  165199.541  143373.113  137537.087  152118.094 
    ##        1845        1846        1847        1848        1849        1850 
    ##  142096.998  126045.502  100885.142  126480.520  146702.081  187485.526 
    ##        1851        1852        1853        1854        1855        1856 
    ##  183527.751  138669.514  158778.179  157438.731  136108.219  147733.327 
    ##        1857        1858        1859        1860        1861        1862 
    ##  128473.052   89331.064  138703.228  161409.235  163413.942  173977.963 
    ##        1863        1864        1865        1866        1867        1868 
    ##  186414.911  191124.691  168542.616  224851.174  163338.441  183157.215 
    ##        1869        1870        1871        1872        1873        1874 
    ##  207775.582  262605.657  245796.199  136363.924  195536.726  192757.462 
    ##        1875        1876        1877        1878        1879        1880 
    ##  184984.739  132135.681  171646.259  169032.301  156499.340   99251.164 
    ##        1881        1882        1883        1884        1885        1886 
    ##  122565.550  121269.159  159287.144  169318.755  179618.394  134203.970 
    ##        1887        1888        1889        1890        1891        1892 
    ##  193331.698  123459.370  170885.209  102759.234  145990.308  129950.399 
    ##        1893        1894        1895        1896        1897        1898 
    ##  213026.783  135735.981  112154.688  124475.711  195613.626  192371.399 
    ##        1899        1900        1901        1902        1903        1904 
    ##  171579.344  149792.658  172354.963  242798.739  205155.391  155121.290 
    ##        1905        1906        1907        1908        1909        1910 
    ##  127165.914  171037.246  127340.945  113494.228  156468.287  225878.920 
    ##        1911        1912        1913        1914        1915        1916 
    ##  212334.385  202541.137  188926.354  264810.706  227021.294  196752.270 
    ##        1917        1918        1919        1920        1921        1922 
    ##  287019.024  204369.916  231237.565  253621.615  246202.709  237156.935 
    ##        1923        1924        1925        1926        1927        1928 
    ##  250283.167  198530.339  204437.967  184310.043  250679.749  309449.961 
    ##        1929        1930        1931        1932        1933        1934 
    ##  260076.896  193202.279  247812.792  282035.604  347476.214  193446.222 
    ##        1935        1936        1937        1938        1939        1940 
    ##  223349.171  273559.516  200026.177  269760.536  217609.810  197212.540 
    ##        1941        1942        1943        1944        1945        1946 
    ##  221788.700  203006.448  217263.401  209223.181  245000.702  212946.230 
    ##        1947        1948        1950        1951        1952        1953 
    ##  249003.456  233941.551  227887.924  223072.038  257826.128  182961.719 
    ##        1954        1955        1956        1957        1958        1959 
    ##  167187.004  230149.434  177580.839  258144.900  216868.924  253325.061 
    ##        1960        1961        1962        1963        1964        1965 
    ##  210793.243  247587.331  211886.320  226306.765  156461.518  220349.819 
    ##        1966        1967        1968        1969        1970        1971 
    ##  182961.559  374083.354  227939.496  221726.326  212267.843  256774.894 
    ##        1972        1973        1974        1975        1976        1977 
    ##  296757.473  211558.488  203600.545  189734.518  217605.465  140872.006 
    ##        1978        1979        1980        1981        1982        1983 
    ##  259465.420  260273.664  240503.547  193448.608  215494.099  238989.301 
    ##        1984        1985        1986        1987        1988        1989 
    ##  160149.943  233346.032  177762.397  236399.421  259447.479  268620.155 
    ##        1990        1991        1992        1993        1994        1995 
    ##  239876.386  253661.935  219817.628  267453.106  275657.998  237729.075 
    ##        1996        1997        1998        1999        2000        2001 
    ##  238308.196  264752.216  233710.560  261982.023  269874.900  275298.563 
    ##        2002        2003        2004        2005        2006        2007 
    ##  249166.591  252029.885  239567.340  247450.282  168780.706  287461.593 
    ##        2008        2009        2010        2011        2012        2013 
    ##  284568.133  273038.484  261764.828  289753.601  227340.037  304655.666 
    ##        2014        2015        2016        2017        2018        2019 
    ##  189605.863  224472.703  163743.189  159891.654  126296.879  238740.648 
    ##        2020        2021        2022        2023        2024        2025 
    ##  301055.517  249130.925  265698.152  277435.043  242174.720  262537.995 
    ##        2026        2027        2028        2029        2030        2031 
    ##  246080.872  288403.687  245749.479  275487.697  263426.959  202290.002 
    ##        2032        2033        2034        2035        2036        2037 
    ##  276194.476  302066.675  270057.461  258840.628  275243.227  252477.293 
    ##        2038        2039        2040        2041        2042        2043 
    ##  233988.124  165358.365  122215.239  157669.926  158751.589  173749.939 
    ##        2044        2045        2046        2047        2048        2049 
    ##  201526.616  278810.176  164059.526  172071.529  178796.041  164472.102 
    ##        2050        2051        2052        2053        2054        2055 
    ##  139098.226  139489.316  227122.906  219478.484  194959.741  257747.511 
    ##        2056        2057        2058        2059        2060        2061 
    ##  276332.261  305166.513  343704.593  287509.008  398952.431  479702.027 
    ##        2062        2063        2064        2065        2066        2067 
    ##  335389.294  337757.449  338745.610  132136.760  156402.353  144033.537 
    ##        2068        2069        2070        2071        2072        2073 
    ##  133149.267  232080.167  271842.975  247257.561  256321.131  240303.656 
    ##        2074        2075        2076        2077        2078        2079 
    ##  259428.276  200588.507  243678.797  163468.439  212227.719  262098.486 
    ##        2080        2081        2082        2083        2084        2085 
    ##  227145.056  200013.359  255780.954  158639.693  247821.663  198372.809 
    ##        2086        2087        2088        2089        2090        2091 
    ##  143976.185  166776.409  193350.194  138791.547  145127.788  200560.060 
    ##        2092        2093        2094        2095        2096        2097 
    ##  176733.504  218981.615  208666.492  203342.142  219654.129  263210.762 
    ##        2098        2099        2100        2101        2102        2103 
    ##  240225.842  300222.140  240496.795  233546.789  198609.445  242834.786 
    ##        2104        2105        2106        2107        2108        2109 
    ##  220085.412  200902.195  209830.161  296787.675  261149.112  229247.412 
    ##        2110        2111        2112        2113        2114        2115 
    ##  276203.418  174874.104  209890.102  205610.702  225196.199  238997.058 
    ##        2116        2117        2118        2119        2120        2121 
    ##  294464.929  291156.884  280311.411  244746.351  211731.646  223196.557 
    ##        2122        2123        2124        2125        2126        2127 
    ##  278421.185  237013.035  285740.941  371746.271  399111.749  421462.578 
    ##        2128        2129        2130        2131        2132        2133 
    ##  367789.379  359243.175  333658.900  378679.556  283366.716  301634.995 
    ##        2134        2135        2136        2137        2138        2139 
    ##  307265.158  275933.884  255315.157  217115.290  304869.217  373511.973 
    ##        2140        2141        2142        2143        2144        2145 
    ##  279630.994  275913.419  412748.861  366352.652  366698.817  322908.709 
    ##        2146        2147        2148        2149        2150        2151 
    ##  324977.179  316868.138  324002.964  384233.047  250663.763  328875.915 
    ##        2152        2153        2154        2155        2156        2157 
    ##  375722.668  293381.820  217946.253  264459.325  270218.902  298246.686 
    ##        2158        2159        2160        2161        2162        2163 
    ##  332308.862  290742.033  325661.033  290768.207  317181.445  321135.771 
    ##        2164        2165        2166        2167        2168        2169 
    ##  253259.417  231607.663  283618.256  270197.452  255154.062  325211.455 
    ##        2170        2171        2172        2173        2174        2175 
    ##  324765.110  327478.256  312379.131  293320.326  340103.423  333529.911 
    ##        2176        2177        2178        2179        2180        2181 
    ##  359666.045  328741.760  276836.660  213503.422  227853.522  216747.916 
    ##        2182        2183        2184        2185        2186        2187 
    ##  288034.935  365627.394  554238.825  460528.162  441328.133  335607.516 
    ##        2188        2189        2190        2191        2192        2193 
    ##  334376.512  190641.463  201734.607  288205.738  333193.705  225059.502 
    ##        2194        2195        2196        2197        2198        2199 
    ##  275103.187  391239.284  656598.633  226128.592  409076.984  321469.850 
    ##        2200        2201        2202        2203        2204        2205 
    ##  421627.114  542566.902  326668.587  304148.171  202940.800  219743.374 
    ##        2206        2207        2208        2209        2210        2211 
    ##  251304.243  246714.510  253212.261  227467.261  131890.354  185658.810 
    ##        2212        2213        2214        2215        2216        2217 
    ##  192553.895  226830.436  272710.403  222981.399  330738.588  242184.546 
    ##        2218        2219        2220        2221        2222        2223 
    ##  256241.657  160489.150  243681.633  171782.418  266720.576  283796.909 
    ##        2224        2225        2226        2227        2228        2229 
    ##  286786.390  270639.606  291846.363  293822.169  273198.867  281186.904 
    ##        2230        2231        2232        2233        2234        2235 
    ##  217294.771  209804.720  230031.296  259498.215  241602.705  411029.942 
    ##        2236        2237        2238        2239        2240        2241 
    ##  354802.540  373405.102  102268.787  186052.287  171654.282  163323.237 
    ##        2242        2243        2244        2245        2246        2247 
    ##   65995.022  146509.797  136446.970  137207.918  156149.618  239230.933 
    ##        2248        2249        2250        2251        2252        2253 
    ##  172356.280  114233.711   74154.159  174482.097  205398.352   90854.108 
    ##        2254        2255        2256        2257        2258        2259 
    ##  193869.095  180111.232  129721.584   90627.443  164873.884  108986.359 
    ##        2260        2261        2262        2263        2264        2265 
    ##  168790.304  175832.167  229253.773  157287.067  155813.204  160726.229 
    ##        2266        2267        2268        2270        2271        2272 
    ##  132866.557  367699.087  198248.715  258050.829  278301.593  250268.086 
    ##        2273        2274        2275        2276        2277        2278 
    ##  173065.955  147114.780  243620.438  268846.706  349127.219  197852.878 
    ##        2279        2280        2281        2282        2283        2284 
    ##  103413.669   97190.728   90466.832   95426.693   85812.042  118285.798 
    ##        2285        2286        2287        2288        2289        2290 
    ##  108712.223   72103.699   87402.991   89733.185   94733.710   79748.693 
    ##        2291        2292        2293        2294        2295        2296 
    ##   50726.615  138575.770  144543.131  132734.856  111157.898   54970.503 
    ##        2297        2298        2299        2300        2301        2302 
    ##  110693.400   93818.970  287749.041  355096.860  279567.976  283646.192 
    ##        2303        2304        2305        2306        2307        2308 
    ##  330232.749  315778.860  216873.051  306314.622  261212.126  374661.736 
    ##        2309        2310        2311        2312        2313        2314 
    ##  236589.952  262898.041  284237.513  306679.987  325213.909  201315.777 
    ##        2315        2316        2317        2318        2319        2320 
    ##  331600.158  303439.217  301528.364  302049.655  293191.818  340534.698 
    ##        2321        2322        2323        2324        2325        2326 
    ##  489602.650  420394.325  321870.357  315269.770  443673.204  337735.398 
    ##        2327        2328        2329        2330        2331        2332 
    ##  398891.039  441806.219  230818.093  284953.850  258202.601  442214.611 
    ##        2333        2334        2335        2336        2337        2338 
    ##  369415.441  361846.432  285134.036  249153.910   55951.162  120206.502 
    ##        2339        2340        2341        2342        2343        2344 
    ##   91695.120   84137.310   83102.394  156334.521  135650.446  156714.307 
    ##        2345        2346        2347        2348        2349        2350 
    ##  112249.016  169889.178  199024.287  195152.341  154616.905  145947.643 
    ##        2351        2352        2353        2354        2355        2356 
    ##  130420.082  136405.932  153773.993  211057.165  194264.202  220934.759 
    ##        2357        2358        2359        2360        2361        2362 
    ##  140650.408  277736.271  179116.689   99764.076   90819.897  100737.534 
    ##        2363        2364        2365        2366        2367        2368 
    ##   89660.439  156700.683   93407.207  165535.574   70782.439   59465.666 
    ##        2370        2371        2372        2373        2374        2375 
    ##  110286.637   80388.935   93215.879  113333.411  179706.964  187638.945 
    ##        2376        2377        2378        2379        2380        2381 
    ##  144920.355   97077.260  120921.320   65061.278   20113.548   52086.886 
    ##        2382        2384        2385        2386        2387        2388 
    ##   66416.314   84967.091   63756.328  152653.388   50899.744  130509.887 
    ##        2389        2390        2391        2392        2393        2394 
    ##   81794.406   97119.130   11789.194   80055.681  126266.446  180840.824 
    ##        2395        2396        2397        2398        2399        2400 
    ##  162424.989  227724.721  227677.765  230780.363  242898.660  140067.892 
    ##        2401        2402        2403        2404        2405        2406 
    ##  139786.288  181929.800   64316.159  290298.082  262195.828  169281.189 
    ##        2407        2408        2409        2410        2411        2412 
    ##  235562.614  155925.333  241434.874  279535.036  223481.367  234559.717 
    ##        2413        2414        2415        2416        2417        2418 
    ##  200282.107  272215.718  294256.346  227658.470  325398.455  389576.492 
    ##        2419        2420        2421        2422        2423        2424 
    ##  237792.396  183845.016  191562.606  143209.460  160218.413  233774.193 
    ##        2425        2426        2427        2428        2429        2430 
    ##  249714.906  207402.559  372779.798  317407.845  292631.408  356182.388 
    ##        2431        2432        2433        2434        2435        2436 
    ##  296004.701  281096.188  359463.916  407943.611  336229.082  375519.028 
    ##        2437        2438        2439        2440        2441        2442 
    ##  683848.532  275259.180  267041.150  216205.263  307184.541  260790.665 
    ##        2443        2444        2445        2446        2447        2448 
    ##  278174.821  239152.274  279663.860  329274.767  149995.891  232125.317 
    ##        2449        2450        2451        2452        2453        2454 
    ##  289282.415  319241.190  353472.553  251960.551  229959.950  202300.317 
    ##        2455        2456        2457        2458        2459        2460 
    ##  165299.002  224166.784  213735.619  246439.152  178019.998 -155960.393 
    ##        2461        2462        2463        2464        2465        2466 
    ##  208736.085  173902.462  152648.664  207012.753  299253.203  133223.477 
    ##        2467        2468        2469        2470        2471        2472 
    ##  277389.198  178845.111  201948.863  241275.009  245879.479  223426.455 
    ##        2473        2474        2475        2476        2477        2478 
    ##  158313.593  240650.265  230170.421  253568.702  202408.243  283173.547 
    ##        2479        2480        2481        2482        2483        2484 
    ##  222354.339  294914.743  164702.132  184650.814  193325.917  186143.622 
    ##        2485        2486        2487        2488        2489        2490 
    ##  178424.968  135104.129  118547.601  180190.498  112246.983  167354.833 
    ##        2491        2492        2493        2494        2495        2496 
    ##   68316.708   74055.528   80501.230   84745.031  107553.415   25545.673 
    ##        2497        2498        2499        2500        2501        2502 
    ##   96306.179   90654.702   90476.387   80339.272   95828.511   93716.988 
    ##        2503        2504        2505        2506        2507        2508 
    ##  138631.072  110680.489   83740.518  105007.891  -37209.797   95710.317 
    ##        2509        2510        2511        2512        2513        2514 
    ##  128050.411  256699.411  227597.832  241576.401  172230.054  187830.806 
    ##        2515        2516        2517        2518        2519        2520 
    ##  209256.534  231029.750  228515.405  232729.807  286050.434  290638.493 
    ##        2521        2522        2523        2524        2525        2526 
    ##  259959.640  188676.829  271537.485  555578.434  257991.277  303812.908 
    ##        2527        2528        2529        2530        2531        2532 
    ##  289774.357  196566.303  214641.570  296155.251  232728.395  142324.489 
    ##        2533        2534        2535        2536        2537        2538 
    ##  258579.608  216645.249  160649.716  175715.974  237161.316  271442.170 
    ##        2539        2540        2541        2542        2543        2544 
    ##  250658.713  187841.899  272091.156  279729.726  192469.321  277207.697 
    ##        2545        2546        2547        2548        2549        2550 
    ##  189492.186  208038.484  297291.646  213686.426  332198.720  294775.513 
    ##        2551        2552        2553        2554        2555        2556 
    ##  299202.640  254810.010  270002.305  179086.678  247741.510  148406.269 
    ##        2557        2558        2559        2560        2561        2562 
    ##  168122.771  255365.597  220021.133  322985.302  402496.512  265756.079 
    ##        2563        2564        2565        2566        2567        2568 
    ##  338101.485  258561.319  294546.393  347618.312  335989.188  344149.602 
    ##        2569        2570        2571        2572        2573        2574 
    ##  279018.460  279241.386  446173.709  448837.824  353434.383  422760.562 
    ##        2575        2576        2577        2578        2579        2580 
    ##  334656.999  294358.967  309092.905  372277.333  287508.304  275533.214 
    ##        2581        2582        2583        2584        2585        2586 
    ##  240720.347  254541.737  288011.743  331950.561  281790.589  247252.452 
    ##        2587        2588        2589        2590        2591        2592 
    ##  329030.565  271933.484  261989.124  236089.053  251424.687  209314.306 
    ##        2593        2594        2595        2596        2597        2598 
    ##  254901.672  294079.105  257873.110  337616.305  298519.020  186345.715 
    ##        2599        2600        2601        2602        2603        2604 
    ##  201623.845  229664.486  265149.206  155575.222  324502.021  273700.720 
    ##        2605        2606        2607        2608        2609        2610 
    ##  295044.194  357447.381  272570.804  297063.064  256074.828  162237.497 
    ##        2611        2612        2613        2614        2615        2616 
    ##  365574.299  289756.403  286505.005  219660.429  205490.484  302696.685 
    ##        2617        2618        2619        2620        2621        2622 
    ##  300506.803  554277.143  218058.308  240234.605  355443.563  323471.804 
    ##        2623        2624        2625        2626        2627        2628 
    ##  347352.692  264568.255  438055.081  200508.842  311655.123  290402.852 
    ##        2629        2630        2631        2632        2633        2634 
    ##  109919.641  356027.991  329634.851  263194.136  151208.485  244229.237 
    ##        2635        2636        2637        2638        2639        2640 
    ##  271887.603  180129.348  336961.298  283887.344  240475.577  343490.598 
    ##        2641        2642        2643        2644        2645        2646 
    ##  342905.136  279363.353  261296.218  306201.672  267603.954  188467.394 
    ##        2647        2648        2649        2650        2651        2652 
    ##  304087.407  283491.832  336196.667  309916.450  373170.312  366682.238 
    ##        2653        2654        2655        2656        2657        2658 
    ##  354947.507  338100.136  400693.514  356171.099  275609.180  246267.846 
    ##        2659        2660        2661        2662        2663        2664 
    ##  231734.951  210459.331  216998.508  198963.046  188871.455  196267.848 
    ##        2665        2666        2667        2668        2669        2670 
    ##  205990.330  301043.926  515097.643  342480.549  286395.680  482355.214 
    ##        2671        2672        2673        2675        2676        2677 
    ##  530099.409  333249.203  504086.679  349591.031  242319.261  156589.400 
    ##        2678        2679        2680        2681        2682        2683 
    ##  259133.928  224804.631  211851.329  439246.939  313202.758  295170.622 
    ##        2684        2685        2686        2687        2688        2689 
    ##  215240.987  237653.997  173006.957  174450.571  154935.784  203977.142 
    ##        2690        2691        2692        2693        2694        2695 
    ##  265730.903  225225.030  163595.945  127780.735  272439.577  230589.637 
    ##        2696        2697        2698        2699        2700        2701 
    ##  252100.450  271896.550  226550.314  197825.171  209792.158  167450.609 
    ##        2702        2703        2704        2705        2707        2708 
    ##  217242.145  231439.934  283667.154  293409.920  110449.036  187727.040 
    ##        2709        2710        2711        2712        2713        2714 
    ##  103188.263  134442.886  115927.418  144027.879  115952.622  177185.461 
    ##        2715        2716        2717        2718        2719        2720 
    ##  142960.522  156198.444  143368.723   93722.753  119757.122  154565.318 
    ##        2721        2722        2723        2724        2725        2726 
    ##  199826.416  334827.481  212677.096  259917.155  250026.641  240521.207 
    ##        2727        2728        2729        2730        2731        2732 
    ##  263125.366  242350.841  176618.301  201092.733  323641.199  484551.019 
    ##        2733        2734        2735        2736        2737        2738 
    ##  581797.589  321950.133  474570.459  236515.244  363938.975  211647.874 
    ##        2739        2740        2741        2742        2743        2744 
    ##  169424.319  369248.297  290203.341  221965.010  204991.578  252381.364 
    ##        2745        2746        2747        2748        2749        2750 
    ##  253533.669  169675.845  293587.742  272067.762  274229.674  234203.056 
    ##        2751        2752        2753        2754        2755        2756 
    ##  284664.123  235575.801  198186.597  216461.585  226394.117  248622.229 
    ##        2757        2758        2759        2760        2761        2762 
    ##  154713.871  225740.220  195894.921  190423.115  205843.054  225737.653 
    ##        2763        2764        2765        2766        2767        2768 
    ##  202521.235  214578.382  193804.377  234870.493  258268.730  225715.071 
    ##        2769        2770        2771        2772        2773        2774 
    ##  231965.350  204809.057  102058.253  172790.771  191332.618  159213.934 
    ##        2775        2776        2777        2778        2779        2780 
    ##  170161.611  151158.001  164588.643  236795.749  178978.807  248445.759 
    ##        2781        2782        2783        2784        2785        2786 
    ##  237706.110  221486.562  238933.940  200070.187  210437.972  216625.999 
    ##        2787        2788        2789        2790        2791        2792 
    ##  210507.197  227268.672  169520.234  227844.015  194300.708  205245.696 
    ##        2793        2794        2795        2796        2797        2798 
    ##  221067.164  214661.198  191838.305  238835.916  316957.887  188824.038 
    ##        2799        2800        2801        2802        2803        2804 
    ##  260331.229  240282.399  203613.097  213666.432  246421.969  168932.907 
    ##        2805        2806        2807        2808        2809        2810 
    ##  228531.105  202357.703  173918.171  220583.900  247897.655  223777.118 
    ##        2811        2812        2813        2814        2815        2816 
    ##  190416.128  183064.122  231920.280  170431.114  208497.896  200244.315 
    ##        2817        2818        2819        2820        2821        2822 
    ##  213818.427  182375.595  166123.950  197979.152  252805.831  264236.583 
    ##        2823        2824        2825        2826        2827        2828 
    ##  280148.216  246166.545  255088.940  226785.010  232751.597  284290.138 
    ##        2829        2830        2831        2832        2833        2834 
    ##  233124.042  278506.428  290655.951  288811.456  272062.579  257656.874 
    ##        2835        2836        2837        2838        2839        2840 
    ##  287821.386  296431.815  283408.815  267243.570  208675.873  446304.993 
    ##        2841        2842        2843        2844        2845        2846 
    ##  123371.244  285435.190  281157.543  239688.283  492102.064  261629.089 
    ##        2847        2848        2849        2850        2851        2852 
    ##  414346.117  341619.639  282285.662  294425.221  283936.073  292162.081 
    ##        2853        2854        2855        2856        2857        2858 
    ##  416153.136  418817.240  473039.434  357394.097  265015.510  276537.152 
    ##        2859        2860        2861        2862        2863        2864 
    ##  179771.419  172316.449  174946.462  242285.079  287705.289  238454.279 
    ##        2865        2866        2867        2868        2869        2870 
    ##  184882.118  219629.307  132795.000  257483.476  291268.391  168905.686 
    ##        2871        2872        2873        2874        2875        2876 
    ##  224600.848  336022.824  239735.976  277198.130  290869.906  315918.356 
    ##        2877        2878        2879        2880        2881        2882 
    ##  321634.668  340168.337  274521.355  289232.592  173455.306  248032.654 
    ##        2883        2884        2885        2886        2887        2888 
    ##  309733.214  253570.112  295623.440  237216.468  273327.585  230173.487 
    ##        2889        2890        2891        2892        2893        2894 
    ##  235476.580  241871.368  218787.366  246194.131  230419.566  216224.302 
    ##        2895        2896        2897        2898        2899        2900 
    ##  224523.312  160434.026  221706.263  174819.179  234118.205  184689.161 
    ##        2901        2902        2903        2904        2905        2906 
    ##  180429.874  386050.658   35682.743   63526.399    1058.545   33231.338 
    ##        2907        2908        2909        2910        2911        2912 
    ##   49035.615  122278.237   99764.955   81313.661  115981.144  200405.907 
    ##        2913        2914        2915        2916        2917        2918 
    ##  166960.405  140916.258  170693.308  171493.976   97410.417  180007.103 
    ##        2919        2920        2921        2922        2923        2924 
    ##  163558.741   98202.514  178198.424  181174.467  143527.701  115610.695 
    ##        2925        2926        2927        2928        2929        2930 
    ##   13492.011  185803.620  130898.381   90885.531  143214.854   71882.613 
    ##        2931        2932        2933        2934        2935        2936 
    ##  128634.303   93033.150  108579.737  122096.475  134129.108   69505.210 
    ##        2937        2938        2939        2940        2941        2942 
    ##   56032.489   76061.659   24779.547   75848.135   55100.976   45806.801 
    ##        2943        2944        2945        2946        2947        2948 
    ##   13990.588   28509.603   61634.444  101361.576    2680.375   82289.785 
    ##        2949        2950        2951        2952        2953        2954 
    ##   15438.529  155381.167  126198.213  123909.240   83958.263   98654.757 
    ##        2955        2956        2957        2958        2959        2960 
    ##   90903.726  105400.750   77794.872  120347.425   91715.061  138374.247 
    ##        2961        2962        2963        2964        2965        2966 
    ##  161368.309  213173.834  122326.352  501177.317  139801.188  131765.560 
    ##        2967        2968        2969        2970        2971        2972 
    ##  145455.987  172852.351  168952.227  134278.534  191948.587  104264.994 
    ##        2973        2974        2975        2976        2977        2978 
    ##  159046.789   76248.244  121619.655  131750.176  135411.511  163573.119 
    ##        2979        2980        2981        2982        2983        2984 
    ##  153279.544  160546.322  164064.087  145368.826  157177.355  217104.820 
    ##        2985        2986        2987        2988        2989        2990 
    ##  166999.391  225330.255  189525.229  140046.916  234448.125  303031.540 
    ##        2991        2992        2993        2994        2995        2996 
    ##  189490.411  150011.740   54313.321  135241.830  145940.060  149691.992 
    ##        2997        2998        2999        3000        3001        3002 
    ##  141011.510   94443.081  174770.040  113230.499   84689.928  101551.674 
    ##        3003        3004        3005        3006        3007        3008 
    ##  209489.500  157239.763  180887.806  169632.131  208891.195  186278.973 
    ##        3009        3010        3011        3013        3014        3015 
    ##  101487.590  157807.474  163866.819  123516.914  161548.685  116079.804 
    ##        3016        3017        3018        3019        3020        3021 
    ##  128505.059   29298.654  118887.679   97631.835  161959.613   90786.980 
    ##        3022        3023        3024        3025        3026        3027 
    ##  130394.290  207193.701  184638.556   77934.197   96481.000  129768.417 
    ##        3028        3029        3030        3031        3032        3033 
    ##  125056.082  149753.054   91266.479   99295.055  108281.041  146552.509 
    ##        3034        3035        3036        3037        3038        3039 
    ##  113067.876  211238.644  156678.546  197415.343  148946.838  203129.574 
    ##        3040        3041        3042        3043        3044        3045 
    ##  186315.443  150228.680  159646.590  156885.343  189304.953   99585.861 
    ##        3046        3047        3048        3049        3050        3051 
    ##   92187.641  137534.963  132840.626   96863.679  130956.524  112523.318 
    ##        3052        3053        3054        3055        3056        3057 
    ##   82557.926   93853.847  138270.217  100738.240  110362.152   92426.613 
    ##        3058        3059        3060        3061        3062        3063 
    ##  131920.272   51076.476   27833.755   82123.705  115882.530  132455.448 
    ##        3064        3065        3066        3067        3068        3069 
    ##  128680.150  126277.640  156356.206   63272.096  113923.613   91915.429 
    ##        3070        3071        3072        3073        3074        3075 
    ##   91157.245  238905.672  193411.797  115782.065  156231.686   98236.912 
    ##        3076        3077        3078        3079        3080        3081 
    ##  112411.159  199453.748  135928.299  112726.636  142159.571  237408.032 
    ##        3082        3083        3084        3085        3086        3087 
    ##  143754.878   56713.057   92542.089  167900.294  186251.783  284775.921 
    ##        3088        3089        3090        3091        3092        3093 
    ##  136568.123  127614.620  355195.213  142014.915  109547.042   50146.736 
    ##        3094        3095        3096        3097        3098        3099 
    ##   14772.604   40433.849   42367.864   37470.225  -32435.818   -4548.183 
    ##        3100        3101        3102        3103        3104        3105 
    ##   -3291.901    5000.435  189300.280  163958.714  190052.324  149892.350 
    ##        3106        3107        3108        3109        3110        3111 
    ##   32312.498  116648.750   98186.418  165298.261  212713.936  150759.564 
    ##        3112        3113        3114        3115        3116        3117 
    ##  140141.757  145014.235  240783.965   94759.919  105995.342   79397.248 
    ##        3118        3119        3120        3121        3122        3123 
    ##   74132.903  148984.534  184407.437  148245.449  350288.740  165542.757 
    ##        3124        3125        3126        3127        3128        3129 
    ##  306186.038  193094.686   67466.088  123135.306   70885.801   81029.524 
    ##        3130        3131        3132        3134        3135        3136 
    ##  141407.553  145999.378  128654.557  127417.824  130924.523  121834.550 
    ##        3137        3138        3139        3140        3141        3142 
    ##  215568.659  165676.704  222781.601  225293.701  182760.625  145163.388 
    ##        3143        3144        3145        3146        3147        3148 
    ##   62350.872   63717.866  109636.826  132742.637  123452.369  161388.693 
    ##        3149        3150        3151        3152        3153        3154 
    ##  170639.008  176439.444  287746.186  206090.232   90604.649   92238.063 
    ##        3155        3156        3157        3158        3159        3160 
    ##   75405.506  106118.620   81201.054   79588.068   84918.255  103920.833 
    ##        3161        3162        3163        3164        3165        3166 
    ##  120012.243  122875.573  152586.820   85633.327  332804.938  183313.378 
    ##        3167        3168        3169        3170        3171        3172 
    ##   86974.484  102099.425  159165.494  142551.734  311126.890  174263.676 
    ##        3173        3174        3175        3176        3177        3178 
    ##  116355.127  139956.919  120723.218  257818.037  228002.214  184969.710 
    ##        3179        3180        3181        3182        3183        3184 
    ##  130808.227  180601.020  197605.995  319035.398  308190.674  143006.428 
    ##        3185        3186        3187        3188        3189        3190 
    ##  157956.137  180398.331  180179.508  190014.111  194537.420  129558.770 
    ##        3191        3192        3193        3194        3195        3196 
    ##  129146.580  106417.449  175493.842   63169.414   95367.863   60986.831 
    ##        3197        3198        3199        3200        3202        3203 
    ##   85272.909  121712.211   68382.305  207622.358  209087.561   75153.479 
    ##        3204        3205        3206        3207        3208        3209 
    ##  126373.192  136783.796  112587.983  108343.939  121202.110  108295.034 
    ##        3210        3211        3212        3213        3214        3215 
    ##  159794.803   91916.401   70968.868   99342.294  102759.257  124645.694 
    ##        3216        3217        3218        3219        3220        3221 
    ##   87354.911  116584.876   95722.136  120460.252  127043.794   99721.533 
    ##        3222        3223        3224        3225        3226        3227 
    ##  140287.503  106337.598   76949.918  163605.069  194961.071  114820.333 
    ##        3228        3229        3230        3231        3232        3233 
    ##  156054.294  187515.787  193885.128  163228.506  164699.579  400210.783 
    ##        3234        3235        3236        3237        3238        3239 
    ##  145222.782  143844.929  167501.308  136926.055  133359.950  122666.215 
    ##        3240        3241        3242        3243        3244        3245 
    ##  126543.744  127350.487  127927.413  187762.699  168685.373  146329.552 
    ##        3246        3247        3248        3250        3251        3252 
    ##  149834.317  149322.669  158638.931  204005.044   99170.233  137654.221 
    ##        3253        3254        3255        3256        3257        3258 
    ##  152733.177  103832.259  160395.636  224121.512  184137.936    6548.685 
    ##        3259        3260        3261        3262        3263        3264 
    ##   92246.220  111790.506  127155.809   66850.801  104583.432  145477.027 
    ##        3265        3266        3267        3268        3269        3270 
    ##  102086.395   84052.789  165260.569  182801.621  107727.527  173800.544 
    ##        3271        3272        3273        3274        3275        3276 
    ##  102989.266  161810.756  113753.060  174751.920  221631.154  168440.990 
    ##        3277        3278        3279        3280        3281        3282 
    ##  163639.920  166242.047  104335.177  106643.623  155214.455  125533.322 
    ##        3283        3284        3285        3286        3287        3288 
    ##  180311.113  184069.349  171542.711  183320.365  113473.019  198561.584 
    ##        3289        3290        3291        3292        3293        3294 
    ##  312972.383  332448.829  102025.715  164684.540  146628.559  139907.598 
    ##        3295        3296        3297        3298        3299        3300 
    ##  161345.962   68731.701  163379.081  175704.845   97899.182  120346.713 
    ##        3301        3302        3303        3304        3305        3306 
    ##  145685.259  177640.429  141238.450  257396.045  327476.995  233301.762 
    ##        3307        3308        3309        3310        3311        3312 
    ##  340939.887  216118.009  172372.054  208588.827  211359.401  109381.900 
    ##        3313        3314        3315        3316        3317        3318 
    ##  166324.089  111701.492  143968.562  161642.449  122670.112  238960.032 
    ##        3319        3320        3321        3322        3323        3324 
    ##  152666.375  164066.727  165879.788  117977.198   88445.919  126551.325 
    ##        3325        3326        3327        3328        3329        3330 
    ##  161002.383  173388.090  161049.272  166330.962  215595.741  140278.727 
    ##        3331        3332        3333        3334        3335        3336 
    ##  153977.041  171934.505  137576.965  111520.130  187214.652  290668.888 
    ##        3337        3338        3339        3340        3341        3342 
    ##  102128.725  183593.318  137657.166  165529.739  223975.739  181521.870 
    ##        3343        3344        3345        3346        3347        3348 
    ##   76592.051  111789.294   15327.811  125940.996  120569.711  144647.189 
    ##        3349        3350        3351        3352        3353        3354 
    ##  126638.354   83920.267  153263.898  125762.718  108724.194  113649.766 
    ##        3355        3356        3357        3358        3359        3360 
    ##  116194.452  123483.430  132669.666  133912.099  135112.037   65521.181 
    ##        3361        3362        3363        3364        3365        3366 
    ##  136945.256  130744.722   86084.223  121846.896  108336.856  159071.141 
    ##        3367        3368        3369        3370        3371        3372 
    ##  125846.868   94675.821  114253.405  133053.789  146212.614  122524.411 
    ##        3373        3374        3375        3376        3377        3378 
    ##  124324.274  107889.794   57431.638   77792.071  109252.003  109823.678 
    ##        3379        3380        3381        3382        3383        3384 
    ##  105803.616  157042.249  150827.753   87121.428   84176.467   79929.962 
    ##        3385        3386        3387        3388        3389        3390 
    ##   97078.547   70306.271  246757.292  111457.974  116666.030  121058.602 
    ##        3391        3392        3393        3394        3395        3396 
    ##   97410.950   95018.737   90373.116   76987.361  132940.616  142949.187 
    ##        3397        3398        3399        3400        3401        3402 
    ##  171880.945  180471.229  135765.120  129083.670   62956.288   49073.518 
    ##        3403        3404        3405        3406        3407        3408 
    ##   84481.325   89969.728   85142.628  103917.416  102358.490  182854.335 
    ##        3409        3410        3411        3412        3413        3414 
    ##  125394.304  195373.437  180118.870   36499.561   59746.864   57923.043 
    ##        3415        3416        3417        3418        3419        3420 
    ##  176517.507  213646.010  284794.925   45269.782  130949.312  115070.017 
    ##        3421        3422        3423        3424        3425        3426 
    ##  134605.811  112680.584   92047.764  107340.581  119845.029  159211.786 
    ##        3427        3428        3429        3430        3431        3432 
    ##  201941.479  109693.060   93263.949  174032.956  131679.634  228687.697 
    ##        3433        3434        3435        3436        3437        3438 
    ##  191079.734  143109.934  191131.498  180078.607  146848.316  222195.538 
    ##        3439        3440        3441        3442        3443        3444 
    ##   89355.784  277502.221  235217.667  250469.247  162753.175  116131.694 
    ##        3445        3446        3447        3448        3449        3450 
    ##   89023.755  153792.839  111515.447  122980.942  152316.709  113294.173 
    ##        3451        3452        3453        3454        3455        3456 
    ##   77980.852   40256.321  180633.768  212023.174  195674.360   89444.597 
    ##        3457        3458        3459        3460        3461        3462 
    ##   78055.499  105809.959   87897.352   59725.391   92564.029  133632.756 
    ##        3463        3464        3465        3466        3467        3468 
    ##   58281.337   31330.272   96109.774  100666.597  123047.735  111162.304 
    ##        3469        3470        3471        3472        3473        3474 
    ##  126836.120   84097.983  100639.940   46723.509  117373.997   81980.331 
    ##        3475        3476        3477        3478        3479        3480 
    ##   87380.767   91438.004   25322.815  131173.065  130775.619   87182.796 
    ##        3481        3482        3483        3484        3485        3486 
    ##  106728.615  116826.020  133110.357  100191.184   76494.688  106524.851 
    ##        3487        3489        3490        3492        3493        3494 
    ##    6946.456   13247.225   13833.614   81341.863  202021.912   71209.091 
    ##        3495        3496        3497        3498        3499        3500 
    ##  279681.076  225175.079  278629.686  200213.672  149849.419  151157.002 
    ##        3501        3502        3503        3504        3505        3506 
    ##  214407.353  225490.357  167329.124  239117.671  192812.358  111819.885 
    ##        3507        3508        3509        3510        3511        3512 
    ##  113989.121   78025.987   61850.509   68905.553  108554.298  -23665.004 
    ##        3513        3514        3515        3516        3517        3518 
    ##  107719.507  228773.389  275474.936  206323.683  283413.400  215868.431 
    ##        3519        3520        3521        3522        3523        3524 
    ##  214036.922  232630.577  225533.848  191320.540  187785.417  215210.384 
    ##        3525        3526        3527        3528        3529        3530 
    ##  197119.294  204036.199  228310.771  238524.668  197638.972  173673.445 
    ##        3531        3532        3533        3534        3535        3536 
    ##  181440.561  187698.843  273806.403  231777.127  232095.274  168922.274 
    ##        3537        3538        3539        3540        3541        3542 
    ##  145846.913  163645.554  158179.167  123337.891  173656.235  163899.680 
    ##        3543        3544        3545        3546        3547        3548 
    ##  177701.659  200124.736  207997.356  136969.387  133036.513  172349.098 
    ##        3549        3550        3552        3553        3554        3555 
    ##  193597.115  190492.918  221010.663  195623.669  163913.645  202485.081 
    ##        3556        3557        3558        3559        3560        3561 
    ##  177860.531  215524.076  247224.986  214955.520  198770.113  201209.937 
    ##        3562        3563        3564        3565        3566        3567 
    ##  182867.564  210849.486  228326.469  225864.678  106784.310  107580.938 
    ##        3568        3569        3570        3571        3572        3573 
    ##  220452.124  157638.618  128424.747  130821.047  151848.605  115207.952 
    ##        3574        3575        3576        3577        3578        3580 
    ##  161452.232   88721.783  152660.369  204094.501  137597.350  137726.393 
    ##        3581        3582        3583        3584        3585        3586 
    ##  163770.913  151287.376  127124.704  223248.820  372053.643  391635.527 
    ##        3587        3588        3589        3590        3591        3592 
    ##  260867.191  184149.062  314750.393  337421.700  289250.910  255733.226 
    ##        3593        3595        3596        3597        3598        3599 
    ##  255792.065  195957.187  221520.187  203612.409  170813.050  250366.384 
    ##        3600        3601        3602        3603        3604        3605 
    ##  276396.393  269823.728  203228.021  225482.613  234644.144  207587.565 
    ##        3606        3607        3608        3609        3610        3611 
    ##  219143.286  217040.718  214571.673  230618.305  222268.439  171740.844 
    ##        3612        3613        3614        3615        3616        3617 
    ##  259659.894  182406.515  237477.103  268942.268  363211.386  297655.816 
    ##        3618        3619        3620        3621        3622        3623 
    ##  226533.558  271536.870  267221.065  271023.125  298219.592  409974.917 
    ##        3624        3625        3626        3627        3628        3629 
    ##   82423.165  254175.408  314007.368  366143.945  284886.019  313569.619 
    ##        3630        3631        3632        3633        3634        3635 
    ##  281767.128  473436.585  229709.334  269235.968  222457.240  216512.658 
    ##        3636        3637        3638        3639        3640        3641 
    ##  256363.014  202003.077  222951.925  241504.276  258012.637  243961.876 
    ##        3642        3643        3644        3645        3646        3647 
    ##  324875.916  341699.545  301951.600  299695.633  300235.332  285746.937 
    ##        3648        3649        3650        3651        3652        3653 
    ##  215571.437  210214.380  274046.619  250420.114  286808.149  238750.107 
    ##        3654        3655        3656        3657        3658        3659 
    ##  236399.861  243201.823  189663.006  227294.021  222072.811  195326.424 
    ##        3660        3661        3662        3663        3664        3665 
    ##  244876.295  278004.676  147388.669  170028.880  177786.111  290247.046 
    ##        3666        3667        3668        3669        3670        3671 
    ##  250885.569  272755.847  260173.788  209853.494  209555.850  200261.719 
    ##        3672        3673        3674        3675        3676        3677 
    ##  229563.416  171864.123  268462.846  228649.939  221325.543  266646.787 
    ##        3678        3679        3680        3681        3682        3683 
    ##  147361.439  324696.608  432969.966  364181.121  221702.971  263619.584 
    ##        3684        3685        3686        3687        3688        3689 
    ##  236396.245  311137.916  274889.020  306435.275  153294.324  184571.796 
    ##        3690        3691        3692        3693        3694        3695 
    ##  215396.267  209002.053  206829.972  247202.717  216099.983   97225.270 
    ##        3696        3697        3698        3699        3700        3701 
    ##  113030.984  118650.729  169506.908  160664.075  236559.793  209372.675 
    ##        3702        3703        3704        3705        3706        3707 
    ##  173155.912  212296.231  260804.847  168618.630  194032.950  196569.584 
    ##        3708        3709        3710        3711        3712        3713 
    ##  166686.628  172261.781  223031.121  437444.161  301523.893  285596.721 
    ##        3714        3715        3716        3717        3718        3719 
    ##  159990.201  145647.387  132048.367  167462.314  217474.426  173080.366 
    ##        3720        3721        3722        3723        3724        3725 
    ##  146993.892  170296.769  168487.814  152705.331  189258.739  210623.007 
    ##        3726        3727        3728        3729        3730        3731 
    ##  180690.057  199473.736  238990.312  164472.605  221554.010  199063.725 
    ##        3732        3733        3734        3735        3736        3737 
    ##  191749.984  203388.366  148923.504  153673.392  171803.442  257498.358 
    ##        3738        3739        3740        3741        3742        3744 
    ##  205097.201  199975.411  176144.413  216695.658  300760.252  224444.100 
    ##        3745        3746        3747        3748        3749        3751 
    ##  300702.467  260015.314  237167.040  237932.269  216895.506  158351.998 
    ##        3752        3753        3754        3755        3756        3757 
    ##  152843.459  183642.203  230929.344  190351.974  192696.660  208578.909 
    ##        3758        3759        3761        3762        3763        3764 
    ##  193388.682  232873.924  196048.521  221056.753  210137.752  197250.771 
    ##        3765        3766        3767        3768        3769        3770 
    ##  168645.057  108734.243  212973.764  254123.180  235732.312  246586.397 
    ##        3771        3772        3773        3774        3775        3776 
    ##  235419.396  277602.883  285780.987  204784.789  149906.581  239213.297 
    ##        3777        3778        3780        3781        3782        3783 
    ##  275982.745  310779.975  247831.540  234444.276  275816.560  190593.623 
    ##        3784        3785        3786        3787        3788        3789 
    ##  232555.533  183172.090  262086.765  201490.733  183418.297  179718.541 
    ##        3790        3791        3792        3793        3794        3795 
    ##  136138.564  195730.309  188079.886  220664.144  228104.714  238548.605 
    ##        3796        3797        3798        3799        3800        3801 
    ##  230838.829  186019.215  207040.027  199739.521  242961.112  168750.979 
    ##        3802        3803        3804        3805        3806        3807 
    ##  315055.758  271929.875  200242.009  224850.844  216449.799  198191.314 
    ##        3808        3809        3810        3811        3812        3813 
    ##  279112.958  300590.223  301661.663  257819.904  267122.765  223350.774 
    ##        3814        3815        3816        3817        3818        3819 
    ##  244470.764  225916.030  340393.354  335139.167  303008.153  245357.397 
    ##        3820        3821        3822        3823        3824        3825 
    ##  295858.453  251342.075  288358.817  302513.611  197382.254  201827.249 
    ##        3826        3827        3828        3829        3830        3831 
    ##  312958.825  282240.111  279670.966  250156.516  196148.613  294708.757 
    ##        3832        3833        3834        3835        3836        3837 
    ##  237599.421  159509.106  225286.516  117532.035  247937.007  195780.282 
    ##        3838        3839        3840        3841        3842        3843 
    ##  210520.928  224202.791  180686.296  195308.709  172985.856  159382.750 
    ##        3844        3845        3846        3847        3848        3849 
    ##  197136.163  199106.148  173934.439  219483.194  170665.915  187736.585 
    ##        3850        3851        3852        3853        3854        3855 
    ##  180163.974  210670.733  124357.976  314189.275  182969.786  210848.485 
    ##        3856        3857        3858        3859        3860        3861 
    ##  164388.543  208834.005  204081.525  120623.010  269130.475  173569.172 
    ##        3862        3863        3864        3865        3866        3867 
    ##  210697.006  209292.406  236254.015  214325.257  246058.748  239888.844 
    ##        3868        3869        3871        3872        3873        3874 
    ##  178454.075  200494.344  233477.947  227029.243  205644.577  190883.164 
    ##        3875        3876        3877        3878        3879        3880 
    ##  174418.229  273490.146  288939.096  305207.098  299193.488  184935.891 
    ##        3881        3882        3883        3884        3885        3886 
    ##  253062.940  186128.170  220798.421  191961.502  266495.525  200438.491 
    ##        3887        3888        3889        3890        3891        3892 
    ##  206113.213  236727.644  162765.009  246382.049  156249.674  155711.262 
    ##        3893        3894        3895        3896        3897        3898 
    ##  309242.663  252788.805  261457.756  268817.833  222196.610  195827.621 
    ##        3899        3900        3901        3902        3903        3904 
    ##  230733.892  237540.192  168206.453  184416.744  220126.770  253303.236 
    ##        3905        3906        3907        3908        3909        3910 
    ##  139707.174   76147.667  144499.443   84073.106   84036.811  274893.138 
    ##        3911        3912        3913        3914        3915        3916 
    ##  194813.595  283608.115  287314.230  331721.625  147799.528  373868.973 
    ##        3917        3918        3919        3920        3921        3922 
    ##  268847.724  233071.398  267459.721  261895.980  301909.076  317222.209 
    ##        3923        3924        3925        3926        3927        3928 
    ##  364456.146  530116.772  694509.181  503211.281  528619.348  664837.985 
    ##        3929        3930        3931        3932        3933        3934 
    ##  323720.818  400373.690  292434.730  301387.963  245105.886  257031.286 
    ##        3935        3936        3937        3938        3939        3940 
    ##  171590.588  149983.541  251464.998  240658.695  264565.376  272144.342 
    ##        3941        3942        3943        3944        3945        3946 
    ##  238421.036  263866.906  278453.647  230639.308  259605.756  257945.579 
    ##        3947        3948        3949        3950        3951        3952 
    ##  308978.914  175424.278  185064.481  189623.471  324558.058  261812.243 
    ##        3953        3954        3955        3956        3957        3958 
    ##  308752.239  279377.947  183558.850  208443.575  209773.689  237299.100 
    ##        3959        3960        3961        3962        3963        3964 
    ##  282843.353  286128.458  251650.979  242560.672  251530.105  316974.626 
    ##        3965        3966        3967        3968        3969        3970 
    ##  322253.139  310013.900  311255.916  286302.550  195184.037  182170.547 
    ##        3971        3972        3973        3974        3975        3976 
    ##  203834.766  231032.805  135597.154  181234.895  171163.347  185014.992 
    ##        3977        3978        3979        3980        3981        3982 
    ##  245747.891  223307.176  302586.394  264927.720  249273.180  259392.233 
    ##        3983        3984        3985        3986        3987        3988 
    ##  174222.143  238044.837  243035.790  237791.969  228992.720  254694.432 
    ##        3989        3990        3991        3992        3993        3994 
    ##  275432.673  278613.001  285901.997  320173.358  284710.236  472988.214 
    ##        3995        3996        3997        3998        3999        4000 
    ##  290326.713  332945.675  292065.030  176031.277  325583.742  535585.886 
    ##        4001        4002        4003        4004        4005        4006 
    ##  307289.544  414506.307  375778.133  377825.790  309274.281  273238.495 
    ##        4007        4008        4009        4010        4011        4012 
    ##  265335.918  206959.754  275053.960  247426.660  266848.145  334062.064 
    ##        4013        4014        4015        4016        4017        4018 
    ##  266425.177  262118.480  255098.909  356448.186  300962.318  321036.353 
    ##        4019        4020        4021        4022        4023        4024 
    ##  305503.739  267165.931  273946.995  258748.093  241883.725  255571.475 
    ##        4025        4026        4027        4028        4029        4030 
    ##  286303.175  271605.044  272453.746  224920.862  312085.823  269995.466 
    ##        4031        4032        4033        4034        4035        4036 
    ##  278493.231  266631.895  268754.166  283180.781  249904.452  249503.394 
    ##        4037        4038        4039        4040        4041        4042 
    ##  306239.399  262638.832  299692.116  192257.438  144827.587  164592.589 
    ##        4043        4044        4045        4046        4047        4048 
    ##  506843.220  315933.876   76603.015   46452.877  102782.513  113311.576 
    ##        4049        4050        4051        4052        4053        4054 
    ##  168915.661   88692.752   70419.747   56624.953   67682.996  116859.251 
    ##        4055        4056        4057        4058        4059        4060 
    ##   67722.000   90604.453  150099.204  150347.027  229071.325  205501.485 
    ##        4061        4062        4063        4064        4065        4066 
    ##  132819.430   93163.055  131076.612   75252.993   53125.141   68845.042 
    ##        4067        4068        4069        4070        4071        4072 
    ##   90070.743  105857.669   80951.091  136082.902  166429.298  248731.209 
    ##        4073        4074        4075        4076        4077        4078 
    ##  142213.522  208640.304  184774.350  181212.415  154476.510  118509.780 
    ##        4079        4080        4081        4082        4083        4084 
    ##  172152.512  181977.943   91359.475   98915.332  140811.266  121245.920 
    ##        4085        4086        4087        4088        4089        4090 
    ##   87272.504  120043.681   67488.017   44276.683  106993.795  132618.311 
    ##        4091        4092        4093        4094        4095        4096 
    ##  125285.240  119471.513   97215.350  109678.873   99162.043  232536.059 
    ##        4097        4098        4099        4100        4101        4102 
    ##  111454.362  117593.322  131773.244  177552.141  128863.704  249777.836 
    ##        4103        4104        4105        4106        4107        4108 
    ##  118624.454  184057.734  105735.261  113934.722   98491.650  139338.446 
    ##        4109        4110        4111        4112        4113        4114 
    ##  129428.686  140161.642  149439.349  139164.483   99754.012  127721.731 
    ##        4115        4116        4117        4118        4119        4120 
    ##  118915.457  140291.321  177916.626  168973.260  132779.211   93687.635 
    ##        4121        4122        4123        4124        4125        4126 
    ##  112392.682  151408.999   86124.067  147480.345  111882.964   51761.431 
    ##        4127        4128        4129        4130        4131        4132 
    ##  159375.483  189790.274  144947.030   82816.472  132990.610  153488.381 
    ##        4133        4134        4135        4136        4137        4138 
    ##  165404.688  184220.210  114794.976  219479.327  214901.907  162509.446 
    ##        4139        4140        4141        4142        4143        4144 
    ##  161969.603  224898.523  140358.826  149478.893  195880.667  149203.594 
    ##        4145        4146        4147        4148        4149        4150 
    ##  140875.709  169545.255  165515.357   63229.086  117040.741  135210.875 
    ##        4151        4152        4153        4154        4155        4156 
    ##  144284.494  226010.053  189238.926  246864.793  190113.677  221855.398 
    ##        4157        4158        4159        4160        4161        4162 
    ##  238284.405  259837.127  171427.179  176444.943  262799.349  282798.634 
    ##        4163        4164        4165        4166        4167        4168 
    ##  240111.611  244894.404  250670.191  240477.116  253755.463  227809.028 
    ##        4169        4170        4171        4172        4173        4174 
    ##  225560.584  235231.282  145861.411  355284.236  168089.195  274222.040 
    ##        4175        4176        4177        4178        4179        4180 
    ##  192999.399  254557.058  248204.405  228677.566  232612.353  221154.284 
    ##        4181        4182        4183        4184        4185        4186 
    ##  322932.575  313888.567  237670.066  239021.926  177267.363  208282.600 
    ##        4187        4188        4189        4190        4191        4192 
    ##  238666.718  210688.097  238958.853  247142.272  214628.008  211957.024 
    ##        4193        4194        4195        4196        4197        4198 
    ##  255055.227  224246.005  245030.701  131504.011  254515.184  334558.170 
    ##        4199        4200        4201        4202        4203        4204 
    ##  269238.672  267805.581  256307.488  269406.833  234372.753  274831.128 
    ##        4205        4206        4207        4208        4209        4210 
    ##  241766.226  283439.350  233702.369  284744.887  269559.364  275657.598 
    ##        4211        4212        4213        4214        4215        4216 
    ##  238786.585  269309.354  283995.419  268112.965  304162.761  294886.728 
    ##        4217        4218        4219        4220        4221        4222 
    ##  270604.305  246457.627  276915.801  255036.867  290590.888  278650.541 
    ##        4223        4224        4225        4226        4227        4228 
    ##  237342.792  270314.823  264502.991  269984.910  303777.179  341127.063 
    ##        4229        4230        4231        4232        4233        4234 
    ##  282302.072  276138.453  284726.314  249995.216  232761.894  287695.651 
    ##        4235        4236        4237        4238        4240        4241 
    ##  269639.034  226158.804  330004.770  360013.407  411647.425  331885.088 
    ##        4242        4243        4244        4245        4246        4247 
    ##  283302.490  445576.998  297020.471  271982.420  291317.137  676460.181 
    ##        4248        4249        4250        4251        4252        4253 
    ##  443790.786  294203.299  225848.161  260623.292  480269.015  379472.450 
    ##        4254        4255        4256        4257        4258        4259 
    ##  284154.939  357935.397  343916.343  341961.154  335021.999  280637.358 
    ##        4260        4261        4262        4263        4264        4265 
    ##  287442.725  300924.104  332802.940  242504.739  277759.312  315197.937 
    ##        4266        4267        4268        4269        4270        4271 
    ##  280811.116  299320.530  351317.475  414570.107  334934.210  288005.320 
    ##        4272        4273        4274        4275        4276        4277 
    ##  260705.911  380660.553  320699.337  250683.705  329901.711  319240.937 
    ##        4278        4279        4280        4281        4282        4283 
    ##  302260.747  364452.317  422893.618  374027.622  376296.560  346591.253 
    ##        4284        4285        4286        4287        4288        4289 
    ##  284300.240  361401.792  374284.173  181980.074  184106.469  280970.235 
    ##        4290        4291        4292        4293        4294        4295 
    ##  223050.612  270728.243  323465.149  278794.967  392293.971  689339.615 
    ##        4296        4297        4298        4299        4300        4301 
    ##  482355.242  316381.719  162145.482  182309.487  304699.668  282218.291 
    ##        4302        4303        4304        4305        4306        4307 
    ##  482344.026  682327.006  355907.854  309531.826  229118.488  336396.824 
    ##        4308        4309        4310        4311        4312        4313 
    ##  364320.764  304632.331  249266.441  221954.164  227500.219  231328.585 
    ##        4314        4315        4316        4317        4318        4319 
    ##  210876.768  277215.801  238735.831  378922.706  334096.046  224842.141 
    ##        4320        4321        4322        4323        4324        4325 
    ##  247422.186  209016.102  291427.439  198535.276  208348.531  265938.130 
    ##        4326        4327        4328        4329        4330        4331 
    ##  274462.908  244917.417  231877.704  303746.242  308303.141  328153.603 
    ##        4332        4333        4334        4335        4336        4337 
    ##  316228.390  368874.695  313540.244  202520.319  332540.433  263730.768 
    ##        4338        4339        4340        4341        4342        4343 
    ##  206945.568  343586.500  263804.127  307717.723  276107.910  222146.033 
    ##        4344        4345        4346        4347        4348        4349 
    ##  281170.667  244300.421  299991.784  276694.287  271175.680  303633.820 
    ##        4350        4351        4352        4353        4354        4355 
    ##  269512.923  178165.812  249168.141  251742.793  272401.002  260667.836 
    ##        4356        4357        4358        4359        4360        4361 
    ##  273486.640  222778.837  168482.440  168060.262  191389.472  168172.853 
    ##        4362        4363        4364        4365        4366        4367 
    ##  198328.003  165852.353  168100.930  201342.012  217208.086  134809.635 
    ##        4368        4369        4370        4371        4372        4373 
    ##  204147.482  198513.375  229221.614  186714.965  257576.691  239282.215 
    ##        4374        4375        4376        4377        4378        4379 
    ##  273929.508  283163.621  304811.842  249512.772  334778.652  181354.716 
    ##        4380        4381        4382        4383        4384        4385 
    ##  246831.513  335697.774  342308.485  388806.155  343580.389  316834.763 
    ##        4386        4387        4388        4389        4390        4391 
    ##  305446.069  302203.131  205834.623  279116.816  195891.582  326042.500 
    ##        4392        4393        4394        4395        4396        4397 
    ##  306828.657  255714.026  301965.406  123685.644  135596.510  238713.353 
    ##        4398        4399        4400        4401        4402        4403 
    ##  215876.560  193079.912  171680.260  177458.541  219835.292  186102.798 
    ##        4404        4405        4406        4407        4408        4409 
    ##  188706.609  288289.596  328390.979  264659.216  285106.549  266042.793 
    ##        4410        4411        4412        4413        4414        4415 
    ##  274286.292  268376.056  386539.671  307472.436  284304.859  293493.968 
    ##        4416        4417        4418        4419        4420        4421 
    ##  309310.790  267803.883  325636.593  296706.848  331185.827  273981.111 
    ##        4422        4423        4424        4425        4426        4427 
    ##  250796.433  317820.873  294059.404  245639.183  270867.762  257565.046 
    ##        4428        4429        4430        4431        4432        4433 
    ##  305364.867  176533.500  227220.641  178303.219  195619.971  201199.438 
    ##        4434        4435        4436        4437        4438        4439 
    ##  227744.062  221861.239  206072.594  242408.749  226601.244  265636.840 
    ##        4440        4441        4442        4443        4444        4445 
    ##  249932.503  308055.971  309566.264  266175.415  301127.310  250707.940 
    ##        4446        4447        4448        4449        4450        4451 
    ##  275321.537  233491.781  245097.120  255359.100  279355.971  187172.224 
    ##        4452        4453        4454        4455        4456        4457 
    ##  170018.066  186137.668  208382.652  190240.102  192610.305  177071.232 
    ##        4458        4459        4460        4461        4462        4463 
    ##  260556.788  224375.201  215200.073  268364.293  296624.175  337660.551 
    ##        4464        4465        4466        4467        4468        4469 
    ##  289199.963  279118.743  346355.241  236952.309  264727.175  280868.572 
    ##        4470        4471        4472        4473        4474        4475 
    ##  220185.066  238724.667  260283.769  261361.878  198958.383  185130.191 
    ##        4476        4477        4478        4479        4480        4481 
    ##  247907.158  283097.618  272821.833  289074.210  244615.185  298250.676 
    ##        4482        4483        4484        4485        4486        4487 
    ##  252531.760  254562.652  211559.095  212123.192  196714.300  266837.198 
    ##        4488        4489        4490        4491        4492        4493 
    ##  335357.946  269616.740  393601.236  233762.347  300846.167  260574.426 
    ##        4494        4495        4496        4497        4498        4499 
    ##  246037.717  237406.750  217843.044  253980.272  280813.003  303215.358 
    ##        4500        4501        4502        4503        4504        4505 
    ##  281785.177  225794.679  328783.216  290652.129  322480.459  232280.408 
    ##        4506        4507        4508        4509        4510        4511 
    ##  272474.674  360362.812  239482.272  279942.953  239445.049  282919.914 
    ##        4512        4513        4514        4515        4516        4517 
    ##  386513.417  301808.743  294158.980  342088.786  304768.551  256175.415 
    ##        4518        4519        4520        4521        4522        4523 
    ##  270587.193  325674.967  274908.968  271072.601  318189.256  398639.162 
    ##        4524        4525        4526        4527        4528        4529 
    ##  337120.793  486390.639  365542.050  519312.376  415642.056  546992.049 
    ##        4530        4531        4532        4533        4534        4535 
    ##  404201.909  437875.317  386203.743  307648.624  318263.747  280121.106 
    ##        4536        4537        4538        4539        4540        4541 
    ##  290267.108  395985.302  313262.124  397089.764  343568.242  399337.396 
    ##        4542        4543        4544        4545        4546        4547 
    ##  305062.240  345743.308  352777.629  315334.794  292310.169  256767.340 
    ##        4548        4549        4550        4551        4552        4553 
    ##  335513.044  292147.167  305374.411  219238.872  244330.966  293346.175 
    ##        4554        4555        4556        4557        4558        4559 
    ##  264370.314  265571.869  361073.441  253554.178  250125.377  264678.229 
    ##        4560        4561        4562        4563        4564        4565 
    ##  255154.321  221499.988  271051.156  311576.555  303894.247  309379.767 
    ##        4566        4567        4568        4569        4570        4571 
    ##  270325.853  303783.458  268132.799  188738.698  242064.328  257589.302 
    ##        4572        4573        4574        4575        4576        4577 
    ##  221090.382  250158.517  290260.366  270167.577  299534.239  309091.054 
    ##        4578        4579        4581        4582        4583        4584 
    ##  339183.511  356000.594  219713.035  284603.557  367199.130  357001.993 
    ##        4585        4586        4587        4588        4589        4590 
    ##  448429.626  378623.484  489683.405  568455.612  419469.669  413850.659 
    ##        4591        4592        4593        4594        4595        4596 
    ##  389743.298  366587.404  437529.942  422278.726  481142.557  270932.897 
    ##        4597        4598        4599        4600        4601        4603 
    ##  312061.719  314093.912  351976.457  400381.555  346011.337  210281.461 
    ##        4604        4605        4606        4607        4608        4609 
    ##  478868.511  543334.841  606002.020  308888.184  523976.573  334997.316 
    ##        4610        4611        4612        4613        4614        4615 
    ##  253654.900  360441.328  366601.911  315737.879  369397.001  284286.691 
    ##        4616        4617        4618        4619        4620        4621 
    ##  305402.243  300651.621  200370.106  348523.081  247193.050  309465.305 
    ##        4622        4623        4624        4625        4626        4627 
    ##  309077.333  343798.931  278864.425  294135.143  256894.169  319822.198 
    ##        4628        4629        4630        4632        4633        4634 
    ##  321009.775  246314.028  246755.924  284105.282  227728.499  284923.479 
    ##        4635        4636        4637        4638        4639        4640 
    ##  299819.329  277343.135  251091.244  116461.833  144037.674  184400.723 
    ##        4641        4642        4643        4644        4645        4646 
    ##  189839.245  690757.570  177675.068  304266.862  471601.616  322118.721 
    ##        4647        4648        4649        4650        4651        4652 
    ##  277160.774  262453.786  270506.044  246192.295  224825.303  231440.167 
    ##        4653        4654        4655        4656        4657        4658 
    ##  170383.332  197455.613  242064.433  220700.084  214636.793  229290.627 
    ##        4659        4660        4661        4662        4663        4664 
    ##  286538.520  225395.065  163163.779  198747.305  259124.090  204376.326 
    ##        4665        4666        4667        4668        4669        4670 
    ##  197278.817  159305.982  184437.238  156266.800  230519.164  198719.535 
    ##        4671        4672        4673        4674        4675        4676 
    ##  290248.646  291059.658  286669.132  278091.362  345531.121  240830.137 
    ##        4677        4678        4679        4680        4681        4682 
    ##  306316.986  367774.335  328967.169  354332.379  313866.687  483670.416 
    ##        4683        4684        4685        4686        4687        4688 
    ##  295057.390  329077.473  375113.790  322248.417  295072.881  224045.397 
    ##        4689        4690        4691        4692        4693        4694 
    ##  246978.682  271212.663  248600.112  266366.814  197570.732  262909.367 
    ##        4695        4696        4697        4698        4699        4700 
    ##  274616.865  202483.001  262094.146  199543.433   22507.291   57183.397 
    ##        4701        4702        4703        4704        4705        4706 
    ##   51254.925   62665.378   34090.403   99368.837   77621.646   72289.330 
    ##        4707        4708        4709        4710        4711        4712 
    ##   63240.341   55987.654   52246.933   56311.489   99140.057  105590.318 
    ##        4713        4714        4715        4716        4717        4718 
    ##   70633.029   54922.105   38042.006  102438.187   43268.679   80381.209 
    ##        4719        4720        4721        4722        4723        4724 
    ##   35201.621  142522.576   41720.879   71208.842   15818.900   45801.302 
    ##        4725        4726        4727        4728        4729        4730 
    ##   15062.969   13869.332   11560.428   14958.853   32430.624   49084.380 
    ##        4731        4732        4733        4734        4735        4736 
    ##   89931.223   64258.416   69106.279   51848.163   28403.411  -20644.158 
    ##        4737        4738        4739        4740        4741        4743 
    ##  192720.429  192349.960  213855.814  226651.852  256248.568  196114.873 
    ##        4744        4745        4746        4747        4748        4749 
    ##  206974.385  179649.000  191046.371  239811.748  189636.057  201126.861 
    ##        4750        4751        4752        4753        4754        4755 
    ##  170739.612  221133.162  208303.802  217175.280  194055.292  179684.096 
    ##        4756        4757        4758        4759        4760        4761 
    ##  231885.668  213020.797  252358.664  140034.346  301437.871  186943.559 
    ##        4762        4763        4764        4765        4766        4767 
    ##  161255.455  179029.897  131579.475  157427.458  276248.554  134679.548 
    ##        4768        4769        4770        4771        4772        4773 
    ##  150964.886  151434.051  198460.401   72094.374  127077.873  177785.976 
    ##        4774        4775        4776        4777        4778        4779 
    ##  185794.984  161173.116  280470.951  162903.780  179659.914  130904.635 
    ##        4780        4781        4782        4783        4784        4785 
    ##  164970.631  238781.992  222528.353  243137.570  136759.780  158391.538 
    ##        4786        4787        4788        4789        4790        4792 
    ##  144103.537  174109.090  109493.232  243080.666  227389.374  201174.332 
    ##        4793        4794        4795        4796        4797        4798 
    ##  176383.703  207130.251  240398.191  212242.482  246362.068  244811.767 
    ##        4799        4800        4801        4802        4803        4804 
    ##  262092.319  269965.008  244491.841  262484.284  243874.926  262229.686 
    ##        4805        4806        4807        4808        4809        4810 
    ##  239675.722  193212.183  204374.429  213967.095  189714.631  261500.663 
    ##        4811        4812        4813        4814        4815        4816 
    ##  194783.118  241979.893  309567.704  198713.583  234559.711  296389.208 
    ##        4817        4818        4819        4820        4821        4822 
    ##  186274.442  202864.646  166544.991  147954.216  209726.956  199378.948 
    ##        4823        4824        4825        4826        4827        4828 
    ##  178757.439  213165.673  263800.295  171060.015  220836.898  218277.492 
    ##        4829        4830        4831        4832        4833        4834 
    ##  210611.076  256157.229  238666.166  178430.572  139466.824  241875.101 
    ##        4835        4836        4837        4838        4839        4840 
    ##  220177.944  219006.642  238890.422  272234.724  217549.202  160362.439 
    ##        4841        4842        4843        4844        4845        4846 
    ##  203602.744  248527.434  230424.180  246460.079  219855.376  204063.709 
    ##        4847        4848        4849        4850        4851        4852 
    ##  194416.422  253759.852  241862.635  202105.367  225834.403  233503.971 
    ##        4853        4854        4855        4856        4857        4859 
    ##  120800.970  135542.578  165834.011   97491.714  117287.248  104028.166 
    ##        4860        4861        4862        4863        4864        4865 
    ##   33870.450  162595.600   94807.543  182600.216  123508.214   99597.552 
    ##        4866        4867        4868        4869        4870        4871 
    ##  127119.701  174470.373  133945.366  118994.884  167098.046  144686.565 
    ##        4872        4873        4874        4875        4876        4877 
    ##  173049.298   81255.097  159628.669  110997.779  196819.887  125945.260 
    ##        4878        4879        4880        4881        4883        4884 
    ##   79167.565  114604.104  142606.854  113965.169   87265.616  121150.898 
    ##        4885        4886        4887        4888        4889        4890 
    ##  181864.232  114906.935   70742.025   86702.083  139852.214   82146.950 
    ##        4891        4892        4893        4894        4895        4896 
    ##   76308.976   51182.575  164884.976  309621.420  116850.544  116817.928 
    ##        4897        4898        4899        4901        4902        4903 
    ##  150732.501   75379.692  154983.052  139762.642  174387.997   74944.237 
    ##        4904        4905        4906        4907        4908        4909 
    ##   30590.050  147551.932  118240.536   75464.963   40056.678  152103.492 
    ##        4910        4911        4912        4913        4914        4916 
    ##  140663.375  176534.490  111441.659   70632.341  105502.686  154048.045 
    ##        4917        4918        4919        4920        4921        4922 
    ##  176046.383   71226.599   84541.633  204836.299   99796.778  129415.253 
    ##        4923        4924        4925        4926        4927        4928 
    ##  122793.750  153630.878   93793.857  104858.478   84468.306  165597.812 
    ##        4929        4930        4931        4932        4933        4934 
    ##  194843.488   76130.980  142473.903  136284.309  142799.048   51472.528 
    ##        4935        4936        4937        4938        4939        4940 
    ##   78967.449  107253.697   71054.899  121073.063   97226.853  110102.838 
    ##        4941        4942        4943        4944        4945        4946 
    ##   60402.944   67823.328   84778.435  107662.732   62128.308  133468.062 
    ##        4947        4948        4949        4950        4952        4953 
    ##   87147.051   49072.226   74004.127   46063.629   86403.395  118481.798 
    ##        4954        4955        4956        4957        4958        4959 
    ##  112342.321   83033.847   58901.801   59821.076   36290.642  137614.115 
    ##        4960        4961        4962        4963        4964        4965 
    ##  140203.231   47599.843  130901.548   88887.896   23743.652  109558.195 
    ##        4966        4967        4968        4969        4970        4971 
    ##  130737.297   69564.840   56272.908   83460.517   39103.117   58998.802 
    ##        4972        4973        4974        4975        4976        4977 
    ##   47496.687   69767.506  111918.606   96567.888   17436.872  113667.306 
    ##        4978        4979        4981        4982        4983        4984 
    ##   95710.468   82188.334   57359.854   41748.484   54046.662   52850.273 
    ##        4985        4986        4987        4988        4989        4990 
    ##  101135.660  173741.444  146469.878  103284.714  198534.156  186001.769 
    ##        4991        4992        4993        4994        4995        4996 
    ##  173691.686  124218.317   87526.505  105432.196   59452.556  140469.163 
    ##        4997        4998        4999        5000        5001        5002 
    ##  132571.389   91612.521  134938.147   82698.909  119534.427   58530.042 
    ##        5003        5004        5005        5006        5007        5008 
    ##   84004.943   26400.674   96832.511  107460.815   57544.634   74393.017 
    ##        5009        5010        5011        5012        5013        5014 
    ##  112016.318   61220.108   70685.548   98114.103   87066.748   56438.474 
    ##        5015        5016        5017        5018        5019        5020 
    ##   55433.069   53183.716   86889.717   54651.643   63888.510  102751.190 
    ##        5021        5022        5023        5024        5025        5026 
    ##   43916.592   44139.315  133592.858  123088.237   89036.687  113723.396 
    ##        5027        5028        5029        5030        5031        5032 
    ##  103028.793   87984.724   78671.639  105907.033   99477.488  104363.539 
    ##        5033        5034        5035        5036        5037        5038 
    ##   57712.911   79956.520   93897.052   91383.305  121357.792  148334.509 
    ##        5039        5040        5042        5043        5044        5045 
    ##  132626.592  161919.222  301889.052  185987.917  190535.557  240383.308 
    ##        5046        5047        5048        5049        5050        5051 
    ##  143027.181  238514.468  222482.526  205842.876  292774.084  369649.556 
    ##        5052        5053        5054        5055        5056        5057 
    ##  246216.376  194834.936  193349.403  204501.398  252425.448  330494.611 
    ##        5058        5059        5060        5061        5062        5063 
    ##  273799.370  183100.435  252095.339  234904.502  227923.728  238590.494 
    ##        5064        5065        5066        5067        5068        5069 
    ##  295404.324  255665.978  311089.246  283633.977  230679.536  177085.399 
    ##        5070        5071        5072        5073        5074        5075 
    ##  279423.151  291906.096  403287.130  271653.064  253011.050  256124.859 
    ##        5076        5077        5078        5079        5080        5081 
    ##  210201.142  230268.890  183017.812  127762.091  355428.356  283458.376 
    ##        5082        5083        5084        5085        5086        5087 
    ##  241369.306  187071.406  248430.880  196206.707  238307.986  214896.449 
    ##        5088        5089        5090        5091        5092        5093 
    ##  272764.275  217643.079  317852.678  152085.870  193841.176  252068.946 
    ##        5094        5095        5096        5097        5098        5099 
    ##  180460.244  208579.514  287674.748  319849.095  296769.405  239548.430 
    ##        5100        5101        5102        5103        5104        5105 
    ##  226971.270  266571.539  323565.782  158077.860  305016.748  319456.158 
    ##        5106        5107        5108        5109        5110        5111 
    ##  214968.537  281581.803  412736.791  373180.040  228250.385  306426.616 
    ##        5112        5113        5114        5115        5116        5117 
    ##  208375.444  237454.184  312259.402  326893.176  219987.833  339545.283 
    ##        5118        5119        5120        5121        5122        5123 
    ##  282143.539  296188.842  262819.658  235670.273  256810.648  298557.264 
    ##        5124        5125        5126        5127        5128        5129 
    ##  297348.163  289728.289  341991.463  216516.651  304470.856  309978.680 
    ##        5130        5131        5132        5133        5134        5135 
    ##  393620.431  296865.601   88570.148  112844.225   81875.412   52438.609 
    ##        5136        5137        5138        5139        5140        5141 
    ##   70196.578   99337.391  174782.321  161520.894  139210.335  198238.043 
    ##        5142        5143        5144        5145        5146        5147 
    ##   64690.029   96425.684  195093.765  116367.806  226917.357   57132.356 
    ##        5148        5149        5150        5151        5152        5153 
    ##  162814.470   84237.376  125669.214   75225.355   41746.985   78904.540 
    ##        5154        5155        5156        5157        5158        5159 
    ##   63393.790   54289.635  100438.161   83493.460  106017.589  127019.434

``` r
# 5. Use the model to make a prediction on unseen new data
new_data_boot <- data.frame(longitude = -122.3,
                            latitude = 37.5,
                            housing_median_age = 30,
                            total_rooms = 2000,
                            total_bedrooms = 400,
                            population = 1000,
                            households = 350,
                            median_income = 5.0,
                            ocean_proximity = "NEAR BAY",
                            check.names = FALSE)

new_data_boot$ocean_proximity <- as.factor(new_data_boot$ocean_proximity)

# Predictions for the unseen new data
predictions_lm_new_data_boot <- predict(housing_model_lm_boot, new_data_boot)

# Print the predictions for the dependent variable
print(predictions_lm_new_data_boot)
```

    ##        1 
    ## 286409.8

``` r
# 2. Cross-validation
# Split the dataset
train_index_cv <- createDataPartition(housing$median_house_value, p = 0.75, list = FALSE)
housing_train_cv <- housing[train_index_cv, ]
housing_test_cv <- housing[-train_index_cv, ]

# Linear Regression Model with 10-fold cross-validation
train_control_cv <- trainControl(method = "cv", number = 10)

housing_model_lm_cv <- caret::train(median_house_value ~ .,
                                    data = housing_train_cv,
                                    trControl = train_control_cv,
                                    na.action = na.omit,
                                    method = "lm",
                                    metric = "RMSE")

# Test the trained model using the testing dataset
predictions_lm_cv <- predict(housing_model_lm_cv, newdata = housing_test_cv)

# View the RMSE and the predicted values
print(housing_model_lm_cv)
```

    ## Linear Regression 
    ## 
    ## 15481 samples
    ##     9 predictor
    ## 
    ## No pre-processing
    ## Resampling: Cross-Validated (10 fold) 
    ## Summary of sample sizes: 13790, 13791, 13791, 13790, 13791, 13791, ... 
    ## Resampling results:
    ## 
    ##   RMSE      Rsquared   MAE     
    ##   68923.38  0.6429218  49953.27
    ## 
    ## Tuning parameter 'intercept' was held constant at a value of TRUE

``` r
print(predictions_lm_cv)
```

    ##           1           2           3           4           5           6 
    ##  257857.032  212024.284  202632.129  207275.915  211908.984  176509.497 
    ##           7           8           9          10          11          12 
    ##  161903.596  164303.783  149161.070  194786.052  225514.139  171979.465 
    ##          13          14          15          16          17          18 
    ##  160710.243  233698.068  335388.926  135679.313  166806.542  104933.325 
    ##          19          20          21          22          23          24 
    ##  100616.369  193610.948  159006.382  110423.564  181227.959  357001.223 
    ##          25          26          27          28          29          30 
    ##  156166.563  330427.808  308989.968  251604.152  242279.442  286160.734 
    ##          31          32          33          34          35          36 
    ##  331610.257  348822.344  402249.203  315288.843  399505.901  343521.040 
    ##          37          38          39          40          41          42 
    ##  229277.315  328746.084  236029.068  233094.836  166828.105  185346.483 
    ##          43          44          45          46          47          48 
    ##  168823.816  222736.277  227732.649  199472.526  166618.604  176422.490 
    ##          49          50          51          52          53          54 
    ##  200616.214  150303.766  163569.194  177003.620  199783.811  210624.873 
    ##          55          56          57          58          59          60 
    ##  292437.984  194607.901  180261.027  163099.083  265112.873  155248.154 
    ##          61          62          63          64          65          66 
    ##  242278.711  275042.789  290145.079  203785.524  326780.012  328584.473 
    ##          67          68          70          71          72          73 
    ##  331906.973  234810.395  187189.043  167795.605  169869.238  181796.009 
    ##          74          75          76          77          78          79 
    ##  135222.333  153613.199  125210.457  128271.722  173198.761  188394.212 
    ##          80          81          82          83          84          85 
    ##  142988.613  178685.583  180640.480  208544.461  247133.011  163226.224 
    ##          86          87          88          89          90          91 
    ##  158702.367  298198.912  266837.894  288998.195  295665.078  208193.384 
    ##          92          93          94          95          96          97 
    ##  171893.841  229388.592  246752.576  243256.172  267958.480  272977.888 
    ##          98          99         100         101         102         103 
    ##  309036.199  442976.298  293089.425  316906.073  359597.645  292242.619 
    ##         104         105         106         107         108         109 
    ##  275719.264  232855.286  208155.265  229431.015  224582.504  258752.815 
    ##         110         111         112         113         114         115 
    ##  226855.067  248776.389   75206.751  222711.064  225204.005  256579.965 
    ##         116         117         118         119         120         121 
    ##  199861.294  192970.568  221341.964  209909.504  193402.572  223737.797 
    ##         122         123         124         125         126         127 
    ##  214406.157  246177.413  254514.828  251220.495  242102.838  151400.501 
    ##         128         129         130         131         132         133 
    ##  160377.673  391932.562  609661.388  413067.138  287209.082  222409.596 
    ##         135         136         137         138         139         140 
    ##  309534.048  282913.368  267472.323  325857.566  285579.418  259968.876 
    ##         141         142         143         144         145         146 
    ##  331913.168  294334.642  280154.075  318245.115  258263.904  247398.499 
    ##         147         148         149         150         151         152 
    ##  277136.373  220445.348  284830.271  192758.297  255981.785  235749.107 
    ##         153         154         155         156         157         158 
    ##  224913.403  253376.630  263345.552  217664.939  205757.368  231853.551 
    ##         159         160         161         162         163         164 
    ##  220521.815  348640.886  381187.359  235671.600  226312.768  239183.681 
    ##         165         166         167         168         169         170 
    ##  227283.806  201421.823  211556.635  229782.737  315114.410  224997.545 
    ##         171         172         173         174         175         176 
    ##  255465.156  198652.633  267902.899  210320.029  189062.730  229344.398 
    ##         177         178         179         180         181         182 
    ##  211639.363  257548.446  236900.039  252344.412  212218.636  274919.153 
    ##         183         184         185         186         187         188 
    ##  209810.338  311151.284  237942.583  240965.764  181389.791  205088.598 
    ##         189         190         191         192         193         194 
    ##  228140.638  214061.983  259670.415  161880.668  247260.890  281856.066 
    ##         195         196         197         198         199         200 
    ##  303967.196  200172.934  199521.891  232797.303  247983.515  211286.373 
    ##         201         202         203         204         205         206 
    ##  250365.974  209148.829  184743.056  248418.086  236373.199  288601.543 
    ##         207         208         209         210         211         212 
    ##  233453.351  216635.718  246857.794  304031.080  213843.617  255049.574 
    ##         213         214         215         216         217         218 
    ##  278152.018  275467.581  265758.848  222447.386  229353.842  262902.562 
    ##         219         220         221         222         223         224 
    ##  310918.566  344367.316  197419.110  260195.186  269018.105  252430.230 
    ##         225         226         227         228         229         230 
    ##  273643.273  302465.253  185858.994  245263.880  194131.440  285367.251 
    ##         231         232         233         234         235         236 
    ##  267748.571  309732.280  298046.838  277743.504  247904.686  198481.705 
    ##         237         238         239         240         241         242 
    ##  258498.693  273924.949  253959.952  257200.681  288064.457  189186.643 
    ##         243         244         245         246         247         248 
    ##  218811.646  217904.801  213373.686  173350.360  203193.801  247888.944 
    ##         249         250         251         252         253         254 
    ##  197935.608  284064.945  236527.148  248794.595  266706.586   99272.473 
    ##         255         256         257         258         259         260 
    ##   94895.853   93895.747   81828.187  105522.166   -4782.624  111519.844 
    ##         261         262         263         264         265         266 
    ##  101644.601   91048.803  123055.979  115395.581   90036.375   86043.555 
    ##         267         268         269         270         271         272 
    ##   79311.686    6597.482  103179.838  146217.724  115256.442   48501.873 
    ##         273         274         275         276         277         278 
    ##   63479.858  124260.734   69726.051   95068.114   77148.587   60832.246 
    ##         279         280         281         282         283         284 
    ##   70370.652   49751.326   27436.823   51849.461   52119.774   48877.720 
    ##         285         286         287         288         289         290 
    ##   80287.525   47578.617   37092.518   52492.973   56890.887   85545.231 
    ##         291         292         293         294         295         296 
    ##   27207.356   56098.115   69035.074   43565.904  112226.928   87668.922 
    ##         297         298         299         300         301         302 
    ##  164072.207   72507.147   96763.863   52472.665   39033.452   -7267.743 
    ##         303         304         305         306         307         308 
    ##   42489.968   50448.568   33828.851   78515.967   69222.946   33567.019 
    ##         309         310         311         312         313         314 
    ##  106841.103   84881.237   73294.679   57206.206   87789.547  135234.917 
    ##         315         316         317         318         319         320 
    ##   77488.806  121669.576  135699.515  109693.718   60791.953   97628.559 
    ##         321         322         323         324         325         326 
    ##   95013.209  102747.273  127227.901  144234.223  155330.536  153359.869 
    ##         327         328         329         330         331         332 
    ##  138337.149  162243.527  176251.048  207335.313  158878.130  120939.655 
    ##         333         334         335         336         337         338 
    ##  205736.403  190650.071  104822.774  215334.176  101313.069  158219.181 
    ##         339         340         341         342         343         344 
    ##  149618.285  170598.196  206695.758  190826.755  135695.328  198268.403 
    ##         345         346         348         349         350         351 
    ##  234781.095  211452.793  110278.884  167002.028  144619.666  181367.843 
    ##         352         353         354         355         356         357 
    ##  274512.016  221195.894  218929.192  276234.822  290805.731  237890.548 
    ##         358         359         360         361         362         363 
    ##  323384.813  270754.243  208777.670  185056.344  141267.443  147474.161 
    ##         364         365         366         367         368         369 
    ##  240314.261  262177.056  245411.467  170475.408  160389.415  307024.008 
    ##         370         371         372         373         374         375 
    ##  259949.901  183648.893  186287.197  163116.820  206649.619  242506.525 
    ##         376         377         378         379         380         381 
    ##  198777.702  269163.835  348586.919  273568.064  280143.977  282412.917 
    ##         382         383         384         385         386         387 
    ##  261567.126  264067.107  268668.012  287931.523  179530.440  317755.572 
    ##         388         389         390         391         392         393 
    ##  343299.249  370293.879  314984.377  440561.306  539449.376  310673.154 
    ##         394         395         396         397         398         399 
    ##  373963.614  415347.027  372547.569  283379.975  355503.778  374470.267 
    ##         400         401         402         403         404         405 
    ##  372956.809  493126.484  432335.863  190266.557  124448.302  515662.076 
    ##         406         407         408         409         410         411 
    ##  280746.585  362186.695  360274.048  301891.958  241342.500  202729.220 
    ##         412         413         414         415         416         417 
    ##  285124.950  233821.877  213323.800  296468.878  261518.516  278785.558 
    ##         418         419         420         421         422         423 
    ##  233815.635  217205.713  262967.131  180664.767  255589.751  300498.491 
    ##         424         425         426         427         428         429 
    ##  229443.105  222679.791  187541.955  180491.548  169038.881  212645.216 
    ##         430         431         432         433         434         435 
    ##  309840.267  260984.478  218964.277  211020.875  149399.746  147510.357 
    ##         436         437         438         439         440         441 
    ##  272659.414  218790.595  232637.691  261017.286  294296.757  383689.663 
    ##         442         443         444         445         446         447 
    ##  111419.390  127404.461  117468.088  112484.057   91563.267   47477.708 
    ##         448         449         450         451         452         453 
    ##   58557.929  158945.774   17956.982   78174.844  105482.480   83334.765 
    ##         454         455         456         457         458         459 
    ##  127449.803   45608.822  125445.656  146074.020  187378.962  121539.216 
    ##         460         461         462         463         464         465 
    ##  141290.900  118018.209   69303.833   92944.043   84125.645   83958.743 
    ##         466         467         468         469         470         471 
    ##  120929.967   78493.240  126352.798  125851.603   79324.345  114992.041 
    ##         472         473         474         475         476         477 
    ##  101536.439   81487.502   68550.285   81960.397   76427.353   96789.661 
    ##         478         479         480         481         482         483 
    ##   56856.568   69846.606   30545.675   82400.104   32018.079   48884.173 
    ##         484         485         486         487         488         489 
    ##   70697.819   64542.144   54849.302   90911.528   89105.487  130672.002 
    ##         490         491         492         493         494         495 
    ##  165634.164   72495.302   70617.023  148472.554   35497.281   58404.801 
    ##         496         497         498         499         500         501 
    ##  148828.689  115528.248  102567.469  133983.790   54847.806  112547.781 
    ##         502         503         504         505         506         507 
    ##   84362.905   97322.145  151677.659  140868.380   21831.351   76380.319 
    ##         508         509         510         511         512         513 
    ##   45113.928  150702.716  104696.260   78254.224  104842.348  126185.156 
    ##         514         515         516         517         518         519 
    ##   95234.780  111581.291  187667.984  173891.667  159725.585  112149.298 
    ##         520         521         522         523         524         525 
    ##  132835.499  105138.660  121102.129  106403.529  103835.794  119796.059 
    ##         526         527         528         529         530         531 
    ##  129350.005   88042.464   61114.678  114030.978   62465.831  153176.813 
    ##         532         533         534         535         536         537 
    ##  148424.271   52188.638  268400.029  240818.857  202537.777  330965.312 
    ##         538         539         540         541         542         543 
    ##  256200.360  223060.614  201951.255  120939.219   48069.872  146784.782 
    ##         544         545         546         547         548         549 
    ##  195515.199  266153.085  125147.909  116564.876   39799.007  134104.550 
    ##         550         551         552         553         554         555 
    ##   98201.892   84795.281  132533.257  105549.500  117966.965  132060.687 
    ##         556         557         558         559         560         561 
    ##  143305.059  167386.036  168156.809  148203.328  204629.570  187079.678 
    ##         562         563         564         565         566         567 
    ##  165838.938  176935.332   74661.120  159366.728  127859.873  126471.286 
    ##         568         569         570         571         572         573 
    ##  220582.474  131270.735  134256.819  156788.903   84062.944  111354.075 
    ##         574         575         576         577         578         579 
    ##   80634.830  113862.554   47243.632   58246.033  143603.019  127259.166 
    ##         580         581         582         583         584         585 
    ##  121043.880   81711.618  106194.850   40901.096  134079.182   67271.586 
    ##         586         587         588         589         590         591 
    ##    6122.577  105040.112  106998.013   76144.063   84647.053   58480.856 
    ##         592         593         594         595         596         597 
    ##   72131.556  129543.161  123841.446  114404.550   86096.844   41973.774 
    ##         598         599         600         601         602         603 
    ##  212782.035   93281.549   72619.802   81062.347   72801.347   96156.161 
    ##         604         605         606         607         608         609 
    ##   18409.949   73671.327   93315.104  107368.480  160722.292  158177.899 
    ##         610         611         612         613         614         615 
    ##  189277.852  185517.185  151711.008  230411.836  145604.174  153909.756 
    ##         616         617         618         619         620         621 
    ##  149745.280  174936.113  116065.779  123513.213  164310.861  146434.278 
    ##         622         623         624         625         626         627 
    ##  132604.628   80225.965   76570.608  132532.622  173095.603  172804.832 
    ##         628         629         630         631         632         633 
    ##  148208.691  153503.261  161877.638  216709.215  186010.313  176584.671 
    ##         634         635         636         638         639         640 
    ##  144146.638  166179.570  150256.859   30519.647  108552.034  216397.954 
    ##         641         642         643         644         645         646 
    ##   92692.230   67295.293  116920.587   97102.281  110771.974   59770.213 
    ##         647         648         649         650         651         652 
    ##   88025.067  111243.526   34163.454   22473.732   24891.336  119523.059 
    ##         653         654         655         656         657         658 
    ##   74790.190  121757.988  108362.457  214711.707  144983.596   28289.067 
    ##         659         660         661         662         663         664 
    ##   32347.005   18103.802   35830.549   24432.383  160146.270   47014.037 
    ##         665         666         667         668         669         670 
    ##  -13717.649    7572.446   54635.615   60247.858   11841.176  143612.194 
    ##         671         672         673         674         675         676 
    ##  137745.859  165797.819  116852.654  117276.438  195426.691   96517.511 
    ##         677         678         679         680         681         682 
    ##   88226.793  180001.117  187099.619  174785.667  151231.036  145803.827 
    ##         683         684         685         686         687         688 
    ##  166748.842  156158.633  160341.789  133371.504  113757.735  138411.206 
    ##         689         690         691         692         693         694 
    ##   65630.399   68958.100  104181.347   69296.830   54681.145   94344.957 
    ##         695         696         697         698         699         700 
    ##   77068.495   81339.840   72498.679   85327.155   94255.928  153511.171 
    ##         701         702         703         704         705         706 
    ##  154382.456  190045.632  186983.369  153185.204  134315.113  139057.625 
    ##         707         708         709         710         711         712 
    ##   97230.194   84520.896   74064.061   73839.024   44689.430   83705.423 
    ##         713         714         715         716         717         718 
    ##   49480.953  109050.643  165034.379  289207.506  221085.166  139301.483 
    ##         719         720         721         722         723         724 
    ##  159497.539  134864.541   99056.811  114790.648  129470.411  141824.159 
    ##         725         726         727         728         729         730 
    ##  118764.407   65640.594  163485.939  144111.809  156110.041  161931.465 
    ##         731         732         733         734         735         736 
    ##  180671.703  143967.535  162603.638  137612.513  150388.966  182651.496 
    ##         737         738         739         740         741         742 
    ##  119968.072  141827.415  118572.742   56039.574   40238.088   79760.647 
    ##         743         744         745         746         747         748 
    ##   64829.624   81157.716   84876.308  121149.510   67434.709  116783.697 
    ##         749         750         751         752         753         754 
    ##  117910.396   85422.739  112542.410  189528.805  187888.677  139550.977 
    ##         755         756         757         758         759         760 
    ##   66054.611  175250.844  129843.366   18090.438  114499.626  147556.339 
    ##         761         762         763         764         765         766 
    ##  158854.766  113188.228  103962.080  179767.533  112166.146  167078.895 
    ##         767         768         769         770         771         772 
    ##  183315.683   89926.663  129527.671   88469.280   76485.150   61392.912 
    ##         773         774         775         776         777         778 
    ##  131354.179  144577.975  149879.525   93739.728  126906.386  185196.505 
    ##         779         780         781         782         783         784 
    ##  123835.590  178148.796  144940.320  103904.642  106830.437  154280.257 
    ##         785         786         787         788         789         790 
    ##  129292.392  155937.206   56673.771   62545.686   96007.605   84767.905 
    ##         791         792         793         794         795         796 
    ##   59497.089  106632.576   94128.311  101613.832   79104.709  125491.772 
    ##         797         798         799         800         801         802 
    ##  148093.984  100833.274   95298.460  114345.575  136664.133  102860.868 
    ##         803         804         805         806         807         808 
    ##  145167.617  103022.577  115447.947  111999.315  111447.122  145415.213 
    ##         809         810         811         812         813         814 
    ##   92849.128   86999.163  182290.061  130869.370  186376.649  171383.516 
    ##         815         816         817         818         820         821 
    ##   39547.336   28504.527   53255.818   58192.337  208069.220  248505.595 
    ##         822         823         824         825         826         827 
    ##  250689.566  232644.208  237616.605  308583.340  337973.057  232720.825 
    ##         828         829         830         831         832         833 
    ##  190374.584  128593.844  142542.004  177071.150  175142.494  111017.951 
    ##         834         835         836         837         838         839 
    ##  158118.352  191784.472   86327.323  157481.143  245808.983  162019.766 
    ##         840         841         842         843         844         845 
    ##  225610.669  192686.299  261032.134  166133.669  320184.820  338442.222 
    ##         846         847         848         849         850         851 
    ##  344041.242  315166.162  168754.927  306556.139  264076.723  277400.392 
    ##         852         853         854         855         856         857 
    ##  208687.455  267036.945  235403.565  232999.834  282150.567  268620.252 
    ##         858         859         860         861         862         863 
    ##  265189.237  283663.885  290768.172  473412.160  267164.058  252727.234 
    ##         864         865         866         867         868         869 
    ##  320350.095  284101.520  285961.254  191041.623  293829.069  294919.392 
    ##         870         871         872         873         874         875 
    ##  390151.312  263036.600  264893.880  194089.644  397860.776  234868.462 
    ##         876         877         878         879         880         881 
    ##  267184.594  275443.155  225283.449  283653.616  310503.013  262132.868 
    ##         882         883         884         885         886         887 
    ##  247229.519  274550.361  156252.030  192549.034  218508.659  238528.811 
    ##         888         889         890         891         892         893 
    ##  251882.469  228294.710  167370.766  193832.876  234067.878  222820.313 
    ##         894         895         896         897         898         899 
    ##  271107.605  200979.403  157908.927  260947.710  149209.728  117834.866 
    ##         900         901         902         903         904         905 
    ##  147953.251  199692.036  187844.311  206150.475  201716.941  157518.950 
    ##         906         907         908         909         910         911 
    ##  223787.984  244199.761  187661.636  239560.413  230339.137  223213.846 
    ##         912         913         914         915         916         917 
    ##  203550.508  165656.265  185383.036  211416.410  222375.872  213707.154 
    ##         918         919         920         922         923         924 
    ##  314873.122  240231.332  215585.613  275047.843  293702.401  288171.168 
    ##         925         926         927         928         929         930 
    ##  245326.851  237161.113  183607.377  180678.858  269441.633  225210.623 
    ##         931         932         933         934         935         936 
    ##  211703.206  249021.152  216984.152  218979.604  162977.352  190135.638 
    ##         937         938         939         940         941         942 
    ##  188033.723  218315.376  175443.126  207656.438  197926.039  192703.407 
    ##         943         944         945         946         947         948 
    ##  262700.891  267348.395  249511.950  258921.293  244483.543  209137.019 
    ##         949         950         951         952         953         954 
    ##  267385.723  269478.550  235049.871  254825.603  252939.387  272622.847 
    ##         955         956         957         958         959         960 
    ##  241006.636  237403.607  278657.769  262235.457  218190.683  242746.261 
    ##         961         962         963         964         965         966 
    ##  248631.313  250448.692  248693.247  283569.120  223296.627  203263.736 
    ##         967         968         969         970         971         972 
    ##  266291.209  262088.414  268455.322  403170.987  336247.147  325176.442 
    ##         973         974         975         976         977         978 
    ##  239011.877  233692.575  278504.773  233876.674  221063.954  293551.238 
    ##         979         980         981         982         983         984 
    ##  309084.232  359747.642  293735.730  348352.643  369070.883  207577.625 
    ##         985         986         987         988         989         990 
    ##  324401.418  237163.925  293340.857  266841.517  304570.650  349038.301 
    ##         991         992         994         995         996         997 
    ##  415655.350  477882.682  461404.277  201593.981  288462.468  299840.359 
    ##         998         999        1000        1001        1002        1003 
    ##  307193.729  274459.198  476160.654  435076.787  391856.911  227013.579 
    ##        1004        1005        1006        1007        1008        1009 
    ##  104872.665  315836.721  501772.883  272697.491  583937.129  294840.860 
    ##        1010        1011        1012        1013        1014        1015 
    ##  244896.098  244999.931  219485.622  230619.702  221304.211  235555.467 
    ##        1016        1017        1018        1019        1020        1021 
    ##  211378.081  221923.491  188932.175  191520.081  174207.011  205165.338 
    ##        1022        1023        1024        1025        1026        1027 
    ##  155522.719  157168.762  288033.408  162941.471  223996.417  152731.594 
    ##        1028        1029        1030        1031        1032        1033 
    ##  163043.444  197666.028  170035.745  198902.192  195368.339  224053.012 
    ##        1034        1035        1036        1037        1038        1039 
    ##  299400.982  287688.753  202354.679  592422.275  220050.082  399771.846 
    ##        1040        1041        1042        1043        1044        1045 
    ##  269003.291  290882.885  222375.591  372143.097  246862.651  173573.742 
    ##        1046        1047        1048        1049        1050        1051 
    ##  167239.576  310865.906  167542.094  151850.245  158406.393  174848.484 
    ##        1052        1053        1054        1055        1056        1057 
    ##  189760.389  167353.019  171024.537  192117.405  150918.747  153697.955 
    ##        1058        1059        1060        1061        1062        1063 
    ##  146190.333  122682.211  246584.108  258698.522  157308.828  198079.043 
    ##        1064        1065        1066        1067        1068        1069 
    ##  183902.158  267291.162  165536.321  160033.422  537408.085  408888.165 
    ##        1070        1071        1072        1073        1074        1075 
    ##  457707.309  667578.942  451664.385  254882.743  224983.813  283580.035 
    ##        1076        1077        1078        1079        1080        1081 
    ##  253429.044  242787.801  310328.370  259626.566  222975.493  279105.595 
    ##        1082        1083        1084        1085        1086        1087 
    ##  217061.460  149910.307  170593.497  153766.786  199551.802  181685.843 
    ##        1088        1089        1090        1091        1092        1093 
    ##  190419.584  178583.851  242521.025  195152.471  157631.692  151069.323 
    ##        1094        1095        1096        1097        1098        1099 
    ##  242480.562  157003.686  130017.834  145517.705  128439.040  156215.479 
    ##        1100        1101        1102        1103        1104        1105 
    ##  141708.996  258643.911  259883.822  245365.424  172404.883  202686.739 
    ##        1106        1107        1108        1109        1110        1111 
    ##  133580.414  193113.619  218628.118  195405.562  160528.298  489598.065 
    ##        1112        1113        1114        1115        1116        1117 
    ##  138405.857  120042.277  134943.722  146305.725  139868.794  210671.341 
    ##        1118        1119        1120        1121        1122        1123 
    ##  161052.783  168607.278  143650.652   98411.868  111792.667  166904.872 
    ##        1124        1125        1126        1127        1128        1129 
    ##  177761.671  147582.476  170693.958  175997.669  178583.563  385521.253 
    ##        1130        1131        1132        1133        1134        1135 
    ##  211855.021  124809.953  254842.615  163409.625  160322.769  166180.953 
    ##        1136        1137        1138        1139        1140        1141 
    ##  149649.790  108886.039  143921.201  140205.747  163402.577  128112.888 
    ##        1143        1144        1145        1146        1147        1148 
    ##  238515.205  133485.181  201524.804  188503.817  179880.630  172694.201 
    ##        1149        1150        1151        1152        1153        1154 
    ##  208163.899  120401.465  246410.845  205031.018  201546.630  196426.900 
    ##        1155        1156        1157        1158        1159        1160 
    ##  200470.711  170269.229  149485.244  283612.396  181249.735  178946.726 
    ##        1161        1162        1163        1164        1165        1166 
    ##  202272.892  172661.147  157396.261  149776.867  335845.861  246910.178 
    ##        1167        1168        1170        1171        1172        1173 
    ##  355885.511  287059.527  249023.630  233847.029  280532.922  244593.844 
    ##        1174        1175        1176        1177        1178        1179 
    ##  240806.440  318446.462  258540.813  235027.055  221558.774  244205.054 
    ##        1180        1181        1182        1183        1184        1185 
    ##  239185.496  172615.470  141878.451  192833.303  187849.459  179247.516 
    ##        1186        1187        1188        1189        1190        1191 
    ##  184147.415  169086.839  161476.899  162275.369  163939.015  166696.876 
    ##        1192        1193        1194        1195        1196        1197 
    ##  219404.449  173574.482  133044.143  144507.712  150885.615  147782.284 
    ##        1198        1199        1200        1201        1202        1203 
    ##  152496.834  141110.688  149006.931  170552.260  178142.587  142647.895 
    ##        1204        1205        1206        1207        1208        1209 
    ##  134963.090  171343.250  137552.489  154529.699  116448.847  126598.412 
    ##        1210        1211        1212        1213        1214        1215 
    ##  110763.724  162220.385  111926.316  141164.609  140577.127  124771.378 
    ##        1216        1217        1218        1219        1220        1221 
    ##  115690.299  111998.382  127753.029  122407.516  137163.623  148003.753 
    ##        1222        1223        1224        1225        1226        1227 
    ##  164196.558  181174.590  197420.408   98906.468  132059.718  166157.283 
    ##        1228        1229        1230        1231        1232        1233 
    ##  124238.112  124832.594  181783.801  157895.867  171787.056  186787.994 
    ##        1234        1235        1236        1237        1238        1239 
    ##  157763.800  160066.338  242325.498  186979.261  184891.054  165481.580 
    ##        1240        1241        1242        1243        1244        1245 
    ##  278978.428  202046.837  209043.009  145896.401  177088.962  146463.023 
    ##        1246        1247        1249        1250        1251        1252 
    ##  332092.510  181120.090  160340.840  122837.520  180963.788  202051.099 
    ##        1253        1254        1255        1256        1257        1258 
    ##  237770.315  191306.729  159501.953  210731.948  169397.505  128409.347 
    ##        1259        1260        1261        1262        1263        1264 
    ##  186849.133  225715.252  193236.284  216980.951  207200.717  225326.216 
    ##        1265        1266        1267        1268        1269        1270 
    ##  240619.451  262545.947  238022.439  131562.060  152939.168  145910.329 
    ##        1271        1272        1273        1274        1275        1276 
    ##   93410.965  129800.093  125731.722  128688.926  150036.000  128176.163 
    ##        1277        1278        1279        1280        1281        1282 
    ##  151598.483  153253.077  150365.167  162439.619  110067.097  145181.769 
    ##        1283        1284        1285        1286        1287        1288 
    ##  144128.721  156359.719  123422.235  176602.818  146454.005  103151.771 
    ##        1289        1290        1291        1292        1293        1294 
    ##  179942.532  188437.240  171630.344  176795.501   78570.064  120430.773 
    ##        1295        1296        1298        1299        1300        1301 
    ##  111843.181  116145.545  101841.837  417406.492  557242.183  576951.923 
    ##        1302        1303        1304        1305        1306        1307 
    ##  469700.482  669648.648  399639.751  415409.866  393112.012  448618.835 
    ##        1308        1309        1310        1311        1312        1313 
    ##  384145.436  490566.946  247654.437  287960.329  289547.511  364260.128 
    ##        1314        1315        1316        1317        1318        1319 
    ##  382579.029  167218.283  350632.984  301022.206  364059.402  337096.612 
    ##        1320        1321        1322        1323        1324        1325 
    ##  266263.225  312337.617  223814.246  304282.506  445559.621  262359.930 
    ##        1326        1327        1328        1329        1330        1331 
    ##  262627.659  374512.876  336852.074  174100.506  217832.065  327324.389 
    ##        1332        1333        1334        1335        1336        1337 
    ##  215391.093  248462.865  226179.336  314093.586  254707.776  296740.079 
    ##        1338        1339        1340        1341        1342        1343 
    ##  407798.391  249503.917  232370.384  275570.759  206592.802  272295.868 
    ##        1344        1345        1346        1347        1348        1349 
    ##  283275.722  268465.663  254478.932  203791.277  163575.691  228772.235 
    ##        1350        1351        1352        1353        1354        1355 
    ##  244106.933  269074.608  245375.340  224830.216  312888.035  262610.557 
    ##        1356        1357        1358        1359        1360        1361 
    ##  280555.004  109718.469  240046.823  224296.481  332904.981  316758.071 
    ##        1362        1363        1364        1365        1366        1367 
    ##  251372.258  216384.810  341526.419  333551.230  178924.093  237512.834 
    ##        1368        1369        1370        1371        1372        1373 
    ##  281424.072  276700.860  167800.653  204875.355  149000.063  204305.648 
    ##        1374        1375        1376        1377        1378        1379 
    ##  222470.759  150403.706  184847.162  170312.634  182496.466  132535.568 
    ##        1380        1381        1382        1383        1384        1385 
    ##  297241.374  267807.655  178115.897  197967.719  233439.325  232920.872 
    ##        1386        1387        1388        1389        1390        1391 
    ##  316469.995  257377.062  220795.466  275084.569  360319.691  254681.462 
    ##        1392        1393        1394        1395        1396        1397 
    ##  243177.348  255524.914  276694.086  257085.305  290314.304  261865.650 
    ##        1398        1399        1400        1401        1403        1404 
    ##  261601.242  369020.689  216376.539  237653.981  248832.802  341809.598 
    ##        1405        1406        1408        1409        1410        1411 
    ##  194678.649  212710.771  170613.746  205341.682  191588.197  180553.894 
    ##        1412        1413        1414        1415        1416        1417 
    ##  188141.531  175226.028  195856.942  214245.269  309546.795  163489.682 
    ##        1418        1419        1420        1421        1422        1423 
    ##  196490.063  156569.192  170192.184  260750.493  261792.417  231258.513 
    ##        1424        1425        1426        1427        1428        1429 
    ##  192831.182  244668.090  205092.020  247583.187  193051.648  239933.261 
    ##        1430        1431        1432        1433        1434        1435 
    ##  214032.175  234905.407  255710.527  200918.970  245389.849  265184.399 
    ##        1436        1437        1438        1439        1440        1441 
    ##  259396.762  235516.929  236942.384  261270.617  322531.642  260285.168 
    ##        1442        1443        1444        1445        1446        1447 
    ##  227830.999  203968.478  209533.184  189172.829  125831.937  243675.588 
    ##        1448        1449        1450        1451        1452        1453 
    ##  153385.312  208202.385  158394.339  219376.665  249546.740  214434.655 
    ##        1454        1455        1456        1457        1458        1459 
    ##  143108.184  171791.661  176398.834  218232.206  201289.226  191139.983 
    ##        1460        1461        1462        1463        1464        1465 
    ##  202588.003  191723.722  182714.059  247962.817  179454.293  259338.549 
    ##        1466        1467        1468        1469        1470        1471 
    ##  155180.858   94397.438  113924.607  134480.672  185450.215  121713.842 
    ##        1472        1473        1474        1475        1476        1477 
    ##  120389.131  148450.564  179765.306  204502.471  249582.077  107288.901 
    ##        1478        1479        1480        1481        1482        1483 
    ##  105524.926  132781.023   96162.772  262651.623  261321.189  233760.363 
    ##        1484        1485        1486        1487        1488        1489 
    ##  267870.630  265100.846  348413.335  281557.209  281560.644  230457.501 
    ##        1490        1491        1492        1493        1494        1495 
    ##  192554.857  221442.877  252526.597  241894.894  212051.901  210401.216 
    ##        1496        1497        1498        1499        1500        1501 
    ##  237960.660  201139.035  217024.443  155864.312  178327.964  183828.804 
    ##        1502        1503        1504        1505        1506        1507 
    ##  144414.971  219728.794  112658.920  177122.528  182957.645  133754.430 
    ##        1508        1509        1510        1511        1512        1513 
    ##  151227.733  101501.140  134294.722  173785.650  151955.193  143918.988 
    ##        1514        1515        1516        1517        1518        1519 
    ##  229699.149  249670.028  223740.095  219485.573  235811.611  223632.885 
    ##        1520        1521        1522        1523        1524        1525 
    ##  217527.098  197763.319  220956.763  215447.483  174999.381  265589.894 
    ##        1526        1527        1528        1529        1530        1531 
    ##  201276.894  286347.127  272994.508  280191.952  216461.719  265784.369 
    ##        1532        1533        1534        1535        1536        1537 
    ##  291172.950  259748.178  443101.139  184853.642  193885.515  180104.427 
    ##        1538        1539        1540        1541        1542        1543 
    ##  187330.868  235410.686  194854.007  184119.498  204732.472  194836.805 
    ##        1544        1545        1546        1547        1548        1549 
    ##  242326.712  189714.698  159192.036  187997.070  151944.736  210027.578 
    ##        1550        1551        1552        1553        1554        1555 
    ##  209615.501  240932.500  233909.977  307980.989  179842.640  298258.785 
    ##        1556        1557        1558        1559        1560        1561 
    ##  209085.179  267994.737  318448.092  111396.986   73036.210  105451.447 
    ##        1562        1563        1564        1565        1566        1567 
    ##  231837.975  176079.052  150870.259  272839.304  255653.690  204604.383 
    ##        1568        1569        1570        1571        1572        1573 
    ##  235360.235  265220.247  184480.420  213905.427  221386.141  188671.667 
    ##        1574        1575        1576        1577        1578        1579 
    ##  270114.914  283223.118  149437.508  196404.964  196340.887  162621.687 
    ##        1580        1581        1582        1583        1584        1585 
    ##  186343.597  210642.294  103466.842  152093.828  230076.734  233344.994 
    ##        1586        1587        1588        1589        1590        1591 
    ##  207965.693  218644.655  223890.847  261116.252  193246.228  165113.784 
    ##        1592        1593        1594        1595        1596        1597 
    ##  208324.084  166888.091  145543.185  168314.985  157544.848   85793.515 
    ##        1598        1599        1600        1601        1602        1603 
    ##  173696.482  127108.778  215456.493   68743.435  129236.917   89970.201 
    ##        1604        1605        1606        1607        1608        1609 
    ##  158079.153  120606.056  148120.630  102781.451  182308.734  120494.705 
    ##        1610        1611        1612        1613        1614        1615 
    ##  187008.123  337901.568  335927.446  413481.041  297822.401  235828.321 
    ##        1616        1617        1618        1619        1620        1621 
    ##  229456.169  180164.713  205490.068  213216.117  303475.600  442031.303 
    ##        1622        1623        1624        1625        1626        1627 
    ##  393881.662  362444.579  327074.819  305461.596  321861.199  452630.042 
    ##        1628        1629        1630        1631        1632        1633 
    ##  155169.029  235658.018  201786.271  159249.815  305212.568  178848.914 
    ##        1634        1635        1636        1637        1638        1639 
    ##  236073.475  140712.204  134953.319  183445.933  168873.708  128305.526 
    ##        1640        1641        1642        1643        1644        1645 
    ##  171192.517  163143.614  134973.419  189464.238  193806.753  218750.109 
    ##        1646        1647        1648        1649        1650        1651 
    ##  182988.352  222040.574  213913.994  252668.575  147618.764  238951.854 
    ##        1652        1653        1654        1655        1656        1657 
    ##  173547.306  160342.055  377492.253  380803.736  393334.696  382688.198 
    ##        1658        1659        1660        1661        1662        1663 
    ##  390897.736  401910.646  218660.998  539350.513  496070.767  530968.415 
    ##        1664        1665        1666        1667        1668        1669 
    ##  665587.099  482681.324  561843.828  458211.571  288476.489  273577.635 
    ##        1670        1671        1672        1673        1674        1675 
    ##  297215.737  347040.895  291483.851  204570.574  198750.421  271528.408 
    ##        1676        1677        1678        1679        1680        1681 
    ##  212252.444  244220.799  297517.265  240409.513  187476.453  159205.905 
    ##        1682        1683        1684        1685        1686        1687 
    ##  184355.980  173258.757  211122.010  208311.617  220887.801  214473.875 
    ##        1688        1689        1690        1691        1692        1693 
    ##  285300.055  211839.068  177387.502  206428.174  219852.084  183697.173 
    ##        1694        1695        1696        1697        1698        1699 
    ##  299250.620  288768.051  208914.460  187224.469  184828.525  195845.798 
    ##        1700        1701        1702        1703        1704        1705 
    ##  156791.171  153992.085  151445.163  181386.194  160610.337  259950.048 
    ##        1706        1707        1708        1709        1710        1711 
    ##  228472.441  346952.851  337292.862  144164.963  166320.323  173128.499 
    ##        1712        1713        1714        1715        1716        1717 
    ##  221790.998  173283.621  226625.702  211592.367  205705.522  161505.068 
    ##        1718        1719        1720        1721        1722        1723 
    ##  240991.066  232004.636  307820.559  258638.726  209711.364  190307.831 
    ##        1724        1725        1726        1727        1728        1729 
    ##  177362.638  233988.406  198103.878  198369.649  163226.080  235080.816 
    ##        1730        1731        1732        1733        1734        1735 
    ##  225129.473  161695.990  214981.258  200499.087  229464.792  182480.424 
    ##        1736        1737        1738        1739        1740        1741 
    ##  183652.597  178389.002  229756.317  138280.986  165037.172  202426.741 
    ##        1742        1743        1744        1745        1746        1747 
    ##  185366.002  253908.263  229477.585  261624.619  231476.884  259730.628 
    ##        1748        1749        1750        1751        1753        1754 
    ##  264259.080  275546.577  277109.627  294656.749  286433.069  284204.884 
    ##        1755        1757        1758        1759        1760        1761 
    ##  250881.282  214380.480  268885.940   88725.823  157355.135  178370.072 
    ##        1762        1763        1764        1765        1766        1767 
    ##  174179.834  175558.655  164042.097  187121.345   72516.168  184546.746 
    ##        1768        1769        1770        1771        1772        1773 
    ##  144408.814  161341.690  150587.937  179320.548  195562.807  146036.593 
    ##        1774        1775        1776        1777        1778        1779 
    ##  148483.976  136791.369  133964.872  142711.934  122546.919  140845.848 
    ##        1780        1781        1782        1783        1784        1785 
    ##  163265.312  149536.723  128530.315  151479.836  139705.111  177240.116 
    ##        1787        1788        1789        1790        1791        1792 
    ##  189576.294  170170.525  153268.194  196572.458  174103.707  153698.367 
    ##        1793        1794        1795        1796        1797        1798 
    ##  133820.902  209336.690  142065.916  175824.841  128172.454  155702.106 
    ##        1799        1800        1801        1802        1803        1804 
    ##  160967.040  150964.500  128819.104  154343.312  142108.936  153131.620 
    ##        1805        1806        1807        1808        1809        1810 
    ##  128019.432  143198.682  136260.257  172929.271  145290.799  140207.202 
    ##        1811        1812        1813        1814        1815        1816 
    ##  191755.313  173785.633  162705.409  121019.983  135866.928  128635.017 
    ##        1817        1818        1819        1820        1821        1822 
    ##  153304.764  134054.737  146696.536  148204.115  143265.862  134010.478 
    ##        1823        1824        1825        1826        1827        1828 
    ##  137081.468  125940.735  108625.558  232425.666  196865.580  164310.632 
    ##        1829        1830        1831        1832        1833        1834 
    ##  193394.769  139046.907  159349.836  139569.046  133539.876  149733.992 
    ##        1835        1836        1837        1838        1839        1840 
    ##  173556.087  115665.179  139081.117  129589.404  158236.517  164151.597 
    ##        1841        1842        1843        1844        1845        1846 
    ##  153431.652  143578.859  141721.887  212030.454  190242.947  211002.279 
    ##        1847        1848        1849        1850        1851        1852 
    ##  218166.275  175913.775  216736.031  186094.865  175003.258  137642.802 
    ##        1853        1854        1855        1856        1857        1858 
    ##  194160.047  186259.944  157556.572   98307.826  121905.639  185946.371 
    ##        1859        1860        1861        1862        1863        1864 
    ##  161475.602  186988.788  178990.383  242437.609  172761.208  235617.209 
    ##        1865        1866        1867        1868        1869        1870 
    ##  172282.334  137138.570  132307.422  158682.070  129562.041  145694.314 
    ##        1871        1872        1873        1874        1875        1876 
    ##  214220.191  213929.786  189649.300  149619.569  135789.042  172587.195 
    ##        1877        1878        1879        1880        1881        1882 
    ##  171782.932  167373.125  161347.578  187424.081  151772.746  127870.298 
    ##        1883        1884        1885        1886        1887        1888 
    ##  142820.930  207731.009  203911.558  201292.809  154621.353  277588.325 
    ##        1889        1890        1891        1892        1893        1894 
    ##  264954.432  232475.137  285207.968  266061.309  218191.651  195356.400 
    ##        1895        1896        1897        1898        1899        1900 
    ##  205684.855  287193.717  220200.477  261416.145  224890.752  162011.688 
    ##        1901        1902        1903        1904        1905        1906 
    ##  199559.067  213495.197  194317.632  222593.553  185093.122  226523.744 
    ##        1907        1908        1909        1910        1911        1912 
    ##  188317.836  254376.041  310155.970  255095.585  239442.754  249987.317 
    ##        1913        1914        1915        1916        1917        1918 
    ##  282702.308  353304.013  223925.728  274484.877  266320.519  268244.466 
    ##        1919        1920        1921        1922        1923        1924 
    ##  182004.300  234818.760  207729.763  240119.469  203114.117  217232.023 
    ##        1925        1926        1928        1929        1930        1931 
    ##  232304.080  246028.861  255106.465  258408.456  266295.160  251573.183 
    ##        1932        1933        1934        1935        1936        1937 
    ##  140418.043  186547.480  250421.436  230692.847  161307.683  158098.128 
    ##        1938        1939        1940        1941        1942        1943 
    ##  178410.294  194197.858  220584.836  220460.616  207540.847  248569.920 
    ##        1944        1945        1946        1947        1948        1949 
    ##  203546.822  222669.867  184159.401  156460.860  218616.548  169388.825 
    ##        1950        1951        1952        1953        1954        1955 
    ##  194992.336  272291.887  194642.163  210249.699  195811.342  255607.260 
    ##        1956        1957        1958        1959        1960        1961 
    ##  197499.207  203391.412  280222.590  255627.612  266564.517  287109.160 
    ##        1962        1963        1964        1965        1966        1967 
    ##  274596.519  237609.109  326077.308  268274.886  266775.891  199839.879 
    ##        1968        1969        1970        1971        1972        1973 
    ##  157515.911  211387.679  194515.525  229467.950  204589.094  187054.341 
    ##        1974        1975        1976        1977        1978        1979 
    ##  222926.124  198421.522  207232.691  213256.241  130444.949  280414.482 
    ##        1980        1981        1982        1983        1984        1985 
    ##  241684.080  260683.236  273355.751  228782.261  188843.444  142470.309 
    ##        1986        1987        1988        1989        1990        1991 
    ##  186197.103  237274.203  230390.434  233343.471  240047.113  187776.929 
    ##        1992        1993        1994        1995        1996        1997 
    ##  146961.659  160592.267  230232.951  251720.087  193694.848  178785.015 
    ##        1998        1999        2000        2001        2002        2003 
    ##  244743.056  237423.962  189231.103  272277.113  263105.841  273879.176 
    ##        2004        2005        2006        2007        2008        2009 
    ##  261688.239  293811.441  274515.898  268088.144  239371.384  226219.485 
    ##        2010        2011        2012        2013        2014        2015 
    ##  241416.207  219203.460  238968.996  276246.762  249912.714  285809.095 
    ##        2016        2017        2018        2019        2020        2021 
    ##  268051.029  240435.226  195217.776  168610.660  296364.163  275235.187 
    ##        2022        2023        2024        2025        2026        2027 
    ##  243152.293  254931.432  233141.083  221553.461  142188.891  254321.404 
    ##        2028        2029        2030        2031        2032        2033 
    ##  175954.540  165455.568  225927.900  259547.212  125966.509  239464.834 
    ##        2034        2035        2036        2037        2038        2039 
    ##  282541.679  215443.761  311525.265  274454.025  265428.042  285619.121 
    ##        2040        2041        2042        2043        2044        2045 
    ##  287460.777  284355.372  360950.528  232398.818  255125.464  223036.350 
    ##        2046        2047        2048        2049        2050        2051 
    ##  288946.180  248497.446  212921.711  264288.134  300282.771  276918.467 
    ##        2052        2053        2054        2055        2056        2057 
    ##  255730.467  261587.122  302651.573  301584.223  294211.028  276247.286 
    ##        2058        2059        2060        2061        2062        2063 
    ##  228857.546  232522.454  233326.521  134475.339  174090.792  140810.381 
    ##        2064        2065        2066        2067        2068        2069 
    ##  163130.443  188578.651  168975.184  145107.163  167554.113  244861.603 
    ##        2070        2071        2072        2073        2074        2075 
    ##  229421.773  226399.996  293486.461  226185.704  191991.067  215970.512 
    ##        2076        2077        2078        2079        2080        2081 
    ##  247220.649  262873.569  245513.838  277066.485  274163.257  317340.615 
    ##        2082        2083        2084        2085        2086        2087 
    ##  384154.367  270791.486  324199.356  334723.410  481249.053  411503.553 
    ##        2088        2089        2090        2091        2092        2093 
    ##  138145.772  136991.162  165669.229  233469.224  180712.327  208384.459 
    ##        2094        2095        2096        2097        2098        2099 
    ##  273280.216  257498.664  235614.381  284880.379  186246.496  203440.445 
    ##        2100        2101        2102        2103        2104        2105 
    ##  196479.465  241697.994  226051.792  215351.815  191347.014  289589.634 
    ##        2106        2107        2108        2109        2110        2111 
    ##  214729.188  208073.280  219693.025  196501.576  141135.929  172764.665 
    ##        2112        2113        2114        2115        2116        2117 
    ##  193940.480  160227.607  146196.851  164514.399  197095.759  171117.198 
    ##        2118        2119        2120        2121        2122        2123 
    ##  218128.470  197289.432  165736.722  268900.559  264656.598  240464.194 
    ##        2124        2125        2126        2127        2128        2129 
    ##  285089.561  253955.890  244585.681  229692.594  270865.790  189267.396 
    ##        2130        2131        2132        2133        2134        2135 
    ##  183588.460  186561.929  228981.469  227015.145  220797.727  222714.983 
    ##        2136        2137        2138        2139        2140        2141 
    ##  205973.394  206312.888  181614.331  239869.704  245729.499  250996.010 
    ##        2142        2143        2145        2146        2147        2148 
    ##  315295.057  190047.172  217737.146  306437.625  277451.205  271465.381 
    ##        2149        2150        2151        2152        2153        2154 
    ##  295410.589  260301.700  286856.334  293046.515  421682.269  383555.505 
    ##        2155        2156        2157        2158        2159        2160 
    ##  339138.630  372685.166  350161.257  403494.762  333741.851  280593.360 
    ##        2161        2162        2163        2164        2165        2166 
    ##  265224.924  306642.202  255525.779  304744.919  308484.955  253270.593 
    ##        2167        2168        2169        2170        2171        2172 
    ##  278060.669  280360.755  318278.589  400007.762  450504.264  413165.268 
    ##        2173        2174        2175        2176        2177        2178 
    ##  325062.750  322143.401  340195.097  287242.613  343095.363  323310.218 
    ##        2179        2180        2181        2182        2183        2184 
    ##  319202.494  259216.333  291809.596  371892.921  278565.613  275493.291 
    ##        2185        2186        2187        2188        2189        2190 
    ##  252847.342  215369.447  262956.510  261585.273  332743.967  286748.562 
    ##        2191        2192        2193        2194        2195        2196 
    ##  308837.744  317757.716  309077.372  314150.199  247054.057  254483.899 
    ##        2197        2198        2199        2200        2201        2202 
    ##  265028.097  166525.815  226978.864  283865.405  284376.752  325273.048 
    ##        2203        2204        2205        2206        2207        2208 
    ##  312500.328  275449.408  293782.246  359931.987  260479.004  256368.412 
    ##        2209        2210        2211        2212        2213        2214 
    ##  260036.587  214644.316  243878.099  228769.164  285405.614  410103.766 
    ##        2215        2216        2217        2218        2219        2220 
    ##  405625.162  483971.873  505064.904  470500.781  408816.537  667576.209 
    ##        2221        2222        2223        2224        2225        2226 
    ##  461866.063  270171.332  545630.307  198007.772  189864.483  328961.144 
    ##        2227        2228        2229        2230        2231        2232 
    ##  201782.708  262106.262  268415.900  675816.869  663408.431  666590.875 
    ##        2233        2234        2235        2236        2237        2238 
    ##  674754.230  681587.090  287419.503  331687.951  226691.802  410194.984 
    ##        2239        2240        2241        2242        2243        2244 
    ##  409670.209  289888.485  542483.569  402137.962  353921.514  370647.807 
    ##        2245        2246        2247        2248        2249        2250 
    ##  324603.371  335298.505  262992.235  444606.199  292710.094  228104.408 
    ##        2251        2252        2253        2254        2255        2256 
    ##  247093.667  184742.792  261427.733  270636.187  272593.864  224035.147 
    ##        2257        2258        2259        2260        2261        2262 
    ##  293361.517  280659.193  331737.189  339335.846  339456.100  244639.897 
    ##        2263        2264        2265        2266        2267        2268 
    ##  232667.104  172003.639  304475.779  284854.254  287816.513  239960.824 
    ##        2269        2270        2271        2272        2273        2274 
    ##  274486.471  275121.812  215561.437  210365.887  324316.278  267168.819 
    ##        2275        2276        2277        2278        2279        2280 
    ##  239508.439  412285.874  241390.558  457051.612  406642.294  223503.274 
    ##        2281        2282        2283        2284        2285        2286 
    ##  273545.628  322917.423  268276.303  372822.451  108189.032  195135.821 
    ##        2287        2288        2289        2290        2291        2292 
    ##  146260.633   75009.754  166707.738  133826.504  148414.051  155319.748 
    ##        2293        2294        2295        2296        2297        2298 
    ##  173744.718  156314.852   64491.589  206596.389  123437.246  246483.640 
    ##        2299        2300        2301        2302        2303        2304 
    ##  164031.810  122941.158  128274.056  129570.753  137393.234  153749.391 
    ##        2305        2306        2307        2308        2309        2310 
    ##  110129.249  169823.749  176475.444  167336.812  155849.120  141389.737 
    ##        2311        2312        2313        2314        2315        2316 
    ##  127489.951  224265.941  197102.483  284086.559  286043.869  259709.517 
    ##        2317        2318        2319        2320        2321        2322 
    ##  254846.360  239445.697  256655.040  224078.439  233305.193  310192.075 
    ##        2323        2324        2325        2326        2327        2328 
    ##  346999.625  347272.233  315957.453   97403.802  103780.363   97667.715 
    ##        2329        2330        2331        2332        2333        2334 
    ##  115390.993   71995.329   89115.797  122575.194  103647.553   91834.231 
    ##        2335        2336        2337        2338        2339        2340 
    ##  118709.004   89059.551   95553.762  145455.144  151934.153   71028.008 
    ##        2341        2342        2343        2344        2345        2346 
    ##   52565.501  112658.233   30139.330  279488.851  303198.329  301655.458 
    ##        2347        2348        2349        2350        2351        2352 
    ##  258945.924  373964.529  332051.642  328223.754  284641.398  327054.478 
    ##        2353        2354        2355        2356        2357        2358 
    ##  184016.134  228966.010  325500.056  241914.302  302192.849  321570.415 
    ##        2359        2360        2361        2362        2363        2364 
    ##  245861.896  301447.564  457729.514  463374.079  489717.700  296883.133 
    ##        2365        2366        2367        2368        2369        2370 
    ##  312943.675  646250.049  315924.350  328581.699  290454.868  331561.409 
    ##        2371        2372        2373        2374        2375        2376 
    ##  348915.212  266627.046  395110.726  343210.828  275814.496  234301.586 
    ##        2377        2378        2379        2380        2381        2382 
    ##  282100.362  309006.888   65495.408   84555.297  121733.527   69196.894 
    ##        2383        2384        2385        2386        2387        2388 
    ##  156457.129  188240.453  170774.671  196451.924  141185.289  213124.598 
    ##        2389        2390        2391        2392        2393        2394 
    ##  208527.707  205338.115  131292.099  144864.490  184308.942  165300.512 
    ##        2395        2396        2397        2398        2399        2400 
    ##  200452.986  175951.915  169473.990  211335.962  168410.505  221158.044 
    ##        2401        2402        2403        2404        2405        2406 
    ##  163927.736  223316.045   99763.949  144892.290   91985.674   91471.877 
    ##        2407        2408        2409        2410        2411        2412 
    ##   94873.364   80293.584  120208.763  159759.709   87556.416   89836.275 
    ##        2413        2414        2415        2416        2417        2418 
    ##  105750.722  117419.213  106936.498   81883.520  127538.775   76712.189 
    ##        2419        2420        2421        2422        2423        2424 
    ##  108899.535  180421.647  123328.297  145755.526  128442.991  118862.269 
    ##        2425        2426        2427        2428        2429        2430 
    ##  122598.230  112138.114   97599.767   64558.629  146251.698  145000.765 
    ##        2431        2432        2433        2434        2435        2436 
    ##  156972.505   93975.380  135801.301  104478.532   19511.522  -20522.565 
    ##        2437        2438        2439        2440        2441        2442 
    ##  -28444.678   24464.655   88419.132   65516.744  150623.779  225715.147 
    ##        2443        2444        2445        2446        2447        2448 
    ##  246068.586  249510.236   61429.178  205662.253  290752.519  263248.342 
    ##        2449        2450        2451        2452        2453        2454 
    ##  239385.628  236666.407  240636.841  279269.031  199283.682  205804.420 
    ##        2455        2456        2457        2458        2459        2460 
    ##  270118.286  234734.427  203454.204  167822.219  249398.048  272424.164 
    ##        2461        2462        2463        2464        2465        2466 
    ##  254412.507  228953.608  313274.731  152626.885  205630.433  328925.976 
    ##        2467        2468        2469        2470        2471        2472 
    ##  265015.372  278123.759  192899.341  142419.029  209924.687  220223.142 
    ##        2473        2474        2475        2477        2478        2479 
    ##  282893.272  336383.129  280136.032  254008.521  280767.011  307479.589 
    ##        2480        2481        2482        2483        2484        2485 
    ##  273787.576  283375.789  246787.490  292293.754  286580.600  233337.223 
    ##        2486        2487        2488        2489        2490        2491 
    ##  353401.423  252702.001  229413.199  164799.176  217046.599  208593.752 
    ##        2492        2493        2494        2495        2496        2497 
    ##  179041.384 -156055.080  206900.119  232215.364  128385.475  171971.710 
    ##        2498        2499        2500        2501        2502        2503 
    ##  173565.619  185192.232  189658.724  157413.238  193092.392  206199.112 
    ##        2504        2505        2506        2507        2508        2509 
    ##  202533.193  252359.819  232395.699  246018.793  189041.346  197423.819 
    ##        2510        2511        2512        2514        2515        2516 
    ##  191113.968  242527.619  229460.120  209869.211  203512.396  313195.427 
    ##        2517        2518        2519        2520        2521        2522 
    ##  295391.936  309845.533  221678.299  107161.836  167804.119  225793.863 
    ##        2523        2524        2525        2526        2527        2528 
    ##  148034.547  229886.922  122575.959  107590.654   98850.205  167378.651 
    ##        2529        2530        2531        2532        2533        2534 
    ##   68679.579   80687.934   73386.297   23337.168   98464.092   93192.780 
    ##        2535        2536        2537        2538        2539        2540 
    ##  109827.412   68062.406   93389.027  117399.869   12096.860  101258.650 
    ##        2541        2542        2543        2544        2545        2546 
    ##  129483.229   96580.368  230954.005  285829.702  187974.108  160216.774 
    ##        2547        2548        2549        2550        2551        2552 
    ##  240464.217  243175.451  295006.416  202890.827  153775.880  242223.730 
    ##        2553        2554        2555        2556        2557        2558 
    ##  270163.863  154921.636  359957.200  254089.211  246532.213  420674.806 
    ##        2559        2560        2561        2562        2563        2564 
    ##  554057.998  286381.635  313603.131  233310.439  446126.296  283338.479 
    ##        2565        2566        2567        2568        2569        2570 
    ##  226909.877  203545.217  205806.705  230350.464  244672.996  270507.897 
    ##        2571        2572        2573        2574        2575        2576 
    ##  206612.672  198879.606  259195.657  217598.722  244391.309  162368.085 
    ##        2577        2578        2579        2580        2581        2582 
    ##  272272.408  371171.443  195278.993  186057.398  280080.258  180122.264 
    ##        2584        2585        2586        2587        2588        2589 
    ##  223495.221  190650.058  319174.757  294655.116  213124.889  210682.323 
    ##        2590        2591        2592        2593        2594        2595 
    ##  321880.332  176017.746  208688.019  323142.433  304963.165  287066.179 
    ##        2596        2597        2598        2599        2600        2601 
    ##  266093.423  292108.841  288524.407  348060.463  335898.812  445820.476 
    ##        2602        2603        2604        2605        2606        2607 
    ##  379065.761  353329.362  379085.851  427249.890  305388.771  183456.565 
    ##        2608        2609        2610        2611        2612        2613 
    ##  309384.522  251439.605  252176.001  269571.259  288686.582  331615.500 
    ##        2614        2615        2616        2617        2618        2619 
    ##  336401.820  355144.197  283861.208  264880.621  394290.808  221042.685 
    ##        2620        2621        2622        2623        2624        2625 
    ##  219199.163  323828.684  430710.975  455510.451  272095.913  436978.686 
    ##        2626        2627        2629        2630        2631        2632 
    ##  324127.289  298417.592  220394.767  256934.164  193829.736  185704.133 
    ##        2633        2634        2635        2636        2637        2638 
    ##  233523.207  212975.811  276152.733  235298.230  150788.029  267876.396 
    ##        2639        2640        2641        2642        2643        2644 
    ##  495514.956  356912.049  255668.282  253894.772  314255.749  255917.302 
    ##        2645        2646        2647        2648        2649        2650 
    ##  378189.986  294422.815  251670.100  364225.029  299243.188  192845.959 
    ##        2651        2652        2653        2654        2655        2656 
    ##  234273.926  205942.532  219456.189  204779.737  306183.378  356662.436 
    ##        2657        2658        2659        2660        2661        2662 
    ##  273199.798  231476.083  205573.208  261238.282  288559.339  334706.896 
    ##        2663        2664        2665        2666        2667        2668 
    ##  355354.824  231779.782  185230.813  275961.307  437343.046  372940.892 
    ##        2669        2670        2671        2672        2673        2674 
    ##  200552.108  310528.654  109703.735  309717.263  247252.780  284739.312 
    ##        2675        2676        2677        2678        2679        2680 
    ##  235122.446  346538.642  321165.218  255283.408  328879.941  304386.150 
    ##        2681        2682        2683        2684        2685        2686 
    ##  347376.812  238048.225  342505.257  253174.083  261969.896  305476.998 
    ##        2687        2688        2689        2690        2691        2692 
    ##  303850.064  117848.903  372920.944  402308.968  368445.369  277055.258 
    ##        2693        2694        2695        2696        2697        2698 
    ##  355329.753  220623.715  226649.053  279685.900  276114.352  274315.130 
    ##        2699        2700        2701        2702        2703        2704 
    ##  294649.783  190435.911  185303.582  190073.372  199561.617  214587.916 
    ##        2705        2706        2707        2708        2709        2710 
    ##  188723.460  196177.973  273728.126  222853.375  204566.630  203825.466 
    ##        2711        2712        2713        2714        2715        2716 
    ##  481042.945  512936.307  337951.993  293163.841  351635.967  287282.989 
    ##        2717        2718        2719        2720        2721        2722 
    ##  482133.327  303224.280  235196.958  288189.254  305897.750  455264.950 
    ##        2723        2724        2725        2726        2727        2728 
    ##  314215.947  210861.482  262021.435  272069.271  301255.509  337216.944 
    ##        2729        2730        2731        2732        2733        2734 
    ##  179033.028  215464.292  156162.117  226126.740  188597.765  213799.532 
    ##        2735        2736        2737        2738        2739        2740 
    ##  257609.203  439323.067  263653.388  338367.510  295074.618  370985.566 
    ##        2741        2742        2743        2744        2745        2746 
    ##  311419.098  174216.845  203239.264  146656.484  301919.614  263760.579 
    ##        2747        2748        2749        2750        2751        2752 
    ##  296514.479  162532.303  127665.101  182270.963  265786.807  302087.269 
    ##        2753        2754        2755        2756        2757        2758 
    ##  428699.715  295894.181  202206.031  225051.234  255194.209  266054.613 
    ##        2759        2760        2761        2762        2763        2764 
    ##  209235.430  208255.407  200702.107  189377.523  216626.911  283450.415 
    ##        2765        2767        2768        2769        2770        2771 
    ##  292926.260  133000.985  180416.166  201227.251  154564.292  128063.532 
    ##        2772        2773        2774        2775        2776        2777 
    ##  163875.482  153329.879  129220.156  206177.064  202229.077  157439.550 
    ##        2778        2779        2780        2781        2782        2783 
    ##  171094.741  142438.391  119679.026  204461.534  121008.843  199062.664 
    ##        2784        2785        2786        2787        2788        2789 
    ##  200005.624  239890.250  404862.008  239291.447  181905.949  198620.975 
    ##        2790        2791        2792        2793        2794        2795 
    ##  243056.523  253836.266  244703.143  581050.670  278970.890  210284.917 
    ##        2796        2797        2798        2799        2800        2801 
    ##  334919.651  396513.577  419298.266  211684.076  245030.126  192587.291 
    ##        2802        2803        2804        2805        2806        2807 
    ##  301167.067  466874.581  264020.544  269498.416  290794.658  194917.460 
    ##        2808        2809        2810        2811        2812        2813 
    ##  222091.394  198498.256  239033.076  226732.870  252138.825  213164.676 
    ##        2814        2815        2816        2817        2818        2819 
    ##  224639.828  202467.691  300055.914  321585.383  232926.300  298034.118 
    ##        2820        2821        2822        2823        2824        2825 
    ##  259223.115  235466.134  226385.393  236917.619  246602.044  194388.932 
    ##        2826        2827        2828        2829        2830        2831 
    ##  254075.706  191594.588  228080.719  168133.579  243836.223  217524.438 
    ##        2832        2833        2834        2835        2836        2837 
    ##  212154.656  221233.151  225364.238  205969.578  199490.669  313114.388 
    ##        2838        2839        2840        2841        2842        2843 
    ##  164245.575  177305.169  185737.998  192257.280  230313.828  170481.658 
    ##        2844        2845        2846        2847        2848        2849 
    ##  278519.308  240444.244  236453.866  238729.551  263706.659  240021.961 
    ##        2850        2851        2852        2853        2854        2855 
    ##  197336.208  264280.407  215991.249  177493.769  169905.610  228567.222 
    ##        2856        2857        2858        2859        2860        2861 
    ##  220850.132  200272.425  215227.862  231628.256  242947.794  235819.755 
    ##        2862        2863        2864        2865        2866        2867 
    ##  268549.059  174319.720  202906.771  216057.057  194680.133  171784.964 
    ##        2868        2869        2870        2871        2872        2873 
    ##  223806.067  217639.612  208328.652  182772.863  187648.529  219398.484 
    ##        2874        2875        2876        2877        2878        2879 
    ##  166731.456  202563.004  280423.501  207931.371  300850.927  203533.348 
    ##        2880        2881        2882        2883        2884        2885 
    ##  381632.333  352976.570  238944.491  237201.313  199849.978  310297.864 
    ##        2886        2887        2888        2889        2890        2891 
    ##  306595.309  226096.070  277181.408  323549.228  298703.528  287962.599 
    ##        2892        2893        2894        2895        2896        2897 
    ##  308942.739  256274.070  328810.472  287798.671  264406.440  304209.395 
    ##        2898        2900        2901        2902        2903        2904 
    ##  314883.317  283568.686  286825.007  233081.787  211104.079  220995.239 
    ##        2905        2906        2907        2908        2909        2910 
    ##  445528.866  278808.530  151394.837  267077.396  489867.855  262126.160 
    ##        2911        2912        2913        2915        2916        2917 
    ##  316269.624  282237.085  283715.479  292469.569  144757.959  242361.936 
    ##        2918        2919        2920        2921        2922        2923 
    ##  300139.530  192801.888  252182.912  185599.311  191100.366  163915.607 
    ##        2924        2925        2926        2927        2928        2929 
    ##  254085.433  198946.045  276723.515  291849.687  165118.969  271492.127 
    ##        2930        2931        2932        2933        2934        2935 
    ##  282918.655  240129.807  318588.591  316233.494  355255.144  287776.285 
    ##        2936        2937        2938        2939        2940        2941 
    ##  320442.761  217668.067  282744.172  260822.305  237599.396  187380.869 
    ##        2942        2943        2944        2945        2946        2947 
    ##  270667.509  249834.887  266130.957  272761.961  272864.338  333015.144 
    ##        2948        2949        2950        2951        2952        2953 
    ##  205985.736  213304.854  258258.407  275901.081  202638.400  260384.003 
    ##        2954        2955        2956        2957        2958        2959 
    ##  224984.365  172882.387  179743.457  385758.721  101689.404   65455.025 
    ##        2960        2961        2962        2963        2964        2965 
    ##   68142.396   59320.209  178344.327  144892.662  200209.215  171499.527 
    ##        2966        2967        2968        2969        2970        2971 
    ##  219562.321  162426.108  173033.157  133580.538  112220.504  125693.255 
    ##        2972        2973        2974        2975        2976        2977 
    ##  127850.250  115626.801  119253.088  186507.490  186745.526  210425.975 
    ##        2978        2979        2980        2981        2982        2983 
    ##   95112.923  124830.936  138735.440  139605.611   68557.880   56749.655 
    ##        2984        2985        2986        2987        2988        2989 
    ##  125989.690  376237.628   76940.669  101737.546   87130.642   76715.043 
    ##        2990        2991        2992        2993        2994        2995 
    ##   32207.232   59998.997   99611.222   53945.114   30309.398   62786.209 
    ##        2996        2997        2998        2999        3000        3001 
    ##    3391.574   16455.588  104912.520  138936.970   28552.794   83722.222 
    ##        3002        3003        3004        3005        3006        3007 
    ##   64955.761   86111.520  109762.724  296939.465  123165.741  186462.144 
    ##        3008        3009        3010        3011        3012        3013 
    ##  138727.885  110236.496  145972.743  170247.525  191069.028  103281.535 
    ##        3014        3015        3016        3017        3018        3019 
    ##  182934.341  160404.477  151991.723  104115.760  153821.830  125758.425 
    ##        3020        3021        3022        3023        3024        3025 
    ##  141950.006  153671.974  118502.180  145686.594  124228.151  161353.508 
    ##        3026        3027        3028        3029        3030        3031 
    ##  226242.042  273292.310  224696.218  302626.442  151304.143  153993.991 
    ##        3032        3033        3034        3035        3036        3037 
    ##  189197.818   55014.048  131004.672  132305.362  146400.372  175416.480 
    ##        3038        3039        3040        3041        3042        3043 
    ##   84684.766  100479.232  105773.309   91998.266  100042.513  114438.305 
    ##        3044        3045        3046        3047        3048        3049 
    ##  144404.751  158637.155  152904.453  151049.767  255567.640  168820.084 
    ##        3050        3051        3052        3053        3054        3056 
    ##  181357.986  113832.810  101934.208  177770.848   50361.343   29707.421 
    ##        3057        3058        3059        3060        3061        3062 
    ##  115018.487  121259.963  289905.092  188963.735   50808.337  106321.160 
    ##        3063        3064        3065        3066        3067        3068 
    ##  129770.925   99454.179  116375.498  114317.978  146848.427  160137.951 
    ##        3069        3070        3071        3072        3073        3074 
    ##  153461.339  315695.924  205061.001  109576.103  305510.885  189611.105 
    ##        3075        3076        3077        3078        3079        3080 
    ##  153564.809  234227.170  108514.457  134944.378  138101.173   97330.689 
    ##        3081        3082        3083        3084        3085        3086 
    ##   80506.714  176743.791  124659.977  153074.702   63016.533   71883.029 
    ##        3087        3088        3089        3090        3091        3092 
    ##   55217.588   91059.274  151024.890  102500.924  172181.362  103311.354 
    ##        3093        3094        3095        3096        3097        3098 
    ##   88853.607  115064.906   66165.331   87018.883  133954.963  228601.121 
    ##        3099        3100        3101        3102        3103        3104 
    ##  125938.385   65086.681   39349.525   89185.987  146513.839  135515.067 
    ##        3105        3106        3107        3108        3109        3110 
    ##   78948.677  180221.702  120363.340  114996.543  245385.186  163491.215 
    ##        3111        3112        3113        3114        3115        3116 
    ##  232018.297  130313.910  151061.568  198672.474  141738.832  150883.417 
    ##        3117        3118        3119        3120        3121        3122 
    ##  223466.155  411767.354  311885.465  178851.138  133522.586  220641.426 
    ##        3123        3124        3125        3126        3127        3128 
    ##  284228.487  153881.110  136171.124  290701.958  225817.423  141782.224 
    ##        3129        3130        3131        3132        3133        3134 
    ##   80991.036  238200.730  114629.854   96657.880   50280.639   80286.958 
    ##        3135        3136        3137        3138        3139        3140 
    ##   37288.894   63850.402  110514.820   12874.349   60238.278   46196.029 
    ##        3141        3142        3143        3144        3145        3146 
    ##   32231.863    9401.705   55465.773   58907.756   -8534.881   49497.532 
    ##        3147        3148        3149        3150        3151        3152 
    ##    5364.718  183975.803  165578.092  176010.111  110558.492  107855.501 
    ##        3153        3154        3155        3156        3157        3158 
    ##  -34920.629  100872.707  138323.491  152359.371  160583.626  179912.419 
    ##        3159        3160        3161        3162        3163        3164 
    ##  147217.995  243222.274  111215.151  100141.024  108187.178  112817.011 
    ##        3165        3166        3167        3168        3169        3170 
    ##   75940.278   45162.854  150712.405  167607.434  222601.173  128326.931 
    ##        3172        3173        3174        3175        3176        3177 
    ##  124757.028  129059.225   66147.812  134134.984  116942.261  124702.071 
    ##        3178        3179        3180        3181        3182        3183 
    ##  286165.361   98685.538   64609.202   89568.011   77319.845  103553.806 
    ##        3184        3185        3186        3187        3188        3189 
    ##   67902.288  116259.616   89668.687  107353.690  163746.083   94993.356 
    ##        3190        3191        3192        3193        3194        3195 
    ##  159093.886  112065.264  134720.846  119480.724  126588.751   77002.889 
    ##        3196        3197        3198        3199        3200        3201 
    ##   77993.773  250188.891  303524.169  144430.023  148317.455  294127.159 
    ##        3202        3203        3204        3205        3206        3207 
    ##  319508.411  220188.158  191456.509  129081.002  137574.780   85122.803 
    ##        3208        3209        3210        3211        3212        3213 
    ##  120641.030   93520.011  100293.233  114711.385   78908.726  103760.603 
    ##        3214        3215        3216        3217        3218        3219 
    ##   76923.990   43325.610   35137.476   55149.782   61040.102   38277.897 
    ##        3220        3221        3222        3223        3224        3225 
    ##   69849.941   58889.491   59791.143  209439.585   72450.165  107195.532 
    ##        3226        3227        3228        3229        3230        3231 
    ##   40984.235  224629.457  317347.681  148216.167  137861.786  109903.183 
    ##        3232        3233        3234        3235        3236        3237 
    ##  161130.553   73243.916   44885.408  126696.927  125200.703  111579.462 
    ##        3238        3239        3240        3241        3242        3243 
    ##  118286.321  107946.757  139258.897  118587.144  126776.919  100505.730 
    ##        3244        3245        3246        3247        3248        3249 
    ##  100791.356  163853.978  172220.432  157381.300  167299.970  140677.321 
    ##        3250        3251        3252        3253        3254        3255 
    ##  194388.520  155897.968  206255.364  165342.027  120093.286  141216.711 
    ##        3256        3257        3258        3259        3260        3261 
    ##  187590.384  132721.458  133432.245  110844.410   99938.302  180313.341 
    ##        3262        3263        3264        3265        3266        3267 
    ##  162698.695  126617.982  188237.771  120113.950  145788.752  122860.662 
    ##        3268        3269        3270        3271        3272        3273 
    ##  135361.012  154946.349  154214.560  153780.019  157964.897  224976.677 
    ##        3274        3275        3276        3277        3278        3279 
    ##   92740.810  112279.281  112424.465   77700.863  153766.837  156722.804 
    ##        3280        3281        3282        3283        3284        3285 
    ##  104919.786   91969.617  144939.929  132616.380  102884.957   87266.809 
    ##        3286        3287        3288        3289        3290        3291 
    ##  109896.034  125099.243  180271.326  174243.978   70154.196  143195.629 
    ##        3292        3293        3294        3295        3296        3297 
    ##  145931.953  200821.458  208164.104  133178.924  222006.853  162081.705 
    ##        3298        3299        3300        3301        3302        3303 
    ##  114639.239  134786.149  143016.127   98911.828  105535.155  116094.147 
    ##        3304        3305        3306        3307        3308        3309 
    ##  155533.182  149541.060  197902.344  125488.244  121065.743  204961.160 
    ##        3310        3311        3312        3313        3314        3315 
    ##  248219.410  313866.401  170315.919  103125.085  146159.530  140727.086 
    ##        3316        3317        3318        3319        3320        3321 
    ##  148903.555  123092.836   88305.413  150380.244  190063.512  132400.590 
    ##        3322        3323        3324        3325        3326        3327 
    ##  163449.698  305816.753  287565.831  281221.074  234194.799  208586.411 
    ##        3328        3329        3330        3331        3332        3333 
    ##  261347.778  169916.403  165280.595  121794.586  110368.369  144052.253 
    ##        3334        3335        3336        3337        3338        3339 
    ##  145621.178  167382.898  162933.069  122323.604  124032.798  150444.530 
    ##        3340        3341        3342        3343        3344        3345 
    ##  167842.216  154683.542  156467.725  179562.322  240407.425  166378.287 
    ##        3347        3348        3349        3350        3351        3352 
    ##  182660.120   88919.571  137191.370   70125.888  173711.777  162001.604 
    ##        3353        3354        3355        3356        3357        3358 
    ##  189064.904  246590.100  110894.236  172359.786  193042.557  289714.570 
    ##        3359        3360        3361        3362        3363        3364 
    ##  103696.404  182714.018  137386.394  179211.006  263432.551  199889.359 
    ##        3365        3366        3367        3368        3369        3370 
    ##  220671.229  192236.117  137953.695  113226.891  127253.992  161786.227 
    ##        3371        3372        3373        3374        3375        3376 
    ##  165344.231  163306.434  161854.541  154463.249  115985.219  114380.645 
    ##        3377        3378        3379        3380        3381        3382 
    ##   91039.951  154231.880  135512.037  131254.120  120221.539  123403.034 
    ##        3383        3384        3385        3386        3387        3388 
    ##  158721.184  126349.203  123512.498   95385.322  116087.818  132639.569 
    ##        3389        3390        3391        3392        3393        3394 
    ##  101429.154   60611.229   78475.887   84227.503  205820.311  224704.750 
    ##        3395        3396        3397        3398        3399        3400 
    ##  147266.579  199463.206  140764.802  121958.775  107979.260  137008.828 
    ##        3401        3402        3403        3404        3405        3406 
    ##   81051.451   53660.739  113053.993   94704.216   57607.041   82032.960 
    ##        3407        3408        3409        3410        3411        3412 
    ##   98829.646  165595.910  136444.519  118003.160   86599.621  118680.112 
    ##        3413        3414        3415        3416        3417        3418 
    ##   70132.377  151022.604  130465.172  102181.146  130791.521  109294.454 
    ##        3419        3420        3421        3422        3423        3424 
    ##   62889.961  109460.604  158535.767  118302.341   85776.540  121458.159 
    ##        3425        3426        3427        3428        3429        3430 
    ##   82921.863  104306.447  149676.528  151219.743  175045.912  179387.759 
    ##        3431        3432        3433        3434        3435        3436 
    ##  226424.161  114988.431  121145.030  182731.569  105147.477  110090.506 
    ##        3437        3438        3439        3440        3441        3442 
    ##  177367.358  124276.900   46748.635  113906.121  126440.237  133299.850 
    ##        3443        3444        3445        3446        3447        3448 
    ##  129933.356  134159.907  204331.969  110960.364  114332.520   55651.289 
    ##        3449        3450        3451        3452        3453        3454 
    ##   81966.687  142620.555  163885.341  143485.884  155507.932  116264.287 
    ##        3455        3456        3457        3458        3459        3460 
    ##  143548.451  168105.018  246391.775  111873.943  124788.383  120777.310 
    ##        3461        3462        3463        3464        3465        3466 
    ##  121818.726  126018.379   40077.884  212752.194  179586.242   99371.628 
    ##        3467        3468        3469        3470        3471        3472 
    ##   79076.032  100646.792  136582.704   70109.713   92273.627  120428.260 
    ##        3473        3474        3475        3476        3477        3478 
    ##   98680.117   32413.147   93680.276   77559.525  203139.329  153652.603 
    ##        3479        3480        3481        3482        3483        3484 
    ##  138139.596  116385.562  121073.336   95938.071   81234.322   88086.496 
    ##        3485        3486        3487        3488        3489        3490 
    ##   87587.672   91850.489   20136.694  -43946.043   42608.009   31546.058 
    ##        3491        3492        3493        3494        3495        3496 
    ##   96545.645  116664.024  132052.927  106340.258    8458.701   16226.570 
    ##        3497        3498        3499        3500        3501        3502 
    ##  227563.915  201044.861  132510.691  167218.615  163544.203  111947.147 
    ##        3503        3504        3505        3506        3507        3508 
    ##  113710.192   99541.014  122558.327  108361.961  424685.058  229456.308 
    ##        3509        3510        3511        3512        3513        3514 
    ##  225795.160  206832.382  209852.032  181143.225  247197.290  214892.835 
    ##        3515        3516        3517        3518        3519        3520 
    ##  211737.040  283659.066  216510.354  182832.499  219459.791  211078.158 
    ##        3521        3522        3523        3524        3525        3526 
    ##  255402.331  183864.522  169308.450  169604.249  191590.543  216299.016 
    ##        3527        3528        3529        3530        3531        3532 
    ##  227175.052  360501.001  275424.008  205143.211  168750.639  169664.017 
    ##        3533        3534        3535        3536        3537        3538 
    ##  124236.423  185021.749  196671.727  155709.995  162279.541  173626.175 
    ##        3539        3540        3541        3542        3543        3544 
    ##  231836.953  140376.303  139585.739  132933.558  140066.816  187067.403 
    ##        3545        3546        3547        3548        3549        3550 
    ##  145238.183  132165.638  226138.146  135189.279  261683.230  212440.996 
    ##        3551        3552        3553        3554        3555        3556 
    ##  201347.913  177991.465  167797.355  184163.027  203358.890  185196.593 
    ##        3558        3559        3560        3561        3562        3563 
    ##  185774.339  221536.038  190737.012  136339.185  164108.872  177201.118 
    ##        3564        3565        3566        3567        3568        3569 
    ##  179893.635  185570.783  201739.323  218667.865  143449.886  189229.557 
    ##        3570        3571        3572        3573        3574        3575 
    ##  142878.221  295658.278  198761.860  250359.476  208161.331  215669.281 
    ##        3576        3577        3578        3579        3580        3581 
    ##  224932.131  203139.278  136025.430  106555.906  105717.873  210360.395 
    ##        3582        3583        3584        3585        3586        3587 
    ##  127158.956  189541.492  157691.011  106333.619  147397.846  149406.851 
    ##        3588        3589        3590        3591        3592        3593 
    ##  127970.677  115538.048  116946.411  121227.664  133568.884  145803.767 
    ##        3594        3595        3596        3597        3598        3600 
    ##  161064.870  259654.584  186191.763  162073.045  194261.872  135793.082 
    ##        3601        3602        3603        3604        3605        3606 
    ##  151645.510  156642.270  176170.818  163062.015  204602.191  373092.864 
    ##        3607        3608        3609        3610        3611        3612 
    ##  315414.635  323942.558  242705.274  366411.736  339391.571  242188.220 
    ##        3614        3615        3616        3617        3618        3619 
    ##  246362.264  256932.744  203182.192  193973.836  280528.568  248999.849 
    ##        3620        3621        3622        3623        3624        3625 
    ##  252996.080  270492.308  230770.397  224347.724  233059.015  143266.210 
    ##        3626        3627        3628        3629        3630        3631 
    ##  206604.853  196567.044  181721.770  218704.615  195086.524  268757.027 
    ##        3632        3633        3634        3635        3636        3637 
    ##  256727.766  276222.336  540111.478  354278.033   80485.242  275978.430 
    ##        3638        3639        3640        3641        3642        3643 
    ##  282471.857  380675.453  398127.408  345249.250  337151.644  271807.151 
    ##        3644        3645        3646        3647        3648        3649 
    ##  192751.894  214162.054  228649.426  221842.815  206214.428  200892.766 
    ##        3650        3651        3652        3653        3654        3655 
    ##  204040.842  206536.880  190724.490  240723.322  324237.811  300833.746 
    ##        3656        3657        3658        3659        3660        3661 
    ##  355363.208  366757.735  300013.010  224081.748  257160.553  224125.457 
    ##        3662        3663        3664        3665        3666        3667 
    ##  201328.137  218647.480  224587.053  288158.073  272328.796  222814.788 
    ##        3668        3669        3670        3671        3672        3673 
    ##  200801.648  174007.918  252701.459  286598.398  277030.701  228183.159 
    ##        3674        3675        3676        3677        3678        3679 
    ##  232563.637  228086.125  259522.577  190509.044  253115.296  251309.424 
    ##        3680        3681        3682        3683        3684        3685 
    ##  235863.889  260868.002  200862.865  256322.406  200751.370  284368.063 
    ##        3686        3687        3688        3689        3690        3691 
    ##  364354.055  241802.397  211840.194  236679.066  311264.642  324906.442 
    ##        3692        3693        3694        3695        3696        3697 
    ##  306776.331  433955.430  215178.394  247220.603  272703.549  219303.283 
    ##        3698        3699        3700        3701        3702        3703 
    ##  246991.219  220376.774  186204.941    9833.999  155298.155  147519.577 
    ##        3704        3705        3706        3707        3708        3709 
    ##  252861.994  215201.871  182730.811  196429.536  161956.381  169947.575 
    ##        3710        3711        3712        3713        3714        3715 
    ##  155007.999  309371.675  286318.956  156740.088  218211.670  231095.119 
    ##        3716        3717        3718        3719        3720        3721 
    ##  134569.670  191449.229  209043.906  170573.321  183269.345  198543.756 
    ##        3722        3723        3724        3725        3726        3727 
    ##  186315.442  269009.117  219654.911  172792.337  164699.947  209552.024 
    ##        3728        3729        3730        3731        3732        3733 
    ##  215203.996  189596.894  137160.014  161633.781  248547.060  223332.590 
    ##        3734        3735        3736        3737        3738        3739 
    ##  261891.601  309350.465  247405.991  222551.529  271844.938  181010.794 
    ##        3740        3741        3742        3743        3744        3745 
    ##  250853.564  244194.331  215755.828  170074.227  250737.443  248067.147 
    ##        3746        3747        3748        3749        3750        3751 
    ##  323405.507  204437.073  240182.010  205377.349  228667.306  196944.554 
    ##        3752        3753        3754        3755        3756        3757 
    ##  223943.225  232431.027  217213.340  210724.666  224773.754  199477.321 
    ##        3758        3759        3760        3761        3762        3763 
    ##  199747.870  260990.872  242869.400  234807.742  192677.743  226262.264 
    ##        3765        3766        3767        3768        3769        3770 
    ##  278072.364  205671.130  302041.000  241315.087  240360.354  276752.605 
    ##        3771        3772        3773        3774        3775        3776 
    ##  180616.990  232994.549  159535.245  155574.396  263920.581  262660.776 
    ##        3777        3778        3779        3780        3781        3782 
    ##  127831.981  182901.780  191379.416  134968.649  209699.358  292235.929 
    ##        3783        3784        3785        3787        3788        3789 
    ##  209214.756  205613.675  221322.541  251918.761  240482.296  170146.397 
    ##        3790        3791        3792        3793        3794        3795 
    ##  148041.704  213915.800  199794.365  220836.440  240216.571  239364.993 
    ##        3796        3797        3798        3799        3800        3801 
    ##  387536.228  277428.350  200754.174  224762.713  216216.065  196418.195 
    ##        3802        3803        3804        3805        3806        3807 
    ##  339084.898  313981.108  233754.909  279069.780  339024.672  320841.643 
    ##        3808        3809        3810        3811        3812        3813 
    ##  300403.642  245315.758  243913.924  283081.208  238281.890  289146.379 
    ##        3814        3815        3816        3817        3818        3819 
    ##  264619.934  294447.510  276021.505  483880.819  480161.305  303203.789 
    ##        3820        3821        3822        3823        3824        3825 
    ##  300926.682  288828.465  350105.541  166461.912  295274.606  252400.562 
    ##        3826        3827        3828        3829        3830        3831 
    ##  288014.911  201184.436  206546.611  203098.045  297763.453  228489.033 
    ##        3832        3833        3834        3835        3836        3837 
    ##  213923.420  224845.186  227543.665  234606.258  267253.785  161187.122 
    ##        3838        3839        3840        3841        3842        3843 
    ##  145740.256  219918.409  147779.473  130245.813  160908.538  221971.352 
    ##        3844        3845        3846        3847        3848        3849 
    ##  218924.057  170107.089  180039.596  113002.284  212598.513  216556.041 
    ##        3850        3851        3852        3853        3854        3855 
    ##  131712.558  260157.432  182769.771  210726.735  244343.886  208719.400 
    ##        3856        3857        3858        3859        3860        3861 
    ##  201090.266  165595.759  202243.013  174647.796  235779.797  155268.085 
    ##        3862        3863        3864        3865        3866        3867 
    ##  186864.628  122429.874  152564.408  141073.417  237015.657  165952.498 
    ##        3868        3869        3870        3871        3872        3873 
    ##  199448.827  218914.444  185863.885  177502.186  199548.849  153111.174 
    ##        3874        3875        3876        3877        3878        3879 
    ##  204465.788  206575.948  233558.070  287961.653  355712.797  236067.319 
    ##        3880        3881        3882        3883        3884        3885 
    ##  189897.449  199990.933  205658.893  167120.245  230774.638  206554.048 
    ##        3886        3887        3888        3889        3890        3891 
    ##  134904.129  149277.364  185183.449  176758.344  192948.217  206305.974 
    ##        3892        3893        3894        3895        3896        3897 
    ##  308514.750  208070.284  252996.901  274318.938  235472.541  175497.652 
    ##        3898        3899        3900        3901        3902        3903 
    ##  237376.768  167721.111  252653.279  121478.681  167976.806   72217.798 
    ##        3904        3905        3906        3907        3908        3909 
    ##  247313.197  200162.135  137913.613   76366.985   84295.353  176077.757 
    ##        3910        3911        3912        3913        3914        3915 
    ##  305226.276  269091.256  230231.523  283317.352  287991.553  212250.589 
    ##        3916        3917        3918        3919        3920        3921 
    ##  283701.944  328520.400  247427.333  292119.355  268153.136  190430.447 
    ##        3922        3923        3925        3926        3927        3928 
    ##  363858.366  177413.861  277947.775  339846.291  230257.015  340335.556 
    ##        3929        3930        3931        3932        3933        3934 
    ##  246141.255  316904.605  348247.696  444220.412  329166.117  530563.987 
    ##        3935        3936        3937        3938        3939        3940 
    ##  432253.843  693940.449  664385.340  342053.144  292215.475  245899.300 
    ##        3941        3942        3943        3944        3945        3946 
    ##  257017.943  168855.352  320387.810  265281.993  272346.793  240400.915 
    ##        3947        3948        3949        3950        3951        3952 
    ##  215050.843  140820.426  231215.787  210455.416  285874.627  259701.160 
    ##        3953        3954        3955        3956        3957        3958 
    ##  228364.181  311215.914  276869.639  214482.196  185516.650  226193.557 
    ##        3959        3960        3961        3962        3963        3964 
    ##  179171.440  177831.466  247209.618  263021.933  273595.479  262730.243 
    ##        3965        3966        3967        3968        3969        3970 
    ##  187842.451  202786.526  283921.374  287030.639  311723.157  196334.053 
    ##        3971        3972        3973        3974        3975        3976 
    ##  231751.209  214347.887  267120.121  267464.204  260970.279  219543.084 
    ##        3977        3978        3979        3980        3981        3982 
    ##  278131.439  265436.290  279437.882  243392.579  242270.666  251708.952 
    ##        3983        3984        3985        3986        3987        3988 
    ##  279632.080  262092.974  306788.733  260843.726  266715.214  324563.599 
    ##        3989        3990        3991        3992        3993        3994 
    ##  279084.911  260173.711  285770.171  473704.050  349406.383  365566.884 
    ##        3995        3996        3997        3999        4000        4001 
    ##  350355.448  423141.028  415853.552  268533.490  240403.503  274570.058 
    ##        4002        4003        4004        4005        4006        4007 
    ##  240815.928  230727.099  268346.624  294593.927  268060.981  246572.550 
    ##        4008        4009        4010        4011        4012        4013 
    ##  263521.465  297509.966  263494.766  306361.172  312445.278  321599.178 
    ##        4014        4015        4016        4017        4018        4019 
    ##  232369.342  246528.373  304855.717  281822.927  266137.874  272450.174 
    ##        4020        4021        4022        4023        4024        4025 
    ##  242459.539  270035.833  353571.019  278714.979  268101.079  244741.309 
    ##        4026        4027        4028        4029        4030        4031 
    ##  220620.224  250098.289  281585.456  256683.611  262766.659  163955.366 
    ##        4032        4033        4034        4035        4036        4037 
    ##  506975.226  100774.101  101687.156  101556.967  171432.509   72494.180 
    ##        4038        4039        4040        4041        4042        4043 
    ##   69841.706   99742.945   70562.097  129794.025   68847.999   90755.864 
    ##        4044        4045        4046        4047        4048        4049 
    ##  172145.382  167214.300  112705.608  177209.850  151481.711  207330.274 
    ##        4050        4051        4052        4053        4054        4055 
    ##   62925.346  135773.282  136872.922  114299.871  131045.728   69677.650 
    ##        4056        4057        4058        4059        4060        4061 
    ##   97980.122  112126.207   87322.529   88292.778   67077.167  100118.623 
    ##        4062        4063        4064        4065        4066        4067 
    ##  163232.748   76852.256   72660.486   54333.629   88386.078   98905.967 
    ##        4068        4069        4070        4071        4072        4073 
    ##   75968.069   91035.375  124329.895   90644.820  107508.097   85141.372 
    ##        4074        4075        4076        4077        4078        4079 
    ##  380655.490  161893.924  171574.399  136200.208  184973.102   95761.672 
    ##        4080        4081        4082        4083        4084        4085 
    ##  141995.268  159014.697   54991.327  192593.175  190538.322  104470.588 
    ##        4086        4087        4088        4089        4090        4091 
    ##  175621.214  186734.442   99065.117  158515.768  120107.772   89596.290 
    ##        4092        4093        4094        4095        4096        4097 
    ##   74182.959  147412.849  106901.239  132790.753  119563.551  236623.610 
    ##        4098        4099        4100        4101        4102        4103 
    ##  125016.963  202063.761  137725.503  153609.225  112262.299   96578.000 
    ##        4104        4105        4106        4107        4108        4109 
    ##  131340.433  116059.666  174691.907  119926.135   93931.046  193491.657 
    ##        4110        4111        4112        4113        4114        4115 
    ##  129163.549  150274.356  156017.514  119546.203  108543.820  186106.788 
    ##        4116        4117        4118        4119        4120        4121 
    ##  127842.093  122851.951  193442.101  284452.796  176900.901  144752.411 
    ##        4122        4123        4124        4125        4126        4127 
    ##  140080.130   84597.637   89736.462  129259.885  141208.098  127960.372 
    ##        4128        4129        4130        4131        4132        4133 
    ##  178942.252  108604.067   88675.066  148276.259  180635.220  163945.363 
    ##        4134        4135        4136        4137        4138        4139 
    ##  296972.273  118469.314  123124.752  151759.853  152913.264  165274.445 
    ##        4140        4141        4142        4143        4144        4145 
    ##  107438.124  114036.528  177322.549  219838.233  162846.283  178412.845 
    ##        4146        4147        4148        4149        4150        4151 
    ##  163349.496  176894.957  166790.648  148525.808   63809.507  145879.088 
    ##        4152        4153        4154        4155        4156        4157 
    ##  246736.055  236156.575  258491.923  213463.058  176736.146  261432.773 
    ##        4158        4159        4160        4161        4162        4163 
    ##  256597.134  206799.197  244860.809  252878.050  275574.917  241637.602 
    ##        4164        4165        4166        4167        4168        4169 
    ##  168104.298  214095.012  274481.347  192566.293  263045.119  255915.205 
    ##        4170        4171        4172        4173        4174        4175 
    ##  190166.297  249398.683   50076.614  220186.848  283175.602  323053.903 
    ##        4176        4177        4178        4179        4180        4181 
    ##  270285.828  266992.289  229767.111  211600.962  187173.402  207907.981 
    ##        4182        4183        4184        4185        4186        4187 
    ##  230407.303  201275.244  220904.954  238885.302  214028.899  196929.337 
    ##        4188        4189        4190        4191        4192        4193 
    ##  237197.946  255310.553  223774.038  274651.161  245473.489  163227.889 
    ##        4194        4195        4196        4197        4198        4199 
    ##  233589.211  257182.795  279681.180  268086.017  234904.876  239675.936 
    ##        4200        4201        4203        4204        4205        4206 
    ##  202031.363  242883.962  284696.329  279323.275  270799.512  234607.409 
    ##        4207        4208        4209        4210        4211        4212 
    ##  236041.742  272118.727  277034.959  267591.341  290150.822  259810.397 
    ##        4213        4214        4215        4216        4217        4218 
    ##  235242.958  287765.408  315338.617  277635.772  259412.130  276680.922 
    ##        4219        4220        4221        4222        4223        4224 
    ##  279106.126  313617.149  231507.519  558707.765  264951.411  270268.866 
    ##        4225        4226        4227        4228        4229        4230 
    ##  300081.133  270696.955  251348.805  288279.546  249499.157  188915.650 
    ##        4231        4232        4234        4235        4236        4237 
    ##  292163.733  294028.736  256536.331  283330.755  299164.419  344924.412 
    ##        4238        4239        4240        4241        4242        4243 
    ##  332252.356  304018.029  287108.408  581399.951  603692.517  444892.066 
    ##        4244        4245        4246        4247        4248        4249 
    ##  292853.929  252877.763  278218.457  266888.125  203455.583  220920.112 
    ##        4250        4251        4252        4253        4254        4255 
    ##  237593.454  259009.661  235522.567  481356.456  247967.756  294077.827 
    ##        4256        4257        4258        4259        4260        4261 
    ##  354065.988  259348.925  288169.973  282064.238  301583.897  279539.223 
    ##        4262        4263        4264        4265        4266        4267 
    ##  398377.058  280207.489  285559.599  300841.321  306175.569  344477.927 
    ##        4268        4269        4270        4271        4272        4273 
    ##  320115.147  387958.285  365354.043  347045.698  359967.233  153807.343 
    ##        4274        4275        4276        4277        4278        4279 
    ##  211242.417  359142.751  373651.451  235626.954  182632.218  222971.393 
    ##        4280        4281        4282        4283        4284        4285 
    ##  278138.543  294971.754  289005.080  247267.350  271296.937  323927.783 
    ##        4286        4287        4288        4289        4290        4291 
    ##  279279.795  678092.494  688424.457  676854.684  612908.748  324768.008 
    ##        4292        4293        4294        4295        4296        4297 
    ##  209333.471  186958.592  194162.084  349303.453  457290.593  383197.507 
    ##        4298        4299        4300        4301        4302        4303 
    ##  465502.041  400801.719  309338.773  370641.718  221359.195  329301.636 
    ##        4304        4305        4306        4307        4308        4309 
    ##  277242.402  332268.344  310900.999  189056.421  222877.235  338408.375 
    ##        4310        4311        4312        4313        4314        4315 
    ##  309709.035  265450.562  194846.002  221216.390  231589.598  207966.866 
    ##        4316        4317        4318        4319        4320        4321 
    ##  262628.728  234923.650  292512.255  285102.633  243361.572  328120.327 
    ##        4322        4323        4324        4325        4326        4327 
    ##  368431.096  237218.696  229206.002  205453.412  304392.631  223955.649 
    ##        4328        4329        4330        4331        4332        4333 
    ##  270105.082  268682.335  307529.124  191495.315  183500.309  281765.648 
    ##        4334        4335        4336        4337        4338        4339 
    ##  276986.927  271126.728  190397.123  249174.632  273064.974  217706.010 
    ##        4340        4341        4342        4343        4344        4345 
    ##  208077.250  228481.127  217310.270  168620.310  200069.186  160504.826 
    ##        4346        4347        4348        4349        4350        4351 
    ##  167934.315  227089.708  217703.361  239135.104  229111.369  238802.600 
    ##        4352        4353        4354        4355        4356        4357 
    ##  281190.204  273602.814  231905.558  326316.344  259205.819  179220.532 
    ##        4358        4359        4360        4361        4362        4363 
    ##  273149.014  257187.405  246407.376  354614.956  289418.441  301453.795 
    ##        4364        4365        4366        4367        4368        4369 
    ##  257179.571  297385.131  292950.438  196858.216  219196.516  255545.334 
    ##        4370        4371        4372        4373        4374        4375 
    ##  327812.304  308503.760  199560.867  242605.172  153079.740  163820.474 
    ##        4376        4377        4378        4379        4380        4381 
    ##  199493.702  197600.975  213661.220  194408.943  173364.584  213829.702 
    ##        4382        4383        4384        4385        4386        4387 
    ##  167433.469  285490.945  188622.007  268944.606  266085.692  286118.153 
    ##        4388        4389        4390        4391        4392        4393 
    ##  243401.735  233356.341  270253.443  281002.591  267233.516  269709.669 
    ##        4394        4395        4396        4397        4398        4399 
    ##  310578.567  343329.518  247479.122  271946.904  331554.088  250881.269 
    ##        4400        4401        4402        4403        4404        4405 
    ##  232695.972  244533.790  329234.791  178244.904  198002.125  125380.873 
    ##        4406        4407        4408        4409        4410        4411 
    ##  249009.006  229133.383  233470.413  281318.565  222725.931  242283.047 
    ##        4412        4413        4414        4415        4416        4417 
    ##  191496.585  320851.738  308157.801  266232.947  251896.303  253953.439 
    ##        4418        4419        4420        4421        4422        4423 
    ##  250414.601  245107.606  255209.516  254038.726  312067.097  292468.640 
    ##        4424        4425        4426        4427        4428        4429 
    ##  333980.175  204358.585  187116.795  201868.377  226630.130  170350.461 
    ##        4430        4431        4432        4433        4434        4435 
    ##  148822.476  220791.728  204799.629  260248.274  261014.519  225268.905 
    ##        4436        4437        4438        4439        4440        4441 
    ##  233694.882  305863.055  345735.101  271756.283  358203.837  268455.532 
    ##        4442        4443        4444        4446        4447        4449 
    ##  324781.203  296606.611  246032.835  279179.222  389197.778  199675.335 
    ##        4450        4451        4452        4453        4454        4455 
    ##  301661.727  299157.374  264562.359  277806.263  448308.255  473830.839 
    ##        4456        4457        4458        4459        4460        4461 
    ##  228677.011  262274.164  198109.131  184943.079  272094.512  288014.541 
    ##        4462        4463        4464        4465        4466        4467 
    ##  249124.061  310782.709  298505.059  297792.100  248912.655  204395.487 
    ##        4468        4469        4470        4471        4472        4473 
    ##  267934.241  212826.417  229703.554  213883.664  263292.800  317154.975 
    ##        4474        4475        4476        4477        4478        4480 
    ##  239022.535  305746.881  235788.242  298594.959  260662.560  322084.493 
    ##        4481        4482        4483        4484        4485        4486 
    ##  219294.829  253823.567  263424.255  280621.308  255541.197  329130.482 
    ##        4487        4488        4489        4490        4491        4493 
    ##  317304.718  310665.328  359191.946  312716.250  196883.448  333510.019 
    ##        4494        4495        4496        4497        4498        4499 
    ##  214057.027  253796.688  151019.262  246923.491  279661.839  276444.152 
    ##        4500        4501        4502        4503        4504        4505 
    ##  335373.260  275298.227  306330.288  289652.740  295577.551  326167.775 
    ##        4506        4507        4508        4509        4510        4511 
    ##  331969.233  275972.847  366067.753  464821.982  259985.399  337601.215 
    ##        4512        4513        4514        4515        4516        4517 
    ##  411852.276  391248.165  425415.366  479576.304  403242.701  393597.518 
    ##        4518        4519        4520        4521        4522        4523 
    ##  518536.456  485181.458  442769.894  404440.777  334638.776  438224.992 
    ##        4524        4525        4526        4527        4528        4529 
    ##  353159.168  363429.042  386545.188  381260.345  293015.675  332471.578 
    ##        4530        4531        4532        4533        4534        4535 
    ##  384900.374  253118.182  322576.624  340713.794  294667.951  269004.397 
    ##        4536        4537        4538        4539        4540        4541 
    ##  324090.544  307403.320  337170.759  397509.748  379380.015  238002.227 
    ##        4542        4543        4544        4545        4546        4547 
    ##  256501.979  304905.946  345593.918  300662.541  290045.010  290633.148 
    ##        4548        4549        4550        4551        4552        4553 
    ##  244829.794  249679.246  261621.151  261735.384  226823.099  223902.355 
    ##        4554        4555        4556        4557        4558        4559 
    ##  250169.260  303544.440  255509.158  359237.187  233748.921  269670.149 
    ##        4560        4561        4562        4563        4564        4565 
    ##  338845.724  302103.257  308792.177  268713.774  303306.432  240869.008 
    ##        4566        4567        4568        4569        4570        4571 
    ##  254487.243  220338.146  244594.682  210593.642  299666.688  339170.836 
    ##        4572        4573        4575        4576        4577        4578 
    ##  284752.651  289708.884  394716.025  367554.732  383468.337  400676.535 
    ##        4579        4580        4581        4582        4583        4584 
    ##  419669.486  390395.821  420897.419  341699.967  319746.652  261477.723 
    ##        4585        4586        4587        4588        4589        4590 
    ##  269668.930  329556.640  311742.672  316918.862  352159.413  308614.636 
    ##        4591        4592        4593        4594        4595        4596 
    ##  351575.350  400354.022  409024.643  207865.842  368721.674  285939.088 
    ##        4597        4598        4599        4600        4601        4602 
    ##  493820.477  354354.968  453169.628  422434.616  582495.883  404475.361 
    ##        4603        4604        4605        4606        4607        4608 
    ##  522715.316  316460.731  321654.482  422647.882  275691.822  377407.507 
    ##        4609        4610        4611        4612        4613        4614 
    ##  380479.231  284504.241  297990.208  320603.380  246789.841  193271.233 
    ##        4615        4616        4617        4618        4619        4620 
    ##  288072.182  343767.177  258563.704  296576.299  265704.449  288708.144 
    ##        4621        4622        4623        4624        4625        4626 
    ##  365585.288  339940.729  227386.866  285354.467  185992.530  268132.804 
    ##        4627        4628        4629        4630        4631        4632 
    ##  287145.153  191627.091  258022.665  183269.024  329088.797   46362.105 
    ##        4633        4634        4635        4636        4637        4638 
    ##  242127.229  263719.717  272288.996  196749.173  225178.088  221071.473 
    ##        4639        4640        4641        4642        4643        4644 
    ##  287377.423  223782.029  164714.166  270241.352  219102.108  299743.744 
    ##        4645        4646        4647        4648        4649        4650 
    ##  196443.757  229086.025  176263.593  178473.148  175549.177  209939.925 
    ##        4651        4652        4653        4654        4655        4656 
    ##  191913.471  191432.758  290823.107  287064.925  268882.419  253976.264 
    ##        4657        4658        4659        4660        4661        4662 
    ##  278615.461  242407.591  367112.891  386946.442  354397.368  262012.612 
    ##        4663        4664        4665        4666        4667        4668 
    ##  277053.743  273454.268  309638.874  307242.676  374756.944  322868.237 
    ##        4669        4670        4671        4672        4673        4674 
    ##  325516.150  264397.924  278262.424  272006.395  314863.588  270803.394 
    ##        4675        4676        4677        4678        4679        4680 
    ##  227881.320  271462.984  295906.661  286433.740  281078.049   77283.474 
    ##        4681        4682        4683        4684        4685        4686 
    ##   53011.187   64352.509   80210.840  101092.715   36361.744   99979.322 
    ##        4687        4688        4689        4690        4691        4692 
    ##   77876.551  116082.844   63253.864   76365.797  122170.053  108870.433 
    ##        4693        4694        4695        4696        4697        4698 
    ##   37083.964  100091.455   60292.655   36397.369   38765.173  103021.574 
    ##        4699        4700        4701        4702        4703        4704 
    ##   43172.304   53992.070   66790.271   73913.918   88936.113   42663.360 
    ##        4705        4706        4707        4708        4709        4710 
    ##   58443.133   95823.990   63218.606   48957.546   35469.891   45195.066 
    ##        4711        4712        4713        4714        4715        4716 
    ##   47482.893   48780.318   32290.542  105174.621   64950.567   28337.156 
    ##        4717        4718        4719        4720        4721        4722 
    ##   15699.452   48882.208   47802.587   30734.166   73230.172   52570.030 
    ##        4723        4724        4725        4726        4727        4728 
    ##   37386.335   25830.980   83244.482   29928.785   75815.132   82511.482 
    ##        4729        4730        4731        4732        4734        4735 
    ##  209846.005  227747.849  184800.459  233313.392  134362.182  183836.977 
    ##        4736        4737        4738        4739        4740        4741 
    ##  211279.917  253610.272  204444.141  172433.077  224196.928  208400.451 
    ##        4742        4743        4744        4745        4746        4747 
    ##  169474.851  194975.771  134982.850  363117.329  230746.647  179817.041 
    ##        4748        4749        4750        4751        4752        4753 
    ##  133389.940  182411.952  159216.836  161737.634  146983.454  157790.579 
    ##        4754        4755        4756        4757        4758        4759 
    ##  145940.395  145371.871  180253.986  148591.742  186209.089  154614.241 
    ##        4760        4761        4762        4763        4764        4765 
    ##  205475.559  225220.309  213577.744  156139.801  203691.209  164112.436 
    ##        4766        4767        4768        4769        4770        4771 
    ##  188675.422  156917.614  130181.623  170380.460  127206.408  239973.085 
    ##        4772        4773        4774        4775        4776        4777 
    ##  223494.167  216773.007  243158.954  250173.068  234692.417  123589.402 
    ##        4778        4779        4780        4781        4782        4783 
    ##  148998.948  159904.466  154839.066  142533.988  150868.025  145165.263 
    ##        4784        4785        4786        4787        4788        4790 
    ##  184767.588  111392.870   95212.212  170367.274  196848.027  217855.641 
    ##        4791        4792        4793        4794        4795        4796 
    ##  242710.096  249925.356  183454.401  224222.439  272275.949  198030.568 
    ##        4797        4798        4799        4800        4801        4802 
    ##  265306.779  212733.286  246368.829  194491.852  262036.527  246449.264 
    ##        4803        4804        4805        4806        4807        4808 
    ##  221492.174  245227.919  263758.020  228565.587  275006.896  228925.119 
    ##        4809        4810        4811        4812        4813        4814 
    ##  240422.129  204461.452  275334.701  144548.838  189715.743  254430.412 
    ##        4815        4816        4817        4818        4819        4820 
    ##  261487.946  222085.840  136993.277  281865.816  199765.277  289416.683 
    ##        4821        4822        4823        4824        4825        4826 
    ##  217506.943  168662.718  199173.928  220378.853  220909.008  148366.885 
    ##        4827        4828        4829        4830        4831        4832 
    ##  186761.247  280274.443  194220.931  225991.251  190403.013  237779.382 
    ##        4834        4835        4836        4837        4838        4839 
    ##  183540.444  169680.446  224720.744  255995.555  179044.055  192848.399 
    ##        4840        4841        4842        4843        4844        4845 
    ##  194527.826  215709.667  191652.562  238949.010  215227.181  279119.119 
    ##        4846        4847        4848        4849        4850        4851 
    ##  234647.272  276503.207  272352.170  239873.901  246347.083  255625.319 
    ##        4852        4853        4854        4855        4856        4857 
    ##  253926.463  219254.695  161525.363  207244.755  204996.347  222578.952 
    ##        4858        4859        4860        4862        4863        4864 
    ##  220941.928  230222.429  231454.287  217051.263  222710.247  199282.836 
    ##        4865        4866        4867        4868        4869        4870 
    ##  227246.523  205462.964  317324.986  126601.279  149360.273   80018.859 
    ##        4871        4872        4873        4874        4875        4876 
    ##  123385.056  167490.060   75442.965   95735.804   65125.997  182027.133 
    ##        4877        4878        4879        4880        4881        4882 
    ##  124171.888  104049.872  152369.128  120573.970  146207.537   10667.523 
    ##        4883        4884        4885        4886        4887        4888 
    ##  149178.941  159218.876  152384.173  151208.414  112058.180  133870.703 
    ##        4889        4890        4891        4892        4893        4894 
    ##  143067.248  141227.910  125796.796  129919.105  135685.993   97951.416 
    ##        4895        4896        4897        4898        4899        4900 
    ##   87336.349  115775.401  114509.141  154799.487   87991.277  142516.286 
    ##        4901        4902        4903        4904        4905        4906 
    ##  120130.617  310688.851  102806.728   61763.711  109824.402  129567.934 
    ##        4907        4908        4909        4910        4911        4912 
    ##   89610.615   79908.328  107456.210   92277.444   81409.054  135753.781 
    ##        4913        4914        4915        4916        4917        4918 
    ##  145891.208  118127.226  197812.662  137817.888  135014.574   90961.023 
    ##        4919        4920        4921        4922        4923        4924 
    ##  146166.890  124136.873  237516.433  157881.065  119916.300   74649.488 
    ##        4925        4926        4927        4928        4929        4930 
    ##  127603.054  178729.784   94405.364  138404.462  195621.308   87434.622 
    ##        4931        4932        4933        4934        4935        4936 
    ##   72015.343   77830.090   48273.858  126366.007  175948.131   53734.894 
    ##        4937        4938        4939        4940        4941        4942 
    ##  122051.013   62273.329  108905.899  106255.305   92369.711   30794.066 
    ##        4943        4945        4946        4947        4948        4949 
    ##   78467.749   73945.776   42347.480   74669.769   39743.616   79815.719 
    ##        4950        4951        4952        4953        4954        4955 
    ##   73823.042  119786.050   85518.592   58493.612   37863.385   51661.757 
    ##        4956        4957        4958        4959        4960        4961 
    ##   28182.861  140997.150  108731.270   48830.446   58179.965   95900.738 
    ##        4963        4964        4965        4966        4967        4968 
    ##   73636.704   84590.305   40479.816  109466.535  151279.572   71428.565 
    ##        4969        4970        4971        4972        4973        4974 
    ##   47146.236   51712.593  198274.541  344715.706  173397.143  148973.145 
    ##        4975        4976        4977        4978        4979        4980 
    ##  108314.260  113025.372   18249.439    6247.695   87441.079   95706.767 
    ##        4981        4982        4983        4984        4985        4986 
    ##   82996.624   58693.669   64165.031   21534.143   62237.937   86740.560 
    ##        4987        4988        4989        4990        4991        4992 
    ##  161751.986  140380.136   97771.075  199038.511  186211.469  105394.146 
    ##        4993        4994        4995        4996        4997        4998 
    ##   85270.978   39251.415  133707.068  127524.307   92813.718  120456.304 
    ##        4999        5000        5001        5002        5003        5004 
    ##  100121.836   82654.401   58793.335   80017.717   61913.170   92076.143 
    ##        5005        5006        5007        5008        5009        5010 
    ##  164291.598   75644.768   92820.995   82646.474  117135.579  129525.368 
    ##        5011        5012        5013        5014        5015        5016 
    ##  149151.498   98553.608   86364.606   88307.207   77020.278   67117.907 
    ##        5017        5018        5019        5020        5021        5022 
    ##   73523.867   63156.506   79995.113   92023.591   73128.919  126170.191 
    ##        5023        5024        5025        5026        5027        5028 
    ##   80199.442   75989.138   72322.916   90357.415   88344.529   79566.294 
    ##        5029        5030        5031        5032        5033        5034 
    ##  100709.827  147782.786  132544.584  104535.366   90139.245   68866.318 
    ##        5035        5036        5037        5038        5039        5040 
    ##   80524.660  139847.104  129190.727   94246.766   69620.691  148642.945 
    ##        5041        5042        5043        5044        5045        5046 
    ##  251378.750  163949.357  153761.466  222493.800  200345.875  358664.456 
    ##        5047        5048        5049        5050        5051        5052 
    ##  368894.362  554537.854  195559.890  204565.765  252526.059  274068.466 
    ##        5053        5054        5055        5056        5057        5058 
    ##  330395.965  172110.065  272238.609  225096.479  251022.918  288221.867 
    ##        5059        5060        5061        5062        5063        5064 
    ##  251483.545  294041.381  308319.820  289662.823  282443.387  218811.053 
    ##        5065        5066        5067        5068        5069        5070 
    ##  278645.130  241911.533  351803.400  292768.751  235626.481  251794.896 
    ##        5071        5072        5073        5074        5076        5077 
    ##  123684.855  165894.232  241912.462  255880.494  282681.932  240802.334 
    ##        5078        5079        5080        5081        5082        5083 
    ##  204589.914  198686.648  233153.343  215040.718  238619.605  265280.409 
    ##        5084        5085        5086        5087        5088        5089 
    ##  270768.435  216959.492  252076.913  227887.849  175128.270  246803.521 
    ##        5090        5091        5092        5093        5094        5095 
    ##  362950.438  312443.305  288305.686  280485.246  256241.036  239478.011 
    ##        5096        5097        5098        5099        5100        5101 
    ##  258458.552  210893.334  226807.014  281577.271  469587.191  385424.074 
    ##        5102        5103        5104        5105        5106        5107 
    ##  208053.394  370556.955  269429.855  311483.912  262892.671  345099.870 
    ##        5108        5109        5110        5111        5112        5113 
    ##  374840.968  251120.705  256388.617  218800.168  339577.875  313024.446 
    ##        5114        5115        5116        5117        5118        5119 
    ##  283647.661  260420.647  258743.493  313503.772  261736.695  249686.881 
    ##        5120        5121        5122        5123        5124        5125 
    ##  255228.860  247559.838  268160.719  191936.551  241792.657  289993.656 
    ##        5126        5127        5128        5129        5130        5131 
    ##  261467.967  212405.027  272177.435  251877.321  296978.937  268063.143 
    ##        5132        5133        5134        5135        5136        5137 
    ##  246844.254  298344.660  304019.697   83019.507   71432.108  127896.176 
    ##        5138        5139        5140        5141        5142        5143 
    ##  176137.144  189279.647  121369.992  130767.877  176912.080  189751.205 
    ##        5144        5145        5146        5147        5148        5149 
    ##  127784.123  105870.962  108922.936  196441.954  181714.252  177173.483 
    ##        5150        5151        5152        5153        5154        5155 
    ##  116182.926  115987.755  132017.731   38391.728   77084.132   79497.194 
    ##        5156        5157        5158        5159 
    ##   95170.619  102654.228   91985.220   38369.798
