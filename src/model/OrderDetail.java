package model;

public class OrderDetail {
	
	private Integer Oid, order_oid, product, cnt;
	private Float price;
	
	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getOid() {
		return Oid;
	}

	public void setOid(Integer oid) {
		Oid = oid;
	}

	public Integer getOrder_oid() {
		return order_oid;
	}

	public void setOrder_oid(Integer order_oid) {
		this.order_oid = order_oid;
	}

	public Integer getProduct() {
		return product;
	}

	public void setProduct(Integer product) {
		this.product = product;
	}

	public Integer getCnt() {
		return cnt;
	}

	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}

	public OrderDetail() {
		
	}


}
