package cn.ithought.model;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.ehcache.CacheKit;
import com.jfinal.plugin.ehcache.IDataLoader;

/**
 * @author shengyin add for CRM 11.19.2016
 * 
 */
public class xxxTable extends Model<xxxTable> {
	private static final long serialVersionUID = 1L;
	// tableName
	private static final String TABLE = "t_essay";

	private static final String table_CACHE = "essay";

	// cache
	private static final String XXXTABLE_STRING_PAGE_CACHE = "essayPage";
	private static final String XXXTABLE_TYPE_PAGE_CACHE = "essayTypePage";
	// private static final String ESSAY_PAGE_FOR_ADMIN_CACHE =
	// "essayPageForAdmin";

	// sql
	private static final String ESSAY_BASIC_SELECT_PAGE_SQL = "select DATE_FORMAT(datetime,'%Y-%m-%d') as date, essayId ,contentInfo,title,author,typeName ";
	private static final String ESSAY_BASIC_FROM_PAGE_SQL = "from " + TABLE;
	public static final xxxTable DAO = new xxxTable();

	/*******/
	public Page<xxxTable> pageLoad(int pageNumber, int pageSize) {
		String para = ESSAY_BASIC_FROM_PAGE_SQL + " order by datetime desc";
		return DAO.paginateByCache(XXXTABLE_STRING_PAGE_CACHE,
				XXXTABLE_STRING_PAGE_CACHE + "-" + pageSize + "-" + pageNumber,
				pageNumber, pageSize, ESSAY_BASIC_SELECT_PAGE_SQL, para);
	}

	public Page<xxxTable> loadByCondition(String type, int pageNumber,
			int pageSize) {
		String para = ESSAY_BASIC_FROM_PAGE_SQL
				+ " where type = ? order by datetime desc";
		return DAO.paginateByCache(XXXTABLE_TYPE_PAGE_CACHE,
				XXXTABLE_TYPE_PAGE_CACHE + "-" + type + "-" + pageNumber,
				pageNumber, pageSize, ESSAY_BASIC_SELECT_PAGE_SQL, para, type);
	}

	public xxxTable load(int id) {
		final int ID = id;
		return (xxxTable) CacheKit.get(table_CACHE, ID, new IDataLoader() {
			@Override
			public xxxTable load() {
				return findById(ID);
			}
		});
	}
}
