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
	1. Western Cape 
	2. Eastern Cape 
	3. Northern Cape 
	4. Free State
	5. KwaZulu Natal 
	6. North West
	7. Gauteng
	8. Mpumalanga 
	9. Limpopo

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
