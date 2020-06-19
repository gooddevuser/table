package com.table.mytable;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.table.service.BookService;
import com.table.service.CustomerService;
import com.table.service.MemberService;
import com.table.service.OrderService;
import com.table.vo.BookVO;
import com.table.vo.CustomerVO;
import com.table.vo.MemberVO;
import com.table.vo.OrderVO;

@Controller
public class HomeController {
	
	
	@Autowired
	@Qualifier("customerService")
	private CustomerService customerService;
	
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;
	
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@Autowired
	@Qualifier("memberService")
	private MemberService memberService;
	
	///////////////////////////////////////////// 홈에서 세가지 테이블이 나오게 작업
		
	@GetMapping(path = { "home" })
	public String homePage(Model model) {
	
	List<BookVO> books = bookService.showBooks();
	model.addAttribute("books", books);
	
	List<CustomerVO> customers = customerService.showCustomers();		
	model.addAttribute("customers", customers);
	
	List<OrderVO> orders = orderService.showOrders();
	model.addAttribute("orders", orders);
	
	return "home";
	}
	///////////////////////////////////////////// 홈에서 세가지 테이블이 나오게 작업
	
	@GetMapping(path = { "/" })
	public String tablePage(Model model) {
		
		List<BookVO> books = bookService.showBooks();
		model.addAttribute("books", books);
		
		List<CustomerVO> customers = customerService.showCustomers();		
		model.addAttribute("customers", customers);
		
		List<OrderVO> orders = orderService.showOrders();
		model.addAttribute("orders", orders);
		
		return "home";
	}
	
	/////////////////////////////////////////////
	// 게시판 리스트,디테일,수정,삭제 기능 진행
	/////////////////////////////////////////////
	
	///////////////////////////////////////////// 홈 말고도 테이블 경로에 각각 나오게 작업
	
	@GetMapping(path = { "/bookList" })
	public String showBooks(Model model) {
		
		List<BookVO> books = bookService.showBooks();
		model.addAttribute("books", books);
		
		return "book-list";
	}
	
	@GetMapping(path = { "/customerList" })
	public String showCustomers(Model model) {
		
		List<CustomerVO> customers = customerService.showCustomers();		
		model.addAttribute("customers", customers);
		
		return "customer-list";
	}
	
	@GetMapping(path = { "/orderList" })
	public String showOrders(Model model) {
		
		List<OrderVO> orders = orderService.showOrders();
		model.addAttribute("orders", orders);
		
		return "order-list";
	}
	
	///////////////////////////////////////////// 작성하는 폼이 보여지는 작업 + 작성하는 기능
	
	@GetMapping(path = { "/bookWrite" })
	public String showBookWrite() {
		
		return "book-write";
	}
	
	@GetMapping(path = { "/customerWrite" })
	public String showCustomerWrite() {
		
		return "customer-write";
	}
	@GetMapping(path = { "/orderWrite" })
	public String showOrderWrite() {
		
		return "order-write";
	}
		
	@PostMapping(path = { "/bookWrite" })
	public String BookWrite(BookVO book) {
		//bookService.BookWrite(book); 북은 잘못된 열유형 1111
		return "book-write";
	}
	
	@PostMapping(path = { "/customerWrite" })
	public String CustomerWrite(CustomerVO customer) {
		customerService.CustomerWrite(customer);
		return "customer-write";
	}
	
	@PostMapping(path = { "/orderWrite" })
	public String OrderWrite(OrderVO order) {
		//orderService.OrderWrite(order); 오더는 부모키가 없다
		return "order-write";
	}
	
	///////////////////////////////////////////// 선택한 넘버값에 대한 내용만 디테일로 보여지는 작업
	
	@GetMapping(path = { "/bookDetail" })
	public String showBookDetail() {
		return "book-detail";
	}
	
	@GetMapping(path = { "/customerDetail" })
	public String showCustomerDetail(int custid , Model model) {		
		CustomerVO customer = customerService.selectCustid(custid);	
		model.addAttribute("customer", customer);

		return "customer-detail";
	}
	
	@GetMapping(path = { "/orderDetail" })
	public String showOrderDetail() {
		return "order-detail";
	}
	
	///////////////////////////////////////////// 수정하는 폼이 보여지는 작업 + 수정하는 기능
	
	@GetMapping(path = { "/bookUpdate" })
	public String showBookUpdate() {
		return "book-update";
	}
	
	@GetMapping(path = { "/customerUpdate" })
	public String showCustomerUpdate(int custid , Model model) {
		CustomerVO customer = customerService.selectCustid(custid);	
		model.addAttribute("customer", customer);

		return "customer-update";
	}
	
