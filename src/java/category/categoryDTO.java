/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package category;

/**
 *
 * @author theta
 */
public class categoryDTO {
    private String id;
    private String name;
    private String type;

    public categoryDTO(String id, String name, String type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }
    public categoryDTO(){
        
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "categoryDTO{" + "id=" + id + ", name=" + name + ", type=" + type + '}';
    }
    
}
