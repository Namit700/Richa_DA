---
title: "Data Analysis"
author: "Richa Saxena"
format: html
editor: visual
---

### Calling the Data from Excel

```{r echo=FALSE}
library(readxl)
data_ <- read_excel("C:/Users/namit/Downloads/New folder/data .xlsx", 
     col_types = c("numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric", "numeric", 
         "numeric", "numeric"))
View(data_)
```

### Installing Necessary Libraries

```{r echo=FALSE}
options(repos = c(CRAN = "https://cran.r-project.org"))
install.packages("psych")
 
options(repos = c(CRAN = "https://cran.us.r-project.org"))
install.packages("psych")
```

### Calling the Libraries

```{r echo=FALSE}
library(psych)
library(tseries)
```

### Iterating the Variables

Data set contains 50 questions, each question will be considered as a variable which makes 50 variables in the data set alone.

```{r echo=FALSE}
Variable_01 = data_$Q1
Variable_02 = data_$Q2
Variable_03 = data_$Q3
Variable_04 = data_$Q4
Variable_05 = data_$Q5
Variable_06 = data_$Q6
Variable_07 = data_$Q7
Variable_08 = data_$Q8
Variable_09 = data_$Q9
Variable_10 = data_$Q10
Variable_11 = data_$Q11
Variable_12 = data_$Q12
Variable_13 = data_$Q13
Variable_14 = data_$Q14
Variable_15 = data_$Q15
Variable_16 = data_$Q16
Variable_17 = data_$Q17
Variable_18 = data_$Q18
Variable_19 = data_$Q19
Variable_20 = data_$Q20
Variable_21 = data_$Q21
Variable_22 = data_$Q22
Variable_23 = data_$Q23
Variable_24 = data_$Q24
Variable_25 = data_$Q25
Variable_26 = data_$Q26
Variable_27 = data_$Q27
Variable_28 = data_$Q28
Variable_29 = data_$Q29
Variable_30 = data_$Q30
Variable_31 = data_$Q31
Variable_32 = data_$Q32
Variable_33 = data_$Q33
Variable_34 = data_$Q34
Variable_35 = data_$Q35
Variable_36 = data_$Q36
Variable_37 = data_$Q37
Variable_38 = data_$Q38
Variable_39 = data_$Q39
Variable_40 = data_$Q40
Variable_41 = data_$Q41
Variable_42 = data_$Q42
Variable_43 = data_$Q43
Variable_44 = data_$Q44
Variable_45 = data_$Q45
Variable_46 = data_$Q46
Variable_47 = data_$Q47
Variable_48 = data_$Q48
Variable_49 = data_$Q49
Variable_50 = data_$Q50
```

### Cronbach's Alpha Analysis for Data Reliability

Cronbach's alpha is a statistic used to assess the internal consistency or reliability of a set of items (or scale) in a survey or test. It is widely used in the social sciences, psychology, education, and other fields to evaluate the reliability of a composite score created from multiple survey items or test questions.

### What Cronbach's Alpha Measures

1.  **Internal Consistency**: It measures how closely related a set of items are as a group. Essentially, it indicates whether the items on a test measure the same underlying construct.
2.  **Reliability**: A higher Cronbach's alpha suggests that the items have relatively high correlations with one another, implying that they are measuring the same underlying construct.

### Interpretation of Cronbach's Alpha

Cronbach's alpha ranges from 0 to 1:

-   **α ≥ 0.9**: Excellent (High-Stakes Testing)
-   **0.7 ≤ α \< 0.9**: Good (Low-Stakes Testing)
-   **0.6 ≤ α \< 0.7**: Acceptable
-   **0.5 ≤ α \< 0.6**: Poor
-   **α \< 0.5**: Unacceptable

However, these thresholds are somewhat arbitrary and depend on the context of the research. Generally, an alpha value above 0.7 is considered acceptable for most purposes.

### How Cronbach's Alpha is Calculated

Cronbach's alpha is calculated using the formula:

$$
\alpha = \frac{N}{N - 1} \left(1 - \frac{\sum_{i=1}^N \sigma^2_i}{\sigma^2_{total}}\right)
$$ where: - $$ N $$ is the number of items. - $$ sigma^2_i $$ is the variance of each individual item. - $$ sigma^2_{total} $$ is the variance of the total score formed by summing all items.

