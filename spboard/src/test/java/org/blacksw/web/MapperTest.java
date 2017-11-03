package org.blacksw.web;

import org.blacksw.dto.LoginDTO;
import org.blacksw.mapper.MemberMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.java.Log;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
@Log
public class MapperTest {

	 	@Autowired
	    private MemberMapper mapper;
	    
	    @Test
	    public void test5() {
	        
	        log.info("" + mapper);
	        
	        LoginDTO dto = new LoginDTO();
	        dto.setMid("TestID" + System.currentTimeMillis());
	        dto.setMpw("TestPW");
	        
	        mapper.insert(dto);
	    }

}
