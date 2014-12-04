## Project structure

This project is intended to analyze different southafrican mobility aspects and its structure is as follows:

- /R: Includes recurring R functions to be sourced
- /Data: Collects original datasets and documentation
- /doc: Includes reports, proposals and any document created within the project.
- /output: Collects processed datasets, logs and other outputs.
- /figs: Collects figures produced by analysis.

The script analysis.R contains all the code necessary to run the analysis.

## Data


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

##Variables

*Person data file:*

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
	+ Not applicable = 888888 
	+ Unspecified = 888888 

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


