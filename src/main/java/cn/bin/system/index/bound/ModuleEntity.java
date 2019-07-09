package cn.bin.system.index.bound;

public class ModuleEntity {

	private int module_id;
	private int module_pid;
	private String module_name;
	private String module_url;
	private String icon_class;
	private String level;
	private String is_leaf;
	private int status;
	public int getModule_id() {
		return module_id;
	}
	public void setModule_id(int module_id) {
		this.module_id = module_id;
	}
	public int getModule_pid() {
		return module_pid;
	}
	public void setModule_pid(int module_pid) {
		this.module_pid = module_pid;
	}
	public String getModule_name() {
		return module_name;
	}
	public void setModule_name(String module_name) {
		this.module_name = module_name;
	}
	public String getModule_url() {
		return module_url;
	}
	public void setModule_url(String module_url) {
		this.module_url = module_url;
	}
	public String getIcon_class() {
		return icon_class;
	}
	public void setIcon_class(String icon_class) {
		this.icon_class = icon_class;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getIs_leaf() {
		return is_leaf;
	}
	public void setIs_leaf(String is_leaf) {
		this.is_leaf = is_leaf;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

	
}
