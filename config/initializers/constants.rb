POI_TYPES = {
	256 => 'City (pop. over 8M)',
	512 => 'City (pop. 4-8M)',
	768 => 'City (pop. 2-4M)',
	1024 => 'City (pop. 1-2M)',
	1280 => 'City (pop. 0.5-1M)',
	1536 => 'City (pop. 200-500K)',
	1792 => 'City (pop. 100-200K)',
	2048 => 'City (pop. 50-100K)',
	2304 => 'City (pop. 20-50K)',
	2560 => 'Town (pop. 10-20K)',
	2816 => 'Town (pop. 4-10K)',
	3072 => 'Town (pop. 2-4K)',
	3328 => 'Town (pop. 1-2K)',
	3584 => 'Town (pop. 0.5-1K)',
	3840 => 'Town (pop. 200-500)',
	4096 => 'Town (pop. 100-200)',
	4352 => 'Town (pop. under 100)',
	4864 => 'Town',
	5120 => 'Region, large',
	5376 => 'Region, large',
	5632 => 'Navaid',
	5633 => 'Forg horn',
	5634 => 'Radio beacon',
	5635 => 'Racon',
	5636 => 'Daybeacon (red triangle)',
	5637 => 'Daybeacon (green square)',
	5638 => 'Unlit navaid (white diamond)',
	5639 => 'Unlit navaid (white)',
	5640 => 'Unlit navaid (red)',
	5641 => 'Unlit navaid (green)',
	5642 => 'Unlit navaid (black)',
	5643 => 'Unlit navaid (yellow/amber)',
	5644 => 'Unlit navaid (orange)',
	5645 => 'Unlit navaid (multi-colored)',
	5646 => 'Navaid',
	5647 => 'Navaid (white)',
	5648 => 'Navaid (red)',
	5649 => 'Navaid (green)',
	5650 => 'Navaid (yellow/amber)',
	5651 => 'Navaid (orange)',
	5652 => 'Navaid (violet)',
	5653 => 'Navaid (blue)',
	5654 => 'Navaid (multi-colored)',
	7168 => 'Obstruction',
	7169 => 'Wreck',
	7170 => 'Submerged wreck, dangerous',
	7171 => 'Submerged wreck, non-dangerous',
	7172 => 'Wreck, cleared by wire-drag',
	7173 => 'Obstruction, visible at high water',
	7174 => 'Obstruction, awash',
	7175 => 'Obstruction, submerged',
	7176 => 'Obstruction, cleared by wire-drag',
	7177 => 'Rock, awash',
	7178 => 'Rock, submerged at low water',
	7179 => 'Sounding',
	7424 => 'Tide',
	7425 => 'Tide prediction',
	7426 => 'Tide prediction',
	7680 => 'Region, medium',
	7936 => 'Region, medium',
	8192 => 'Exit',
	8448 => 'Exit, with facilities',
	8463 => 'Exit, service',
	8704 => 'Exit, restroom',
	8960 => 'Exit, convenience store',
	9216 => 'Exit, weigh station',
	9472 => 'Exit, toll booth',
	9728 => 'Exit, information',
	9984 => 'Exit',
	10240 => 'Region, small',
	10496 => 'Region',
	10752 => 'Food & Drink',
	10753 => 'Food & Drink, American',
	10754 => 'Food & Drink, Asian',
	10755 => 'Food & Drink, Barbeque',
	10756 => 'Food & Drink, Chinese',
	10757 => 'Food & Drink, Deli/Bakery',
	10758 => 'Food & Drink, International',
	10759 => 'Food & Drink, Fast Food',
	10760 => 'Food & Drink, Italian',
	10761 => 'Food & Drink, Mexican',
	10762 => 'Food & Drink, Pizza',
	10763 => 'Food & Drink, Seafood',
	10764 => 'Food & Drink, Steak/Grill',
	10765 => 'Food & Drink, Bagel/Doughnut',
	10766 => 'Food & Drink, Cafe/Diner',
	10767 => 'Food & Drink, French',
	10768 => 'Food & Drink, German',
	10769 => 'Food & Drink, British Isles',
	11008 => 'Lodging',
	11009 => 'Lodging, Hotel/Motel',
	11010 => 'Lodging, Bed & Breakfast/Inn',
	11011 => 'Lodging, Campground/RV Park',
	11012 => 'Lodging, Resort',
	11264 => 'Attraction',
	11265 => 'Recreation, Amusement/Theme Park',
	11266 => 'Attraction, Museum/Historical',
	11267 => 'Community, Library',
	11268 => 'Attraction, Landmark',
	11269 => 'Community, School',
	11270 => 'Attraction, Park/Garden',
	11271 => 'Attraction, Zoo/Aquarium',
	11272 => 'Recreation, Arena/Track',
	11273 => 'Attraction, Hall/Auditorium',
	11274 => 'Attraction, Winery',
	11275 => 'Community, Place of Worship',
	11276 => 'Attraction, Hot Spring',
	11520 => 'Entertainment',
	11521 => 'Entertainment, Live Theater',
	11522 => 'Entertainment, Bar/Nightclub',
	11523 => 'Entertainment, Cinema',
	11524 => 'Entertainment, Casino',
	11525 => 'Entertainment, Golf Course',
	11526 => 'Recreation, Skiing Center/Resort',
	11527 => 'Entertainment, Bowling',
	11528 => 'Entertainment, Ice Skating',
	11529 => 'Entertainment, Swimming Pool',
	11530 => 'Entertainment, Sports/Fitness Center',
	11531 => 'Entertainment, Sport Airport',
	11776 => 'Shopping',
	11777 => 'Shopping, Department Store',
	11778 => 'Shopping, Grocery Store',
	11779 => 'Shopping, General Merchandise',
	11780 => 'Shopping Center',
	11781 => 'Shopping, Pharmacy',
	11782 => 'Shopping, Convenience Store',
	11783 => 'Shopping, Apparel',
	11784 => 'Shopping, Home and Garden',
	11785 => 'Shopping, Home Furnishings',
	11786 => 'Shopping, Specialty Retail',
	11787 => 'Shopping, Computer/Software',
	11788 => 'Shopping, Other',
	12032 => 'Service',
	12033 => 'Service, Auto Fuel',
	12034 => 'Service, Auto Rental',
	12035 => 'Service, Auto Repair',
	12036 => 'Service, Air Transportation',
	12037 => 'Service, Post Office',
	12038 => 'Service, Bank/ATM',
	12039 => 'Service, Dealer/Auto Parts',
	12040 => 'Service, Ground Transportation',
	12041 => 'Service, Marina/Boat Repair',
	12042 => 'Service, Wrecker',
	12043 => 'Service, Parking',
	12044 => 'Service, Rest Area/Information',
	12045 => 'Service, Auto Club',
	12046 => 'Service, Car Wash',
	12047 => 'Service, Garmin Dealer',
	12048 => 'Service, Personal',
	12049 => 'Service, Business',
	12050 => 'Service, Communication',
	12051 => 'Service, Repair',
	12052 => 'Service, Social',
	12053 => 'Service, Public Utility',
	12288 => 'Emergency/Government',
	12293 => 'City Hall',
	12304 => 'Community, Police Station',
	12320 => 'Hospital',
	12336 => 'Community, City Hall',
	12352 => 'Community, Court House',
	12368 => 'Community, Community Center',
	12384 => 'Community, Border Crossing',
	16384 => 'Golf',
	16640 => 'Fishing',
	16896 => 'Wreck',
	17152 => 'Marina',
	17408 => 'Gas Station',
	17664 => 'Food & Drink',
	17920 => 'Bar',
	18176 => 'Boat Ramp',
	18432 => 'Camping',
	18688 => 'Park',
	18944 => 'Picnic Area',
	19200 => 'First Aid',
	19456 => 'Information',
	19712 => 'Parking',
	19968 => 'Restroom',
	20224 => 'Shower',
	20480 => 'Drinking Water',
	20736 => 'Telephone',
	20992 => 'Scenic Area',
	21248 => 'Skiing',
	21504 => 'Swimming',
	21760 => 'Dam',
	22272 => 'Danger',
	22528 => 'Restrcited Area',
	22784 => 'Airport',
	22785 => 'Airport, Large',
	22786 => 'Airport, Medium',
	22787 => 'Airport, Small',
	22788 => 'Heliport',
	22789 => 'Airport',
	23808 => 'Daymark, green square',
	24064 => 'Daymark, red triangle',
	24832 => 'Place',
	25088 => 'Depth',
	25344 => 'Elevation',
	25600 => 'Man-made Feature',
	25601 => 'Bridge',
	25602 => 'Building',
	25603 => 'Cemetary',
	25604 => 'Church',
	25605 => 'Civil Building',
	25606 => 'Crossing',
	25607 => 'Dam',
	25608 => 'Hospital',
	25609 => 'Levee',
	25610 => 'Locale',
	25611 => 'Military',
	25612 => 'Mine',
	25613 => 'Oil Field',
	25614 => 'Park',
	25615 => 'Post Office',
	25616 => 'School',
	25617 => 'Tower',
	25618 => 'Trail',
	25619 => 'Tunnel',
	25620 => 'Well',
	25621 => 'Ghost Town',
	25622 => 'Subdivision',
	25856 => 'Water Feature',
	25857 => 'Arroyo',
	25858 => 'Sand Bar',
	25859 => 'Bay',
	25860 => 'Bend',
	25861 => 'Canal',
	25862 => 'Channel',
	25863 => 'Cove',
	25864 => 'Falls',
	25865 => 'Geyser',
	25866 => 'Glacier',
	25867 => 'Harbor',
	25868 => 'Island',
	25869 => 'Lake',
	25870 => 'Rapids',
	25871 => 'Resevoir',
	25872 => 'Sea',
	25873 => 'Spring',
	25874 => 'Stream',
	25875 => 'Swamp',
	26112 => 'Land Feature',
	26113 => 'Arch',
	26114 => 'Area',
	26115 => 'Basin',
	26116 => 'Beach',
	26117 => 'Bench',
	26118 => 'Cape',
	26119 => 'Cliff',
	26120 => 'Crater',
	26121 => 'Flat',
	26122 => 'Forest',
	26123 => 'Gap',
	26124 => 'Gut',
	26125 => 'Isthmus',
	26126 => 'Lava',
	26127 => 'Pillar',
	26128 => 'Plain',
	26129 => 'Range',
	26130 => 'Reserve',
	26131 => 'Ridge',
	26132 => 'Rock',
	26133 => 'Slope',
	26134 => 'Summit',
	26135 => 'Valley',
	26136 => 'Woods'
}.freeze