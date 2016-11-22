package cn.crm.controller.store;

import com.jfinal.core.Controller;

import cn.crm.model.Store;

public class StoreController extends Controller {


	// add for CRM
	// 11.19.2016
	public void add() {
		Store store = getModel(Store.class);
		store.add();
		list();
	}

	// add for CRM
	// 11.19.2016
	public void list() {
		Store store = new Store();
		setAttr("dList", store.getList());
		renderJsp("sList.jsp");
	}

	public void del() {
		Store store = getModel(Store.class);
		store.delete();
		list();
	}

}
