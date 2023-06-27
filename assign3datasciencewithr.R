library(ggplot2)
#1
# Load the ggplot2 package
library(ggplot2)

# Load the iris dataset
data(iris)

# Create a scatterplot with Sepal.Length and Petal.Length, colored by Species
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Petal Length") +
  ggtitle("Scatterplot of Sepal Length vs. Petal Length by Species")

#2.
data("txhousing")
txhousing <- txhousing[complete.cases(txhousing),]
#View(txhousing)


ggplot(txhousing, aes(x = year, y = sales)) +
  geom_point()

ggplot(txhousing, aes(x = year, y = sales)) +
  geom_point() +
  coord_cartesian(xlim = c(2005, 2010))

ggplot(txhousing, aes(x = inventory)) +
  geom_bar()

ggplot(txhousing, aes(x = sales, y = volume)) +
  geom_point()



gg <- ggplot(txhousing, aes(x=year, y=volume)) + 
     geom_point(aes(col=sales, size=median)) + 
   geom_smooth(method="loess", se=F) + 
   labs(subtitle="sales vs volume", 
                y="volume", 
               x="sales", 
                title="Scatterplot", 
                caption = "Source: txhousing")
 plot(gg)

 
 
 
 
 
 
 
 
 
 
 
 
#3.
  # Load the Titanic dataset
    titanic <- read.csv("titanic.csv")
  
  
   # Create a scatterplot of fare vs. survival, colored by Sex
    ggplot(titanic, aes(x = Fare, y = factor(Survived), color = factor(Sex))) +
       geom_boxplot() +
       labs(x = "Fair",y=NULL, color = "Sex") +
       ggtitle("Fare Vs Survival",subtitle = "Irrespective of Sex,richer people survived" ) +
       scale_color_manual(values = c("red", "skyblue"), labels = c("female", "male")) +
       scale_y_discrete(labels = c("Died", "Survived"))
       theme_minimal()
