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

Person data file:

- Unique number (UQNO): Unique Household Identifier. This is the unique household identifier, which can be used to link data from this file with data for the same household from other files. This is a 19-digit number that is made up of the PSU number, dwelling unit number, Household number and questionnaire number.
- Person number (PersonNO): The two fields above (unique number and person number) create a 19-digit unique person identifier, which can be used to link a record from this file with another record for the same individuals from other files.
- Travel Analysis zones (TAZCODE): The National Department of Transport identified 342 National Travel Analysis Zones (TAZs) through consultation with different transport authorities throughout the country. The whole country is divided into TAZs. These TAZS are based along the district municipality and provincial boundaries. However, there are instances where the TAZs cut across provincial boundaries.
- Province (Pr_code): South African provinces according to the provincial boundaries as demarcated in December 2005.
	1. Western Cape 
	2. Eastern Cape 
	3. Northern Cape 
	4. Free State
	5. KwaZulu Natal 
	6. North West
	7. Gauteng
	8. Mpumalanga 
	9. Limpopo






