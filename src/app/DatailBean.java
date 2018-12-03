package app;

import java.io.Serializable;

public class DatailBean implements Serializable {


		private String Name = null;
		private int Stock = 0;
		private int Price = 0;
		private int Cat_id = 0;
		private String Msg = null;

		public String getName() {
			return Name;
		}
		public void setName(String name) {
			Name = name;
		}
		public int getStock() {
			return Stock;
		}
		public void setStock(int stock) {
			Stock = stock;
		}
		public int getPrice() {
			return Price;
		}
		public void setPrice(int price) {
			Price = price;
		}
		public int getCat_id() {
			return Cat_id;
		}
		public void setCat_id(int cat_id) {
			Cat_id = cat_id;
		}
		public String getMsg() {
			return Msg;
		}
		public void setMsg(String msg) {
			Msg = msg;
		}

}
