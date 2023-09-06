package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;
@Controller
public class MainController {
	@Autowired
	
	private ProductDao productDao;
	
	
	
@RequestMapping("/")
	public String home(Model model) {
	List<Product> products = this.productDao.getProducts();
	model.addAttribute("products",products);
	return "index";
}
@RequestMapping("/addProduct")
public String addProduct(Model model) {
	model.addAttribute("title","Add Product");
return "add_product_form";
}
// handle add product form
@PostMapping("/handleProduct")
public RedirectView addProductHandler(@ModelAttribute Product product,HttpServletRequest request) {
	
	System.out.println(product);
	this.productDao.createProduct(product);
	RedirectView redirectView = new RedirectView();
	redirectView.setUrl(request.getContextPath()+"/");
return redirectView;
}
//DELETE PRODUCT HANDLER
@RequestMapping("/deleteProduct/{productId}")
public RedirectView deleteProduct(@PathVariable("productId") int pid,Model model,HttpServletRequest request) {
	
	this.productDao.deleteProduct(pid);
	RedirectView redirectView = new RedirectView();
	redirectView.setUrl(request.getContextPath()+"/");
return redirectView;
}
//UPDATE PRODUCT HANDLER
@RequestMapping("/updateProduct/{productId}")
public String updateProduct(@PathVariable("productId") int pid,Model model) {
	
	Product product = this.productDao.getProduct(pid);
	model.addAttribute("product",product);
System.out.println(product);
	
return "update_form";
}


}
