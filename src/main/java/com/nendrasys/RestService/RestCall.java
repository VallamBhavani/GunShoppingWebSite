package com.nendrasys.RestService;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nendrasys.model.Customer;
import com.nendrasys.model.Gun;
import com.nendrasys.model.GunList;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.List;

public class RestCall {
    RestTemplate restTemplate;

    public RestTemplate getRestTemplate() {
        return restTemplate;
    }

    public void setRestTemplate(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<Gun> getGunDataFromWareHouse() {

        String url = "http://localhost:8081/GunShopingSiteWareHouse_war_exploded/getAll";

        ResponseEntity<Gun[]> obj = restTemplate.getForEntity(url, Gun[].class);


        return Arrays.asList(obj.getBody());

    }




    /*public List<Gun> getGunDataFromWareHouse1() {

        String url = "http://localhost:8081/GunShopingSiteWareHouse_war_exploded/getInXml";

        ResponseEntity<Gun[]> obj = restTemplate.getForEntity(url, Gun[].class);


        return Arrays.asList(obj.getBody());

    }*/

   /* public GunList getData() throws IOException {
        ObjectMapper mapper = new ObjectMapper();

        GunList obj = mapper.readValue(new URL("http://localhost:8081/GunShopingSiteWareHouse_war_exploded/getInXml"), GunList.class);
        String jsonString = mapper.writeValueAsString(obj);

        return obj;

}*/


    public Gun getById(int id) {
        String url="http://localhost:8081/GunShopingSiteWareHouse_war_exploded/getById";
        ResponseEntity<Gun> response = restTemplate.getForEntity(url+ "/"+id, Gun.class);
        return response.getBody();
    }


}
