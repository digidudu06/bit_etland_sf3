function sequence(){
	_sequence.nav();
	_sequence.remove();
	$('#right_content').prepend($$.div({id:'right_start'}));
	$('#leave_a_comment').before('<div id="right_end" />');
	$('#right_start').nextUntil('#right_end')
			.wrapAll('<div id="new_div" />');
	let str = $('#new_div').html();
	
	$('#new_div').remove();
	$('#right_end').remove();
	let arr = [
			{id:'ari', val:'등차수열의 합계'},
			{id:'geo', val:'등비수열의 합계'},
			{id:'fac', val:'팩토리얼 수열의 합계'},
			{id:'fibo', val:'피보나치 수열의 합계'}
			];
	$.each(arr, (i,j)=>{
		let GID = Math.floor(Math.random() * 10000)+1;
		let _GID = '#'+GID;
		$('<div id="'+GID+'">'+str+'</div>').appendTo('#right_start');
		let POST = GID+"_POST";
		let _POST = '#'+POST;
		$(_GID+' h4').attr('id',POST);
		let TITLE = GID+"_TITLE";
		let _TITLE = '#'+TITLE;
		$(_GID+' h2').attr('id',TITLE);
		let DATE = GID+'_DATE';
		let _DATE = '#'+DATE;
		$(_TITLE).siblings('h5').eq(0).attr('id', DATE);
		let BTN = GID+'_BTN';
		let _BTN = '#'+BTN;
		$(_TITLE).siblings('h5').eq(1).attr('id', BTN);
		let INPUT = GID+'_INPUT';
		let _INPUT = '#'+INPUT;
		$(_GID+' p').attr('id',INPUT);
		$(_TITLE).text(j.val);
		$(_BTN).empty();
		$(_INPUT).empty();
		let x =[{cls: 'start', txt: '시작값'},
			{cls: 'end', txt: '한계값'},
			{cls: 'diff', txt: '공차'}];
		$(_sequence.input(x)).appendTo(_INPUT);
		$('#remove_s').remove();
		$('#remove_e').remove();
		
		$('<span class="label label-danger"></span>')
		.text('결과')
		.addClass('cursor')
		.attr('name',j.id)
		.appendTo('_BTN')
		.click(function(){
			let that = $(this).attr('name');
			let data = {
					start: $('.start').val(),
					end:  $('.end').val(),
					diff:  $('.diff').val()
					};
			$.ajax({
				url: $.ctx()+'/algo/seq/'+that,
				type: 'post',
				data: JSON.stringify(data),
				dateType: 'json',
				contentType: "application/json; chatset=utf-8",
				success: d=>{
					$('#_INPUT').empty();
					$('<h2>결과값 : '+d.result+'</h2>').appendTo(_INPUT);
				},
				error:e=>{
					alert('AJAX 실패');
				}
			});
		});
		$('<span class="label label-warning" style="margin-left: 10px"></span>')
		.text('리셋')
		.addClass('cursor')
		.appendTo('_BTN')
		.click(()=>{
			$(_INPUT).empty();
			$(_sequence.input(x)).appendTo(_INPUT);
		});
	});
}


var _sequence = {
		//===================================== navi ============================================
		nav : ()=>{
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
		},
		
		//===================================== input ============================================
		input : (x)=>{	
			let html = '<form>';
			$.each(x,(i,j)=>{
				html += '<div class="fomr-group">';
				html += '<label for="">'+j.txt+' :</label>';
				html += '<input type="text" class="'+j.cls+'"></div>';
			});
			html +='</from>';
			return html;
		},
		
		//===================================== remove ===========================================
		remove : ()=>{
			$('#temp_s').before('<div id="remove_s"/>');
			$('#temp_e').after('<div id="remove_e"/>');
			$('#remove_s').nextUntil('#remove_e').wrap().remove();
		},
		
		//======================================== quest =========================================
		quest : x=>{
			$('#title_1').text(x);
			_sequence.input();
		}
}