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
			
			//-----------------------------------------------------------------------------
			$('#title_1').text('수열 1 - 1+2+3+4+…+100까지의 합계 (do~while)');
			$('#title_2').text('수열 2 - 1-2+3-4+5-6+…+99-100의 합계 (do~while, while, if) ');
			
			//-----------------------------------------------------------------------------
			$('#result').html($$.label({name: 'start'}).text('초항'));
			$('#result').append($$.input({type:'text', id:'start', name:'start', ph:'초항'}));
			$('#result').append($$.label({name: 'end'}).text('마지막항'));
			$('#result').append($$.input({type:'text', id:'end', name:'end', ph:'마지막항'}));
			$('#result').append($$.label({name: 'diff'}).text('공차'));
			$('#result').append($$.input({type:'text', id:'diff', name:'diff', ph:'공차'}));
			$('#res_btn_1').text('result').addClass('cursor').click(()=>{
				$.ajax({
					url:$.ctx()+'/algo/seq/1',
					type:'post',
					data:JSON.stringify(
							{
								start: $('#start').val(),
								end:  $('#end').val(),
								diff:  $('#diff').val()
							}),
					dateType:'json',
					contentType: "application/json; chatset=utf-8",
					success:d=>{
						alert('넘어온 문제 번호 : '+d.result);
						$('#result').html($$.h({id:'h_res', num:'4'})).text('결과값 : '+d.result);
					},
					error:e=>{
						alert('AJAX 실패');
					}
				});
			});
			
			$('#res_btn_2').text('reset').addClass('cursor').click(()=>{
				$.ajax({	
					contentType: "application/json; chatset=utf-8",
					success:d=>{
						$('#result').html($$.input({type:'text', id:'start', name:'start', ph:'초항'}));
						$('#result').append($$.input({type:'text', id:'end', name:'end', ph:'마지막항'}));
						$('#result').append($$.input({type:'text', id:'diff', name:'diff', ph:'공차'}));
					},
					error:e=>{
						alert('AJAX 실패');
					}
				});
			});
			
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