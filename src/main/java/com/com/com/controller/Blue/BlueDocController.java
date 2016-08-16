package com.com.com.controller.Blue;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.com.com.dto.BlueDTO;
import com.com.com.dto.BoardMapDTO;
import com.com.com.dto.BoardSearch;
import com.com.com.service.IBlueDocService;
import com.com.com.service.IBoardMapService;



@Controller
@RequestMapping(value = "/blue")
public class BlueDocController {

	@Autowired private IBlueDocService iBlueDocService = null;
	@Autowired private IBoardMapService iBlueMapService = null;
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public void list(){
		
	}
		
	@RequestMapping(value="/gong", method=RequestMethod.GET)
	public void goGong(Model model, BoardSearch search){
		List<BlueDTO> list = iBlueDocService.getList(search);
		BoardMapDTO boardMapDTO = iBlueMapService.getData(search.getMapId());
		model.addAttribute("list", list);
		model.addAttribute("map", boardMapDTO);
		
		}
		
	@RequestMapping(value="/gong", method=RequestMethod.POST)
	public void doGong(){
	
	}
	
	@RequestMapping(value="/war", method=RequestMethod.GET)
	public void war(){
		
	}
	
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public void remove(Model model, Integer docId){
			iBlueDocService.remove(docId);
	}
}
