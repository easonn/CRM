package cn.crm.common;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.activerecord.dialect.OracleDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.ehcache.EhCachePlugin;
import com.jfinal.render.ViewType;

import cn.crm.controller.admin.AdminController;
import cn.crm.controller.delivery.DeliveryController;
import cn.crm.controller.product.ProductController;
import cn.crm.controller.store.StoreController;
import cn.crm.model.Admin;
import cn.crm.model.Delivery;
import cn.crm.model.Product;
import cn.crm.model.Store;

public class Config extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {
		me.setDevMode(true);
		me.setViewType(ViewType.JSP);
		me.setError404View("404.html");
		me.setError500View("500.html");
	}

	@Override
	public void configHandler(Handlers me) {
		// me.add(new ContextPathHandler("ctx_path"));

	}

	@Override
	public void configInterceptor(Interceptors arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void configPlugin(Plugins me) {
		loadPropertyFile("dbconfig.properties");
		C3p0Plugin c3p0Plugin = new C3p0Plugin(getProperty("oracle.url"), getProperty("oracle.username"),
				getProperty("oracle.password").trim());
		// for oracle
		c3p0Plugin.setDriverClass(getProperty("oracle.driver"));

		me.add(c3p0Plugin);

		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		arp.setDialect(new OracleDialect());
		arp.setContainerFactory(new CaseInsensitiveContainerFactory());
		arp.addMapping(Admin.TABLE_NAME, "id", Admin.class);
		arp.addMapping(Product.TABLE_NAME, "id", Product.class);
		arp.addMapping(Store.TABLE_NAME, "id", Store.class);
		arp.addMapping(Delivery.TABLE_NAME, "id", Delivery.class);

		arp.setShowSql(true);
		me.add(arp);
		me.add(new EhCachePlugin());
	}

	@Override
	public void configRoute(Routes me) {
		me.add("/", AdminController.class);
		me.add("/product", ProductController.class);
		me.add("/store", StoreController.class);
		me.add("/delivery", DeliveryController.class);
	}
}
