package kr.co.greenart.country;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/country")
public class CountryController {
//	DTO 사용 
//	@ModelAttribute
//	public CountryDTO dto() {
//		return new CountryDTO();
//	}
	@Autowired
	private CountryService service;

	@GetMapping("/form")
	public String form(Model model, HttpServletRequest req) {
		System.out.println("handler 발생하기 전후의 필터 적용해보기");
		model.addAttribute("dto", new CountryDTO());
		req.getAttribute("pre");
//	=================== mapping된 작업 처리를 다 하고 난 후, 뷰 생성하기 전 ==================================
		return "form";
	}

	@PostMapping("/post")
	public String post(@ModelAttribute CountryDTO dto) {
		System.out.println(dto);
		service.bulkAdd(dto.getList());
		return "redirect:/";
	}
	/*
	 * @ModelAttribute public List<Country> list() { List<Country> list = new
	 * ArrayList<Country>(); list.add(new Country(1, "Korea")); list.add(new
	 * Country(2, "Britain")); list.add(new Country(3, "France")); return list; }
	 * 
	 * @GetMapping("/form") public String form(@ModelAttribute List<Country> list) {
	 * return "form"; }
	 */
}
