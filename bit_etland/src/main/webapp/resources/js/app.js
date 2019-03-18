var app = app || {};

app.path = (()=>{
	var init = x=>{
		app.session.init(x);
		onCreate();
	};
	var onCreate = ()=>{
		setContentView();
	};
	var setContentView = ()=>{
		$('#ej_header').empty().text('헤더');		
		$('#ej_main').empty().text('메인');		
		$('#ej_footer').empty().text('푸터');	
		$('#ej_header').html('<h1>헤더</h1>');		
		$('#ej_main').html('<h1>메인</h1>');		
		$('#ej_footer').html('<h1>푸터</h1>');	
	};
	return {init : init};
})();

app.session = (()=>{
	var init = x=>{
		onCreate(x);
	};
	var onCreate = x=>{
		sessionStorage.setItem('ctx', x);
		sessionStorage.setItem('js', x+'/resources/js');
		sessionStorage.setItem('img', x+'/resources/image');
		sessionStorage.setItem('css', x+'/resources/css');
	};
	var getPath = x =>{
		return sessionStorage.getItem('ctx');
	};
	return {init : init,
		getPath : getPath
	};
})();

app.$ = {
		ctx : () =>{return sessionStorage.getItem('ctx')},
		js : () =>{return sessionStorage.getItem('js')},
		img : () =>{return sessionStorage.getItem('img')},
		css : () =>{return sessionStorage.getItem('css')}
	};