	@GetMapping(path = { "/orderUpdate" })
	public String showOrderUpdate() {
		return "order-update";
	}
	
	@PostMapping(path = { "/bookUpdate" })
	public String BookUpdate() {
		return "book-update";
	}
	
	@PostMapping(path = { "/customerUpdate" })
	public String CustomerUpdate(CustomerVO customer) {
		customerService.CustomerUpdate(customer); // 인코딩 문제
		return "customer-update";
	}
	
	@PostMapping(path = { "/orderUpdate" })
	public String OrderUpdate() {
		return "order-update";
	}
	
	///////////////////////////////////////////// 삭제하는 기능
	
	@GetMapping(path = { "/bookDelete" })
	public String BookDelete() {
		return "book-delete";
	}
	
	@GetMapping(path = { "/customerDelete" })
	public String CustomerDelete(int custid) {
		customerService.CustomerDelete(custid);	
		return "customer-delete";
	}
	
	@GetMapping(path = { "/orderDelete" })
	public String OrderDelete() {
		return "order-delete";
	}
	
	/////////////////////////////////////////////
	// 게시판 작업 끝 하고 로그인 회원가입 기능 진행
	/////////////////////////////////////////////
	
	@GetMapping(path = { "/register" })
	public String showRegister() {
		
		return "register";
	}
	
	@PostMapping(path = { "/register" })
	public String Register(MemberVO member) {
	//jsp에서 뭔가를 입력한다 하면 () 안에 값을 넣는다. 출력할 내용이 있는게 아니기 때문에 model은 넣지않는다.
		memberService.addMember(member);
		return "home"; // 회원가입 후 홈으로 간다.
	}
	
	/////////////////////////////////////////////
	
	@GetMapping(path = { "/login" }) // 로그인을 눌렀을때 로그인 화면이 보이게 한다.
	public String showLogin() {
		
		return "login";
	}
	
	@PostMapping(path = { "/login" })
	public String Login(MemberVO member,HttpSession session) {
	//jsp에서 뭔가를 입력한다 하면 () 안에 값을 넣는다. 출력할 내용이 있는게 아니기 때문에 model은 넣지않는다.
		MemberVO member1 = memberService.selectMember(member);
	//값이 맞는지 틀린지 확인해야 하기때문에 vo에 값을 넣는다. 리턴을 하고 체크해서 세션에 넣는다.
	//HttpSession session 세션을 만들어서 로그인이 유지되게 작업한다. 세션은 setAttribute
		if (member1 == null){ // member안에 아무것도 없으면 아무것도 안한다.
		} else { // 있으면 실행한다.
		session.setAttribute("loginuser", member1);
		}
		return "home"; // 로그인 후 홈으로 간다.
	}
	
	/////////////////////////////////////////////
	
	@GetMapping(path = { "/logout" }) // 로그아웃 기능만 한다. 보여지는것은 없다.
	public String Logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return "home";
	}
	
	/////////////////////////////////////////////
	// 마이페이지 작업을 진행한다.
	/////////////////////////////////////////////
	
	@GetMapping(path = { "/myPage" }) // int membernum 해도 값이 넘어오는데 다른 정보도 필요해서 세션 자체를 가져온다.
	public String showMypage(HttpSession session) {
		return "mypage";
	} // 수정하기 작업 해야한다.
	
	@GetMapping(path = { "/adminPage" })
	public String showAdmin(HttpSession session) {		
		return "admin";
	}
	
	/////////////////////////////////////////////
	// 비밀번호찾기 ajax를 진행한다.
	/////////////////////////////////////////////
	
	@GetMapping(path = { "/forgetPasswd" })
	public String showforgetPasswd() {		
		return "forgetpasswd";
	}

	@PostMapping(path = { "/memberidConfirm" })
	@ResponseBody
	public String memberidConfirm(Model model, MemberVO member) {
		
		MemberVO member1 = memberService.findMemberid(member);
		if (member1 == null) {	
			return "not available";			
		}	
		else {
			return "available";	
		}
	}
	
	@PostMapping(path = { "/emailConfirm" })
	@ResponseBody
	public String emailConfirm(Model model, MemberVO member) {
		
		MemberVO member1 = memberService.findEmail(member);
		if (member1 == null) {	
			return "not available";			
		}	
		else {
			return "available";	
		}
	}
		
	@PostMapping(path = { "/passwdUpdate" })
	@ResponseBody
	public String passwdUpdate(Model model, MemberVO member) {
		
		memberService.passwdUpdate(member); // id, email , passwd 들어오는데 오류
		
		return "success";	
	}
	
}
