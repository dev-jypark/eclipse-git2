<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 실제 내용 시작 -->
<div class="container">
	
	<div>
		<form id="myform" class="form-horizontal" method="post"	enctype="multipart/form-data"
			action="<c:url value="admin_notice/Write.do"/>">
			
			<div class="form-group">
				<label class="col-sm-2 control-label">제 목</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="n_title"
						placeholder="제목을 입력하세요?">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label">내 용</label>
				<!-- 중첩 컬럼 사용 -->
				<div class="col-sm-10">
					<div class="row">
						<div class="col-sm-8">
							<textarea rows="5" class="form-control" name="n_content"
								placeholder="내용을 입력하세요"></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<button class="btn btn-primary">등록</button>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- container -->
<!-- 실제 내용 끝-->
<!-- 경고창 모달 시작 -->
<div class="modal  fade" id="small-modal" data-backdrop="static">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-body">
				<button class="close" data-dismiss="modal">
					<span>&times;</span>
				</button>
				<h5 class="modal-title">
					<span class="glyphicon glyphicon-blackboard"></span> 확인 메시지
				</h5>
				<h5 id="warningMessage" style="color: red"></h5>
			</div>
		</div>
	</div>
</div>


<script>
	/*    	
	//파일 사이즈(바이트):파일객체(자스 DOM).files[0].size
	//파일 명:파일객체(자스 DOM).files[0].name
	//파일 컨텐츠 타입:파일객체(자스 DOM).files[0].type
	*/
	
	$(function(){
		var focusObject;
		var jsDom = $('input[name=attachfile]').get(0);
		//hidden.bs.modal는 모달창이 닫히면 발생하는 이벤트
		$('#small-modal').on('hidden.bs.modal',function(){
			focusObject.focus();
		});
		
			
			if(form.name.value==""){
				$('#warningMessage').html('이름을 입력하세요');
				$('#small-modal').modal('show');
				focusObject = form.name;
				return false;
			}
			if(form.title.value==""){
				$('#warningMessage').html('제목을 입력하세요');
				$('#small-modal').modal('show');
				focusObject = form.title;
				return false;
			}
			
			/*
			else{//파일을 첨부한 경우:파일 업로드 최대 용량 체크
				console.log('파일 크기:',file.files[0].size);
				console.log('파일 이름:',file.files[0].name);
				console.log('컨텐츠 타입:',file.files[0].type);
				if(file.files[0].size > 500*1024){
					$('#warningMessage').html('업로드 최대 용량(500KB)을 초과했어요');
					$('#small-modal').modal('show');
					focusObject = form.attachfile;
					return false;
				}
			}*/
			
			if($('textarea').val()==""){
				$('#warningMessage').html('내용을 입력하세요');
				$('#small-modal').modal('show');
				focusObject = $('textarea');
				return false;
			}
			
			
		});///////////////
		
		
	});




</script>



