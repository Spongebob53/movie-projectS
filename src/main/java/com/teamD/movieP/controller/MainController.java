package com.teamD.movieP.controller;

import com.teamD.movieP.domain.movie.MovieVO;
import com.teamD.movieP.domain.theater.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.teamD.movieP.domain.customer.*;
import com.teamD.movieP.service.CustomerService;
import com.teamD.movieP.service.MovieService;
import com.teamD.movieP.service.TheaterService;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private MovieService movieService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private TheaterService theaterService;

    @RequestMapping("/{step}")
    public String step(@PathVariable String step) {
        return step;
    }

    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView m = new ModelAndView();
        m.setViewName("index");
        m.addObject("movieList", movieService.getMovieList());
        return m;
    }

    @RequestMapping("joinCustomer")
    public String joinCustomer(CustomerVO customerVO, CustomerInfoVO customerInfoVO, CustomerTermVO customerTermVO, HttpServletResponse response) {
        if (customerService.joinCustomer(customerVO, customerInfoVO, customerTermVO)) {
            PrintWriter out = null;
            try {
                out = response.getWriter();
            } catch (Exception e) {}
            response.setContentType("text/html; charset=UTF-8");
            out.println("<script>alert('회원가입이 완료되었습니다.');</script>");
            out.flush();
            return "redirect:/";
        }
        return "join";
    }

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

    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.removeAttribute("customer_id");
        return "redirect:/";
    }

    @RequestMapping("movieDetail")
    public ModelAndView movieDetail(MovieVO movieVO){
        ModelAndView m = new ModelAndView();
        m.setViewName("movieDetail");
        m.addObject("movie", movieService.getMovieDetail(movieVO));
        return m;
    }

    @ResponseBody
    @RequestMapping("checkId")
    public String checkId(CustomerVO customerVO){
        if(customerService.checkId(customerVO)){
            return "1";
        }
        return "0";
    }
    
    @RequestMapping("ticketing")
    public void ticketing(AreaVO areaVO, Model model,MovieVO movieVO) {
    	model.addAttribute("area",theaterService.ticketing_area(areaVO));
    	model.addAttribute("movie_title", theaterService.ticketing_movie(movieVO));
    }
    
    @ResponseBody
    @RequestMapping("ticketing_theater")
    public Object ticketing_theater(AreaVO areaVO, Model model) {

    	List<TheaterVO> theaterVO = theaterService.ticketing_theater(areaVO);
    	System.out.println(theaterVO);

		return theaterVO;
	}
    
    
    @ResponseBody
    @RequestMapping("ticketing_movie_time")
    public Object ticketing_movie_time(Movie_showVO movie_showVO) {
    	
    	List<Object> object = theaterService.ticketing_movie_time(movie_showVO);
  
    	return object;
    }
    
    @ResponseBody
    @RequestMapping("book_seat")
    public void book_seat(BookVO bookVO) {
    	theaterService.book_seat(bookVO);
    	
    }
    
    
    
}
