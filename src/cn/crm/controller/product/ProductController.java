package cn.crm.controller.product;

import java.util.UUID;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.ext.render.CaptchaRender;

import cn.crm.interceptor.AdminInterceptor;
import cn.crm.model.Admin;
import cn.crm.model.Product;
import cn.crm.tool.StringTool;

public class ProductController extends Controller {


	// add for CRM
	// 11.19.2016
	public void add() {
		Product product = getModel(Product.class);
		product.add();
		list();
	}

	// add for CRM
	// 11.19.2016
	public void list() {
		Product product = new Product();
		setAttr("pList", product.getList());
		renderJsp("pList.jsp");
	}

	public void del() {
		Product product = getModel(Product.class);
		product.delete();
		list();
	}

}