### Example Scenario

Suppose you have a survey with several questions designed to measure a single construct, such as job satisfaction. You would expect all questions to correlate well with each other if they are indeed measuring the same thing. By calculating Cronbach's alpha, you can quantify how well the set of questions measures the job satisfaction construct.

### Why Cronbach's Alpha is Important

-   **Validation**: It helps in validating the consistency of a questionnaire or test.
-   **Scale Refinement**: Items that do not correlate well with the overall scale (i.e., have low item-total correlations) can be identified and potentially removed to improve the scale's reliability.
-   **Research Confidence**: High reliability ensures that the results of the test or survey are dependable and can be replicated in other studies or applications.

### Limitations of Cronbach's Alpha

-   **Unidimensionality**: Cronbach's alpha assumes that the items measure a single latent construct. If the items measure multiple constructs, alpha might be misleadingly low.
-   **Number of Items**: The value of alpha can be artificially inflated by increasing the number of items, even if they are not highly correlated.
-   **Item Homogeneity**: High alpha does not necessarily mean high validity; it only indicates internal consistency. The items might be consistent but still not validly measure the intended construct.

In summary, Cronbach's alpha is a key measure of internal consistency and reliability for scales and tests, providing insight into how well a set of items measures a single construct. However, it should be interpreted in the context of the specific research and alongside other measures of validity and reliability.

```{r echo=FALSE}
cron <- data.frame(
  Variable_01, Variable_02, Variable_03, Variable_04, Variable_05,
  Variable_06, Variable_07, Variable_08, Variable_09, Variable_10,
  Variable_11, Variable_12, Variable_13, Variable_14, Variable_15,
  Variable_16, Variable_17, Variable_18, Variable_19, Variable_20,
  Variable_21, Variable_22, Variable_23, Variable_24, Variable_25,
  Variable_26, Variable_27, Variable_28, Variable_29, Variable_30,
  Variable_31, Variable_32, Variable_33, Variable_34, Variable_35,
  Variable_36, Variable_37, Variable_38, Variable_39, Variable_40,
  Variable_41, Variable_42, Variable_43, Variable_44, Variable_45,
  Variable_46, Variable_47, Variable_48, Variable_49, Variable_50
)
library(psych)
alpha(cron, check.keys = TRUE)
```

The results you provided are various statistics related to Cronbach's alpha and other measures of reliability for a given scale or set of items. Let's break down and interpret each component:

### Raw Alpha (raw_alpha)

-   **Value**: 0.96
-   **Interpretation**: This is the standard Cronbach's alpha coefficient. A value of 0.96 indicates excellent internal consistency, suggesting that the items on the scale are highly correlated and likely measure the same underlying construct. Values above 0.9 are considered excellent.

### Standardized Alpha (std.alpha)

-   **Value**: 0.96
-   **Interpretation**: This is the Cronbach's alpha calculated using standardized items (i.e., z-scores). The fact that it is equal to the raw alpha indicates that the items are consistently scaled, and there are no large differences in their variances.

### G6 (Guttman's Lambda 6) (G6(smc))

-   **Value**: 0.97
-   **Interpretation**: Guttman's Lambda 6 is another measure of reliability. It often provides a higher estimate of reliability compared to Cronbach's alpha. A value of 0.97 suggests excellent reliability, even slightly higher than the alpha coefficients.

### Average Inter-item Correlation (average_r)

-   **Value**: 0.32
-   **Interpretation**: This is the average correlation between all pairs of items. A value of 0.32 indicates a moderate level of correlation between items. For a high Cronbach's alpha, inter-item correlations typically range from moderate to high.

### Signal-to-Noise Ratio (S/N)

-   **Value**: 23
-   **Interpretation**: The signal-to-noise ratio indicates the proportion of TRUE variance to error variance. A value of 23 is very high, suggesting that the scale is very reliable with minimal error.

### Standard Error of Measurement (ase)

-   **Value**: 0.0025
-   **Interpretation**: This represents the standard error of the reliability estimate. A very low value (0.0025) indicates that the estimate of Cronbach's alpha is very precise.

### Mean (mean)

-   **Value**: 3.7
-   **Interpretation**: This is the mean score of the items on the scale. It gives an idea of the average response level across all items.

