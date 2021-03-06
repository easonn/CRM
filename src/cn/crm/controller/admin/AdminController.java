package cn.crm.controller.admin;

import java.util.UUID;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.ext.render.CaptchaRender;

import cn.crm.interceptor.AdminInterceptor;
import cn.crm.model.Admin;
import cn.crm.tool.StringTool;

/**
 * @author yin.sheng
 * @email yinsheng92@hotmail.com
 * @date 2014年8月26日
 */
@Before(AdminInterceptor.class)
public class AdminController extends Controller {

	private static final String RANDOM_CODE_KEY = "1";

	// add for CRM
	// 11.19.2016
	public void login() {
		Admin admin = getModel(Admin.class);
		if (null == admin.getStr("userName")) {
			renderJsp("/login.jsp");
			return;
		}
		boolean check = (null != admin) ? admin.login() == null : false;
		if (check) {
			setSessionAttr("userName", admin.getStr("userName"));
			renderJsp("index.jsp");
		} else {
			String msg = "账户名密码错误";
			setAttr("msg", msg);
			renderJsp("login.jsp");
		}
	}

	// add for CRM
	// 11.19.2016
	public void register() {
		Admin model = getModel(Admin.class);
		int lastId = model.checkAccountAndGetLastId();
		if (-1 == lastId) {
			String msg = "用户名已存在错误";
			setAttr("msg", msg);
			renderJsp("../register.jsp");
			return;
		}
		model.set("id", lastId).set("PASSWORD", StringTool.getMD5(model.getStr("PASSWORD").getBytes()));
		boolean check = model.register();
		if (check) {
			redirect("/index");
		} else {
			String msg = "未知错误";
			setAttr("msg", msg);
			renderJsp("register.jsp");
		}
	}

	// add for CRM
	// 11.19.2016
	public void forgotpass() {
		Admin admin = getModel(Admin.class).loadByEmail();
		boolean check = null != admin;
		String msg = "注册邮箱不存在";
		if (check) {
			String passwd = StringTool.getRandomString(8);
			try {
				new cn.crm.tool.EmailSender().sendMail(admin.getStr("teacherEmail"), passwd);
				boolean resetPassState = admin.set("teacherPaassword", StringTool.getMD5(passwd.getBytes())).update();
				msg = resetPassState ? "密码重置邮件已发送,请注意查收,如没收到请检查您邮件的垃圾箱,请勿重复操作" : "exception";
			} catch (Exception ex) {
				msg = "邮件服务器异常,请联系管理员(18200390581)";
				System.out.println(ex.getMessage());
			}
		}
		setAttr("msg", msg);
		renderJsp("../forgotpass.jsp");
	}
}
