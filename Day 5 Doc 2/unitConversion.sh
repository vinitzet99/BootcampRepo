	ft=12;
	converted=$((42/$ft));
	echo -e "\n42 inch in feet:" $converted "ft";

	meter=$(echo |awk '{print 60 * 0.3048 * 40 * 0.3048}');
	echo -e "\n60 * 40 ft in meter=" $meter "square meter"

	area=$(echo |awk '{print  60 * 0.3048 * 40 * 0.3048 * 25 * 0.000247}')
	echo -e "\n25 such plots in acre=" $area
	
