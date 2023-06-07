package model;

public enum Ecatagory {
    Beer(1,"Bia") , SoftDrink (2,"Nước Ngọt");
    private int id;
    private String name;
    Ecatagory(int id , String name){
        this.id = id;
        this.name = name;
    }
    public static Ecatagory getECatagoryByEName(String eName){
        for (Ecatagory ecatagory: Ecatagory.values()){
            if (ecatagory.name().equals(eName)){
                return ecatagory;
            }
        }
        return null;
    }
    public static Ecatagory getECatagoryById(int idGender){
        for(Ecatagory ecatagory : Ecatagory.values()){
            if(ecatagory.getId()==idGender){
                return ecatagory;
            }
        }
        return null;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
