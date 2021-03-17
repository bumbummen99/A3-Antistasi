//////////////////////////////
//   Civilian Information   //
//////////////////////////////

["civilianUniforms", []] call _fnc_saveToTemplate;

["civilianHeadgear", []] call _fnc_saveToTemplate;



["vehiclesCivCar", ["C_Quadbike_01_F", 0.3
	,"C_Hatchback_01_F", 2.0
	,"C_Hatchback_01_sport_F", 0.3
	,"C_Offroad_01_F", 2.0
	,"C_SUV_01_F", 1.0
	,"C_Van_02_vehicle_F", 1.0				// van from Orange
	,"C_Van_02_transport_F", 0.2			// minibus
	,"C_Offroad_02_unarmed_F", 0.5			// Apex 4WD
	,"C_Offroad_01_comms_F", 0.1			// Contact
	,"C_Offroad_01_covered_F", 0.1]] call _fnc_saveToTemplate; 			//this line determines civilian cars -- Example: ["vehiclesCivCar", ["C_Offroad_01_F"]] -- Array, can contain multiple assets

["vehiclesCivIndustrial", ["C_Van_01_transport_F", 1.0
	,"C_Van_01_box_F", 0.8
	,"C_Truck_02_transport_F", 0.5
	,"C_Truck_02_covered_F", 0.5
	,"C_Tractor_01_F", 0.3	]] call _fnc_saveToTemplate; 			//this line determines civilian trucks -- Example: ["vehiclesCivIndustrial", ["C_Truck_02_transport_F"]] -- Array, can contain multiple assets

["vehiclesCivHeli", ["not_supported"]] call _fnc_saveToTemplate; 			//this line determines civilian helis -- Example: ["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] -- Array, can contain multiple assets

["vehiclesCivBoat", ["C_Boat_Civil_01_rescue_F", 0.1			// motorboats
	,"C_Boat_Civil_01_police_F", 0.1
	,"C_Boat_Civil_01_F", 1.0
	,"C_Rubberboat", 1.0					// rescue boat
	,"C_Boat_Transport_02_F", 1.0			// RHIB
	,"C_Scooter_Transport_01_F", 0.5]] call _fnc_saveToTemplate; 			//this line determines civilian boats -- Example: ["vehiclesCivBoat", ["C_Boat_Civil_01_F"]] -- Array, can contain multiple assets

["vehiclesCivRepair", ["C_Offroad_01_repair_F", 0.3
	,"C_Van_02_service_F", 0.3				// orange
	,"C_Truck_02_box_F", 0.1]] call _fnc_saveToTemplate;			//this line determines civilian repair vehicles

["vehiclesCivMedical", ["C_Van_02_medevac_F", 0.1]] call _fnc_saveToTemplate;			//this line determines civilian medic vehicles

["vehiclesCivFuel", ["C_Van_01_fuel_F", 0.2
	,"C_Truck_02_fuel_F", 0.1]] call _fnc_saveToTemplate;			//this line determines civilian fuel vehicles
