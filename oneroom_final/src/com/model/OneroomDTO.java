package com.model;

public class OneroomDTO {

private int num;
//매물번호
private String realtor;
//공인중개사
private double area;
//면적(계약면적)
private String adress;
//주소
private int floor;
//층
private	int monthlyfee;
//월세
private int	charter;
//보증금
private int	difference_monthlyfee;
//시세차액(시세-월세)
private	int difference_charter;
//시세차액(시세-보증금)
private int insurance;
//보증보험여부--0:해당없음,1:해당--
private int building_registration;
//건물등기여부--0:해당없음,1:해당--
private int land_ledger ;
//토지대장여부--0:해당없음,1:해당--
private int building_book;
//건축물대장여부--0:해당없음,1:해당--
private int num_count;
//매물번호 8자리 여부--0:8자리 아님,1:8자리 맞음--
public OneroomDTO(int num, String realtor, double area, String adress, int floor, int monthlyfee, int charter,
		int difference_monthlyfee, int difference_charter, int insurance, int building_registration, int land_ledger,
		int building_book, int num_count) {
	super();
	this.num = num;
	this.realtor = realtor;
	this.area = area;
	this.adress = adress;
	this.floor = floor;
	this.monthlyfee = monthlyfee;
	this.charter = charter;
	this.difference_monthlyfee = difference_monthlyfee;
	this.difference_charter = difference_charter;
	this.insurance = insurance;
	this.building_registration = building_registration;
	this.land_ledger = land_ledger;
	this.building_book = building_book;
	this.num_count = num_count;
}
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}
public String getRealtor() {
	return realtor;
}
public void setRealtor(String realtor) {
	this.realtor = realtor;
}
public double getArea() {
	return area;
}
public void setArea(double area) {
	this.area = area;
}
public String getAdress() {
	return adress;
}
public void setAdress(String adress) {
	this.adress = adress;
}
public int getFloor() {
	return floor;
}
public void setFloor(int floor) {
	this.floor = floor;
}
public int getMonthlyfee() {
	return monthlyfee;
}
public void setMonthlyfee(int monthlyfee) {
	this.monthlyfee = monthlyfee;
}
public int getCharter() {
	return charter;
}
public void setCharter(int charter) {
	this.charter = charter;
}
public int getDifference_monthlyfee() {
	return difference_monthlyfee;
}
public void setDifference_monthlyfee(int difference_monthlyfee) {
	this.difference_monthlyfee = difference_monthlyfee;
}
public int getDifference_charter() {
	return difference_charter;
}
public void setDifference_charter(int difference_charter) {
	this.difference_charter = difference_charter;
}
public int getInsurance() {
	return insurance;
}
public void setInsurance(int insurance) {
	this.insurance = insurance;
}
public int getBuilding_registration() {
	return building_registration;
}
public void setBuilding_registration(int building_registration) {
	this.building_registration = building_registration;
}
public int getLand_ledger() {
	return land_ledger;
}
public void setLand_ledger(int land_ledger) {
	this.land_ledger = land_ledger;
}
public int getBuilding_book() {
	return building_book;
}
public void setBuilding_book(int building_book) {
	this.building_book = building_book;
}
public int getNum_count() {
	return num_count;
}
public void setNum_count(int num_count) {
	this.num_count = num_count;
}
}