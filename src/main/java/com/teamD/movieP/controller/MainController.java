package com.teamD.movieP.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.teamD.movieP.domain.customer.*;
import com.teamD.movieP.domain.movie.MovieVO;
import com.teamD.movieP.service.CustomerService;
import com.teamD.movieP.service.MovieService;

import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class MainController {

    @Autowired
    private MovieService movieService;
    @Autowired
    private CustomerService customerService;

    @RequestMapping("/{step}")
    public String step(@PathVariable String step) {
        return step;
    }

//    메인페이지
    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView m = new ModelAndView();
        m.setViewName("index");
//        로딩 시 영화 리스트 불러오기
        m.addObject("movieList", movieService.getMovieList());
        return m;
    }

//    회원가입 하기
    @RequestMapping("joinCustomer")
    public String joinCustomer(CustomerVO customerVO, CustomerInfoVO customerInfoVO, CustomerTermVO customerTermVO) {
        if (customerService.joinCustomer(customerVO, customerInfoVO, customerTermVO)) {
            return "redirect:/";
        }
        return "join";
    }

//    로그인 하기
    @RequestMapping("checkLogin")
    public String checkLogin(CustomerVO customerVO, HttpSession session, HttpServletResponse response, HttpServletRequest request){
        if(session.getAttribute("customer_id") != null){
            session.removeAttribute("customer_id");
        }
        if(customerService.login(customerVO)){
            String customer_id = customerVO.getCustomer_id();

            Cookie cookie = null;
            // 아이디 저장을 선택했을 때
            if(request.getParameter("save_id") != null){
                cookie = new Cookie("save_id", customer_id);
                cookie.setMaxAge(60*60*24*365);
            }else{
                // 아이디 저장을 선택하지 않았을 때
                cookie = new Cookie("save_id", customer_id);
                cookie.setMaxAge(0);
            }
            response.addCookie(cookie);
            // 로그인 세션을 만들어서 보낸다
            session.setAttribute("customer_id",customer_id);
            return "redirect:/";
        }
        response.setContentType("text/html; charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            out.println("<script>alert('ID 혹은 비밀번호가 틀렸습니다.');</script>");
            out.flush();
        } catch (IOException e) {}
        return "login";
    }

//    로그아웃 하기
    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.removeAttribute("customer_id");
        return "redirect:/";
    }

//    상세 영화 페이지
    @RequestMapping("movieDetail")
    public ModelAndView movieDetail(MovieVO movieVO){
        ModelAndView m = new ModelAndView();
        m.setViewName("movieDetail");
        m.addObject("movie", movieService.getMovieDetail(movieVO));
        return m;
    }

//    아이디 중복체크
    @ResponseBody
    @RequestMapping("checkId")
    public String checkId(CustomerVO customerVO){
        if(customerService.checkId(customerVO)){
            return "1";
        }
        return "0";
    }
}
