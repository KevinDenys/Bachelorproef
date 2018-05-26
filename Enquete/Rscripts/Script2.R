# Bachelorproef - Het digitale diabetes logboek en de Freestyle Libre sensor
# Kevin Denys
# DATA: Enquete
library(plyr)

# Dataset
dataSet <- read.csv("C:/Users/Kevin/Dropbox/Bachelorproef/Enquete/Splitted/CSV/all.csv", sep=";")
dataSetMan <- dataSet[which(dataSet$Welk.type.diabetes.heeft.u. == "Type 2"),]

# Deelnemers
n <- as.double(nrow(dataSet))

# Score - Feq Sets Man
fsManHerinneringen <- count(dataSetMan$Kies.1.of.0.voor.mij...Herinneringen.)
fsManVoeding <- count(dataSetMan$Kies.1.of.0.voor.mij...Voeding.bijhouden.)
fsManFotoNotitie <- count(dataSetMan$Kies.1.of.0.voor.mij...Foto.nemen.als.notitie.)
fsManNotitie <- count(dataSetMan$Kies.1.of.0.voor.mij...Notities.bijhouden.)
fsManInsulineDosis <- count(dataSetMan$Kies.1.of.0.voor.mij...Insuline.dosis.bijhouden.)
fsManTipsBijWaarde <- count(dataSetMan$Kies.1.of.0.voor.mij...Tips.geven.bij.een.bepaalde.waarde.)
fsManGevDelen <- count(dataSetMan$Kies.1.of.0.voor.mij...Gegevens.delen.met.andere.dokter.)
fsManMoetZonderInternet <- count(dataSetMan$Kies.1.of.0.voor.mij...Moet.werken.zonder.internet.)
fsManSmartWatch <- count(dataSetMan$Kies.1.of.0.voor.mij...Smartwatch.ondersteuning.)
fsManGeschiedenis <- count(dataSetMan$Kies.1.of.0.voor.mij...Zoeken.in.geschiedenis.)
fsManDigitalAssistant <- count(dataSetMan$Kies.1.of.0.voor.mij...Digitale.assistent..zegt.wat.u.moet.doen..)
fsManGrafiek <- count(dataSetMan$Kies.1.of.0.voor.mij...Grafieken.)
fsManImporteren <- count(dataSetMan$Kies.1.of.0.voor.mij...Gegevens.importeren.van.andere.plaatsen.)
fsManExporteren <- count(dataSetMan$Kies.1.of.0.voor.mij...Gegevens.importeren.van.andere.plaatsen.)
fsManGlucose <- count(dataSetMan$Glucose.waarden)
fsManInsulineType <- count(dataSetMan$Insuline.type)
fsManInsulinePlaats <- count(dataSetMan$Insuline.injecteer.plaats)
fsManActiviteiten <- count(dataSetMan$X.Sport..activiteiten)
fsManfsManL <- count(dataSetMan$Gebruikt.u.een.mobiele.applicatie.om.uw.sensor.uit.te.lezen.)

fsManHerinneringen$percentage = (fsManHerinneringen$freq / sum(fsManHerinneringen$freq))*100
fsManVoeding$percentage = (fsManVoeding$freq / sum(fsManVoeding$freq))*100
fsManFotoNotitie$percentage = (fsManFotoNotitie$freq / sum(fsManFotoNotitie$freq))*100
fsManNotitie$percentage = (fsManNotitie$freq / sum(fsManNotitie$freq))*100
fsManInsulineDosis$percentage = (fsManInsulineDosis$freq / sum(fsManInsulineDosis$freq))*100
fsManTipsBijWaarde$percentage = (fsManTipsBijWaarde$freq / sum(fsManTipsBijWaarde$freq))*100
fsManGevDelen$percentage = (fsManGevDelen$freq / sum(fsManGevDelen$freq))*100
fsManMoetZonderInternet$percentage = (fsManMoetZonderInternet$freq / sum(fsManMoetZonderInternet$freq))*100
fsManSmartWatch$percentage = (fsManSmartWatch$freq / sum(fsManSmartWatch$freq))*100
fsManGeschiedenis$percentage = (fsManGeschiedenis$freq / sum(fsManGeschiedenis$freq))*100
fsManDigitalAssistant$percentage = (fsManDigitalAssistant$freq / sum(fsManDigitalAssistant$freq))*100
fsManGrafiek$percentage = (fsManGrafiek$freq / sum(fsManGrafiek$freq))*100
fsManImporteren$percentage = (fsManImporteren$freq / sum(fsManImporteren$freq))*100
fsManExporteren$percentage = (fsManExporteren$freq / sum(fsManExporteren$freq))*100
fsManGlucose$percentage = (fsManGlucose$freq / sum(fsManGlucose$freq))*100
fsManInsulineType$percentage = (fsManInsulineType$freq / sum(fsManInsulineType$freq))*100
fsManInsulinePlaats$percentage = (fsManInsulinePlaats$freq / sum(fsManInsulinePlaats$freq))*100
fsManActiviteiten$percentage = (fsManActiviteiten$freq / sum(fsManActiviteiten$freq))*100
fsManfsManL$percentage = (fsManfsManL$freq / sum(fsManfsManL$freq))*100