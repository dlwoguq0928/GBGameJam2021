// 카메라 매니져 함수


/// @desc 카메라를 지정한 좌표 , 시간[스탭] , 보간을 적용해서 이동시키는 스크립트
/// @arg xpos		이동시킬 x좌표
/// @arg ypos		이동시킬 y좌표
/// @arg step		이동 시간(스탭) ( 0이하이면 즉시 이동 )
/// @arg curve		적용할 보간 그래프 ( 일반선형보간이면 -1 )
/// @arg channel_num	 보간 그래프 채널 ( 0부터 시작 )

function Camera_Move( xpos , ypos , step , curve , channel_num ) {
	
	//카메라 매니져에서 실행
	with ( ob_camera_manager ) {
		
		// 카메라의 시작 위치와 끝 위치 지정( 카메라의 중점 취득 )
		Camera_X_Start = CM_G_X();
		Camera_Y_Start = CM_G_Y();
	
		//현재의 배율에서 가능한 좌표로만 이동 가능
		Camera_X_End = xpos;
		Camera_Y_End = ypos;
		
		
		//이동 시간 지정 ( 0이하이면 즉시이동 )
		if ( step < 1 )	{
			Camera_Move_Counter = Camera_Move_Counter_Max;	
		}
		else {
			Camera_Move_Counter = 0;
			Camera_Move_Counter_Max = step;
		}
		
		//보간 커브와 채널지정
		Camera_Move_Curve = curve;
		Camera_Move_Curve_Index = channel_num;
	}
}



/// @desc 카메라의 현재 x위치(중점)을 반환하는 스크립트

function Camera_Get_Xpos() {
	//카메라 매니져에서 실행
	with ( ob_camera_manager ) {
		return CM_G_X();
	}
}


/// @desc 카메라의 현재 y위치(중점)을 반환하는 스크립트

function Camera_Get_Ypos() {
	//카메라 매니져에서 실행
	with ( ob_camera_manager ) {
		return CM_G_Y();
	}
}





/// @desc 카메라가 지정한 위치에 최대한 도달했는지 검사하는 함수

function Camera_Get_Arrive_Position() {
	
	//카메라 매니져에서 실행
	with ( ob_camera_manager ) {
		
		// 타겟 비지정일때는 일반 좌표에 도달했는지 반환
		if ( Target == noone ) {
			return (Camera_Move_Counter >= Camera_Move_Counter_Max);
		}
		// 타겟 지정일때는 타겟에게 도달했는지 반환
		else  {
			return Target_Arrive;
		}
		
	}
	
}




/// @desc 카메라를 지정한 배율 , 시간[스탭] , 보간을 적용해서 스케일링시키는 스크립트
/// @arg scale		적용할 배율(백분율값)
/// @arg step		이동 시간(스탭) ( 0이하이면 즉시 이동 )
/// @arg curve		적용할 보간 그래프 ( 일반선형보간이면 -1 )
/// @arg channel_num	 보간 그래프 채널 ( 0부터 시작 )

function Camera_Scale( scale , step , curve , channel_num ) {
	
	//카메라 매니져에서 실행
	with ( ob_camera_manager ) {
		
		//카메라의 시작 배율과 끝 배율 지정( 백분율 )
		Camera_Start_Scale = CM_G_S();
		Camera_End_Scale = min( scale , CM_G_S_Max() );
		
		
		//적용할 시간 지정 ( 0이하이면 즉시이동 )
		if ( step < 1 )	{
			Camera_Scale_Counter = Camera_Scale_Counter_Max;	
		}
		else {
			Camera_Scale_Counter = 0;
			Camera_Scale_Counter_Max = step;
		}
		
		//보간 커브와 채널지정
		Camera_Scale_Curve = curve;
		Camera_Scale_Curve_Index = channel_num;
		
	}
}



/// @desc 카메라의 현재 배울(백분율)을 반환하는 스크립트

