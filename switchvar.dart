class switchvar{
	void checkMonths(String c){
                   var x = switch(c){
		'summer' || 'Summer'||'SUMMER' => "March to June",		
		'winter' || 'Winter'||'WINTER' => "November to Febrauray",
		'rainy' || 'Rainy'||'RAINY' => "July to October",
		_=>'Wrong Season',			

              };
		print('${c}comes between ${x}months');
	}
}