var $$ = $$ || {};
$$ = {
		div : x=>{
			return $('<div id='+x.id+'/>');
		},
		a : x=>{
			return $('<a herf="'+x.url+'" id='+x.id+'/>');
		},
		li : x=>{
			return $('<li id='+x.id+'/>');
		}
};