### Standard Deviation (sd)

-   **Value**: 0.56
-   **Interpretation**: This is the standard deviation of the item scores, indicating the variability in responses. A standard deviation of 0.56 suggests moderate variability in the scores.

### Median Inter-item Correlation (median_r)

-   **Value**: 0.37
-   **Interpretation**: This is the median of the inter-item correlations. It provides a central tendency measure of the inter-item correlations. A value of 0.37 is slightly higher than the average inter-item correlation, suggesting that the distribution of correlations might be skewed with some high correlations.

### Summary Interpretation

The scale exhibits excellent internal consistency and reliability, as indicated by the high values of raw alpha (0.96) and standardized alpha (0.96). The Guttman's Lambda 6 (0.97) further confirms the reliability. The average inter-item correlation (0.32) and median inter-item correlation (0.37) are moderate, which is typical for a reliable scale with diverse items. The high signal-to-noise ratio (23) and low standard error of measurement (0.0025) indicate that the reliability estimates are precise. The mean score (3.7) and standard deviation (0.56) provide additional context on the distribution of responses. Overall, the scale is reliable and consistent, making it a good tool for measuring the intended construct.

### Shapiro Wilk's Test for Data Normality Analysis

The Shapiro-Wilk test is a statistical test used to assess whether a sample of data is drawn from a normally distributed population. It's particularly useful for small to moderately sized data sets and is widely used in various fields such as psychology, biology, and economics to validate the assumption of normality, which is a key prerequisite for many parametric statistical tests.

### Key Components and Steps of the Shapiro-Wilk Test:

1.  **Hypotheses**:

    -   **Null Hypothesis (H0)**: The data is drawn from a normal distribution.
    -   **Alternative Hypothesis (H1)**: The data is not drawn from a normal distribution.

2.  **Test Statistic (W)**: The Shapiro-Wilk test calculates a test statistic $$ W $$, which measures how well the data conforms to a normal distribution. The value of $$ W $$ ranges from 0 to 1, where: -$$ W $$ close to 1 indicates the data is likely from a normal distribution. -$$ W $$ significantly less than 1 indicates the data is not from a normal distribution.

3.  **Calculation of W**: The formula for the Shapiro-Wilk test statistic ( W ) is: $$
    W = \frac{\left( \sum_{i=1}^n a_i x_{(i)} \right)^2}{\sum_{i=1}^n (x_i - \bar{x})^2}
    $$ where: -$$ x_{(i)} $$ are the ordered sample values. -$$ x_i $$ are the individual sample values. -$$ \bar{x} $$ is the sample mean. -$$( a_i) $$ are constants generated from the means, variances, and co variances of the order statistics of a standard normal distribution.

4.  **p-Value**: The test also produces a p-value, which helps in decision-making regarding the null hypothesis:

    -   If the p-value is less than the chosen significance level (e.g., 0.05), the null hypothesis is rejected, indicating that the data is not normally distributed.
    -   If the p-value is greater than the significance level, there is not enough evidence to reject the null hypothesis, suggesting that the data could be from a normal distribution.

### Assumptions:

1.  The sample size should ideally be between 3 and 2000.
2.  The test is sensitive to sample size; for very large samples, even small deviations from normality can result in rejection of the null hypothesis.

### Interpretation:

-   A high W value and a high p-value suggest normality.
-   A low W value and a low p-value suggest non-normality.

### Advantages and Limitations:

-   **Advantages**: The Shapiro-Wilk test is powerful and effective for small to moderately sized samples.
-   **Limitations**: It may not perform well with large samples and can be overly sensitive, detecting trivial deviations from normality that are not practically significant.

### Conclusion:

The Shapiro-Wilk test is a robust method for testing normality, especially when dealing with smaller data sets. It is crucial to consider its sensitivity to sample size and to complement it with visual tools like Q-Q plots for a comprehensive assessment of normality.

#### Shapiro Wilk's Test for `Variable_01 to Variable_50`

