------------import fft 16000------------------
#CREATE A DATA FRAME
FFT_16000 = data.frame(stringsAsFactors = FALSE)
## create the namespace
DBNS = "Main_Bearing.FFT_16000"
## create the cursor we will iterate over, basically a select * in SQL
cursor = mongo.find(mongo, DBNS)
## create the counter
i = 1
## iterate over the cursor
while (mongo.cursor.next(cursor)) {
    # iterate and grab the next record
    tmp = mongo.bson.to.list(mongo.cursor.value(cursor))
    # make it a dataframe
    tmp.df = as.data.frame(t(unlist(tmp)), stringsAsFactors = F)
    # bind to the master dataframe
    FFT_16000 = rbind.fill(FFT_16000, tmp.df)
    # to print a message, uncomment the next 2 lines cat('finished game ', i,
    # '\n') i = i +1
}
------------import t001-------------------
FFT_t001 = data.frame(stringsAsFactors = FALSE)
 
 ## create the namespace
 DBNS = "T001.FFT_01000"
 
 ## create the cursor we will iterate over, basically a select * in SQL
 cursor = mongo.find(mongo, DBNS)
 
 ## create the counter
 i = 1
 
 ## iterate over the cursor
 while (mongo.cursor.next(cursor)) {
     # iterate and grab the next record
     tmp = mongo.bson.to.list(mongo.cursor.value(cursor))
     # make it a dataframe
     tmp.df = as.data.frame(t(unlist(tmp)), stringsAsFactors = F)
     # bind to the master dataframe
     FFT_t001 = rbind.fill(FFT_t001, tmp.df)
     # to print a message, uncomment the next 2 lines cat('finished game ', i,
     # '\n') i = i +1
 }
-----------------import t002----------------
FFT_t002 = data.frame(stringsAsFactors = FALSE)
 
 ## create the namespace
 DBNS = "T002.FFT_01000"
 
 ## create the cursor we will iterate over, basically a select * in SQL
 cursor = mongo.find(mongo, DBNS)
 
 ## create the counter
 i = 1
 
 ## iterate over the cursor
 while (mongo.cursor.next(cursor)) {
     # iterate and grab the next record
     tmp = mongo.bson.to.list(mongo.cursor.value(cursor))
     # make it a dataframe
     tmp.df = as.data.frame(t(unlist(tmp)), stringsAsFactors = F)
     # bind to the master dataframe
     FFT_t002 = rbind.fill(FFT_t002, tmp.df)
     # to print a message, uncomment the next 2 lines cat('finished game ', i,
     # '\n') i = i +1
 }
-----------------import t003----------------
FFT_t003 = data.frame(stringsAsFactors = FALSE)
 
 ## create the namespace
 DBNS = "T003.FFT_01000"
 
 ## create the cursor we will iterate over, basically a select * in SQL
 cursor = mongo.find(mongo, DBNS)
 
 ## create the counter
 i = 1
 
 ## iterate over the cursor
 while (mongo.cursor.next(cursor)) {
     # iterate and grab the next record
     tmp = mongo.bson.to.list(mongo.cursor.value(cursor))
     # make it a dataframe
     tmp.df = as.data.frame(t(unlist(tmp)), stringsAsFactors = F)
     # bind to the master dataframe
     FFT_t003 = rbind.fill(FFT_t003, tmp.df)
     # to print a message, uncomment the next 2 lines cat('finished game ', i,
     # '\n') i = i +1
 }
-----------------import t009----------------
FFT_t009 = data.frame(stringsAsFactors = FALSE)
 
 ## create the namespace
 DBNS = "T009.FFT_01000"
 
 ## create the cursor we will iterate over, basically a select * in SQL
 cursor = mongo.find(mongo, DBNS)
 
 ## create the counter
 i = 1
 
 ## iterate over the cursor
 while (mongo.cursor.next(cursor)) {
     # iterate and grab the next record
     tmp = mongo.bson.to.list(mongo.cursor.value(cursor))
     # make it a dataframe
     tmp.df = as.data.frame(t(unlist(tmp)), stringsAsFactors = F)
     # bind to the master dataframe
     FFT_t009 = rbind.fill(FFT_t009, tmp.df)
     # to print a message, uncomment the next 2 lines cat('finished game ', i,
     # '\n') i = i +1
 }
#only oclumns I want and add fft
#smaller_16000<-subset(FFT_16000, select=c("T009_RawData.Record.Measurement.Conditions.Condition.WPS-ActivePower-Counts","T009_RawData.Record.Measurement.Trigger_Time","T009_Measurments.RPM"))
smaller_T001<-subset(FFT_t001, select=c("T009_RawData.Record.Measurement.Conditions.Condition.WPS-ActivePower-Counts","T009_RawData.Record.Measurement.Trigger_Time","T009_Measurments.RPM"))
smaller_T001<-smaller_T001[order(smaller_T001$T009_RawData.Record.Measurement.Trigger_Time),]
smaller_T001<-tail(smaller_T001,200)
smaller_T002<-subset(FFT_t002, select=c("T009_RawData.Record.Measurement.Conditions.Condition.WPS-ActivePower-Counts","T009_RawData.Record.Measurement.Trigger_Time","T009_Measurments.RPM"))
smaller_T002<-smaller_T002[order(smaller_T002$T009_RawData.Record.Measurement.Trigger_Time),]
smaller_T002<-tail(smaller_T002,200)
smaller_T003<-subset(FFT_t003, select=c("T009_RawData.Record.Measurement.Conditions.Condition.WPS-ActivePower-Counts","T009_RawData.Record.Measurement.Trigger_Time","T009_Measurments.RPM"))
smaller_T003<-smaller_T003[order(smaller_T003$T009_RawData.Record.Measurement.Trigger_Time),]
smaller_T003<-tail(smaller_T003,200)
smaller_T009<-subset(FFT_t009, select=c("T009_RawData.Record.Measurement.Conditions.Condition.WPS-ActivePower-Counts","T009_RawData.Record.Measurement.Trigger_Time","T009_Measurments.RPM"))
smaller_T009<-smaller_T009[order(smaller_T009$T009_RawData.Record.Measurement.Trigger_Time),]
smaller_T009<-tail(smaller_T009,200)
smaller_T001$fft<-"T001"
smaller_T002$fft<-"T002"
smaller_T003$fft<-"T003"
smaller_T009$fft<-"T009"
#combine and graph the data
graph_data<-rbind(smaller_T001,smaller_T002,smaller_T003,smaller_T009)
plot_ly(graph_data,x=graph_data$`T009_RawData.Record.Measurement.Conditions.Condition.WPS-ActivePower-Counts`, y=graph_data$T009_RawData.Record.Measurement.Trigger_Time,z=graph_data$T009_Measurments.RPM,color=graph_data$fft,mode="lines")