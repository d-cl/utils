package utils;

import java.util.List;

public class Page<T> {

	//页面当前页
	private Integer pageNo;
	//页面显示记录数
	private Integer pageSize;
	//总记录数
	private Integer totalRecord;
	//分页查询的结果集
	private List<T> list;
	
	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Page(Integer pageNo, Integer pageSize, Integer totalRecord) {
		super();
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.totalRecord = totalRecord;
	}

	public Integer getPageNo() {
		if(pageNo<1){
			return 1;
		}else if(pageNo>getTotalPage()){
			return getTotalPage();
		}
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	//获取总页数
	public Integer getTotalPage() {
		if(getTotalRecord()%getPageSize()==0){
			return getTotalRecord()/getPageSize();
		}else{
			return getTotalRecord()/getPageSize()+1;
		}
	}
	public Integer getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(Integer totalRecord) {
		this.totalRecord = totalRecord;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	//MySQL的分页起始index，Oracle需+1
	public Integer getIndex() {
		return getPageSize()*(getPageNo()-1);
	}
	//Oracle的endIndex
	public Integer getEndIndex(){
		return getPageNo()*getPageSize();
	}

	@Override
	public String toString() {
		return "Page [pageNo=" + pageNo + ", pageSize=" + pageSize
				+ ", totalRecord=" + totalRecord + ", list=" + list.toString() + "]";
	}
	
}
