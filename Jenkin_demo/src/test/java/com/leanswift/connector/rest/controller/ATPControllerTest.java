package com.leanswift.connector.rest.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;
import static org.junit.Assert.assertEquals;

@RunWith(MockitoJUnitRunner.class)
public class ATPControllerTest {

	private ATPController aTPController = new ATPController();
	
	@Test
	public void resultAdd()
	{
		int actual = aTPController.resultAdd(5, 5);
		
		assertEquals(10, actual);
		
	}

}