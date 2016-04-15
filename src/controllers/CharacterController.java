package controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.Character;
import data.CharacterDAO;

@Controller
@SessionAttributes("characterHistory")
public class CharacterController {
	@Autowired
	private CharacterDAO characterDAO;
	
	@ModelAttribute("characterHistory")
	public Integer initSessionObject() {
		return 1;
	}
	
	@RequestMapping(path="navigate.do", params="next")
	public ModelAndView next(@ModelAttribute("characterHistory") Integer nextCharacter) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		if (nextCharacter >= characterDAO.getAllCharacters().size()) {
			nextCharacter = 1;
		}
		mv.addObject("characterHistory", ++nextCharacter);
		Character c = characterDAO.getCharacterById(nextCharacter);
		mv.addObject("character", c);
		return mv;
	}
	
	@RequestMapping(path="navigate.do", params="previous")
	public ModelAndView previous(@ModelAttribute("characterHistory") Integer lastCharacter) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		if (lastCharacter <= 1) {
			lastCharacter = characterDAO.getAllCharacters().size() - 1;
		}
		mv.addObject("characterHistory", --lastCharacter);
		Character c = characterDAO.getCharacterById(lastCharacter);
		mv.addObject("character", c);
		return mv;
	}
	
	@RequestMapping(path="GetCharacterData.do", params="characterId", method=RequestMethod.GET)
	public ModelAndView getById(@RequestParam("characterId") Integer i) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		mv.addObject("character", characterDAO.getCharacterById(i));
		mv.addObject("characterHistory", characterDAO.getCharacterById(i).getId());
		return mv;
	}
	
	@RequestMapping(path="GetCharacterData.do", params="characterName", method=RequestMethod.GET)
	public ModelAndView getByName(@RequestParam("characterName") String n) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		mv.addObject("character", characterDAO.getCharacterByName(n));
		mv.addObject("characterHistory", characterDAO.getCharacterByName(n).getId());
		return mv;
	}
	
	@RequestMapping(path="GetCharacterData.do", params="characterAlias", method=RequestMethod.GET)
	public ModelAndView getByAlias(@RequestParam("characterAlias") String n) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		mv.addObject("character", characterDAO.getCharacterByAlias(n));
		mv.addObject("characterHistory", characterDAO.getCharacterByAlias(n).getId());
		return mv;
	}
	
	@RequestMapping(path="GetAllCharactersData.do")
	public ModelAndView getAll() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("table.jsp");
		mv.addObject("characters", characterDAO.getAllCharacters());
		return mv;
	}
	
	@RequestMapping("add.do")
	public ModelAndView start() {
		Character c = new Character();
		return new ModelAndView("add.jsp", "character", c);
	}
	
	@RequestMapping(path="NewCharacter.do", method=RequestMethod.GET)
	public ModelAndView newCharacter() {
		Character c = new Character();
		return new ModelAndView("add.jsp", "character", c);
	}
	
	@RequestMapping(path="NewCharacter.do", method=RequestMethod.POST)
	public ModelAndView newCharacter(@Valid Character character, Errors errors) {
		if (errors.getErrorCount() != 0) {
			return new ModelAndView("add.jsp");
		}
		characterDAO.addCharacter(character);
		ModelAndView mv = getAll();
		return mv;
	}
	
	@RequestMapping(path="removeCharacter.do", method=RequestMethod.POST)
	public ModelAndView removeCharacter(Character character) {
		characterDAO.deleteCharacter(character);
		ModelAndView mv = getAll();
		return mv;
	}
	
	// go to update.jsp
	@RequestMapping(path="GoToUpdate.do", params="characterName", method=RequestMethod.GET)
	public ModelAndView goToUpdate(@RequestParam("characterName") String n) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update.jsp");
		mv.addObject("character", characterDAO.getCharacterByName(n));
		mv.addObject("characterHistory", characterDAO.getCharacterByName(n).getId());
		return mv;
	}
	
	// update character 
	// editCharacter.do
	// validation?
}