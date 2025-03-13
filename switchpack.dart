class switchpack{
	String checkcolor(String c){
		return switch(c){
			'red' || 'Red'||'RED' => "Apples are in Red color",
			'green' || 'Green'||'GREEN' => "Guavas are in Green color",
			_=>"Wrong Color",
		};
	}
}