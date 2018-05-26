# Bachelorproef - Het digitale diabetes logboek en de Freestyle Libre sensor
# Kevin Denys
# DATA: Enquete
# 00 - 18 Jaar
library(plyr)

# Dataset
dataSet <- read.csv("C:/Users/Kevin/Dropbox/Bachelorproef/Enquete/Splitted/CSV/0018.csv", sep=";")
dataSetGebruiktPapier <- dataSet[which(dataSet$Hoe.houdt.u.uw.diabetes.waarden.bij. == "Papier logboek"),]
dataSetGebruiktDigitaal <- dataSet[which(dataSet$Hoe.houdt.u.uw.diabetes.waarden.bij. != "Papier logboek"),]

# Deelnemers
n <- as.double(nrow(dataSet))
# Freq Sets
diabetesType <- count(dataSet$Welk.type.diabetes.heeft.u.)
geslacht <- count(dataSet$Wat.is.uw.geslacht.)
opgevold <- count(dataSet$Wordt.u.opgevolgd.door.een.dokter...ziekenhuis.)
hoeVaakControle <- count(dataSet$Hoe.vaak.gaat.u.op.controle.)
bijHoudenLogboek <- count(dataSet$Houdt.u.uw.diabetes.waarden.bij.in.een.logboek.)
waaromNietBijHouden <- count(dataSet$Kan.u.kort.uitleggen.waarom.u.geen.logboek.bijhoudt.)
hoeBijHoudenLogboek <- count(dataSet$Hoe.houdt.u.uw.diabetes.waarden.bij.)
# Antwoorden over Papier - Enkel papier
papierWeleMethode <- count(dataSetGebruiktPapier$Wat.gebruikt.u.)
papierFreqVergeten <- count(dataSetGebruiktPapier$Hoe.vaak.vergeet.u.om.uw.waarden.te.noteren...Per.week.)
papierVerliestNotitie <- count(dataSetGebruiktPapier$Verliest.u.soms.uw.gemaakte.notities.)
papierGeschriftNietLezen <- count(dataSetGebruiktPapier$Kan.u.soms.uw.geschrift.niet.lezen.)
papierGebruiktEenAlarm <- count(dataSetGebruiktPapier$Gebruikt.u.een.alarm.om.diabetes.gerelateerde.zaken.niet.te.vergeten.)
papierGebruiktOoitDigitaleApp <- count(dataSetGebruiktPapier$Heeft.u.ooit.een.digitaal.diabetes.logboek.gebruikt.)

# Antwoorden over Digitale applicaties - Papier
digPapierBestuuringsSysteem <- count(dataSetGebruiktPapier$Welk.besturingssysteem.heeft.u.smartphone.)
digPapierGebruiktWelkeApp <- count(dataSetGebruiktPapier$Gebruikt.u.een.applicatie.speciaal.gemaakt.voor.diabetes.)
digPapierNaamVanDezeApp <- count(dataSetGebruiktPapier$Wat.is.de.naam.van.deze.applicatie.)
digPapierBetaaldVoorApplicatie <- count(dataSetGebruiktPapier$Betaald.u.voor.deze.applicatie.)
digPapierZouBetalen <- count(dataSetGebruiktPapier$Zou.u.ooit.betalen.voor.een.digitaal.logboek.)
digPapierUiterlijkFunction <- count(dataSetGebruiktPapier$Kiest.u.een.smartphone.applicatie..algemeen..op.basis.van.uiterlijk.of.op.basis.van.functionaliteit.)
digPapierUiterlijkSnelheid <- count(dataSetGebruiktPapier$Wat.spreekt.u.het.meeste.aan.)
digPapierDelenMetZorg <- count(dataSetGebruiktPapier$Deelt.u.uw.diabetes.logboek.resultaten.met.uw.zorgverlener.)

# Antwoorden over Digitale applicaties - Digitaal
digDigitaalBestuuringsSysteem <- count(dataSetGebruiktDigitaal$Welk.besturingssysteem.heeft.u.smartphone.)
digDigitaalGebruiktWelkeApp <- count(dataSetGebruiktDigitaal$Gebruikt.u.een.applicatie.speciaal.gemaakt.voor.diabetes.)
digDigitaalNaamVanDezeApp <- count(dataSetGebruiktDigitaal$Wat.is.de.naam.van.deze.applicatie.)
digDigitaalBetaaldVoorApplicatie <- count(dataSetGebruiktDigitaal$Betaald.u.voor.deze.applicatie.)
digDigitaalZouBetalen <- count(dataSetGebruiktDigitaal$Zou.u.ooit.betalen.voor.een.digitaal.logboek.)
digDigitaalUiterlijkFunction <- count(dataSetGebruiktDigitaal$Kiest.u.een.smartphone.applicatie..algemeen..op.basis.van.uiterlijk.of.op.basis.van.functionaliteit.)
digDigitaalUiterlijkSnelheid <- count(dataSetGebruiktDigitaal$Wat.spreekt.u.het.meeste.aan.)
digDigitaalDelenMetZorg <- count(dataSetGebruiktDigitaal$Deelt.u.uw.diabetes.logboek.resultaten.met.uw.zorgverlener.)

