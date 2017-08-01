package com.wintelia.admin.commonTool;

import java.util.Map;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class JedisHelper {

	// Redis服务器地址
	private static String IpAddress = PropertiesHelper.GetProperties("config.properties", "redis.IPAddress");
	// Redis服务器端口
	private static String Port = PropertiesHelper.GetProperties("config.properties", "redis.Port");

	public static JedisPool jedispool;

	public JedisHelper() {
	}

	public static JedisPool getPool() {
		try {
			if (jedispool == null) {
				JedisPoolConfig config = new JedisPoolConfig();
				// 连接耗尽时是否阻塞, false报异常,ture阻塞直到超时, 默认true
				config.setBlockWhenExhausted(true);
				// 设置的逐出策略类名, 默认DefaultEvictionPolicy(当连接超过最大空闲时间,或连接数超过最大空闲连接数)
				config.setEvictionPolicyClassName("org.apache.commons.pool2.impl.DefaultEvictionPolicy");
				// 是否启用pool的jmx管理功能, 默认true
				config.setJmxEnabled(true);
				// 最大空闲连接数, 默认8个 控制一个pool最多有多少个状态为idle(空闲的)的jedis实例。
				config.setMaxIdle(8);
				// 最大连接数, 默认8个
				config.setMaxTotal(200);
				// 表示当borrow(引入)一个jedis实例时，最大的等待时间，如果超过等待时间，则直接抛出JedisConnectionException；
				config.setMaxWaitMillis(1000 * 100);
				// 在borrow一个jedis实例时，是否提前进行validate操作；如果为true，则得到的jedis实例均是可用的；
				config.setTestOnBorrow(true);
				jedispool = new JedisPool(config, IpAddress, Integer.parseInt(Port), 3000);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jedispool;
	}

	public synchronized static Jedis getJedis() {
		try {
			if (jedispool != null) {
				Jedis resource = jedispool.getResource();
				return resource;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static void close(final Jedis jedis) {
		if (jedis != null) {
			jedis.close();
		}
	}

	/** 添加Key (String) */
	public static String SetString(String key, String value) {
		Jedis jedis = getJedis();
		return jedis.set(key, value);
	}

	/** 得到值 */
	public static String GetString(String key) {
		Jedis jedis = getJedis();
		return jedis.get(key);
	}

	/** 添加Key (map) */
	public static String SetMap(String key, Map<String, String> map) {
		Jedis jedis = getJedis();
		return jedis.hmset(key, map);
	}

}
