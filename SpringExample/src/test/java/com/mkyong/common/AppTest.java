package com.mkyong.common;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;

import static org.junit.Assert.assertEquals;
import junit.framework.TestCase;
import junit.framework.TestSuite;

@RunWith(MockitoJUnitRunner.class)
public class AppTest {

	HelloController helloController = new HelloController();

	@Test
	public void add() {
		int actual = helloController.add(5, 5);
		assertEquals(11, actual);
	}

}
