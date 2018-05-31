package utils;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class StringUtilsA {

	public static Map<String,Object> subStingbyRequest(Map<String,Object> map,String startWith,String subBy){
		Map<String,Object> map2=new HashMap<String,Object>();
		for (Entry<String, Object> entry : map.entrySet()) {
			String key = entry.getKey();
			Object value = entry.getValue();
			if(key.startsWith(startWith)){
				key=key.substring(key.indexOf(subBy)+1);
			}
			map2.put(key, value);
		}
		return map2;
	}
	
	public static Map<String,Object> addStringAround(Map<String,Object> map,String addWith){
		Map<String,Object> map2=new HashMap<String,Object>();
		for (Entry<String, Object> entry : map.entrySet()) {
			String key = entry.getKey();
			Object value = entry.getValue();
			value=addWith+value+addWith;
			map2.put(key, value);
		}
		return map2;
	}
	
	public static Map<String,Object> addStringBeginWith(Map<String,Object> map,String beginWith){
		Map<String,Object> map2=new HashMap<String, Object>();
		for (Entry<String,Object> entry : map.entrySet()) {
			String key = entry.getKey();
			Object value = entry.getValue();
			value=beginWith+value;
			map2.put(key, value);
		}
		return map2;
	}
	
	public static StringBuilder appendString(Map<String,Object> map,String startWith,String appendWith){
		StringBuilder sb=new StringBuilder();
		for (Entry<String,Object> entry : map.entrySet()) {
			String key = entry.getKey();
			Object value = entry.getValue();
			sb.append(startWith).append(key).append(appendWith).append(value);
		}
		return sb;
	}
}
