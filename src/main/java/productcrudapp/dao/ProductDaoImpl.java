package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import productcrudapp.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao{
	
    @Autowired
	private HibernateTemplate hibernateTemplate;
    
@Transactional
public void createProduct(Product product) {
	this.hibernateTemplate.saveOrUpdate(product);
}
public List<Product> getProducts(){
	List<Product> products = this.hibernateTemplate.loadAll(Product.class);
	return products;
	
}
@Transactional
public void deleteProduct(int pid) {
Product product = this.hibernateTemplate.load(Product.class,pid);	
this.hibernateTemplate.delete(product);
}
public Product getProduct(int pid) {
	Product product = this.hibernateTemplate.get(Product.class, pid);
	return product;
	
}
}
