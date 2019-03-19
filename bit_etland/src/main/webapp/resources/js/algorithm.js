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
				.html($$.a({id: 'seq', url: "#"}).text('수열'));
			$('#nav').children().eq(1)
				.html($$.a({id: 'math', url: "#"}).text('수학'));
			$('#nav').children().eq(2)
				.html($$.a({id: 'arr', url: "#"}).text('배열'));
			$('#nav').children().eq(3)
				.html($$.a({id: 'coll', url: "#"}).text('자료구조'));
			$('#nav').append($$.li({}))
				.children().eq(4)
					.html($$.a({id: 'app', url: "#"}).text('응용'));
			
			//=================================================================================
			$('#title_1').text('등차수열의 합계');
			$('#title_2').text('등비수열의 합계');
			
			//=================================================================================
			input();
			
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
						$('#result_1').html($$.h({id:'h_res', num:'4'})).text('결과값 : '+d.result);
					},
					error:e=>{
						alert('AJAX 실패');
					}
				});
			});
			
			$('#res_btn_2').text('reset').addClass('cursor').click(()=>{
				input();
			});
			
			$('#res_btn_3').text('result').addClass('cursor').click(()=>{
				$.ajax({
					url:$.ctx()+'/algo/seq/2',
					type:'post',
					data:JSON.stringify(
							{
								start: $('#start').val(),
								end:  $('#end').val(),
								ratio:  $('#ratio').val()
							}),
					dateType:'json',
					contentType: "application/json; chatset=utf-8",
					success:d=>{
						alert('넘어온 문제 번호 : '+d.result);
						$('#result_1').html($$.h({id:'h_res', num:'4'})).text('결과값 : '+d.result);
					},
					error:e=>{
						alert('AJAX 실패');
					}
				});
			});
			
		});
	};
	let input = ()=>{
		$('#result_1').html($$.label({name: 'start'}).text('초항'));
		$('#result_1').append($$.input({type:'text', id:'start', name:'start', ph:'초항'}));
		$('#result_1').append($$.label({name: 'end'}).text('마지막항'));
		$('#result_1').append($$.input({type:'text', id:'end', name:'end', ph:'마지막항'}));
		$('#result_1').append($$.label({name: 'diff'}).text('공차'));
		$('#result_1').append($$.input({type:'text', id:'diff', name:'diff', ph:'공차'}));
	}
	
	
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