package data;

import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

public class Character {
	@Min(0)
	private int id;
	@Min(0)
	private int marvelId;
	@Size(min=1, message="At least one character required")
	private String name;
	private String alias;
	private String affiliation;
	private String desc;
	private String image;

	public Character() {
	}
	
	public Character(int id, int marvelId, String name, String alias, String affiliation, String desc, String image) {
		this.id = id;
		this.marvelId = marvelId;
		this.name = name;
		this.alias = alias;
		this.affiliation = affiliation;
		this.desc = desc;
		this.image = image;
	}

	public int getId() {
		return id;
	}
	public int getMarvelId() {
		return marvelId;
	}
	public String getName() {
		return name;
	}
	public String getAlias() {
		return alias;
	}
	public String getAffiliation() {
		return affiliation;
	}
	public String getDesc() {
		return desc;
	}
	public String getImage() {
		return image;
	}

	public void setId(int id) {
		this.id = id;
	}
	public void setMarvelId(int marvelId) {
		this.marvelId = marvelId;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}
	public void setAffiliation(String affiliation) {
		this.affiliation = affiliation;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Character [id=" + id + ", marvelId=" + marvelId + ", name=" + name + ", alias=" + alias
				+ ", affiliation=" + affiliation + ", desc=" + desc + ", image=" + image + "]";
	}

}