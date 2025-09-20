
R version 4.5.1 (2025-06-13 ucrt) -- "Great Square Root"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> # Load dataset
> df <- mtcars
> 
> # See first rows
> head(df)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
> 
> # Scatterplot
> plot(df$wt, df$mpg,
+      main = "Scatterplot of Car Weight vs MPG",
+      xlab = "Car Weight (1000 lbs)",
+      ylab = "Miles per Gallon",
+      pch = 19, col = "blue")
> 
> # Linear regression model
> model <- lm(mpg ~ wt, data = df)
> 
> # Model summary
> summary(model)

Call:
lm(formula = mpg ~ wt, data = df)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.5432 -2.3647 -0.1252  1.4096  6.8727 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  37.2851     1.8776  19.858  < 2e-16 ***
wt           -5.3445     0.5591  -9.559 1.29e-10 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.046 on 30 degrees of freedom
Multiple R-squared:  0.7528,    Adjusted R-squared:  0.7446 
F-statistic: 91.38 on 1 and 30 DF,  p-value: 1.294e-10

> 
> # Add regression line to plot
> abline(model, col = "red", lwd = 2)
> 
> # Correlation coefficient
> cor(df$mpg, df$wt)
[1] -0.8676594
> 
> # Save plot as image
> png("regression_plot.png", width=600, height=400)
> plot(df$wt, df$mpg, main="MPG vs Car Weight",
+      xlab="Weight (1000 lbs)", ylab="MPG", pch=19, col="blue")
> abline(model, col="red", lwd=2)
> dev.off()
windows 
      2 
> 
