package cn.crm.controller.delivery;

import com.jfinal.core.Controller;

import cn.crm.model.Delivery;

public class DeliveryController extends Controller {


	// add for CRM
	// 11.19.2016
	public void add() {
		Delivery delivery = getModel(Delivery.class);
		delivery.add();
		list();
	}

	// add for CRM
	// 11.19.2016
	public void list() {
		Delivery delivery = new Delivery();
		setAttr("dList", delivery.getList());
		renderJsp("dList.jsp");
	}

	public void del() {
		Delivery delivery = getModel(Delivery.class);
		delivery.delete();
		list();
	}

}
