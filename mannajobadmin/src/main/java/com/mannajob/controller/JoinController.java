package com.mannajob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mannajob.domain.MemberVO;
import com.mannajob.service.JoinService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/join/*")
@AllArgsConstructor
public class JoinController {
	private JoinService service;
	
	//회원가입 페이지로 insert.jsp
	@GetMapping("/insert")
	public void insert() {
		
	}
	
	//MemberVO에 가입 정보 INSERT 후 login.jsp로 redirect
	@PostMapping("/insert")
	public String insert(MemberVO member, RedirectAttributes rttr) {
		log.info("가입..............................");
		
		service.Join(member);
		rttr.addFlashAttribute("result", 1);
		
		return "redirect:/login";
	}

}
