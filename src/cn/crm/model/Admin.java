package cn.crm.model;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Model;

import cn.crm.tool.StringTool;

/**
 * @author yin.sheng
 * @email yinsheng92@hotmail.com
 * @date 2014年8月26日
 */
public class Admin extends Model<Admin> {

	private static final long serialVersionUID = 1L;

	public static final String TABLE_NAME = "ADMIN";

	public static final Admin DAO = new Admin();

	private Number i;

	// modify for CRM
	// 11.19.2016
	public Admin login() {
		return this.findFirst("SELECT USERNAME FROM ADMIN WHERE USERNAME = ? AND PASSWORD = ?", getStr("USERNAME"), StringTool.getMD5(getStr("PASSWORD").getBytes()));
	}

	// add for CRM
	// 11.19.2016
	public boolean register() {
		return 0 != Db.update("insert into ADMIN(PASSWORD, USERNAME, ID) values(?, ?, ?)", getStr("PASSWORD"),
				getStr("USERNAME"), getNumber("ID"));
	}

	// add for CRM
	// 11.19.2016
	public int checkAccountAndGetLastId() {
		boolean check = null == findFirst("SELECT USERNAME FROM " + TABLE_NAME + " WHERE USERNAME =?",
				getStr("username"));
		i = findFirst("SELECT max(id) as id FROM " + TABLE_NAME).getNumber("ID");
		return check ? (null != i ? i.intValue() + 1 : 1) : -1;
	}

	// add for CRM
	// 11.19.2016
	public Admin loadByEmail() {
		return this.findFirst("xxxx select admin by email", getStr("email"));
	}

}
