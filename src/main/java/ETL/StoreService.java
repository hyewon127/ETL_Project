package ETL;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class StoreService {
	public List<Map<String, Object>> getStoreFastAPI(String category){
		//fastAPI 주소 + 검색 키워드  
		String url = "http://127.0.0.1:8000/search?category=" + category;
		
		//다른 서버랑 통신하기 위한 객체
		RestTemplate restTemplate = new RestTemplate();
		
		try {
			//fastAPI 에 GET 요청하고 결과를 LIst 형태로 받기 , JSON배열이 자동으로 LIst<map> 구조 됨
			List<Map<String, Object>> reponse = restTemplate.getForObject(url, List.class);
			return reponse != null ? reponse: new ArrayList<>();
			
		} catch (Exception e) {
			// 서버 대비
			e.printStackTrace();
			return new ArrayList<>();
		}	
	}
}