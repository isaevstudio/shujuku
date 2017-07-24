package org.fkit.domain;

public class Shoe {
	
	@Override
	public String toString() {
		return "Shoe [id=" + id + ", shoeimage=" + shoeimage + ", shoenumber=" + shoenumber + ", shoename=" + shoename
				+ ", shoetype=" + shoetype + ", shoeintro=" + shoeintro + ", shoeprice=" + shoeprice + ", shoecount="
				+ shoecount + "]";
	}
	private Integer id;
	private String shoeimage;
    private String shoenumber;
    private String shoename;
    private String shoetype;
    private String shoeintro;
    private String shoeprice;
    private int shoecount;
    public String getShoeprice() {
		return shoeprice;
	}
	public void setShoeprice(String shoeprice) {
		this.shoeprice = shoeprice;
	}
	
	public String getImage() {
		return shoeimage;
	}
	public void setImage(String image) {
		this.shoeimage = image;
	}
	public String getShoenumber() {
		return shoenumber;
	}
	public void setShoenumber(String shoenumber) {
		this.shoenumber = shoenumber;
	}
	public String getShoename() {
		return shoename;
	}
	public void setShoename(String shoename) {
		this.shoename = shoename;
	}
	public String getShoeintro() {
		return shoeintro;
	}
	public void setShoeintro(String shoeintro) {
		this.shoeintro = shoeintro;
	}
	public String getShoeimage() {
		return shoeimage;
	}
	public void setShoeimage(String shoeimage) {
		this.shoeimage = shoeimage;
	}
	public int getShoecount() {
		return shoecount;
	}
	public void setShoecount(int shoecount) {
		this.shoecount = shoecount;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getShoetype() {
		return shoetype;
	}
	public void setShoetype(String shoetype) {
		this.shoetype = shoetype;
	}
	
}
