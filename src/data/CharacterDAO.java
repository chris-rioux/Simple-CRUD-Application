package data;

import java.util.List;

public interface CharacterDAO {
	public Character getCharacterById(int id);
	public Character getCharacterByName(String name);
	public Character getCharacterByAlias(String alias);
	public List<Character> getAllCharacters();
	public void addCharacter(Character character);
	public void deleteCharacter(Character character);
	public Character updateCharacter(Character character);
}
