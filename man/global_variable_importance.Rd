% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/global_variable_importance.R
\name{global_variable_importance}
\alias{global_variable_importance}
\title{Global Variable Importance measure based on Partial Dependence profiles.}
\usage{
global_variable_importance(profiles)
}
\arguments{
\item{profiles}{\code{data.frame} generated by \code{DALEX::model_profile()}, \code{DALEX::variable_profile()} or \code{ingredients::partial_dependence()}}
}
\value{
A \code{data.frame} of the class \code{global_variable_importance}.
It's a \code{data.frame} with calculated global variable importance measure.
}
\description{
This function calculate global importance measure.
}
\examples{


library("DALEX")
data(apartments)

library("randomForest")
apartments_rf_model <- randomForest(m2.price ~ construction.year + surface +
                                    floor + no.rooms, data = apartments)

explainer_rf <- explain(apartments_rf_model, data = apartmentsTest[,2:5],
                        y = apartmentsTest$m2.price)

profiles <- model_profile(explainer_rf)

library("vivo")
global_variable_importance(profiles)


}