```{r echo=FALSE}
shapiro.test(Variable_01)
shapiro.test(Variable_02)
shapiro.test(Variable_03)
shapiro.test(Variable_04)
shapiro.test(Variable_05)
shapiro.test(Variable_06)
shapiro.test(Variable_07)
shapiro.test(Variable_08)
shapiro.test(Variable_09)
shapiro.test(Variable_10)
shapiro.test(Variable_11)
shapiro.test(Variable_12)
shapiro.test(Variable_13)
shapiro.test(Variable_14)
shapiro.test(Variable_15)
shapiro.test(Variable_16)
shapiro.test(Variable_17)
shapiro.test(Variable_18)
shapiro.test(Variable_19)
shapiro.test(Variable_20)
shapiro.test(Variable_21)
shapiro.test(Variable_22)
shapiro.test(Variable_23)
shapiro.test(Variable_24)
shapiro.test(Variable_25)
shapiro.test(Variable_26)
shapiro.test(Variable_27)
shapiro.test(Variable_28)
shapiro.test(Variable_29)
shapiro.test(Variable_30)
shapiro.test(Variable_31)
shapiro.test(Variable_32)
shapiro.test(Variable_33)
shapiro.test(Variable_34)
shapiro.test(Variable_35)
shapiro.test(Variable_36)
shapiro.test(Variable_37)
shapiro.test(Variable_38)
shapiro.test(Variable_39)
shapiro.test(Variable_40)
shapiro.test(Variable_41)
shapiro.test(Variable_42)
shapiro.test(Variable_43)
shapiro.test(Variable_44)
shapiro.test(Variable_45)
shapiro.test(Variable_46)
shapiro.test(Variable_47)
shapiro.test(Variable_48)
shapiro.test(Variable_49)
shapiro.test(Variable_50)
```

### Normality Curve for `Variable_01`

```{r echo=FALSE}
mean_data <- mean(Variable_01)
sd_data <- sd(Variable_01)
hist(Variable_01, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_02`

```{r echo=FALSE}
mean_data <- mean(Variable_02)
sd_data <- sd(Variable_02)
hist(Variable_02, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_03`

```{r echo=FALSE}
mean_data <- mean(Variable_03)
sd_data <- sd(Variable_03)
hist(Variable_03, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_04`

```{r echo=FALSE}
mean_data <- mean(Variable_04)
sd_data <- sd(Variable_04)
hist(Variable_04, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_05`

```{r echo=FALSE}
mean_data <- mean(Variable_05)
sd_data <- sd(Variable_05)
hist(Variable_05, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_06`

```{r echo=FALSE}
mean_data <- mean(Variable_06)
sd_data <- sd(Variable_06)
hist(Variable_06, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_07`

```{r echo=FALSE}
mean_data <- mean(Variable_07)
sd_data <- sd(Variable_07)
hist(Variable_07, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_08`

```{r echo=FALSE}
mean_data <- mean(Variable_08)
sd_data <- sd(Variable_08)
hist(Variable_08, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_09`

```{r echo=FALSE}
mean_data <- mean(Variable_09)
sd_data <- sd(Variable_09)
hist(Variable_09, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_10`

```{r echo=FALSE}
mean_data <- mean(Variable_10)
sd_data <- sd(Variable_10)
hist(Variable_10, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_11`

```{r echo=FALSE}
mean_data <- mean(Variable_11)
sd_data <- sd(Variable_11)
hist(Variable_11, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_12`

```{r echo=FALSE}
mean_data <- mean(Variable_12)
sd_data <- sd(Variable_12)
hist(Variable_12, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_13`

```{r echo=FALSE}
mean_data <- mean(Variable_13)
sd_data <- sd(Variable_13)
hist(Variable_13, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_14`

```{r echo=FALSE}
mean_data <- mean(Variable_14)
sd_data <- sd(Variable_14)
hist(Variable_14, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_15`

```{r echo=FALSE}
mean_data <- mean(Variable_15)
sd_data <- sd(Variable_15)
hist(Variable_15, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_16`

```{r echo=FALSE}
mean_data <- mean(Variable_16)
sd_data <- sd(Variable_16)
hist(Variable_16, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_17`

```{r echo=FALSE}
mean_data <- mean(Variable_17)
sd_data <- sd(Variable_17)
hist(Variable_17, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_18`

```{r echo=FALSE}
mean_data <- mean(Variable_18)
sd_data <- sd(Variable_18)
hist(Variable_18, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_19`

```{r echo=FALSE}
mean_data <- mean(Variable_19)
sd_data <- sd(Variable_19)
hist(Variable_19, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_20`

