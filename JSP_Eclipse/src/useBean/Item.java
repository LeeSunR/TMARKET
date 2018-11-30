package useBean;

import java.sql.Date;

public class Item {
	private int tid;
	private String name;
	private int price;
	private String[] color;
	private String[] size;
	private Date date;
	private boolean sale;
	private int count;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String[] getColor() {
		return color;
	}
	public void setColor(String[] color) {
		this.color = color;
	}
	public String[] getSize() {
		return size;
	}
	public void setSize(String[] size) {
		this.size = size;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public boolean isSale() {
		return sale;
	}
	public void setSale(boolean sale) {
		this.sale = sale;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
