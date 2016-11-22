package cn.crm.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Model;

public class Delivery extends Model<Delivery> {

	public static final String TABLE_NAME = "DELIVERY";

	public int add() {
		return Db.update("insert into DELIVERY(D_ID, D_NAME, D_COUNT, D_OUTTIME, D_USER, ID) values(?, ?, ?, ?, ?, ?)", 123,
				"123", 123, "2016-11-23", "admin", 123);
	}

	public ArrayList<Delivery> getList() {
		return (ArrayList<Delivery>) find("select * from DELIVERY");
	}

	public int delete(int deliveryId) {
		return Db.update("delete from DELIVERY where D_ID = ? ", getInt("D_ID"));
	}

}
