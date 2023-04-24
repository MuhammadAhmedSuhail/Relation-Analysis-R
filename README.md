# Relation Analysis R

## Project Description

This project aims to analyze the admissions in a university using R programming language. The focus of this project is to test the relation between various variables such as SSC Marks Obtained, NU_BS_Test Marks, and HSSC Marks Obtained. The project also involves creating residual plots and calculating r2 values to confirm the results obtained.

## Approach

To achieve the goals of this project, the following approach was taken:

1. **Data Cleaning and Exploration:** The first step was to clean and explore the data to identify any missing values or outliers. I used the concepts of IQR to perform this task.

2. **Data Preprocessing:** Next, I preprocessed the data by dropping the nan values in the dataset.

3. **Testing for Relationship:** I then tested for the relationship between the variables using scatter plots and correlation tests. For linear regression, I used the `lm()` function in R to fit the model and calculate the coefficients.

4. **Residual Plotting:** To check the assumptions of the linear regression model, I plotted the residuals against the fitted values and the predictor variables. I also performed the Breusch-Pagan test for heteroscedasticity using the `bptest()` function in R.

5. **Calculating r2:** Finally, I calculated r2 for each part of question no 1 and confirmed it by calculating the same using the residuals. This was done using the `summary()` function in R to obtain the r-squared value.

## Data Analysis

### Part 1
In this part, I tested if there is any relation (linear or exponential) between the following pair of variables:

- BS Marks and SSC Marks Obtained 

![image](https://user-images.githubusercontent.com/72251313/234008070-a5217d94-022a-47cb-870c-e76450777dc9.png)

There is a **weak linear relation** between the variables as shown by the graph.

- SSC Marks Obtained and NU_BS_Test Marks

![image](https://user-images.githubusercontent.com/72251313/234008311-5362aca8-648d-4280-9669-ad9922e69c60.png)

There is a **very weak linear relation** between the variables

- SSC Marks Obtained and HSSC Marks Obtained

![image](https://user-images.githubusercontent.com/72251313/234008523-af8fa197-45bf-4748-8e14-bd2bf3cb5dcc.png)

There is a **weak Linear relation** between variables as shown by the graph.

### Part 2
In this part, I plot the residual plots for the plots generated in the previous part. The residual plots help us understand if there is any pattern in the residuals or if they are randomly scattered.

![image](https://user-images.githubusercontent.com/72251313/234008960-b8bf229c-cf4b-4135-b6ea-87066966a64d.png)

![image](https://user-images.githubusercontent.com/72251313/234009005-f38833b7-906e-4c4e-bdca-57887aa21ed9.png)

![image](https://user-images.githubusercontent.com/72251313/234009036-7089f442-5f60-431b-9dbb-5fd03f97373e.png)

### Part 3
In this part, I calculate r2 for each plot generated in the previous part and confirm it by calculating the same by using the residuals. The r2 values help us understand the goodness of fit of the regression models.

The Output of this part is highlighted in the R file attached.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
You will need to have R installed on your machine. You can download the latest version of [R](https://cran.r-project.org/bin/windows/base/) here.
</br>
You will also need to have R Studio on your machine. You can download the latest version of [R Studio](https://posit.co/download/rstudio-desktop/) here.

### Installing
Clone this repository onto your local machine.
```
git clone https://github.com/MuhammadAhmedSuhail/Relation-Analysis-R.git
```
Run `analysis.r` on RStudio to analyze the data

## Conclusion
Through this project, I was able to analyze the admissions in the university and test the relationship between various variables. The results obtained can be useful in predicting future admissions and identifying areas for improvement.

Future Work
In the future, I can expand this project by analyzing other variables such as the type of program applied for, the admission quota, and the academic background of the applicant. I can also explore more advanced regression techniques such as multiple regression to improve the accuracy of our predictions.

## Author:
- Muhammad Ahmed Suhail

## Acknowledgments:
- This project was completed as an assignment for **Advanced Statistics** at FAST - NUCES Islamabad.
