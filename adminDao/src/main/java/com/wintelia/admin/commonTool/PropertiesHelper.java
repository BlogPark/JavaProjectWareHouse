package com.wintelia.admin.commonTool;

import java.io.InputStream;
import java.util.Properties;

public class PropertiesHelper {

	public static String GetProperties(String fileName, String nodename) {
		InputStream inss = PropertiesHelper.class.getClassLoader().getResourceAsStream(fileName);
		Properties pss = new Properties();
		try {
			pss.load(inss);
			inss.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pss.getProperty(nodename);
	}
}
