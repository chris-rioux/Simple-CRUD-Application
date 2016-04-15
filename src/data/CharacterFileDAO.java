package data;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

public class CharacterFileDAO implements CharacterDAO {
	private static final String FILE_NAME="/WEB-INF/characters.csv";
	private List<Character> characters = new ArrayList<>();
	
	@Autowired
	private ApplicationContext ac;
	
	@PostConstruct
	public void init() {
		try (
				InputStream is = ac.getResource(FILE_NAME).getInputStream();
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));
			) {
			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {
				String[] tokens = line.split(",");
				int id = Integer.parseInt(tokens[0].trim());
				int marvelId = Integer.parseInt(tokens[1].trim()); 
				String name = tokens[2].trim();
				String alias = tokens[3].trim();
				String affiliation = tokens[4].trim();
				String desc = tokens[5].trim();
				String image = tokens[6].trim();
				characters.add(new Character(id, marvelId, name, alias, affiliation, desc, image));
			}
		}
		catch (Exception e) {
			System.err.println(e);
		}
	}
	
	@Override
	public Character getCharacterById(int id) {
		Character c = null;
		for (Character character : characters) {
			if (character.getId() == id) {
				c = character;
				break;
			}
		}
		return c;
	}
	
	@Override
	public Character getCharacterByName(String name) {
		Character c = null;
		for (Character character : characters) {
			if (character.getName().equalsIgnoreCase(name)) {
				c = character;
				break;
			}
		}
		return c;
	}
	
	@Override
	public Character getCharacterByAlias(String alias) {
		Character c = null;
		for (Character character : characters) {
			if (character.getAlias().equalsIgnoreCase(alias)) {
				c = character;
				break;
			}
		}
		return c;
	}
	
	public List<Character> getAllCharacters() {
		return characters;
	}
	
	@Override
	public void addCharacter(Character character) {
		int num = characters.get(characters.size() - 1).getId() + 1;
		character.setId(num);
		characters.add(character);
	}
	
	@Override
	public void deleteCharacter(Character character) {
		int characterIndex = -1;
		for (Character characterToRemove : characters) {
			if(characterToRemove.getId() == character.getId()) {
				characterIndex = characters.indexOf(characterToRemove);
				break;
			}
		}
		if (characterIndex != -1) {
			characters.remove(characterIndex);
		}
	}
	
	@Override
	public List<Character> editCharacter(Character character) {
		Character oldCharacter = new Character();
		for(Character charact: characters){
			if(character.getId()==charact.getId()){
				oldCharacter = charact;
			}
		}
		characters.set(characters.indexOf(oldCharacter), character);
		return characters;
	}
}