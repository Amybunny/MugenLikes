$countUp = $('#textbox');
$countView = $('#count');
$createBtn = $('#btn-create');
$sampleBtn = $('#btn-sample');
$val = $countUp.val().length;

if($val == 0){
	$createBtn.prop("disabled",true);
}

$countUp.on('keyup',function(){
	$countView.html($(this).val().length);
	$val = $countUp.val().length;

	if($val == 0){
		$countView.removeClass('err');
		$createBtn.prop("disabled",true).removeClass('active');
		$sampleBtn.prop("disabled",false).addClass('active');
	}else if($val == 140){
		$countView.removeClass('err');
		$sampleBtn.prop("disabled",true).removeClass('active');
	}else if($val > 0 && $val < 140){
		$countView.removeClass('err');
		$createBtn.prop("disabled",false).addClass('active');
		$sampleBtn.prop("disabled",true).removeClass('active');
	}else if($val > 140){
		$countView.addClass('err');
		$createBtn.prop("disabled",true).removeClass('active');
		$sampleBtn.prop("disabled",false).addClass('active');
	}else{
		$countView.removeClass('err');
		$createBtn.prop("disabled",false).addClass('active');
	}
});

