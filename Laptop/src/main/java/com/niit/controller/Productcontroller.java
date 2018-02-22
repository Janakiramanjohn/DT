package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class Productcontroller {
	@Autowired
	ProductDAO productdao;
	@Autowired
	CategoryDAO categorydao;
	@Autowired
	SupplierDAO supplierdao;

	@RequestMapping(value = "Product")
	public String getProductPage(@ModelAttribute("product") Product product, Model model) {
		model.addAttribute("prolist", this.productdao.getProductList());
		model.addAttribute("catlist", this.categorydao.getCategoryList());
		List<Supplier> suplist = supplierdao.getSupplierList();
		System.out.println("supplier list in controller-->" + suplist);
		model.addAttribute("suplist", suplist);
		return "product";
	}

	@RequestMapping(value = "saveProduct")
	public String addproduct(@ModelAttribute(name = "product") Product product, BindingResult result, Model model) {

		if (result.hasErrors()) {
			List<Category> category = categorydao.getCategoryList();
			model.addAttribute("category", category);
			return "product";

		}

		productdao.addproduct(product);
		model.addAttribute("product", new Product());
		model.addAttribute("prolist", this.productdao.getProductList());
		model.addAttribute("catlist", this.categorydao.getCategoryList());
		model.addAttribute("suplist", this.supplierdao.getSupplierList());

		MultipartFile image = product.getPimage();

		Path path = Paths
				.get("C:\\Users\\janak\\Desktop\\janakiraman cdt project\\Laptop\\src\\main\\webapp\\resources\\images\\"
						+ product.getId() + ".jpg");

		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "product";
	}

	@RequestMapping("/prodelete")
	public String deleteproductlist(@RequestParam("pid") int id, Model model) {
		productdao.deleteproduct(id);
		model.addAttribute("product", new Product());
		model.addAttribute("prolist", this.productdao.getProductList());
		model.addAttribute("catlist", this.categorydao.getCategoryList());
		model.addAttribute("suplist", this.supplierdao.getSupplierList());

		return "product";
	}

	@RequestMapping(value = "/proedit")
	public String getproduct(@RequestParam("pid") int id, Model model) {
		System.out.println("in product edit");

		Product product = productdao.getProduct(id);
		model.addAttribute("productdata", product);
		model.addAttribute("product", new Product());
		return "editproduct";

	}

	@RequestMapping(value = "/editproduct", method = RequestMethod.POST)
	public String updateproduct(Product product, Model model) {
		productdao.editproduct(product);
		model.addAttribute("prolist", this.productdao.getProductList());
		return "product";

	}

	@RequestMapping(value = "/rdisplayproducts")
	public String rdisplatProduct(Model m) {
		List<Product> prolist = productdao.getProductList();
		m.addAttribute("prolist", prolist);
		List<Category> catlist = categorydao.getCategoryDetails();
		m.addAttribute("categorylist", catlist);

		return "rdisplayproducts";
	}

	@RequestMapping(value = "/displayproducts")
	public String displatProduct(Model m) {
		List<Product> prolist = productdao.getProductList();
		m.addAttribute("prolist", prolist);
		List<Category> catlist = categorydao.getCategoryDetails();
		m.addAttribute("categorylist", catlist);

		return "productpage";
	}

	@RequestMapping(value = "/productdesc/{id}")
	public String showProductDesc(@PathVariable("id") int id, Model m) {
		Product product = productdao.getProduct(id);
		m.addAttribute("product", product);
		return "productdesc";
	}

	@RequestMapping(value = "returns")
	public String returnprolist(Model m) {
		m.addAttribute("prolist", productdao.getProductList());

		return "productpage";
	}

}
