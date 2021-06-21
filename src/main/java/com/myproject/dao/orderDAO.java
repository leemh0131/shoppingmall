package com.myproject.dao;

import java.util.List;

import com.myproject.domain.BasketOrdersVO;
import com.myproject.domain.BasketVO;
import com.myproject.domain.TestBean;
import com.myproject.domain.orderVO;

public interface orderDAO {
	
	//주문완료
	public void orderComplete(orderVO orderVO) throws Exception;	
		
	// 회원 주문 목록(관리자)
	public List<orderVO> orderList() throws Exception;
		
	// 비회원 주문 목록(관리자)
	public List<orderVO> nonOrderList() throws Exception;
		
	// 회원 주문 조회
	public List<orderVO> MemberOrdList(orderVO orderVO) throws Exception;
		
	// 비회원 로그인
	public orderVO nonlogin(orderVO vo) throws Exception;
		
	// 비회원 주문 조회
	public List<orderVO> nonMemberOrdList(int order_code) throws Exception;
		
	// 주문 상세보기
	public List<orderVO> orderView(int order_code) throws Exception;
		
	// 배송 상태
	public void delivery(orderVO vo) throws Exception;

	//취소
	public void orderDelete(int order_code) throws Exception;
	
	//장바구니 주문
	public TestBean basketOrder(BasketVO basektVO) throws Exception;
	
	//장바구니 주문 성공
	public void insertBasketOrders(orderVO orderVO) throws Exception;
	
	//장바구니 주문 성공2
	public void insertBo_ref(BasketOrdersVO baorVO) throws Exception;

}
