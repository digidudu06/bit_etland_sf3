var algo = algo || {};

algo = (() => {
	let init = x=>{
		algo.$.init(x);
	};
	let onCreate = ()=>{
		setContentView();
	};
	let setContentView = ()=>{
		$.when(
				$.getScript($.js()+'/component/compo.js'),
				$.getScript($.js()+'/algorithm/sequence.js'),
				$.getScript($.js()+'/algorithm/math.js')
		).done(()=>{
			sequence();
						
			$('#math').click(()=>{
				math();
			});
		}//콜백		
		);//when done
		
	};
	return {init : init, onCreate : onCreate};
	
})();

algo.$ = {
	init : (x)=>{
		$.getScript(x+'/resources/js/router.js',()=>{
			$.extend(new Session(x));
			algo.onCreate();
		});
	}
}
