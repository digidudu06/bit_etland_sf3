var algo = algo || {};

algo = (()=>{
	let init = x=>{
		algo.$.init(x);
	};
	let onCreate = ()=>{
		setContentView();
	};
	let setContentView = ()=>{
		$.getScript($.js()+'/compo.js',()=>{
			$('#nav').children().eq(0)
				.html($$.a({id: 'sequence', url: "#"}).text('수열'));
			$('#nav').children().eq(1)
				.html($$.a({id: 'math', url: "#"}).text('수학'));
			$('#nav').children().eq(2)
				.html($$.a({id: 'sort', url: "#"}).text('정렬'));
			$('#nav').children().eq(3)
				.html($$.a({id: 'array', url: "#"}).text('배열'));
			$('#nav').append($$.li({}))
				.children().eq(4)
					.html($$.a({id: 'application', url: "#"}).text('응용'));
			
			//수열 1 - 1+2+3+4+…+100까지의 합계 (do~while) 
			$('#title_1').text('수열 1 - 1+2+3+4+…+100까지의 합계 (do~while)');
			$('#title_2').text('수열 2 - 1-2+3-4+5-6+…+99-100의 합계 (do~while, while, if) ');
			
		});
	};
	return {init : init,
		onCreate : onCreate};
})();

algo.$ = {
	init : (x)=>{
		$.getScript(x+'/resources/js/router.js',()=>{
			$.extend(new Session(x));
			algo.onCreate();
		});
	}
};

//객체 리터럴 (함수 몸체({})가 값 자체(JSON))