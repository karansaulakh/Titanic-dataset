---
title: "Titanic Dataset"
author: "Karan Singh Aulakh"
date: "22 January 2017"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:
## R Packages

R is an open-source programming language, meaning that users can contribute
packages that make our lives easier, and we can use them for free. For this lab,
and many others in the future, we will use the following R packages:


- `dplyr`: for data wrangling
- `ggplot2`: for data visualization
- ` library`: for graphs and plots
- ` scatterplot3d`: for 3D plots
-` party`: for decision trees
```{r load-packages, message = FALSE}

library(dplyr)
library(ggplot2)
library(scatterplot3d) 
library(rgl)
library(lattice)
library(party)
```
You should have already installed these packages using commands like 
`install.packages` 

To load the dataset Titanic, the csv file installed on the local machine is read using read.csv()
```{r}
Titanic <- read.csv("F:/Downloads/Titanic.csv")
```

Now, we need to determine the dimensions of the dataset Titanic.It can be determined by dim()
```{r}
dim(Titanic)
```
It can be seen that Titanic is a dataset consisting of  1313 rows and 7 columns.

Further investigating the properties of the dataset, we can examine the names  of the variables and the structure of the dataset.
```{r}
names(Titanic)
```
```{r}
str(Titanic)
```
 
Let us have a look at the first 10 rows of the dataset.
```{r}
head(Titanic[1:7],10)

```

Now,let us plot a histogram for the number of people who survied the Titanic disaster.
```{r}

plot(Titanic$Survived)

plot(Titanic$Age,Titanic$PClass)

```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
