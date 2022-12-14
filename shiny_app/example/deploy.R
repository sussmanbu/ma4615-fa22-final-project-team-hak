# install.packages('rsconnect')
library(rsconnect)

rsconnect::setAccountInfo(name='huyphan',
                          token='3ED46E46592B95CCACFFEA1AED5C211C',
                          secret='m2NTeq931qK64eMN/vGDYF2dc9h6bG9y97VxS7rG')

rsconnect::deployApp('./app.R')
