---
title       : Shiny application for hospital data
subtitle    : 
author      : Vincent Bolwerk
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Why Shiny?

Shiny is an R package that makes it easy to build interactive web apps straight from R. You can host standalone apps on a webpage or embed them in R Markdown documents or build dashboards.

Shiny combines the computational power of R with the interactivity of the modern web.

--- .class #id 

## Why hospital data?

This shiny app can make it easier to find hospitals in your own state, or search hospitals by other attributes!

--- .class #id 

## A preview of the solution
The solution simply filters on search terms, like demonstrated below:

```r
setwd("C:/Users/VBolwerk/Documents/Personal development/R course/part_9/shiny_app/shiny_app")
data <-read.csv("hospital-data.csv")
head(data[data$State=="AK",])
```

```
##     Provider.Number                      Hospital.Name
## 103          020001   PROVIDENCE ALASKA MEDICAL CENTER
## 104          020006     MAT-SU REGIONAL MEDICAL CENTER
## 105          020008         BARTLETT REGIONAL HOSPITAL
## 106          020012        FAIRBANKS MEMORIAL HOSPITAL
## 107          020017           ALASKA REGIONAL HOSPITAL
## 108          020018 YUKON KUSKOKWIM DELTA REG HOSPITAL
##                     Address.1 Address.2 Address.3      City State ZIP.Code
## 103                BOX 196604        NA        NA ANCHORAGE    AK    99519
## 104 2500 SOUTH WOODWORTH LOOP        NA        NA    PALMER    AK    99645
## 105          3260 HOSPITAL DR        NA        NA    JUNEAU    AK    99801
## 106        1650 COWLES STREET        NA        NA FAIRBANKS    AK    99701
## 107          2801 DEBARR ROAD        NA        NA ANCHORAGE    AK    99508
## 108                PO BOX 287        NA        NA    BETHEL    AK    99559
##                   County Phone.Number        Hospital.Type
## 103            ANCHORAGE   9072613675 Acute Care Hospitals
## 104    MATANUSKA SUSITNA   9077468600 Acute Care Hospitals
## 105               JUNEAU   9077968900 Acute Care Hospitals
## 106 FAIRBANKS NORTH STAR   9074528181 Acute Care Hospitals
## 107            ANCHORAGE   9072761131 Acute Care Hospitals
## 108               BETHEL   9075436300 Acute Care Hospitals
##                 Hospital.Ownership Emergency.Services
## 103 Voluntary non-profit - Private                Yes
## 104 Voluntary non-profit - Private                Yes
## 105                    Proprietary                Yes
## 106   Voluntary non-profit - Other                Yes
## 107                    Proprietary                Yes
## 108           Government - Federal                Yes
```

--- .class #id 

## Thank you!




