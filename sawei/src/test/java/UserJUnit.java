import static org.junit.Assert.*;

import org.fkit.domain.User;
import org.fkit.service.CollectService;
import org.fkit.service.ShoeService;
import org.fkit.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class UserJUnit extends BaseJUnit {

	 @Autowired
	    private UserService userService;

	//测试用户注册的功能
	@Test
	public void regtest() {
		User user= userService.login("27150040","123");
		System.out.println(user);
	}
		
	
		}
	

