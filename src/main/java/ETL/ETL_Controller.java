package ETL;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model; 

@Controller
public class ETL_Controller {
	@Autowired
	private StoreService storeService;
	
	//검색 메인 페이지 
	@GetMapping("/searchpage")
	public String searchpage() {
		return "storeSearch";
	}
	
	//검색 처리 페이지
	@GetMapping("/dosearch")
	public String dosearch(@RequestParam("category") String category, Model model) {
		//service가 fastapi 데이터를 가져옴
		List<Map<String, Object>> StoreList = storeService.getStoreFastAPI(category);
		
		//가져올 데이터를 stores 라는 이름으로 jps에 전달함
		model.addAttribute("stores", StoreList);
		
		//사용자가 뭘 검색했는지 보여주는 카테고리명 전달
		model.addAttribute("categoryName", category);
		
		//jsp 
		return "storeResult" ;
		
		
		
	}
}