function Camera_Get_Scale() {
	//카메라 매니져에서 실행
	with ( ob_camera_manager ) {
		return CM_G_S();
	}
}



/// @desc 카메라가 지정한 배율에 최대한 도달했는지 검사하는 함수

function Camera_Get_Arrive_Scale() {
	
	//카메라 매니져에서 실행
	with ( ob_camera_manager ) {
		return (Camera_Scale_Counter >= Camera_Scale_Counter_Max);	
	}
	
}




/// @desc 카메라에 지정한 속도로 인스턴스를 타겟팅시키는 스크립트
/// @arg target		쫓아갈 타겟 인스턴스
/// @arg spd		타겟을 쫓아갈 속도
/// @arg x_off		쫓아갈 x좌표 보정
/// @arg y_off		쫓아갈 y좌표 보정

function Camera_Target( target , spd , xoff , yoff ){
	//카메라 매니져에서 실행
	with ( ob_camera_manager ) {
		
		//타겟과 쫓아갈 속도 지정
		Target = target;
		Target_Spd = spd;
		
		
		//카메라가 쫓아갈 좌표보정
		Target_Xoffset = xoff;
		Target_Yoffset = yoff;
	}
}




/// @desc 카메라의 타겟을 초기화하는 스크립트

function Camera_Reset_Target() {
	//카메라 매니져에서 실행
	with ( ob_camera_manager ) {
		Target = noone;
		
		//좌표 취득
		Camera_X_Start = CM_G_X();
		Camera_X_End = Camera_X_Start;
		
		Camera_Y_Start = CM_G_Y();
		Camera_Y_End = Camera_Y_Start;
		
		Target_Arrive = false;
	}
}




/// @desc 카메라 쉐이킹 스크립트
/// @arg time 흔들시간 (스탭)
/// @arg power 세기	(정수값)
/// @arg angle_shake 각도흔들기 ( true / false )

function Camera_Shake( step , _power , angle_shake ) {
	with( ob_camera_manager )
	{
		if ( step > 0 )
		{
			//쉐이크 시작
			CM_Shake = true;
		
			//쉐이크 시간
			CM_Shake_Time_Max = step;
			CM_Shake_Time = CM_Shake_Time_Max;
		
			//쉐이크 강도
			CM_Shake_Power = _power;
		
			//각도흔들기
			CM_Shake_Angle = angle_shake;
		}
	}
}




/// @desc 화면을 페이드 아웃 시키는 스크립트
/// @arg step	페이드할 시간
/// @arg white	화이트컬러 체크

function Camera_Fadeout( step , white ) {
	with( ob_camera_manager )
	{
		//페이드 시작
		CM_Fade = true;
		
		//페이드 시간이 0이면 즉시 페이드
		if ( step <= 0 )
		{
			CM_Fade_Step = CM_Fade_Step_Max;	
		}
		else
		{
			CM_Fade_Step_Max = step;
		}
		
		//페이드 컬러 취득
		CM_Fade_Color = ( white ) ? c_white : c_black;
	}
}




/// @desc 화면을 페이드인 시키는 스크립트
/// @arg step	페이드할 시간

function Camera_Fadein( step ) {
	with( ob_camera_manager )
	{
		//페이드 종료
		CM_Fade = false;
		
		//페이드 시간이 0이면 즉시 페이드
		if ( step <= 0 )
		{
			CM_Fade_Step = 0;	
		}
		else
		{
			CM_Fade_Step_Max = step;
			CM_Fade_Step = CM_Fade_Step_Max;
		}
		
	}
}




/// @desc 카메라 플레시 효과 설정
/// @arg time 플레시 시간

function Camera_Flash( step ) {
	with( ob_camera_manager )
	{
		CM_Flash = true;
		CM_Flash_Swicth = true;
		
		CM_Flash_Counter_Max = max( 2 , step );
		CM_Flash_Counter_Max = round( CM_Flash_Counter_Max/2 );
		CM_Flash_Counter = 0;
	}
}



