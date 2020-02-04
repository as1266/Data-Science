INFO 3010 - Assignment 2
================

## Spring 2020 by Lingzi Hong

## Due: Monday, Feb 3, 2020

### Instructions

1.  This is an R Markdown format used for publishing markdown documents
    to GitHub. When you click the **Knit** button, all R code chunks are
    run and a markdown file (.md) suitable for publishing to GitHub is
    generated.
2.  Fill in the code chunks and submit this R markdown file to the
    assignment on Canvas. Make sure when you save that you have run all
    cells, so the outputs displace between the cells.
3.  make sure to replace the directoryID in the filename with your
    student ID.

### Q1 (5pts): Download the file ‘Adults\_Cleaned.csv’ from canvas. Read the file into a dataframe.

``` r
setwd('/Users/anime/Documents/Data science')
adults<- read.csv('Adults_Cleaned.csv')
```

### Q2: (3pts) Write code to show first 5 lines of the dataset.

``` r
head(adults,5)
```

    ##   age        workclass fnlwgt education education.num     marital.status
    ## 1  39        State-gov  77516 Bachelors            13      Never-married
    ## 2  50 Self-emp-not-inc  83311 Bachelors            13 Married-civ-spouse
    ## 3  38          Private 215646   HS-grad             9           Divorced
    ## 4  53          Private 234721      11th             7 Married-civ-spouse
    ## 5  28          Private 338409 Bachelors            13 Married-civ-spouse
    ##          occupation  relationship  race    sex capital.gain capital.loss
    ## 1      Adm-clerical Not-in-family White   Male         2174            0
    ## 2   Exec-managerial       Husband White   Male            0            0
    ## 3 Handlers-cleaners Not-in-family White   Male            0            0
    ## 4 Handlers-cleaners       Husband Black   Male            0            0
    ## 5    Prof-specialty          Wife Black Female            0            0
    ##   hours.per.week native.country label
    ## 1             40  United-States <=50K
    ## 2             13  United-States <=50K
    ## 3             40  United-States <=50K
    ## 4             40  United-States <=50K
    ## 5             40           Cuba <=50K

### Q3: (3pts) How many samples are in the dataset?

``` r
nrow(adults)
```

    ## [1] 32561

### Q4: (4pts) Check the data types of each column.

``` r
str(adults)
```

    ## 'data.frame':    32561 obs. of  15 variables:
    ##  $ age           : int  39 50 38 53 28 37 49 52 31 42 ...
    ##  $ workclass     : Factor w/ 9 levels "?","Federal-gov",..: 8 7 5 5 5 5 5 7 5 5 ...
    ##  $ fnlwgt        : int  77516 83311 215646 234721 338409 284582 160187 209642 45781 159449 ...
    ##  $ education     : Factor w/ 16 levels "10th","11th",..: 10 10 12 2 10 13 7 12 13 10 ...
    ##  $ education.num : int  13 13 9 7 13 14 5 9 14 13 ...
    ##  $ marital.status: Factor w/ 7 levels "Divorced","Married-AF-spouse",..: 5 3 1 3 3 3 4 3 5 3 ...
    ##  $ occupation    : Factor w/ 15 levels "?","Adm-clerical",..: 2 5 7 7 11 5 9 5 11 5 ...
    ##  $ relationship  : Factor w/ 6 levels "Husband","Not-in-family",..: 2 1 2 1 6 6 2 1 2 1 ...
    ##  $ race          : Factor w/ 5 levels "Amer-Indian-Eskimo",..: 5 5 5 3 3 5 3 5 5 5 ...
    ##  $ sex           : Factor w/ 2 levels "Female","Male": 2 2 2 2 1 1 1 2 1 2 ...
    ##  $ capital.gain  : int  2174 0 0 0 0 0 0 0 14084 5178 ...
    ##  $ capital.loss  : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ hours.per.week: int  40 13 40 40 40 40 16 45 50 40 ...
    ##  $ native.country: Factor w/ 42 levels "?","Cambodia",..: 40 40 40 40 6 40 24 40 40 40 ...
    ##  $ label         : Factor w/ 2 levels "<=50K",">50K": 1 1 1 1 1 1 1 2 2 2 ...

