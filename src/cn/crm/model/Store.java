package cn.crm.model;

import java.util.ArrayList;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Model;

public class Store extends Model<Store> {
	
	public static final String TABLE_NAME = "STORE";
	
	public int add() {
		return Db.update("insert into STORE(P_ID, S_NAME, S_COUNT, S_INTIME, S_USER) values(?, ?, ?, ?, ?)",
				getStr("P_id"), getStr("name"), getInt("count"), getTime("inTime"), get("username"));
	}

	public ArrayList<Store> getList() {
		return (ArrayList<Store>) find("select * from STORE");
	}

	public int delete(int id) {
		return Db.update("delete from PRODUCT where ID = ? ", getInt("id"));
	}
}
