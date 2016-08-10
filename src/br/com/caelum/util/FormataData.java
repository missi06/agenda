package br.com.caelum.util;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


public class FormataData {

	private FormataData(){
		
	}
	
	public static Calendar formataDataDDMMYYYY(String data){
		Calendar dataNascimento = null;
		
		try{			
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(data);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
			
			return dataNascimento;
		
		}catch (ParseException e) {
			throw new RuntimeException("Erro de conversão de data", e);
		}
		
	}
}
