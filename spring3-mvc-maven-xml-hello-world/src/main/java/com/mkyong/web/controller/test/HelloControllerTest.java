package com.mkyong.web.controller.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;

import static org.junit.Assert.assertEquals;

import com.mkyong.web.controller.HelloController;

@RunWith(MockitoJUnitRunner.class)
public class HelloControllerTest {
	
	HelloController helloController = new HelloController();
	@Test
	public void add()
	{
		
		int actual = helloController.add(5, 5);
		
		assertEquals(10, actual);
		
	}

}
