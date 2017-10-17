package action;

import java.io.File;
import java.util.Date;
import java.util.Map;

import model.Product;

public class ProductManager extends BaseAction{
	
	public String Oid, name, category, descript, price;
	private File[] fileUpload;
    private String[] fileUploadFileName;
    private String[] fileUploadContentType;
    public File[] getFileUpload() {
        return fileUpload;
    }
 
    public void setFileUpload(File[] fileUploads) {
        this.fileUpload = fileUploads;
    }
 
    public String[] getFileUploadFileName() {
        return fileUploadFileName;
    }
 
    public void setFileUploadFileName(String[] fileUploadFileNames) {
        this.fileUploadFileName = fileUploadFileNames;
    }
 
    public String[] getFileUploadContentType() {
        return fileUploadContentType;
    }
 
    public void setFileUploadContentType(String[] fileUploadContentTypes) {
        this.fileUploadContentType = fileUploadContentTypes;
    }
	
	public String execute(){
		
		return SUCCESS;
	}
	
	public String search(){
		StringBuilder sql=new StringBuilder("SELECT c.id, c.name as category, p.Oid, p.name, p.price FROM "
		+ "products p, code_product_category c WHERE p.category=c.id AND p.company='"+getSession().getAttribute("com")+"'");
		if(name.trim().length()>0)sql.append("AND p.name LIKE'%"+name+"%'");
		if(category.trim().length()>0)sql.append("AND p.category='"+category+"'");
		
		request.setAttribute("products", df.sqlGet(sql.toString()));
		
		
		return SUCCESS;
	}
	
	public String add(){
		
		Product p=new Product();
		p.setName(name);
		p.setCategory(category);
		p.setCompany(Integer.parseInt(getSession().getAttribute("com").toString()));
		p.setPrice(0.0f);
		df.update(p);
		
		return search();
	}
	
	public String edit(){
		//System.out.println(Oid);
		Map map=df.sqlGetMap("SELECT c.id, c.name as category, p.Oid, p.name, p.price, p.descript FROM "
		+ "products p, code_product_category c WHERE p.category=c.id AND p.Oid="+Oid);
		map.put("pic", df.sqlGet("SELECT * FROM products_pics WHERE product="+Oid));
		request.setAttribute("product", map);		
		
		
		
		return SUCCESS;
	}
	
	public String del(){
		
		return SUCCESS;
	}
	
	public String save(){
		
		Product p=(Product) df.hqlGetListBy("FROM Product WHERE Oid="+Oid).get(0);
		p.setCategory(category);
		p.setDescript(descript);
		p.setName(name);
		p.setPrice(Float.parseFloat(price));
		df.update(p);
		
		//處理檔案
		Date now=new Date();
		String fileName;		
		String filePath;
		String tmp_path=getContext().getRealPath("/tmp");//本機目錄
		String target="runtime";
		File dst;
		Map<String, String>ftpinfo;
		File uploadedFile;
		if(fileUpload!=null)
		for (int i = 0; i < fileUpload.length; i++) {			
			uploadedFile = fileUpload[i];            
			fileName=now.getTime()+"-"+i+bio.getExtention(fileUploadFileName[i]);//置換檔名            
			filePath=getContext().getRealPath("/tmp" )+"/"+fileName;            
			if((boolean) getContext().getAttribute("debug")){//測試的情況
				target="debug";
				filePath=filePath.replace("\\", "/");
				tmp_path=tmp_path.replace("\\", "/");
			}
			
			dst=new File(tmp_path);//暫存資料夾			
			if(!dst.exists())dst.mkdir();
			bio.copyFile(fileUpload[i], new File(filePath));
			System.out.println(filePath);
			ftpinfo=df.sqlGetMap("SELECT "+target+" as host, username, password, path FROM sys_server WHERE name='ftp'");
			//bio.putFTPFile(host, username, password, server_dir, ap_dir, file_name)
			
			System.out.println("本機暫存:"+tmp_path+"/");
			System.out.println("伺服器:"+ftpinfo.get("path")+"/"+Oid+"/");
			bio.putFTPFile(ftpinfo.get("host"), ftpinfo.get("username"), ftpinfo.get("password"), tmp_path+"/", ftpinfo.get("path")+"/"+Oid+"/", fileName);
			df.exSql("INSERT INTO products_pics(path, product)VALUES('"+fileName+"', '"+Oid+"');");		            
		}

		
		return edit();
	}

}