```{r echo=FALSE}
mean_data <- mean(Variable_20)
sd_data <- sd(Variable_20)
hist(Variable_20, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_21`

```{r echo=FALSE}
mean_data <- mean(Variable_21)
sd_data <- sd(Variable_21)
hist(Variable_21, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_22`

```{r echo=FALSE}
mean_data <- mean(Variable_22)
sd_data <- sd(Variable_22)
hist(Variable_22, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_23`

```{r echo=FALSE}
mean_data <- mean(Variable_23)
sd_data <- sd(Variable_23)
hist(Variable_23, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_24`

```{r echo=FALSE}
mean_data <- mean(Variable_24)
sd_data <- sd(Variable_24)
hist(Variable_24, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_25`

```{r echo=FALSE}
mean_data <- mean(Variable_25)
sd_data <- sd(Variable_25)
hist(Variable_25, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_26`

```{r echo=FALSE}
mean_data <- mean(Variable_26)
sd_data <- sd(Variable_26)
hist(Variable_26, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_27`

```{r echo=FALSE}
mean_data <- mean(Variable_27)
sd_data <- sd(Variable_27)
hist(Variable_27, freq = TRUE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_28`

```{r echo=FALSE}
mean_data <- mean(Variable_28)
sd_data <- sd(Variable_28)
hist(Variable_28, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_29`

```{r echo=FALSE}
mean_data <- mean(Variable_29)
sd_data <- sd(Variable_29)
hist(Variable_29, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_30`

```{r echo=FALSE}
mean_data <- mean(Variable_30)
sd_data <- sd(Variable_30)
hist(Variable_30, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_31`

```{r echo=FALSE}
mean_data <- mean(Variable_31)
sd_data <- sd(Variable_31)
hist(Variable_31, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_33`

```{r echo=FALSE}
mean_data <- mean(Variable_32)
sd_data <- sd(Variable_32)
hist(Variable_32, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_33`

```{r echo=FALSE}
mean_data <- mean(Variable_33)
sd_data <- sd(Variable_33)
hist(Variable_33, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_34`

```{r echo=FALSE}
mean_data <- mean(Variable_34)
sd_data <- sd(Variable_34)
hist(Variable_34, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_35`

```{r echo=FALSE}
mean_data <- mean(Variable_35)
sd_data <- sd(Variable_35)
hist(Variable_35, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_36`

```{r echo=FALSE}
mean_data <- mean(Variable_36)
sd_data <- sd(Variable_36)
hist(Variable_36, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_37`

```{r echo=FALSE}
mean_data <- mean(Variable_37)
sd_data <- sd(Variable_37)
hist(Variable_37, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_38`

```{r echo=FALSE}
mean_data <- mean(Variable_38)
sd_data <- sd(Variable_38)
hist(Variable_38, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_39`

```{r echo=FALSE}
mean_data <- mean(Variable_39)
sd_data <- sd(Variable_39)
hist(Variable_39, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_40`

```{r echo=FALSE}
mean_data <- mean(Variable_40)
sd_data <- sd(Variable_40)
hist(Variable_40, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_41`

```{r echo=FALSE}
mean_data <- mean(Variable_41)
sd_data <- sd(Variable_41)
hist(Variable_41, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_42`

```{r echo=FALSE}
mean_data <- mean(Variable_42)
sd_data <- sd(Variable_42)
hist(Variable_42, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_43`

```{r echo=FALSE}
mean_data <- mean(Variable_43)
sd_data <- sd(Variable_43)
hist(Variable_43, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_44`

```{r echo=FALSE}
mean_data <- mean(Variable_44)
sd_data <- sd(Variable_44)
hist(Variable_44, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_45`

```{r echo=FALSE}
mean_data <- mean(Variable_45)
sd_data <- sd(Variable_45)
hist(Variable_45, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_46`

```{r echo=FALSE}
mean_data <- mean(Variable_46)
sd_data <- sd(Variable_46)
hist(Variable_46, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_47`

```{r echo=FALSE}
mean_data <- mean(Variable_47)
sd_data <- sd(Variable_47)
hist(Variable_47, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_48`

```{r echo=FALSE}
mean_data <- mean(Variable_48)
sd_data <- sd(Variable_48)
hist(Variable_48, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_49`

