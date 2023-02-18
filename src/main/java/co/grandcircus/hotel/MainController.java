package co.grandcircus.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	@Autowired
	private HotelRepository repo;

	@RequestMapping("/")
	public String homepage() {
		return "home";
	}
	
	@RequestMapping("/results")
	public String results(@RequestParam String city, Model model) {
		List<Hotel> hotels;
		hotels = repo.findByCity(Sort.by("pricePerNight"), city);
	//	hotels = repo.findAll(Sort.by(city));
		model.addAttribute("hotels", hotels);
		model.addAttribute("city", city);
		
		return "results";
	}
}
