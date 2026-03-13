source("http://thegrantlab.org/misc/cdc.R")
plot(x = cdc$height, y = cdc$weight, xlab = "Height (inches)", ylab = "Weight (pounds)")
cor(cdc$height, cdc$weight)
hist(cdc$height)
hist(cdc$weight)
height_m <- cdc$height * 0.0254
weight_kg <- cdc$weight * 0.453592
plot(cdc$height, (weight_kg)/(height_m^2), xlab = "height", ylab = "BMI")
cor(cdc$height, (weight_kg)/(height_m^2))
bmi <- (weight_kg)/(height_m^2)
sum(bmi >= 30)

plot(cdc[1:100, "height"], cdc[1:100, "weight"], xlab = "Height (inches)", ylab = "Weight (pounds)")

gender <- cdc$gender
obese <- (weight_kg)/(height_m^2) >= 30
table(gender[obese])