```{r echo=FALSE}
mean_data <- mean(Variable_49)
sd_data <- sd(Variable_49)
hist(Variable_49, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Normality Curve for `Variable_50`

```{r echo=FALSE}
mean_data <- mean(Variable_50)
sd_data <- sd(Variable_50)
hist(Variable_50, freq = FALSE, col = "lightblue", main = "Histogram with Normality Curve Overlay", 
     xlab = "Data Values", ylab = "Density")
curve(dnorm(x, mean = mean_data, sd = sd_data), add = TRUE, col = "darkblue", lwd = 2)
legend("topright", legend = c("Data", "Normal Curve"), fill = c("lightblue", "darkblue"))
```

### Final Verdict on Data Normality

Here is the summary of Shapiro-Wilk normality tests for all 50 variables (`Variable_01` to `Variable_50`):

1.  **Variable_01**: W = 0.90187, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
2.  **Variable_02**: W = 0.59481, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
3.  **Variable_03**: W = 0.88083, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
4.  **Variable_04**: W = 0.90233, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
5.  **Variable_05**: W = 0.7629, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
6.  **Variable_06**: W = 0.83832, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
7.  **Variable_07**: W = 0.89304, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
8.  **Variable_08**: W = 0.87074, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
9.  **Variable_09**: W = 0.89164, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
10. **Variable_10**: W = 0.87277, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
11. **Variable_11**: W = 0.87823, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
12. **Variable_12**: W = 0.88884, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
13. **Variable_13**: W = 0.87725, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
14. **Variable_14**: W = 0.88877, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
15. **Variable_15**: W = 0.86269, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
16. **Variable_16**: W = 0.8683, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
17. **Variable_17**: W = 0.88315, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
18. **Variable_18**: W = 0.88045, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
19. **Variable_19**: W = 0.86164, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
20. **Variable_20**: W = 0.87622, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
21. **Variable_21**: W = 0.86447, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
22. **Variable_22**: W = 0.88674, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
23. **Variable_23**: W = 0.87925, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
24. **Variable_24**: W = 0.87763, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
25. **Variable_25**: W = 0.85647, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
26. **Variable_26**: W = 0.87067, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
27. **Variable_27**: W = 0.87654, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
28. **Variable_28**: W = 0.87082, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
29. **Variable_29**: W = 0.87274, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
30. **Variable_30**: W = 0.8675, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
31. **Variable_31**: W = 0.86577, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
32. **Variable_32**: W = 0.88412, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
33. **Variable_33**: W = 0.87579, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
34. **Variable_34**: W = 0.86716, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
35. **Variable_35**: W = 0.85804, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
36. **Variable_36**: W = 0.87433, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
37. **Variable_37**: W = 0.88407, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
38. **Variable_38**: W = 0.87106, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
39. **Variable_39**: W = 0.86881, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
40. **Variable_40**: W = 0.85336, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
41. **Variable_41**: W = 0.87396, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
42. **Variable_42**: W = 0.88899, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
43. **Variable_43**: W = 0.87399, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
44. **Variable_44**: W = 0.85478, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
45. **Variable_45**: W = 0.85522, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
46. **Variable_46**: W = 0.85795, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
47. **Variable_47**: W = 0.88819, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
48. **Variable_48**: W = 0.87696, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
49. **Variable_49**: W = 0.8655, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.
    
50. **Variable_50**: W = 0.82652, p-value \< 2.2e-16
    -   Conclusion: Not normally distributed.

All 50 variables (`Variable_01` to `Variable_50`) show p-values less than 2.2e-16, indicating strong evidence against normality. None of the variables can be considered normally distributed based on the Shapiro-Wilk tests conducted. The Shapiro-Wilk tests indicate significant departures from normality for all variables tested. This implies that for any statistical analysis assuming normality (e.g., parametric tests like t-tests or ANOVA), alternative non-parametric methods might be more appropriate for these data sets to avoid bias or incorrect inferences.

### Wilcoxon Signed Rank Test

##### (Non - Parametric Mirror to One Sample T - Test)

### Explanation

The Wilcoxon signed-rank test is a non-parametric statistical test used to determine whether there is a significant difference between two related groups or paired samples. It is particularly useful when the data do not meet the assumptions required for a parametric test like the paired t-test, such as when the data are not normally distributed or when dealing with small sample sizes.

### Purpose:
The test assesses whether the medians of the differences between paired observations are statistically different from zero. It helps to determine if there is evidence that one group tends to have higher values than the other.

### Key Points:
- **Paired Data**: The test requires paired observations or matched pairs. For example, measurements on the same subjects before and after an intervention, or paired observations from the same subjects under different conditions.
  
- **Non-parametric**: It does not assume that the differences are normally distributed, making it robust when dealing with skewed or non-normally distributed data.
  
- **Null Hypothesis (H0)**: Assumes that there is no difference between the medians of the paired differences.
  
- **Alternative Hypothesis (H1)**: States that there is a difference between the medians of the paired differences.

### Interpretation:
- **Significance**: If the p-value (probability value) obtained from the test is less than a chosen significance level (commonly 0.05), we reject the null hypothesis. This suggests that there is a statistically significant difference between the two related samples or paired observations.
  
- **Non-significance**: If the p-value is greater than the significance level, we fail to reject the null hypothesis. This indicates that there is insufficient evidence to conclude a significant difference between the paired samples.

### Advantages:
- **Distribution-free**: Does not require the assumption of normality in the data.
  
- **Robust**: Less sensitive to outliers compared to parametric tests.
  
- **Applicability**: Suitable for small sample sizes and ordinal data.

### Limitations:
- **Less Power**: Generally less powerful than parametric tests when data meet parametric assumptions.
  
- **Tied Ranks**: Can be sensitive to ties (identical differences between pairs), which can affect the accuracy of the test statistic.

### Example Interpretation:
Imagine you conduct a study where you measure the performance of students before and after a tutoring program. After performing the Wilcoxon signed-rank test on the test score differences, you obtain a p-value of 0.02. This result would lead you to reject the null hypothesis, suggesting that there is a statistically significant improvement in students' performance after the tutoring program based on your data. The Wilcoxon signed-rank test provides a robust method for comparing paired samples when parametric assumptions are not met. It remains valuable in situations where data do not follow a normal distribution or when dealing with small sample sizes.

```{r, echo=FALSE}
wilcox.test(Variable_01, mu=3)
wilcox.test(Variable_02, mu=3)
wilcox.test(Variable_03, mu=3)
wilcox.test(Variable_04, mu=3)
wilcox.test(Variable_05, mu=3)
wilcox.test(Variable_06, mu=3)
wilcox.test(Variable_07, mu=3)
wilcox.test(Variable_08, mu=3)
wilcox.test(Variable_09, mu=3)
wilcox.test(Variable_10, mu=3)
wilcox.test(Variable_11, mu=3)
wilcox.test(Variable_12, mu=3)
wilcox.test(Variable_13, mu=3)
wilcox.test(Variable_14, mu=3)
wilcox.test(Variable_15, mu=3)
wilcox.test(Variable_16, mu=3)
wilcox.test(Variable_17, mu=3)
wilcox.test(Variable_18, mu=3)
wilcox.test(Variable_19, mu=3)
wilcox.test(Variable_20, mu=3)
wilcox.test(Variable_21, mu=3)
wilcox.test(Variable_22, mu=3)
wilcox.test(Variable_23, mu=3)
wilcox.test(Variable_24, mu=3)
wilcox.test(Variable_25, mu=3)
wilcox.test(Variable_26, mu=3)
wilcox.test(Variable_27, mu=3)
wilcox.test(Variable_28, mu=3)
wilcox.test(Variable_29, mu=3)
wilcox.test(Variable_30, mu=3)
wilcox.test(Variable_31, mu=3)
wilcox.test(Variable_32, mu=3)
wilcox.test(Variable_33, mu=3)
wilcox.test(Variable_34, mu=3)
wilcox.test(Variable_35, mu=3)
wilcox.test(Variable_36, mu=3)
wilcox.test(Variable_37, mu=3)
wilcox.test(Variable_38, mu=3)
wilcox.test(Variable_39, mu=3)
wilcox.test(Variable_40, mu=3)
wilcox.test(Variable_41, mu=3)
wilcox.test(Variable_42, mu=3)
wilcox.test(Variable_43, mu=3)
wilcox.test(Variable_44, mu=3)
wilcox.test(Variable_45, mu=3)
wilcox.test(Variable_46, mu=3)
wilcox.test(Variable_47, mu=3)
wilcox.test(Variable_48, mu=3)
wilcox.test(Variable_49, mu=3)
wilcox.test(Variable_50, mu=3)
```

### Testing of the Hypothesis

The output you've provided is from performing Wilcoxon signed-rank tests in R for each of your variables (`Variable_01` to `Variable_50`), testing against a median value of 3.

### Interpretation of Results:

Each test result includes:
- **V**: The test statistic (Wilcoxon signed-rank statistic).
- **p-value**: The significance level of the test.

1. **Wilcoxon Signed-Rank Test Output**:
   ```
   Wilcoxon signed rank test with continuity correction
   data:  Variable_X
   V = V_value, p-value = p-value_value
   alternative hypothesis: true location is not equal to 3
   ```

   - **Variable_X**: Represents each of your variables (`Variable_01` to `Variable_50`).
   - **V_value**: The computed test statistic.
   - **p-value_value**: The computed p-value for the test.
   - **Alternative Hypothesis**: Indicates that the test is two-tailed, testing if the true median (location) of the variable is not equal to 3.

2. **Interpretation**:
   - **p-value**: Typically, you compare the p-value to your significance level (commonly 0.05). If the p-value is less than 0.05, you reject the null hypothesis (H0: median = 3) in favor of the alternative hypothesis (H1: median ≠ 3). This suggests evidence that the median of the variable differs significantly from 3.
   - **V_value**: The exact value of the test statistic is less important for interpretation unless you are comparing it to critical values for a specific significance level.

3. **Specific Results**:
   - For all your variables (`Variable_01` to `Variable_50`), the p-value `< 2.2e-16` (extremely small), indicating strong evidence against the null hypothesis that the median equals 3. Therefore, for each variable, you would conclude that the median is significantly different from 3.

### Conclusion:
Based on the Wilcoxon signed-rank test results provided:
- There is strong statistical evidence (p < 0.05) that the median of each variable (`Variable_01` to `Variable_50`) is not equal to 3.
- These results are robust due to the very low p-values, suggesting highly significant differences from the assumed median value of 3. These findings imply that for each variable tested, you would reject the hypothesis that the median equals 3 in favor of the alternative that it does not. This is a powerful indication when analyzing distributions where medians are of interest, especially in non-parametric scenarios or when dealing with skewed or non-normal data.

### Plot of p-value

```{r, echo=FALSE}
p_values <- c(0.03497, 2.2e-16, 0.8235, 3e-10, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 
              2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16,
              2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16,
              2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16,
              2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16, 2.2e-16)

