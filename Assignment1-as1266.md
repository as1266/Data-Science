INFO 3010 - Assignment 1
================

## by Lingzi Hong

## Due: Monday, Jan 27, 2020

### Instructions

1.  This is an R Markdown format used for publishing markdown documents
    to GitHub. When you click the **Knit** button all R code chunks are
    run and a markdown file (.md) suitable for publishing to GitHub is
    generated.
2.  Submit this downloaded completed R markdown file in the assignment
    on Canvas. Make sure when you save that you have run all cells, so
    the outputs displace between the cells.
3.  make sure to replace the directoryID in the filename with your
    student ID.

### Q1: Compute the following values. Write code in the below chunks.

1)  27(38-17) (3pts)

<!-- end list -->

``` r
a<-27
b<-38
c<-17
S<-a*(b-c)
print(S)
```

    ## [1] 567

2)  log(3^4) (4pts)

<!-- end list -->

``` r
b<-3**4
x<-log(b)
print(x)
```

    ## [1] 4.394449

3)  square root of 217 (4pts)

<!-- end list -->

``` r
x<-217
y<-sqrt(x)
print(y)
```

    ## [1] 14.73092

### Q2: Create the following vectors. a = (5, 10, 15, 20, 70, 160), b = (87, 86, 85, 33, 58, 56).

1)  create a vector c, which is add results of vector a and b (3pts)

<!-- end list -->

``` r
a<-c(5, 10, 15, 20, 70, 160)
b<-c(87, 86, 85, 33, 58, 56)

c(a+b)
```

    ## [1]  92  96 100  53 128 216

2)  get the 2st and 5th element of c (4pts)

<!-- end list -->

``` r
x<-c(92,96,100,53,128,216)#vector
x[c(2,5)]
```

    ## [1]  96 128

3)  how many elements of c are greater than 50 (4pts)

<!-- end list -->

``` r
x<-c(92,96,100,53,128,216)
for(i in x)
{
  if(i > 50)
  {
   print(i) 
  }
}
```

    ## [1] 92
    ## [1] 96
    ## [1] 100
    ## [1] 53
    ## [1] 128
    ## [1] 216

### Q3: Use c from problem 2, compute the following statistics of c:

1)  sum (3pts)

<!-- end list -->

``` r
x<-c(92,96,100,53,128,216)
sum(x)
```

    ## [1] 685

2)  median (4pts)

<!-- end list -->

``` r
x<-c(92,96,100,53,128,216)
median(x)
```

    ## [1] 98

3)  summary statistics of c (4pts)

<!-- end list -->

``` r
x<-c(92,96,100,53,128,216)
summary(x)
```

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##    53.0    93.0    98.0   114.2   121.0   216.0

### Q4: Create the following vectors with seq or rep

1)  c(1,3,5,7,9) (3pts)

<!-- end list -->

``` r
seq(1,9, by=2)
```

    ## [1] 1 3 5 7 9

2)  c(1,2,3,4,1,2,3,4) (4pts)

<!-- end list -->

``` r
rep(1:4, times=2)
```

    ## [1] 1 2 3 4 1 2 3 4

3)  c(10,8,6,4,2) (4pts)

<!-- end list -->

``` r
seq(10,2, by=-2)
```

    ## [1] 10  8  6  4  2

### Q5: create a numeric vector (0,1,0,0,1,1), change it to a vector of characters (“0”,“1”,“0”,“0”,“1”,“1”). (4pts)

``` r
c<-c(0,1,0,0,1,1)
as.character(c)
```

    ## [1] "0" "1" "0" "0" "1" "1"

### Q6: write a function, for every element in a vector, if the data type is character, print ‘error’. Finally return number of characters in the vector. (6pts)

``` r
vector<-c('7','9','68','92','88','56','90','80')
Vector_func <- function(vector){
l=0
  for(i in vector){
   if(is.character(i)){
      print("error")
     l= l+1
   }
    else
    print("A number!")
  }
print(l)
}

sapply(vector, FUN = Vector_func)
```

    ## [1] "error"
    ## [1] 1
    ## [1] "error"
    ## [1] 1
    ## [1] "error"
    ## [1] 1
    ## [1] "error"
    ## [1] 1
    ## [1] "error"
    ## [1] 1
    ## [1] "error"
    ## [1] 1
    ## [1] "error"
    ## [1] 1
    ## [1] "error"
    ## [1] 1

    ##  7  9 68 92 88 56 90 80 
    ##  1  1  1  1  1  1  1  1
