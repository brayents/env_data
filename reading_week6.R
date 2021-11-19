rm(list = ls())

pol_n_predation = 26
pol_n_no_predation = 184
pol_n_total = pol_n_predation + pol_n_no_predation
pol_predation_rate = pol_n_predation / pol_n_total

print(
  paste0(
    "The seed predation rate for Polyscias fulva is: ",
    round(pol_predation_rate, digits = 3))) 


psd_n_predation = 25
psd_n_no_predation = 706
psd_n_total = psd_n_predation + psd_n_no_predation
psd_predation_rate = psd_n_predation / psd_n_total

print(
  paste0(
    "The seed predation rate for Pseudospondias microcarpa is: ",
    round(psd_predation_rate, digits = 3)))


tab <- matrix(c(pol_n_predation, pol_n_no_predation, pol_n_total, pol_predation_rate, psd_n_predation, psd_n_no_predation, psd_n_total, psd_predation_rate), ncol=2, byrow=FALSE)
colnames(tab) <- c('colName1','colName2','colName3')
rownames(tab) <- c('rowName1','rowName2','rowName3')
tab <- as.table(tab)
tab