### Q5: (5pts) How many kinds of occupations are in the dataset?

``` r
uni<-unique(adults[,7])
length(uni)
```

    ## [1] 15

### Q6: (5pts) A statistical summary of the dataset.

``` r
summary(adults)
```

    ##       age                   workclass         fnlwgt       
    ##  Min.   :17.00   Private         :22696   Min.   :  12285  
    ##  1st Qu.:28.00   Self-emp-not-inc: 2541   1st Qu.: 117827  
    ##  Median :37.00   Local-gov       : 2093   Median : 178356  
    ##  Mean   :38.58   ?               : 1836   Mean   : 189778  
    ##  3rd Qu.:48.00   State-gov       : 1298   3rd Qu.: 237051  
    ##  Max.   :90.00   Self-emp-inc    : 1116   Max.   :1484705  
    ##                  (Other)         :  981                    
    ##         education     education.num                 marital.status 
    ##  HS-grad     :10501   Min.   : 1.00   Divorced             : 4443  
    ##  Some-college: 7291   1st Qu.: 9.00   Married-AF-spouse    :   23  
    ##  Bachelors   : 5355   Median :10.00   Married-civ-spouse   :14976  
    ##  Masters     : 1723   Mean   :10.08   Married-spouse-absent:  418  
    ##  Assoc-voc   : 1382   3rd Qu.:12.00   Never-married        :10683  
    ##  11th        : 1175   Max.   :16.00   Separated            : 1025  
    ##  (Other)     : 5134                   Widowed              :  993  
    ##            occupation           relationship                   race      
    ##  Prof-specialty :4140   Husband       :13193   Amer-Indian-Eskimo:  311  
    ##  Craft-repair   :4099   Not-in-family : 8305   Asian-Pac-Islander: 1039  
    ##  Exec-managerial:4066   Other-relative:  981   Black             : 3124  
    ##  Adm-clerical   :3770   Own-child     : 5068   Other             :  271  
    ##  Sales          :3650   Unmarried     : 3446   White             :27816  
    ##  Other-service  :3295   Wife          : 1568                             
    ##  (Other)        :9541                                                    
    ##      sex         capital.gain    capital.loss    hours.per.week 
    ##  Female:10771   Min.   :    0   Min.   :   0.0   Min.   : 1.00  
    ##  Male  :21790   1st Qu.:    0   1st Qu.:   0.0   1st Qu.:40.00  
    ##                 Median :    0   Median :   0.0   Median :40.00  
    ##                 Mean   : 1078   Mean   :  87.3   Mean   :40.44  
    ##                 3rd Qu.:    0   3rd Qu.:   0.0   3rd Qu.:45.00  
    ##                 Max.   :99999   Max.   :4356.0   Max.   :99.00  
    ##                                                                 
    ##        native.country    label      
    ##  United-States:29170   <=50K:24720  
    ##  Mexico       :  643   >50K : 7841  
    ##  ?            :  583                
    ##  Philippines  :  198                
    ##  Germany      :  137                
    ##  Canada       :  121                
    ##  (Other)      : 1709

### Q7: (5pts) How many people have capital gain more than 0?

``` r
nrow(adults[adults$capital.gain >"0",]) 
```

    ## [1] 2712

### Q8: (5pts) How many people work more than 40hrs a week?

``` r
nrow(adults[adults$hours.per.week > 40,])
```

    ## [1] 9581

### Q9: (5pts) Number of people whose native country is Mexico and work more than 40hrs a week.

``` r
nrow(adults[(adults$hours.per.week > 40) & (adults$native.country == "Mexico"),])
```

    ## [1] 128

### Q10: (5pt) For people who have got bachelor education or higher, what the is percentage to have income more than 50K?

``` r
more50work40<-nrow(adults[(adults$education.num >= 13 )&(adults$label=='>50K'),])
educationOnly<-nrow(adults[(adults$education.num >= 13),])
percent <- more50work40/educationOnly*100
print(percent)
```

    ## [1] 48.45668

### Q11: (5pts) What is the average woking hours per week for people who are husband?

``` r
HusbansMean<-mean(adults[adults["relationship"] == "Husband","hours.per.week"])
print(HusbansMean)
```

    ## [1] 44.12014
