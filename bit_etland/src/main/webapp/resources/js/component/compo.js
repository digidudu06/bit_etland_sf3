var $$ = $$ || {};
$$ = {
		div : x=>{
			return $('<div id='+x.id+' />');
		},
		a : x=>{
			return $('<a herf="'+x.url+'" id='+x.id+' />');
		},
		li : x=>{
			return $('<li id='+x.id+' />');
		},
		h : x=>{
			return $('<h'+x.num+' id='+x.id+' />');
		},
		form : x=>{
			return $('<form id='+x.id+' />')
		},
		label : x=>{
			return $('<label for='+x.name+' /><br />')
		},
		input : x=>{
			return $('<input type='+x.type+' id='+x.id+' name='+x.name+' placeholder='+x.ph+' /><br />')
		},
};