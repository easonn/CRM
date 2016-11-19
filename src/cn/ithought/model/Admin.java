package cn.ithought.model;

import cn.ithought.tool.StringTool;

import com.jfinal.plugin.activerecord.Model;

/**
 * @author yin.sheng
 * @email yinsheng92@hotmail.com
 * @date 2014年8月26日
 */
public class Admin extends Model<Admin> {

	private static final long serialVersionUID = 1L;

	public static final Admin DAO = new Admin();

	// modify for CRM
	// 11.19.2016
	public Admin login() {
		return this.findFirst("xxxxlogin sql", getStr("userName"),
				StringTool.getMD5(getStr("password").getBytes()));
	}

	// add for CRM
	// 11.19.2016
	public boolean register() {
		return null != this.findFirst("xxxxxregister sql", getStr("userName"),
				StringTool.getMD5(getStr("password").getBytes()));
	}

	// add for CRM
	// 11.19.2016
	public boolean checkAccount() {
		return null != findFirst("xxxcheck user duplicate", getStr("userName"));
	}

	// add for CRM
	// 11.19.2016
	public Admin loadByEmail() {
		return this.findFirst("xxxx select admin by email", getStr("email"));
	}

}
