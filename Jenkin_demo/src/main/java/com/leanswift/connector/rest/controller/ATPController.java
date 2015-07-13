/* Copyright (C) Leanswift Solutions, Inc - All Rights Reserved

 * Unauthorized copying of this file, via any medium is strictly prohibited.

 * Proprietary and confidential.

 * Terms and conditions in LEANSWIFT_EULA.TXT

 */
package com.leanswift.connector.rest.controller;

import org.springframework.web.bind.annotation.RestController;

/**
 * The Class ATPController.
 *
 * @author GOPINATH
 */
@RestController
public class ATPController{

	/** The atp service. */

	private int c;
	public int resultAdd(int a,int b)
	{
		return c=a+b;
	}

}