# Antwoorden over Digitaal applicaties - Samen
allesDigitaalBestuuringsSysteem <- count(dataSet$Welk.besturingssysteem.heeft.u.smartphone.)
allesDigitaalGebruiktWelkeApp <- count(dataSet$Gebruikt.u.een.applicatie.speciaal.gemaakt.voor.diabetes.)
allesDigitaalNaamVanDezeApp <- count(dataSet$Wat.is.de.naam.van.deze.applicatie.)
allesDigitaalBetaaldVoorApplicatie <- count(dataSet$Betaald.u.voor.deze.applicatie.)
allesDigitaalZouBetalen <- count(dataSet$Zou.u.ooit.betalen.voor.een.digitaal.logboek.)
allesDigitaalUiterlijkFunction <- count(dataSet$Kiest.u.een.smartphone.applicatie..algemeen..op.basis.van.uiterlijk.of.op.basis.van.functionaliteit.)
allesDigitaalUiterlijkSnelheid <- count(dataSet$Wat.spreekt.u.het.meeste.aan.)
allesDigitaalDelenMetZorg <- count(dataSet$Deelt.u.uw.diabetes.logboek.resultaten.met.uw.zorgverlener.)

# Score - Feq Sets
fsHerinneringen <- count(dataSet$Kies.1.of.0.voor.mij...Herinneringen.)
fsVoeding <- count(dataSet$Kies.1.of.0.voor.mij...Voeding.bijhouden.)
fsFotoNotitie <- count(dataSet$Kies.1.of.0.voor.mij...Foto.nemen.als.notitie.)
fsNotitie <- count(dataSet$Kies.1.of.0.voor.mij...Notities.bijhouden.)
fsInsulineDosis <- count(dataSet$Kies.1.of.0.voor.mij...Insuline.dosis.bijhouden.)
fsTipsBijWaarde <- count(dataSet$Kies.1.of.0.voor.mij...Tips.geven.bij.een.bepaalde.waarde.)
fsGevDelen <- count(dataSet$Kies.1.of.0.voor.mij...Gegevens.delen.met.andere.dokter.)
fsMoetZonderInternet <- count(dataSet$Kies.1.of.0.voor.mij...Moet.werken.zonder.internet.)
fsSmartWatch <- count(dataSet$Kies.1.of.0.voor.mij...Smartwatch.ondersteuning.)
fsGeschiedenis <- count(dataSet$Kies.1.of.0.voor.mij...Zoeken.in.geschiedenis.)
fsDigitalAssistant <- count(dataSet$Kies.1.of.0.voor.mij...Digitale.assistent..zegt.wat.u.moet.doen..)
fsGrafiek <- count(dataSet$Kies.1.of.0.voor.mij...Grafieken.)
fsImporteren <- count(dataSet$Kies.1.of.0.voor.mij...Gegevens.importeren.van.andere.plaatsen.)
fsExporteren <- count(dataSet$Kies.1.of.0.voor.mij...Gegevens.importeren.van.andere.plaatsen.)
fsGlucose <- count(dataSet$Glucose.waarden)
fsInsulineType <- count(dataSet$Insuline.type)
fsInsulinePlaats <- count(dataSet$Insuline.injecteer.plaats)
fsActiviteiten <- count(dataSet$X.Sport..activiteiten)
fsFSL <- count(dataSet$Gebruikt.u.een.mobiele.applicatie.om.uw.sensor.uit.te.lezen.)

# Score - Op100

scoreHonderdHerinneringen <- fsHerinneringen$freq[2] / n *100
scoreHonderdVoeding <- fsVoeding$freq[2] / n *100
scoreHonderdFotoNotitie <- fsFotoNotitie$freq[2] / n *100
scoreHonderdNotitie <- fsNotitie$freq[2] / n *100
scoreHonderdInsulineDosis <- fsInsulineDosis$freq[2] / n *100
scoreHonderdTipsBijWaarde <- fsTipsBijWaarde$freq[2] / n *100
scoreHonderdGevDelen <- fsGevDelen$freq[2] / n *100
scoreHonderdMoetZonderInternet <- fsMoetZonderInternet$freq[2] / n *100
scoreHonderdSmartWatch <- fsSmartWatch$freq[2] / n *100
scoreHonderdGeschiedenis <- fsGeschiedenis$freq[2] / n *100
scoreHonderdDigitalAssistant <- fsDigitalAssistant$freq[2] / n *100
scoreHonderdGrafiek <- fsGrafiek$freq[2] / n *100
scoreHonderdImporteren <- fsImporteren$freq[2] / n *100
scoreHonderdExporteren <- fsExporteren$freq[2] / n *100
scoreHonderdGlucose <- fsGlucose$freq[2] / n *100
scoreHonderdInsulineType <- fsInsulineType$freq[2] / n *100
scoreHonderdInsulinePlaats <- fsInsulinePlaats$freq[2] / n *100
scoreHonderdActiviteiten <- fsActiviteiten$freq[2] / n *100
scoreHonderdFSL <- fsFSL$freq[2] / (fsFSL$freq[2]+fsFSL$freq[3]) *100
scoreHonderdAlarm <- papierGebruiktEenAlarm$freq[1] / ( papierGebruiktEenAlarm$freq[1]+ papierGebruiktEenAlarm$freq[2]) *100
# Antwoorden FSL onderzoek
methodeMeten <- count(dataSet$Hoe.meet.u.uw.glucose.)
weetWatFCgmIS <- count(dataSet$Weet.u.wat.een.Flash.Continue.Glucose.Monitoring.is.)
zouUeenFCgmWillen <- count(dataSet$Zou.u.ooit.een.Flash.Continue.Glucose.Monitoring.willen.)
zouUterugVinger <- count(dataSet$Zou.u.ooit.terug.vinger.prikken.)
terugbetaling <- count(dataSet$Wordt.uw.sensor.terugbetaald.door.een.ziekteverzekering.)
hoevaakScannen <- count(dataSet$Hoe.vaak.per.dag.scant.u.)
