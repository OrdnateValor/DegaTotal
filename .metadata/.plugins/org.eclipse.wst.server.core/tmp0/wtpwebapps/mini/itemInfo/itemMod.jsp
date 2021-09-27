<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mini.dto.Item"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이템 편집</title>
<style>
input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
</style>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<form name="itemModForm"
				action="/itemUpdate.do?itemId=${item.itemId }" method="post">
				<div class="form-group col-xl-8 row">
					<div style="margin-left: 1rem; margin-right: 1rem;">
						<!-- 아이콘 -->
						<img src="/resources/imgs/ico/${item.itemIco }">
						<div>
							<label for="itemIco" class="btn btn-sm btn-success btn-block">파일
								선택</label> <input type="file" name="itemIco" id="itemIco"
								accept="image/*">
						</div>
					</div>
					<!-- 이름 -->
					<div class="form-group col-xl-10 row">
						<h2>
							<strong><input name="itemNm" class="form-control"
								value="${item.itemNm }"></strong>
						</h2>
						<div class="form-group col-xl-10 row">
							<!-- 희귀도 -->
							<select class="form-control" style="width: 8rem;" name="iRarity">
								<option value="">---희귀도---</option>
								<option <c:if test="${item.iRarity == '경이' }">selected</c:if>
									value="경이">경이</option>
								<option <c:if test="${item.iRarity == '전설' }">selected</c:if>
									value="전설">전설</option>
								<option <c:if test="${item.iRarity == '희귀' }">selected</c:if>
									value="희귀">희귀</option>
								<option <c:if test="${item.iRarity == '고급' }">selected</c:if>
									value="고급">고급</option>
								<option <c:if test="${item.iRarity == '일반' }">selected</c:if>
									value="일반">일반</option>
							</select>
							<p>/</p>
							<!-- 장비 슬롯 -->
							<select class="form-control" style="width: 8rem;" name="iSlot">
								<option value="">---장비 슬롯---</option>
								<option <c:if test="${item.iSlot == '물리 무기' }">selected</c:if>
									value="물리 무기">물리 무기</option>
								<option <c:if test="${item.iSlot == '에너지 무기' }">selected</c:if>
									value="에너지 무기">에너지 무기</option>
								<option <c:if test="${item.iSlot == '중화기' }">selected</c:if>
									value="중화기">중화기</option>
							</select>
							<p>/</p>
							<!-- 무기군 -->
							<select class="form-control" style="width: 10rem;"
								name="iCategory">
								<option value="">---무기군---</option>
								<option
									<c:if test="${item.iCategory == '자동 소총' }">selected</c:if>
									value="자동 소총">자동 소총</option>
								<option
									<c:if test="${item.iCategory == '파동 소총' }">selected</c:if>
									value="파동 소총">파동 소총</option>
								<option
									<c:if test="${item.iCategory == '정찰 소총' }">selected</c:if>
									value="정찰 소총">정찰 소총</option>
								<option
									<c:if test="${item.iCategory == '융합 소총' }">selected</c:if>
									value="융합 소총">융합 소총</option>
								<option
									<c:if test="${item.iCategory == '선형 융합 소총' }">selected</c:if>
									value="선형 융합 소총">선형 융합 소총</option>
								<option
									<c:if test="${item.iCategory == '추적 소총' }">selected</c:if>
									value="추적 소총">추적 소총</option>
								<option
									<c:if test="${item.iCategory == '핸드 캐논' }">selected</c:if>
									value="핸드 캐논">핸드 캐논</option>
								<option
									<c:if test="${item.iCategory == '보조 무기' }">selected</c:if>
									value="보조 무기">보조 무기</option>
								<option
									<c:if test="${item.iCategory == '전투 활' }">selected</c:if>
									value="전투 활">전투 활</option>
								<option <c:if test="${item.iCategory == '산탄총' }">selected</c:if>
									value="산탄총">산탄총</option>
								<option <c:if test="${item.iCategory == '저격총' }">selected</c:if>
									value="저격총">저격총</option>
								<option
									<c:if test="${item.iCategory == '기관단총' }">selected</c:if>
									value="기관단총">기관단총</option>
								<option <c:if test="${item.iCategory == '기관총' }">selected</c:if>
									value="기관총">기관총</option>
								<option
									<c:if test="${item.iCategory == '유탄발사기' }">selected</c:if>
									value="유탄발사기">유탄발사기</option>
								<option
									<c:if test="${item.iCategory == '로켓발사기' }">selected</c:if>
									value="로켓발사기">로켓발사기</option>
								<option <c:if test="${item.iCategory == '검' }">selected</c:if>
									value="검">검</option>
							</select>
						</div>
						<div class="col-xl-8">
							<!-- 수정, 삭제 버튼 -->
							<a class="btn btn-primary btn-sm" href="javascript:modItemChk()">수정</a>
							<a class="btn btn-danger btn-sm"
								href="/itemInfo.do?itemId=${item.itemId }">취소</a>
						</div>
					</div>
				</div>
				<hr>
				<!-- 본체 -->
				<div class="form-group row justify-content-center">
					<div class="col-xl-5">
						<img src="/resources/imgs/scr/${item.itemScr }"
							style="width: 100%">
						<div>
							<label for="itemScr" class="btn btn-sm btn-success btn-block">파일
								선택</label> <input type="file" name="itemScr" id="itemScr"
								accept="image/*">
						</div>
					</div>

					<div id="stat-container" class="col-xl-5">
						<!-- 설명 -->
						<p>
							<textarea class="form-control" name="itemDes" cols="50" rows="2">${item.itemDes }</textarea>
						</p>
						<!-- 아이템 스탯 -->
						<div class="">
							<h4>무기 능력치</h4>
							<table class="stat_set" style="width: 100%;">
								<tr>
									<td class="statNm"><input class="form-control" type="text"
										name="STAT1NM" value="${item.STAT1NM }"></td>
									<!-- 슬라이더 -->
									<td class="statFig"><input class="form-control"
										name="STAT1FIG" type="range" value="${item.STAT1FIG }"
										max="100" min="0" step="1"
										oninput="document.getElementById('stat1Fig').innerHTML=this.value;"></td>
									<!-- 슬라이더 표시기 -->
									<td><span id="stat1Fig">${item.STAT1FIG }</span></td>

								</tr>
								<tr>
									<td class="statNm"><input class="form-control" type="text"
										name="STAT2NM" value="${item.STAT2NM }"></td>
									<!-- 슬라이더 -->
									<td class="statFig"><input class="form-control"
										name="STAT2FIG" type="range" value="${item.STAT2FIG }"
										max="100" min="0" step="1"
										oninput="document.getElementById('stat2Fig').innerHTML=this.value;"></td>
									<!-- 슬라이더 표시기 -->
									<td><span id="stat2Fig">${item.STAT2FIG }</span></td>
								</tr>
								<tr>
									<td class="statNm"><input class="form-control" type="text"
										name="STAT3NM" value="${item.STAT3NM }"></td>
									<!-- 슬라이더 -->
									<td class="statFig"><input class="form-control"
										name="STAT3FIG" type="range" value="${item.STAT3FIG }"
										max="100" min="0" step="1"
										oninput="document.getElementById('stat3Fig').innerHTML=this.value;"></td>
									<!-- 슬라이더 표시기 -->
									<td><span id="stat3Fig">${item.STAT3FIG }</span></td>
								</tr>
								<tr>
									<td class="statNm"><input class="form-control" type="text"
										name="STAT4NM" value="${item.STAT4NM }"></td>
									<!-- 슬라이더 -->
									<td class="statFig"><input class="form-control"
										name="STAT4FIG" type="range" value="${item.STAT4FIG }"
										max="100" min="0" step="1"
										oninput="document.getElementById('stat4Fig').innerHTML=this.value;"></td>
									<!-- 슬라이더 표시기 -->
									<td><span id="stat4Fig">${item.STAT4FIG }</span></td>
								</tr>
								<tr>
									<td class="statNm"><input class="form-control" type="text"
										name="STAT5NM" value="${item.STAT5NM }"></td>
									<!-- 슬라이더 -->
									<td class="statFig"><input class="form-control"
										name="STAT5FIG" type="range" value="${item.STAT5FIG }"
										max="100" min="0" step="1"
										oninput="document.getElementById('stat5Fig').innerHTML=this.value;"></td>
									<!-- 슬라이더 표시기 -->
									<td><span id="stat5Fig">${item.STAT5FIG }</span></td>
								</tr>
								<tr>
									<td class=" ">분당 발사 수</td>
									<td><input class="form-control col-xl-5 col-md-4"
										type="number" name="RPM" value="${item.RPM }"></td>
								</tr>
								<tr>
									<td class=" ">탄창</td>
									<td><input class="form-control col-xl-5 col-md-4"
										type="number" name="MAGAZINE" value="${item.MAGAZINE }"></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="col-xl-8">
						<!-- 아이템 퍽 -->
						<table class="perk_set" style="width:100%">
							<tr class="perk">
								<td><img class="ico" src="/resources/imgs/ico/${item.perkIco1  }" class="bg-dark">
									<div>
										<label for="perkIco1" class="btn btn-sm btn-dark btn-block">파일 선택</label>
										<input type="file" name="perkIco1" id="perkIco1" accept="image/*">
									</div></td>
								<td class="item_perk">
									<strong>
										<input type="text" class="form-control" name="perkName1" value="${item.perkName1 }">
									</strong>
									<textarea class="form-control" name="perkDes1">
										${item.perkDes1  }
									</textarea>
								</td>
							</tr>
							<tr class="perk">
								<!-- 퍽2 -->
								<td><img class="ico"
									src="/resources/imgs/ico/${item.perkIco2  }" class="bg-dark">
									<div>
										<label for="perkIco2" class="btn btn-sm btn-dark btn-block">파일 선택</label>
										<input type="file" name="perkIco2" id="perkIco2" accept="image/*">
									</div></td>
								<td class="item_perk">
									<strong>
										<input type="text" class="form-control" name="perkName2" value="${item.perkName2  }">
									</strong>
									<textarea class="form-control" name="perkDes2">
										${item.perkDes2  }
									</textarea>
								</td>
							</tr>
							<tr class="perk">
								<!-- 퍽3 -->
								<td><img class="ico" src="/resources/imgs/ico/${item.perkIco3  }" class="bg-dark">
									<div>
										<label for="perkIco3" class="btn btn-sm btn-dark btn-block">파일 선택</label>
										<input type="file" name="perkIco3" id="perkIco3" accept="image/*">
									</div>
								</td>
								<td class="item_perk">
									<strong>
										<input type="text" class="form-control" name="perkName3" value="${item.perkName3  }">
									</strong>
									<textarea class="form-control" name="perkDes3">
										${item.perkDes3  }
									</textarea>
								</td>
							</tr>
							<tr class="perk">
								<!-- 퍽4 -->
								<td><img class="ico"
									src="/resources/imgs/ico/${item.perkIco4  }" class="bg-dark">
									<div>
										<label for="perkIco4" class="btn btn-sm btn-dark btn-block">파일 선택</label>
										<input type="file" name="perkIco4" id="perkIco4" accept="image/*">
									</div>
								</td>
								<td class="item_perk">
									<strong>
										<input type="text" class="form-control" name="perkName4" value="${item.perkName4  }">
									</strong>
									<textarea class="form-control" name="perkDes4">
										${item.perkDes4  }
									</textarea>
								</td>
							</tr>
							<tr class="perk">
								<!-- 퍽5 -->
								<td><img class="ico"
									src="/resources/imgs/ico/${item.perkIco5  }" class="">
									<div>
										<label for="perkIco5" class="btn btn-sm btn-dark btn-block">파일
											선택</label> <input type="file" name="perkIco5" id="perkIco5"
											accept="image/*">
									</div></td>
								<td class="item_perk">
									<strong>
										<input type="text" class="form-control" name="perkName5" value="${item.perkName5  }">
									</strong>
									<textarea class="form-control" name="perkDes5">
										${item.perkDes5  }
									</textarea>
								</td>
							</tr>
						</table>
						<br>
					</div>
				</div>
				<input type="hidden" name="itemId" value="${item.itemId }">
				<input type="hidden" name="_itemScr" value="${item.itemScr }">
				<input type="hidden" name="_itemIco" value="${item.itemIco }">
				<input type="hidden" name="_perkIco1" value="${item.perkIco1 }">
				<input type="hidden" name="_perkIco2" value="${item.perkIco2 }">
				<input type="hidden" name="_perkIco3" value="${item.perkIco3 }">
				<input type="hidden" name="_perkIco4" value="${item.perkIco4 }">
				<input type="hidden" name="_perkIco5" value="${item.perkIco5 }">
			</form>
		</div>
	</div>
	<%@include file="../include/footer.jsp"%>
</body>
</html>