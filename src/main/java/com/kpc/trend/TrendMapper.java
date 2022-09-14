package com.kpc.trend;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface TrendMapper {
	
	// 1. 전체 판매 금액 (월 & 금액)
	public ArrayList<TrendVO> totSalesMapper();
	
	// 2. 전체 판매 건수 (월 & 건수)
	public ArrayList<TrendVO> totSalesCountMapper();

	// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
	public ArrayList<TrendVO> categoryTotSalesMapper();
	
	// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
	public ArrayList<TrendVO> categoryTotSalesCountMapper();
	
	// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
	public ArrayList<TrendVO> trendSelectMapper();
	
	// 50. 검색어 순위 탑6
	public ArrayList<TrendVO> searchSelectMapper();
	
	// 6. 대분류 판매량 비교 (대분류 & 분류별 판매량) 
	public ArrayList<TrendVO> genderTotSales();
	
	// 7. 중분류 판매량 비교 그래프(중분류 & 중분류 카운트 횟수(판매량) 그래프)
	public ArrayList<TrendVO> middleClassSalesMapper();
	
	// 8. 소분류 순위 (소분류 카운트 횟수(판매량) 랭킹 리스트)
	public ArrayList<TrendVO> subClassSalesMapper();
	
	// 9. 랭킹 상품별 상세 페이지
	public TrendVO selectGoodsViewMapper( int PD_C );
	
	// 10. 성별 판매 건수
	public ArrayList<TrendVO> genderTotSalesCountMapper();
	
	//11 . 성별 대분류 판매 건수 
	public ArrayList<TrendVO> gendercategoryTotSalesCountMapper();

}
