function sequence(){
	_sequence.nav();
	_sequence.remove();
	_sequence.quest('등차수열의 합');
				$('#right_content').prepend($$.div({id:'right_start'}));
				$('#leave_a_comment').before($$.div({id:'right_end'}));
				$('#right_start').nextUntil('#right_end')
						.wrapAll($$.div({id:'new_div'}));
				let str = $('#new_div').html();
				$('#new_div').remove();
				$('#right_end').remove();
				let arr = [
						{id:'a', val:'등차수열의 합계'},
						{id:'b', val:'등비수열의 합계'},
						{id:'c', val:'팩토리얼 수열의 합계'},
						{id:'d', val:'피보나치 수열의 합계'}
						];
				$.each(arr, (i,v)=>{
					$(str).appendTo('#right_start');
					$('#title_1').attr('id','quest_'+v.id);
					$('#quest_'+v.id).text(v.val);
					$('.buttons').empty();
					$('<span class="label label-danger"></span>')
					.text('결과')
					.addClass('cursor')
					.appendTo('.buttons')
					.click(()=>{
						let data = {
								start: $('#start').val(),
								end:  $('#end').val(),
								diff:  $('#diff').val()
								};
						$.ajax({
							url: $.ctx()+'/algo/seq/1',
							type: 'post',
							data: JSON.stringify(data),
							dateType: 'json',
							contentType: "application/json; chatset=utf-8",
							success: d=>{
								$('#result').html($$.h({id:'h_res',num:'3'}).text('결과값 : '+d.result));
							},
							error:e=>{
								alert('AJAX 실패');
							}
						});
					});
					$('<span class="label label-warning" style="margin-left: 10px"></span>')
					.text('리셋')
					.addClass('cursor')
					.appendTo('.buttons')
					.click(()=>{
						_sequence.input();
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
		input : x=>{
			let arr = [{id:'a'}, {id:'b'}, {id:'c'}, {id:'d'}];
			$.each(arr,(i,v)=>{
				alert(v.id);
			});
			
			$('#result'+v.val).html($$.label({name: 'start'}).text('초항'))
			.append($$.input({type:'text', id:'start', name:'start', ph:'초항'}))
			.append($$.label({name: 'end'}).text('마지막항'))
			.append($$.input({type:'text', id:'end', name:'end', ph:'마지막항'}))
			.append($$.label({name: 'diff'}).text('공차'))
			.append($$.input({type:'text', id:'diff', name:'diff', ph:'공차'}));
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