# Project structure

This project is intended to analyze different southafrican mobility aspects and its structure is as follows:

- /R: Includes recurring R functions to be sourced
- /Data: Collects original datasets and documentation
- /doc: Includes reports, proposals and any document created within the project.
- /output: Collects processed datasets, logs and other outputs.
- /figs: Collects figures produced by analysis.

The script analysis.R contains all the code necessary to run the analysis.

# Data


[NHTS 2013](http://www.datafirst.uct.ac.za/dataportal/index.php/catalog/501) is originally stored in two .dta file contained in /Data:

- nhts-2013-house-v1-20140718.dta [9.4 MB]
- nhts-2013-person-v1-20140718.dta [51.3 MB]

Data was downloaded on 1st December 2014.


The NHTS 2013 was executed during February and March 2013 across all nine provinces using a two-staged random stratified sample of 51341 dwelling units (DUs). Information related to technical aspects of the survey can be found in the following documents:
	* Q_NHTS 2013.pdf - Questionnaire description
	* NHTS 2013 Metadata.pdf - Sampling, weighting and data collection
	

The survey covered land, air and water transport related travel. Land transport focuses on public and private transport and includes non-motorised transport such as walking all the way to one's destination, cycling or using animal-drawn vehicles. It encompasses travel related to education facilities, work, business and leisure and migration for individuals. Most of the work and education related questions were applicable to a randomly selected travel day that could be any day from Monday to Friday. In addition to these themes, household-level information was also collected about the demographic profiles of individuals, the socio-economic circumstances of households, and general attitudes and perceptions about transport.

The target population of the survey consisted of all private households and residents in workers' hostels in the nine provinces of South Africa. The survey does not cover other collective living quarters such as students' hostels, old- age homes, hospitals, prisons and military barracks and is therefore only representative of non-institutionalised and non-military persons in South Africa.

The objectives of the National Household Travel Survey 2013 have been formulated within the context of the transport related policy, and strategic and planning responsibilities of the Department of Transport, the requirements of the Medium Term Strategic Framework (MTSF) 2009–2014, as well as the imperatives of the National Development Plan 2030 with a special focus on households in South Africa. These objectives were:

1. To understand the transport needs and behaviour of households
2. To ascertain the cost of transport for households (to assess level of affordability)
3. To assess attitudes towards transport services and facilities
4. To measure the availability, ownership and use of motor cars
5. To understand the travel choices of different market segments
6. To determine accessibility to services such as workplaces, education facilites, social needs markets and others
7. To assess the effectiveness of the existing subsidy mechanisms
8. To assist in identifying the disadvantaged regions and transport needs for investment in transport infrastructure
9. To measure key performance indicators (KPIs) as required by the National Land Transport Act (Act No. 5 of 2009) and the National Land Transport Strategic Framework
10. To measure usage of non-motorised transport by households
11. To assess accessibility of public transport for people with disabilities and the elderly in the communities.

## Variables

### Person data file

- Unique number (UQNO): Unique Household Identifier. This is the unique household identifier, which can be used to link data from this file with data for the same household from other files. This is a 19-digit number that is made up of the PSU number, dwelling unit number, Household number and questionnaire number.

- Person number (PersonNO): The two fields above (unique number and person number) create a 19-digit unique person identifier, which can be used to link a record from this file with another record for the same individuals from other files.
- Travel Analysis zones (TAZCODE): The National Department of Transport identified 342 National Travel Analysis Zones (TAZs) through consultation with different transport authorities throughout the country. The whole country is divided into TAZs. These TAZS are based along the district municipality and provincial boundaries. However, there are instances where the TAZs cut across provincial boundaries.

- Province (Pr_code): South African provinces according to the provincial boundaries as demarcated in December 2005:
	+ Western Cape = 1
	+ Eastern Cape = 2
	+ Northern Cape = 3
	+ Free State = 4
	+ KwaZulu Natal = 5
	+ North West = 6
	+ Gauteng = 7
	+ Mpumalanga = 8
	+ Limpopo = 9

- Stayed Nights (B_NIGHTS): This question is asked for each person found in the selected dwelling. This question is important because it identifies the persons to be included as members of the household and the information regarding them should be recorded as obtained. According to the definition above, a person must have stayed at least four nights a week, on average, during the last four weeks and shared resources in the household to be regarded as a household member. If both of these requirements are not met by an individual, that individual is eliminated on thse secod option (2=No). The instruction in this question is to end the interview with those who have answered ‘No’ in this question.

- Gender (GENDER):
	+ Male = 1 
	+ Female = 2

- Age (D_AGE):
	+ Less than 1 year = 0 
	+ Valid range: 1 – 110

- Population group (RACE):
	+ African/Black = 1
	+ Coloured = 2
	+ Indian/asian = 3 
	+ White = 4

- Have drivers licence (F_HAVELICENCE): The aim on this question is to identify the number of people eligible to drive. The interest is in the possession of driver’s licenses. The instruction is to answer “No” for persons aged 15 years and less. The instruction in this question is to skip to H for those who have answered ‘No’ in this question:
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Motorcycle (G_MOTORCYC): Motorcycle license
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Car (G_CAR): Car license
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Heavy vehicle (G_HEAVYVEH): Heavy vehicle license
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

Disability: The aim of this question is to measure disability of household members.

- Seeing (even with glasses if he/she wears them) (Q11ASEE)
	+ No difficulty = 1
	+ Some difficulty = 2
	+ A lot of difficulty = 3
 	+ Unable to do = 4
	+ Do not know = 5
	+ Cannot yet be determined = 6
	+ Unspecified = 9

- Hearing (even with a hearing aid, if he/she wears one) (Q11BHEAR)
	+ No difficulty = 1
	+ Some difficulty = 2
	+ A lot of difficulty = 3
 	+ Unable to do = 4
	+ Do not know = 5
	+ Cannot yet be determined = 6
	+ Unspecified = 9


- Walking a kilometre or climbing a flight of steps (Q11CWALK)
	+ No difficulty = 1
	+ Some difficulty = 2
	+ A lot of difficulty = 3
 	+ Unable to do = 4
	+ Do not know = 5
	+ Cannot yet be determined = 6
	+ Unspecified = 9

- Remembering and concentrating (Q11DCONCENTR)
	+ No difficulty = 1
	+ Some difficulty = 2
	+ A lot of difficulty = 3
 	+ Unable to do = 4
	+ Do not know = 5
	+ Cannot yet be determined = 6
	+ Unspecified = 9

- With self-care, such as washing or dressing (Q11ECARE)
	+ No difficulty = 1
	+ Some difficulty = 2
	+ A lot of difficulty = 3
 	+ Unable to do = 4
	+ Do not know = 5
	+ Cannot yet be determined = 6
	+ Unspecified = 9

- In communicating in his/her usual language including sign language (Q11FCOMM): Communication here does not refer to the actual use of language, but the mental ability to use language to communicate. It therefore does not refer to a young child of two years who cannot yet speak properly. A child has to be evaluated against his age group – is his ability to communicate normal for his age group? Think for example how someone who is mentally disabled and 20 years old, communicate with others. That is the kind of communication disability that needs to be identified in this question.

	+ No difficulty = 1
	+ Some difficulty = 2
	+ A lot of difficulty = 3
 	+ Unable to do = 4
	+ Do not know = 5
	+ Cannot yet be determined = 6
	+ Unspecified = 9

Assistive devices: This question is aimed at finding out whether household members use any correctional aids for their general functioning. 

- Eye glasses/spectacles/contact lenses (Q12EYE)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Hearing aid (Q12HEAR)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Walking stick/walking frame (Q12WALK)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- A wheelchair (Q12WCHAIR)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Chronic medication (Q12CHRONM)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Crutches (Q12CRUTCH)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Guide dogs/assisatance dogs (Q12GUID)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Personal assistant (Q12PA)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Other assistive devices (Q12OTHR): ‘Other assistive devices' refers to anything that helps people with their normal functioning. It could be a guide dog for the blind; oxygen tank to assist with breathing; or, in the case of someone who had their colon removed, a bag to assist with their bodily waste clearance, etc.
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9



- Social grant (Q13SOG): The aim of this question is to determine whether there are people in the household who receive social grant, pension or social relief assistance. Receiver refers to the person who qualifies for the grant and not the one who collects the money. Persons who receive pension from previous employment are excluded in this question. 
	+ Yes = 1
	+ No = 2
	+ Do not know = 3
	+ Unspecified = 9

Grants should be marked in the column of the person who qualifies for the grant and not the one that receives/collects the grant. In the case of disability, the person who has the disability is the one who receives the grant and it should therefore be marked in his/her column. A person cannot receive grant in aid without being in receipt of another grant already. This is usually a war veteran's grant and/or an old-age grant. A child who is disabled will not get a disability grant, but a care dependency grant.
The old-age grant is given to the aged who do not have any or a small source of income by the State. Someone who used to work for the State, for example a policeman or nurse, who gets a pension from the State, does not receive an old- age grant, but a pension and should not be listed under option 1.

- Old-age grant (Q14OAG)
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Disability grant (Q14DIS)
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Child support grant (Q14CSG)
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Care dependency grant (Q14CAR)
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Foster child grant (Q14FOST)
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- War veterans grant (Q14WARVT)
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Grant-in-aid (Q14GRN)
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Social relief of distress (Q14SOC)
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

Days usually travel: The aim of the question is to establish on which days of the week people usually travel. The main interest is on the day of the week that household members usually travel when visiting their homes.
- Monday (Q21MON); Tuesday (Q21TUES); Wednesday (Q21WED); Thursday (Q21THURS); Friday (Q21FRI); Saturday (Q21SAT); Sunday (Q21SUN):
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Travel in the last seven days (Q22TRIP): This question aims to determine whether people usually travel or not in the last seven days. This is regardless of the area visited, nor the means of transport, as long as a household member moved from one point to another. It is very important to note the reference period in this question (last seven days), which is taken to be seven days before the interview. If the interview is on Tuesday, the last seven days will be from Tuesday the previous week to Monday (the day before the interview day). This question also aims to check how often people travel.
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Reason not travel (Q23YNOTTRIP): It focuses on the reasons why the household members did not go anywhere in the last seven days. 
	+ Did not need to travel = 01
	+ Financial reasons (Not enough money) = 02 
	+ Not well enough to travel/sick = 03 
	+ Too expensive = 04 
	+ Not enough time to travel = 05 
	+ No available public transport = 07
	+ Disabled: unable to leave the house = 08
	+ Too old/young to travel =10
	+ No interest/Nothing to see or do that appeals to me = 12
	+ Taking care of children/sick/elderly relative = 13
	+ No particular reason = 14
 	+ Other, Specify =16 
	+ Not applicable = 88
	+ Unspecified = 99

Number of trips to facilities: This question wants to determine the number of times that household members made trips to different places. Count there and back as two different trips. Information about travel patterns of the household members on the travel reference day is recorded. Information for each person from the selected dwelling unit is completed for their travel for a 24-hour period – refers as a travel reference day. This is a calendar day, commencing at 12 am on the nominated day and finishing at 11:59 pm of the same day. In order to ensure that data is collected for all seven days of the week, each selected dwelling unit has a pre-assigned randomly selected travel reference day. For multiple households the same travel day is applicable as for the main sampled household. In case of no trips a single zero is recorded.

- Usual work place (Q24USULWRK)
	+ Valid range: 00 -13
	+ Not applicable = 88
	+ Unspecified = 99

- In the course of work/business (Q24CORSWRK)
	+ Valid range: 00 - 15
	+ Not applicable = 88
	+ Unspecified = 99

- Visiting friends/relatives (Q24VFR)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- To take someone else somewhere (Q24TAKE)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Educational institution (Q24EDUC)
	+ Valid range: 00 - 13
	+ Not applicable = 88
	+ Unspecified = 99

- Shops (Q24Shop)
	+ Valid range: 00 - 13
	+ Not applicable = 88
	+ Unspecified = 99

- Looking for work (Q24LOOKWRK)
	+ Valid range: 00 - 13
	+ Not applicable = 88
	+ Unspecified = 99

- Medical services (Q24MEDI)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Traditional healer (Q24TradH)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Welfare offices (Q24WELF)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

-Church (Q24CHURCH)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Home (Q24HOME)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Other (Q24OTHR) (Trips to facilities)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

Modes of travel used: Note to users
This question is on the modes of travel that were used on the travel day by household members and the number of times they were used. For any other modes of travel that is not specified there is a provision to specify. If a respondent, for instance, walked all the way or used a bus, a single zero for all other categories and the number of times they walked or used a bus for option 21 and 3 respectively is recorded. If respondent travelled there and back using the same mode, it is counted as 2 times. 

- Train (Metrorail) (Q25TRAIN)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Long distance train (Q25SHOSLZA)
	+ Valid range: 00 - 06
	+ Not applicable = 88
	+ Unspecified = 99

- Bus (Q25BUS)
	+ Valid range: 00 - 10
	+ Not applicable = 88
	+ Unspecified = 99

- BRT bus/IRT bus (Q25BRT)
	+ Valid range: 00 - 07
	+ Not applicable = 88
	+ Unspecified = 99

- Metered taxi (Q25METTAXI)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Commuter/short-distance/ local minibus taxi (Q25MINITAXI)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Long-distance minibus taxi (Q25LONGTAXI)
	+ Valid range: 00 - 10
	+ Not applicable = 88
	+ Unspecified = 99

- Sedan taxi/ four plus one (Q25SEDATAXI)
	+ Valid range: 00 - 12
	+ Not applicable = 88
	+ Unspecified = 99

- Bakkie taxi/ tambai (Q25BAKITAXI)
	+ Valid range: 00 - 12
	+ Not applicable = 88
	+ Unspecified = 99

- Car/ Bakkie passenger (Q25CARPAS)
	+ Valid range: 00 - 12
	+ Not applicable = 88
	+ Unspecified = 99

- Car/ Bakkie driver (Q25CARDRIV)
	+ Valid range: 00 - 15
	+ Not applicable = 88
	+ Unspecified = 99

- Truck/Lorry/tractor/trailer passenger (Q25TRUCKPAS)
	+ Valid range: 00 - 12
	+ Not applicable = 88
	+ Unspecified = 99

- Truck/Lorry /tractor/trailer driver (Q25TRUCKDRIV)
	+ Valid range: 00 - 09
	+ Not applicable = 88
	+ Unspecified = 99

- Company vehicle (Q25COMVEH)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Scooter/motorcycle (Q25MBIKE)
	+ Valid range: 00 - 12
	+ Not applicable = 88
	+ Unspecified = 99

- Bicycle (Q25BICYCLE)
	+ Valid range: 00 - 12
	+ Not applicable = 88
	+ Unspecified = 99

- Animal drawn transport/vehicle (Q25ANITRANSP)
	+ Valid range: 00 - 14
	+ Not applicable = 88
	+ Unspecified = 99

- Boat/ ship (Q25BOAT)
	+ Valid range: 00 - 03
	+ Not applicable = 88
	+ Unspecified = 99

- Aircraft (Q25AIRCFT)
	+ Valid range: 00 - 10
	+ Not applicable = 88
	+ Unspecified = 99

- Gautrain (Q25GAUT)
	+ Valid range: 00 - 10
	+ Not applicable = 88
	+ Unspecified = 99

- Walking all the way (Q25WALK)
	+ Valid range: 00 - 15
	+ Not applicable = 88
	+ Unspecified = 99
	
- Other (Q25OTHR)( Modes of travel used)
	+ Valid range: 00 - 12
	+ Not applicable = 88
	+ Unspecified = 99

- Reason for walking (Q26YWALK) It aims to establish the reasons why people walked all the way to their destination. Note that category 4 (Not enough public transport) means transport is available but not enough.
	+ It was by choice
	+ Public transport too expensive
	+ No available public transport
	+ Not enough public transport 
	+ Nearby
	+ Health reasons
	+ To avoid traffic congestion
	+ No parking at destination
	+ Fuel costs
	+ Other
	+ Not applicable
	+ Unspecified

- Highest Grade (Q31HIEDU)
The enumerators are instructed that it is only those qualifications already obtained that must be considered for household members. That means the current level, whereby a person is still busy with the studies, is not applicable. It is very important to complete each record even if the person has not attended school. Moreover, the enumerators are instructed that diplomas and certificates must be of at least six months duration.
	+ No schooling = 98
	+ Grade R/00 = 00
	+ Grade 1/ Sub A/Class 1 = 01
	+ Grade 2 / Sub B/Class 2 = 02
	+ Grade 3/Standard 1/ ABET 1(Kha Ri Gude, Sanli) = 03
	+ Grade 4/ Standard 2 = 04
	+ Grade 5/ Standard 3/ ABET 2 = 05
	+ Grade 6/Standard 4 = 06
	+ Grade 7/Standard 5/ ABET 3 = 07
	+ Grade 8/Standard 6/Form 1 = 08
	+ Grade 9/Standard 7/Form 2/ ABET 4 = 09
	+ Grade 10/ Standard 8/ Form 3 = 10
	+ Grade 11/ Standard 9/ Form 4 = 11
	+ Grade 12/Standard 10/Form 5/Matric (No Exemption) = 12
	+ Grade 12/Standard 10/Form 5/Matric (Exemption *) = 13
	+ NTC 1/ N1/NC (V) Level 2 = 14
	+ NTC 2/ N2/ NC (V) Level 3 = 15
	+ NTC 3/ N3/NC (V)/Level 4 = 16
	+ N4/NTC 4 = 17
	+ N5/NTC 5 = 18
	+ N6/NTC 6 = 19
	+ Certificate with less than Grade 12/Std 10 = 20 
	+ Diploma with less than Grade 12/Std 10 = 21
	+ Certificate with Grade 12/Std 10 = 22
	+ Diploma with Grade 12/Std 10 = 23
	+ Higher Diploma (Technikon) = 24
	+ Post Higher Diploma (Technikon Masters, Doctoral) = 25
	+ Bachelors Degree = 26
	+ Bachelors Degree and post-graduate diploma = 27
	+ Honours Degree = 28
	+ Higher degree (Masters, Doctorate) = 29
	+ Other =30
	+ Do not know = 31
	+ Unspecified = 99

- Attending any educational institution (Q32ATTE)
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Educational Institution (Q33EDUII)
	+ Pre-school (including day care, crèche, pre-primary, ECD centre, nursery school) = 1
	+ School (including Grade R/Grade 0 learners who attend a formal school) = 2
	+ Adult Basic Education and Training Learning Centre (ABET Centre) = 3
	+ Literacy classes (e.g. Kha Ri Gude) = 4
	+ Higher Educational Institution (University/ University of Technology) = 5
	+ Further Education and Training College (FET) = 6
	+ Other College = 7
	+ Home based education/home schooling = 8
	+ Other than any of the above = 9
	+ Not applicable = 88
	+ Unspecified = 99

- Distance learning (Q34DLRN)
	+ Attending classes = 1
	+ Distance learning = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Suburb/Town/Place name (Q35APLC): The purpose of the question is to find out about the place where the educational institutions are situated. This is mainly on the educational institution areas for those who are currently attending classes and distance learning.

- Province (Q35bProvv)
	+ Western Cape = 1
	+ Eastern Cape = 2
	+ Northern Cape = 3
	+ Free State = 4
	+ KwaZulu-Natal = 5
	+ North West = 6
	+ Gauteng = 7
	+ Mpumalanga = 8
	+ Limpopo = 9
	+ Not applicable = 88
	+ Unspecified = 99

- District Code (Q35CDISTRCT): Please refer to the code list.

- Travel Analysis Zone (Q35dTAZCODE_IMP)
	+ Valid Range: 0042 – 9048
	+ Unspecified: 9999

- Days per week to educational institution (Q36DAYS): This refers to the number of days the member of the household goes to the educational institution even when he/she is not there to attend classes. Distance learners who attend classes weekly should also specify how many days they travel to their educational institution.
	+ Valid Range: 1 – 7
	+ Not applicable = 8
	+ Unspecified = 9

- Time to educational institution (Q3START_TIMEA): This question is mainly interested on the usual time the household members leave their residence to the educational institutions. The purpose of this question is to determine demands for public transport at specific times. Information about travel patterns of the household members on the travel reference day is recorded. Information for each person from the selected dwelling unit is completed for their travel for a 24-hour period – refers as a travel reference day. This is a calendar day, commencing at 12 am on the nominated day and finishing at 11:59 pm of the same day.

	+ Valid range: 00:40 – 20:00
	+ Not applicable = 88:88
	+ Unspecified = 99:99

- Minutes walking to first transport (Q38WALKTO)
	+ Valid range: 0 - 120
	+ Not applicable = 888
	+ Do not know = 998
	+ Unspecified = 999

- Minutes waiting for first transport (Q39WAIT)
	+ Valid range: 0 - 120
	+ Not applicable = 888
	+ Do not know = 998
	+ Unspecified = 999

- Minutes walking at the end of trip (310WLKEDU)
	+ Valid range: 0 - 120
	+ Not applicable = 888
	+ Do not know = 998
	+ Unspecified = 999

- Time to arrive at educational institution (Q3END_TIMEA)
	+ Valid range: 03:39 – 20:45
	+ Not applicable = 88:88
	+ Unspecified = 99:99

Mode of travel used to educational institution: This question is on the usual mode of travel used by household members to their educational institutions. There is provision for three transport types. The type of transport used first is indicated as mode 1, the second as mode 2 and so on. If the person uses more than three types of transport, only first three modes of travel are indicated.

- Mode 1 to educational institution (Q312MODE1)
	+ Train (Metrorail) = 1
	+ Long distance train/Shosholoza = 2
	+ Bus = 3
	+ BRT bus/IRT bus = 4
	+ Metered taxi = 5
	+ Commuter/short-distance/ local minibus taxi = 6
	+ Long-distance minibus taxi = 7
	+ Sedan taxi/ four plus one = 8
	+ Bakkie taxi/ tambai = 9
	+ Car/ Bakkie passenger = 10
	+ Car/ Bakkie driver = 11
	+ Truck/Lorry/tractor/trailer passenger = 12
	+ Truck/Lorry tractor/trailer driver = 13
	+ Company vehicle = 14
	+ Scooter/motorcycle = 15
	+ Bicycle = 16
	+ Animal drawn transport/vehicle = 17
	+ Boat/ ship = 18
	+ Aircraft = 19
	+ Gautrain = 20
	+ Walking all the way = 21
	+ Other (specify) = 22
	+ Not applicable = 88
	+ Unspecified = 99

- Payment method for mode 1 (Q313MODE1, Q313MODE2, Q313MODE3)
	+ Per single trip = 1
	+ Per return trip = 2
	+ Per week = 3
	+ Per month = 4
	+ Not applicable / I do not pay = 5
	+ Do not know = 6
	+ Not applicable = 7
	+ Unspecified = 9

- Mode1 to educational institution cost (Q314MODE1, Q314MODE2, Q314MODE3)
	+ Valid range: 1 – 5610
	+ Not applicable =  888888 
	+ Unspecified = 999999 

- Have a job (Q41WORK): This question is applicable to members who are age 15 years and above. It is meant to identify persons who are currently employed and unemployed or temporally absent from their income earning activity. This question requires the respondent to identify whether or not they have a formal work activity or informal work activity. Formal sector employment is where the employer (institution, business or private individuals) is registered for VAT to perform the activity. For example, nurse, mine worker, teacher, etc. who works in the formal institution, for example, government hospital.
Informal sector employment is where the employer is not registered for VAT. For example, domestic work, street trading, taxi driver, etc. The main job/ business would be the one where the respondent spends the most time at.
It is important to note the reference period, requested in this question, which is on the last seven days only.

	+ Yes – formal sector (registered) = 1
	+ Yes – informal sector = 2
	+ No = 3
	+ Not applicable = 8

- Reason not working (Q42YNOTWRKK):
	+ Scholar or student = 1
	+ Homemaker or housewife = 2
	+ Pensioner / retired person/ too old to work = 3
	+ Seasonal worker not working presently = 4
	+ Chooses not to work = 5
	+ Cannot find work = 6
	+ Health reasons = 7
	+ Was on leave = 8
	+ Other (specify) = 9
	+ Not applicable = 88
	+ Unspecified = 99

- Willing to work (Q43WILTOWRK): This question is aimed at people who are not working and/or running their own businesses. This question determines an individual’s willingness to take on employment.
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

Place of workplace: This question is only applicable to those who answered “Yes-formal sector” and “Yes-informal sector”. The purpose of the question is to find out about the place where the workplace is situated.

- Suburb/Town/Place name (Q44APLC): Place names are listed in the dataset and are not coded.

- Province (Q44BPROVV)
	+ Western Cape = 1
	+ Eastern Cape = 2
	+ Northern Cape = 3
	+ Free State = 4
	+ KwaZulu Natal = 5
	+ North West = 6
	+ Gauteng = 7
	+ Mpumalanga = 8
	+ Limpopo = 9

- District Code (Q44CDISTR)

- Travel Analysis Zone (Q44DTAZCODE_IMP)
	+ Valid range =  1001 – 9040
	+ Not applicable = 8888
	+ Unspecified = 9999
- Days per week to work(Q45DAYSS)
	+ Valid range: 1 – 7
	+ Working from home= 8
	+ Not applicable = 88
	+ Unspecified = 99

- Total Salary/pay (Q46SAL): This question is applicable to all household members who have been performing economic activities in the past seven days as indicated in previous questions in this section. As per the instruction in the questionnaire the salary includes overtime, allowances bonus and any other deduction before tax. Moreover, the amounts are in whole numbers, without any text or decimals.
	+ Valid range: 20 – 1500000
	+ Not applicable = 888888888
	+ Unspecified = 999999999

- Salary period (Q47PER): This question is applicable to household members who have been performing economic activities in the last seven days and have given an amount in Q4.6. This refers to the interval in which the respondent receives his/her salary from his/her main employer.
	+ Per week = 1
	+ Per month = 2
	+ Annually = 3
	+ Not applicable = 8
	+ Unspecified = 9

- Income category (Q48CAT):
	+ Valid range: 01 – 16 
	+ Not applicable = 88
	+ Unspecified = 99

- Time leaving to work (Q4START_TIMEA): This question is on workers who travelled to work on the travel day, focusing on the time they usually leave to the workplace.
	+ Valid range: 00:00 – 23:55
	+ Not applicable = 88:88
	+ Unspecified = 99:99

- Time arriving at work (Q4END_TIMEA)
	+ Valid range: 00:00 – 24:00
	+ Not applicable = 88:88
	+ Unspecified = 99:99

- Walk to work (Q411WLK): This is a filter question which focuses on workers who travelled to work on the travel day, on whether they usually walk all the way to the workplace or not. The aim of this question is to establish the infrastructure demands for people who are walking all the way to the place of work, e.g. pedestrian crossing bridges over highways and railroads, walkways in cities.
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8

- Cycle to work (Q412CYC): This question is on workers who travelled to work on the travel day, focusing on whether they cycle all the way to the workplace. The aim of this question is to establish the infrastructure demands for people who are cycling all the way to the place of work, e.g. cycling lanes.
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8

- Drive to work (Q413DRIV): This question is on workers who travelled to work on the travel day, focusing on whether they drive all the way to the workplace. The aim of this question is to establish the usage of private vehicle to the place of work.
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8

- Type of vehicle (Q414TYPVEH)
	+ Truck/Lorry = 1
	+ Car/ Bakkie = 2
	+ Motor cycle/Scooter = 3
	+ Minibus (private) = 4
	+ Other = 5

- Need vehicle (Q415VEH): This question is on workers who travelled to work on the travel day and drive their own vehicles. However, the interest is on whether they need their vehicles for work purposes. The aim of this question is to establish the traffic volume outside peak hours. This question refers to using a vehicle to take people or objects to some location for business purposes. This question does not include driving to the place of work and from work to home, but only to using the vehicle as part of (or during) work.
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Drop/pick passengers to work (Q416PICKPAS) and to home (Q417DROPPAS): This question is on workers who travelled to work on the travel day and drive their own vehicles. However, the interest is on whether they have to drop or pick up other passengers on their way to work. The aim of this question is to determine the occupancy rate of each vehicle, e.g. promote formation of lift clubs to reduce congestion. This includes all household members dropping children at crèche, school, etc.
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Vehicle costs to work (Q418COST): This question is on workers who travelled to work on the travel day and drive their own vehicles. However, the interest is on the cost when using their vehicles. The purpose of this question is to determine the transport costs incurred by the household member in using private transport to get to the place of work. The amount given is rounded off to the nearest rand.
	+ Valid range: 0 – 306288
	+ Not applicable = 88

- Payment method (Q419PAY): As indicated in the previous question, Q4.18, the interest in this question is on classification of the cost on mode of travel. Indicate how this payment was made for this type of transport. That means the cost that is given, is it per single trip, per week, etc. 
	+ Per single trip = 1
	+ Per return trip = 2
	+ Per week = 3
	+ Per month = 4
	+ Not applicable / I do not pay = 5
	+ Do not know = 6
	+ Not applicable = 7
	+ Unspecified = 9

- Change transport (Q420CHANG): This question is on workers who travelled to work on the travel day, and usually change the mode of travel on the way to the workplace. The aim of this question is to ascertain the extent to which different modes of travel are used to reach the place of work. The question is aimed at people that didn’t drive all the way to work.



Mode of travel to workplace. This question is on workers who travel to work and usually change the mode of transport on the way to the workplace. There should be a response on the first, second, third and fourth mode of travel, otherwise it is not applicable. The instruction from the question is to exclude walks between the modes of travel used when going to work. Moreover, these modes should be in order in which they are used. The aim of this question is to determine the different modes of travel that are mostly used by people when going to the place of work. The type of transport used first will be indicated as Mode 1, the second as Mode 2, and so on.

- Mode 1, 2, 3, 4 to work (Q421Mode1, Q421Mode1, Q421Mode3, Q421Mode3): 
	+ Train (Metrorail) = 1
	+ Long distance train/Shosholoza = 2
	+ Bus = 3
	+ BRT bus/IRT bus = 4
	+ Metered taxi = 5
	+ Commuter/short-distance/ local minibus taxi = 6
	+ Long-distance minibus taxi = 7
	+ Sedan taxi/ four plus one = 8
	+ Bakkie taxi/ tambai = 9
	+ Car/ Bakkie passenger = 10
	+ Car/ Bakkie driver = 11
	+ Truck/Lorry/tractor/trailer passenger = 12
	+ Truck/Lorry tractor/trailer driver = 13
	+ Company vehicle = 14
	+ Scooter/motorcycle = 15
	+ Bicycle = 16
	+ Animal drawn transport/vehicle = 17
	+ Boat/ ship = 18
	+ Aircraft = 19
	+ Gautrain = 20
	+ Walking all the way = 21
	+ Other (specify) = 22
	+ Not applicable = 88
	+ Unspecified = 99

Cost of modes of travel: This question is on workers who travel to work and usually change the mode of transport on the way to the workplace. The purpose of this question is to determine the transport costs incurred by the household member in using different modes of travel to get to the place of work.

- Mode 1,2,3,4 to work cost (Q422MODE1, Q422MODE2, Q422MODE3, Q422MODE4)
	+ Valid range: 1 – 5610
	+ Not applicable = 888888 
	+ Unspecified = 99999 

- Payment method for mode 1 (Q423MODE1, Q423MODE2, Q3423MODE3)
	+ Per single trip = 1
	+ Per return trip = 2
	+ Per week = 3
	+ Per month = 4
	+ Not applicable / I do not pay = 5
	+ Do not know = 6
	+ Not applicable = 7
	+ Unspecified = 9

- Cash from employer (Q424EMPLY): This question is on workers who travel to work and usually change the mode of transport on the way to the workplace. The interest in this question is on whether the employers subsidise household members on their daily transport costs either in the form of cash or tickets. 
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8
	+ Unspecified = 9

- Total cash from employer (Q425TotCash): This question is on workers who travel to work and usually change the mode of transport on the way to the workplace and answered with a “Yes” in Q4.26. For those who are subsidised, the interest is on the total sum worth of the given cash or tickets. The amount is rounded off to the nearest rand.
	+ Valid range: 5 – 7602
	+ Not applicable = 888888
	+ Unspecified = 999999

- Minutes waiting for first transport (Q427WFIRST)
	+ Valid range: 0 - 120
	+ Not applicable = 888
	+ Do not know = 998
	+ Unspecified = 999

- Minutes walking at end of trip (Q428WEND): This question is on workers who travel to work and usually change the mode of transport on the way to the workplace. The interest in this question is minutes usually taken to walk at the end of trip to reach the work place. The aim of this question is to establish if there will be a need for feeder transport to the destination point.
	+ Valid range: 0 - 120
	+ Not applicable = 888
	+ Do not know = 998
	+ Unspecified = 999

- Business Trips (Q51BUSNT): This question is on all the household members who are 15 years and above, on whether they undertook any business trips longer than 20 km within RSA in the past calendar month.
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8

- Number of Business Trips (Q52TOTTRPS)
	+ Valid range: 01 – 60
	+ Not applicable = 88
	+ Unspecified = 99

- Mode of Travel for business trip(Q53TYPTRNS): The question will capture the mode of transport used for the last business trip undertaken and if more than one mode have been used, we record the transport mode used for the longest part of the trip.
	+ Train (Metrorail) = 1
	+ Long distance train/Shosholoza = 2
	+ Bus = 3
	+ BRT bus/IRT bus = 4
	+ Metered taxi = 5
	+ Commuter/short-distance/ local minibus taxi = 6
	+ Long-distance minibus taxi = 7
	+ Sedan taxi/ four plus one = 8
	+ Bakkie taxi/ tambai = 9
	+ Car/ Bakkie passenger = 10
	+ Car/ Bakkie driver = 11
	+ Truck/Lorry/tractor/trailer passenger = 12
	+ Truck/Lorry tractor/trailer driver = 13
	+ Company vehicle = 14
	+ Scooter/motorcycle = 15
	+ Bicycle = 16
	+ Animal drawn transport/vehicle = 17
	+ Boat/ ship = 18
	+ Aircraft = 19
	+ Gautrain = 20
	+ Walking all the way = 21
	+ Other (specify) = 22
	+ Not applicable = 88
	+ Unspecified = 99


- Cost of business trip (Q54TOTCST): he aim of the question is to determine transport costs incured on the longest part of the last business trip. This question requires cost to the destination and back.
	+ Valid range: 1 - 27000
	+ Not applicable = 888888
	+ Unspecified = 999999

- Suburb/Town/Place name (Q55APLC): The purpose of the question is to find out about the place where the educational institutions are situated. This is mainly on the educational institution areas for those who are currently attending classes and distance learning.

- Province (Q55bProvv)
	+ Western Cape = 1
	+ Eastern Cape = 2
	+ Northern Cape = 3
	+ Free State = 4
	+ KwaZulu-Natal = 5
	+ North West = 6
	+ Gauteng = 7
	+ Mpumalanga = 8
	+ Limpopo = 9
	+ Not applicable = 88
	+ Unspecified = 99

- District Code (Q55CDISTRCT): Please refer to the code list.

- Travel Analysis Zone (Q55dTAZCODE_IMP)
	+ Valid Range: 0042 – 9048
	+ Unspecified: 9999


- Day trips (Q61DAYTRPS): The purpose of this question is to find out of any day trips taken by the household members other than for education work and business purposes in the past twelve months. 
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8

- Main Purpose for day trip (Q62MAINP): The aim of this question is to determine the different reasons why people travel, other than educational, work and business purposes. This is the purpose in the absence of which the trip would not have been made or the given destination would not have been visited.
	+ Home for leisure/holiday 
	+ Leisure/ holiday
	+ Shopping – business
	+ Shopping – personal
	+ Sporting – spectator
	+ Sporting – participant
	+ Home to visit friends and/or family 
	+ Visit friends and/or family
	+ Funeral
	+ Medical
	+ Wellness (e.g. spa, health farm) 
	+ Religious
	+ Wedding
	+ Other, (Specify) 
	+ Not applicable = 88
	+ Unspecified = 99

- Mode of travel for day trip(Q63MAINM): This refers to the main type of transport used to reach the main destination and does not refer to the transport used at the destination (which may be different).The question will capture the mode of transport used for the recent day trip undertaken and if more than one mode have been used, we record the transport mode used for the longest part of the trip.

	+ Train (Metrorail) = 1
	+ Long distance train/Shosholoza = 2
	+ Bus = 3
	+ BRT bus/IRT bus = 4
	+ Metered taxi = 5
	+ Commuter/short-distance/ local minibus taxi = 6
	+ Long-distance minibus taxi = 7
	+ Sedan taxi/ four plus one = 8
	+ Bakkie taxi/ tambai = 9
	+ Car/ Bakkie passenger = 10
	+ Car/ Bakkie driver = 11
	+ Truck/Lorry/tractor/trailer passenger = 12
	+ Truck/Lorry tractor/trailer driver = 13
	+ Company vehicle = 14
	+ Scooter/motorcycle = 15
	+ Bicycle = 16
	+ Animal drawn transport/vehicle = 17
	+ Boat/ ship = 18
	+ Aircraft = 19
	+ Gautrain = 20
	+ Walking all the way = 21
	+ Other (specify) = 22
	+ Not applicable = 88
	+ Unspecified = 99

- Cost of day trip (Q64COSTDES)
	+ Valid range: 1 - 27000
	+ Not applicable = 888888
	+ Unspecified = 999999

- Overnight trips (Q65OVERN): The aim of this question is to establish whether people have taken trips in the past twelve months, other than educational, work and business purposes. It should be a place where you do not own or rent dwelling unit/s
	+ Yes = 1
	+ No = 2
	+ Not applicable = 8

- Frequency of Overnight Trips (Q66OFTEN)
	+ Weekly = 1
	+ One to 3 times in a month = 2
	+ Every two or three months = 3
	+ Per month = 4
	+ One to three times in a year = 5
	+ Not applicable = 8
	+ Unspecified = 9

- Main purpose for overnight trip (Q67MAINP)
	+ Home for leisure/holiday 
	+ Leisure/ holiday
	+ Shopping – business
	+ Shopping – personal
	+ Sporting – spectator
	+ Sporting – participant
	+ Home to visit friends and/or family 
	+ Visit friends and/or family
	+ Funeral
	+ Medical
	+ Wellness (e.g. spa, health farm) 
	+ Religious
	+ Wedding
	+ Other, (Specify) 
	+ Not applicable = 88
	+ Unspecified = 99

-Mode of travel for overnight trip (Q68TYPTRANS)
	+ Train (Metrorail) = 1
	+ Long distance train/Shosholoza = 2
	+ Bus = 3
	+ BRT bus/IRT bus = 4
	+ Metered taxi = 5
	+ Commuter/short-distance/ local minibus taxi = 6
	+ Long-distance minibus taxi = 7
	+ Sedan taxi/ four plus one = 8
	+ Bakkie taxi/ tambai = 9
	+ Car/ Bakkie passenger = 10
	+ Car/ Bakkie driver = 11
	+ Truck/Lorry/tractor/trailer passenger = 12
	+ Truck/Lorry tractor/trailer driver = 13
	+ Company vehicle = 14
	+ Scooter/motorcycle = 15
	+ Bicycle = 16
	+ Animal drawn transport/vehicle = 17
	+ Boat/ ship = 18
	+ Aircraft = 19
	+ Gautrain = 20
	+ Walking all the way = 21
	+ Other (specify) = 22
	+ Not applicable = 88
	+ Unspecified = 99

- Cost of overnight trip (Q69COST)
	+ Valid range: 1 - 80000
	+ Not applicable = 888888
	+ Unspecified = 999999

- Cost of trip to return to residence (Q611COST)
	+ Valid range: 1 - 80000
	+ Not applicable = 888888
	+ Unspecified = 999999

Derived variables

- Age group 1 (Age_grp1)
	+ 00–04 years = 1
	+ 05–09 years = 2
	+ 10–14 years = 3
	+ 15–19 years = 4
	+ 20–24 years = 5
	+ 25–29 years = 6
	+ 30–34 years = 7
	+ 35–39 years = 8
	+ 40–44 years = 9
	+ 45–49 years = 10
	+ 50–54 years = 11
	+ 55–59 years = 12
	+ 60–64 years = 13
	+ 65–69 years = 14
	+ 70–74 years = 15
	+ 75+ = 16

- Age group 2 (Age_grp2)
	+ 00–14 years = 1
	+ 15–34 years = 2
	+ 35–65 years = 3
	+ 65+ = 4

- Mainmode to Educational Institution , employment (Mainmode_Newq312, Mainmode_q421) If only one mode of travel was used on the travel day this mode became the main mode. However if more than one mode was used, the main modes determined using the hierarchy: train, bus, taxi, car/bakkie/truck/lorry driver, car/bakkie/truck/lorry passenger, walking ll the way and finally other.
	+ Train  = 1
	+ Bus = 2
	+ Taxi = 3
	+ Car/Bakkie/Truck/Lorry passenger = 4
	+ Car/Bakkie/Truck/Lorry  driver = 5
	+ Walking all the way = 6
	+ Other = 7
	+ Not applicable = 88
	+ Unspecified = 99


- Total time to educational institution, place of employment (Q3total_time, Q4total_time)
	+ Valid range:1 – 400
	+ Not applicable = 888
	+ Unspecified = 999

- Total cost to educational institution, place of employment, overnight (Q313TOTCST, Q423TOTCST,Q69TOTCST) 

	+ Valid range:1 – 400
	+ Not applicable = 888
	+ Unspecified = 999

- UN Disability (undisab): Disability as per Q11ASEE to Q11FCOMM. If an individual has 'Some difficulty' (2) for two or more of the six categories, then they are disabled. If an individual has 'A lot of difficulty' (3) or is 'Unable to do' (4) so for one or more categories, they are classified as disabled.

	+ Not disabled = 0
	+ Disabled = 1
	+ = 8
	+ Unspecified = 9

- Disability (disab): Disability as per Q11ASEE to Q11FCOMM. If an individual has 'Some difficulty' (2) or 'A lot of difficulty' (3) or is 'Unable to do' (4) so for one or more categories, they are classified as disabled.
	+ Not disabled = 0
	+ Disabled = 1
	+ = 8
	+ Unspecified = 9


- Geographical location (Type): Note to users
(@425 1.)
This variable is based on the Census 2001 typology. This typology was used to classify all Enumeration areas (EA) and per implication the NHTS sampled PSUs into one of four classes namely: urban formal, urban informal, tribal area and rural formal areas. Firstly these four classes were combined into two classes namely urban (urban formal and urban informal) and rural (tribal area and rural formal). Once classified into two groups a set of new classifications based on a combination of the Municipal Demarcation Board’s categorisation of metros and non-metros were applied to the urban category, resulting in three distinct categories: metro, urban (all non-metro urban) and rural.
	+ Metro = 1
	+ Urban = 2
	+ Rural = 3

- Household income Quintiles (quintile): Total monthly household income is used to calculate income quintiles i.e. the 20% of households with the lowest incomes(quintile 1), those between 20 and 40%(quintile 2), households between 40 and 60% (quintile 3), those between 60 and 80% (quintile 4) and finally the 20% of households who earn the highest incomes(quintile 5).
	+ Lowest income quintile = 1
	+ Quintile 2 = 2
	+ Quintile 3 = 3
	+ Quintile 4 = 4
	+ Highest income Quintile = 5

- Total monthly household income (totmhinc)
Total monthly household income is calculated by adding the monthly earnings per individual in the household as well as the total grant income for the household. Total grant income for the household is obtained by using the gazetted value for each grant as the guideline.

- Total monthly salary (Msal)
Earnings as reported in Q4.6, Q4.7 and Q4.8 were standardised to the equivalent of a monthly income per person. Categorical data for Q4.8 was converted into a median income for that income range based on the 2011 Income and Expenditure survey. Missing values for individuals who are working were then imputed using hotdecks based on the variables: Geographic location (type),population group (race), broad age group (age_grp2) and household monthly expenditure category (Q72exp).
	+ Valid range 50 – 500000
	+ Not applicable = 888888888

- Total monthly salary (Oldmsal): Earnings as reported in Q4.6, Q4.7 and Q4.8 were standardised to the equivalent of a monthly income per person. Categorical data for Q4.8 was converted into a median income for that income range based on the 2011 Income and Expenditure survey. No missing values were imputed.

- Weight (FULL_CALWGT)

### General Household Information datafile

- Unique number (UQNO): Unique Household Identifier

- Province (Pr_code)
	+ Western Cape = 1
	+ Eastern Cape = 2
	+ Northern Cape = 3
	+ Free State = 4
	+ KwaZulu Natal = 5
	+ North West = 6
	+ Gauteng = 7
	+ Mpumalanga = 8
	+ Limpopo = 9

- Main Dwelling type (Q71MAIND)
	+ 01 = Dwelling/house or brick/concrete block structure on a separate stand or yard or on farm 
	+ 02 = Traditional dwelling/hut/structure made of traditional materials
	+ 03 = Flat or apartment in a block of flats
	+ 04 = Cluster house in complex
	+ 05 = Town house (semi-detached house in complex) 06 = Semi-Detached house
	+ 07 = Dwelling/house/flat/room in backyard
	+ 08 = Informal dwelling/shack in backyard
	+ 09 = Informal dwelling/shack Not in backyard, e.g. in an informal/squatter settlement or on farm
	+ 10 = Room/ flat let on a property or a larger dwelling/ servants’ quarters/granny flat
	+ 11 = Caravan/tent 12 = Other
	+ 99 = Unspecified

- Total Household Expenditure (Q72EXP)
This refers to the total amount spent by the household in the last month. Including money spent on food, clothing, transport, rent and rates, alcohol and tobacco, school fees, entertainment and any other expenses.
	+ 01 = R0
	+ 02 = R1 – R199
	+ 03 = R200 – R399
	+ 04 = R400 – R799
	+ 05 = R800 – R1 199 06 = R1 200 – R1 799 07 = R1 800 – R2 499
	+ 08 = R2 500 – R4 999 09 = R5 000 – R9 999 10 = 10 000 or more 11 = Do not know
	+ 12 = Refuse
	+ 99 = Unspecified

Household Sources of income


- Salaries/wages/commission (Q73SAL)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Income from a business (Q73BUSN)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Remittances/ including child maintenance (Q73REM)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Pensions (Q73PEN)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Grants (Q73GRANT)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Sales of farming products and services (Q73AGRIC)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Income from UIF (Q73UIF)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- Other income sources e.g. rental income, interest (Q73OTHR)
	+ Yes = 1
	+ No = 2
	+ Unspecified = 9

- No income (Q73NONE)
	+ No = 2
	+ Unspecified = 9

- Main Source of Income(Q74MAINN): This question is applicable only to households that have source of income. The aim of this question is to establish the income source that provides the most money for the household.

	+ 1 = Salaries/wages/commission
	+ 2 = Income from a business
	+ 3 = Remittances/ including child maintenance
	+ 4 = Pensions
	+ 5 = Grants
	+ 6 = Sales of farming products and services
	+ 7 = Income from UIF
	+ 8 = other income sources e.g. rental income, interest 99 = Unspecified

- Income from remittances(Q75REM)

	+ Valid Range: 0-20000
	+ 888888 = Not applicable
	+ 999999 = Unspecified

- Income from pensions or retirement(Q76PEN)

	+ Valid Range: 0-20000
	+ 888888 = Not applicable
	+ 999999 = Unspecified

- Number of Bicycles(Q77NOBIC): This question aims to establish the extent of usage of non-motorised transport. This question capture number of bicycles in a running order which the household owns.

	+ Valid Range: 0-10
	+ 99 = Unspecified

- Number of Animal drawn vehicle(Q78ANIM) This question aims to establish the extent of usage of non-motorised transport. This question captures number of animal draw vehicles which the household owns.

	+ Valid Range: 0-10
	+ 99 = Unspecified


- Animals owned (Q79OWNANIM): This question aims to find out if animals that can pull animal drawn vehicles are owned by the household.

Access to motor vehicle: This question is on motorised vehicles owned by households. Similar to the previous question these items are in running order. It should also be emphasized to the respondent that these motorised vehicles should only be available for private use. It is also important to note that tractors are excluded in this section. For any other motorised vehicles that are not given in this question there is provision for it in the last category. The instruction to the enumerator is to determine whether these motorised vehicles benefit the current household, such as having access to them when need be, otherwise they are not considered.

- Q710MOTOR: Motorcycle or scooter
- Q710CAREMP: Car/Bakkies/Station wagons/4x4s owned by employer/company
- Q710CAREHH: Car/Bakkies/Station wagons/ 4x4s owned by the household
- Q710CARVFR: Car/Bakkies/Station wagons/ 4x4s owned by relatives / friends
- Q710MBUS: Minibus/Kombis
- Q710TRUCK: Trucks
- Q710OTHR: Other, Specify

	+ Valid Range: 0-10
	+ 99 = Unspecified

- Access to facilities: 
This question is applicable to all households regarding usual means of transport to various facilities. The instruction to the enumerator is to ask for the nearest facility using the usual means of transport even in cases whereby more than one means is applicable. Similar to the previous question the instruction to the enumerator is to ask the respondent about the nearest facility regardless of whether they are making use of it or not. All the given categories must be asked to indicate the type of transport the household use to access the given facilities. This question also includes usual time taken to all these facilities by households when getting to these facilities.

- Q711SHOP: Food or grocery shops
- Q711HEALER: Traditional healer
- Q711CHURCH: Church
- Q711MEDSERV: Medical services
- Q711POST: Post office
- Q711WFARE: Welfare office
- Q711POLCE: Police station
- Q711MUNIP: Municipal office
- Q711TRIBAL: Tribal authority
- Q711FINSERV: Financial services banks
	
	+ 01= Walk
	+ 02 =Train
	+ 03 =Bus
	+ 04 = Minibus taxi/bakkie taxi/sedan taxi 05 =Metered Taxi
	+ 06 =Car/ Bakkie
	+ 07 = Truck/ Lorry
	+ 08 =Tractor/ Trailer
	+ 09 = Motorcycle/ Scooter
	+ 10 = Bicycle
	+ 11 = Animal transport
	+ 12 = Do not need to go there 99= Unspecified

- Q711SHPTIME
- Q711SHPTIME
- Q711HETIME
- Q711CHTIME
- Q711MEDTIME
- Q711PTIME
- Q711WTIME
- Q711POLTIME
- Q711MUNTIME
- Q711TRTRITIME
- Q711FINTIME

	+ Valid range: 1 – 300
	+ Not applicable = 888
	+ Unspecified = 999
	+ Do know know = 998