# Create a color vector for bars based on significance
colors <- ifelse(p_values < 0.05, "blue", "gray")

# Plotting
barplot(p_values, names.arg = paste0("Variable_", 1:length(p_values)), col = colors,
        main = "Wilcoxon Signed-Rank Test Results", ylab = "P-value", xlab = "Variables",
        ylim = c(0, max(p_values) + 0.1), border = "black")

# Add a legend
legend("topright", legend = c("Significant (p < 0.05)", "Not Significant (p >= 0.05)"), fill = c("blue", "gray"))
```

### Plot of Wilcoxon

```{r, echo=FALSE}
wilcoxon_values <- c(32395, 0, 19664, 31383, 0, 5893, 41957, 63551, 51160, 63253,
                     58826, 49968, 59953, 51773, 64702, 62514, 55411, 58286, 66675, 57984,
                     64214, 50417, 58279, 59145, 69745, 63140, 56507, 62886, 61868, 63060,
                     62758, 50601, 59307, 61801, 68008, 59058, 54109, 64103, 62658, 68860,
                     62837, 49090, 59127, 69638, 71460, 67366, 48705, 60613, 63511, 78996)
colors <- ifelse(wilcoxon_values < 20000, "blue", "gray")
barplot(wilcoxon_values, names.arg = paste0("Variable_", 1:length(wilcoxon_values)), col = colors,
        main = "Wilcoxon Signed-Rank Test Results", ylab = "Wilcoxon Statistic (W)",
        xlab = "Variables", border = "black")
legend("topright", legend = c("W < 20000", "W >= 20000"), fill = c("blue", "gray"))
```
