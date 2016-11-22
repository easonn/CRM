package cn.crm.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Model;

public class Product extends Model<Product> {

	public static final String TABLE_NAME = "PRODUCT";
	
	public int add() {
		return Db.update(
				"insert into PRODUCT(P_NAME, P_TYPE, P_SIZE, P_TRUESIZE, P_COUNT, P_INTIME, P_OUTTIME) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
				getStr("name"), getStr("type"), getInt("size"), getInt("trueSize"), getInt("count"), getTime("inTime"),
				getTime("outTime"));
	}

	public ArrayList<Product> getList() {
		return (ArrayList<Product>) find("select * from PRODUCT");
	}

	public int delete(int productId) {
		return Db.update("delete from PRODUCT where PD_ID = ? ", getInt("PD_ID"));
	}

}
