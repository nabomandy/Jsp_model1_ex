package model;

public class Brand {
  private String brand_name;
  private String menu;
  private String price;
  // getter, setter, toString

  public String getBrand_Name() {
    return brand_name;
  }

  public void setBrand_Name(String brand_name) {
    this.brand_name = brand_name;
  }

  public String getMenu() {
    return menu;
  }

  public void setMenu(String menu) {
    this.menu = menu;
  }

  public String getPrice() {
    return price;
  }

  public void setPrice(String price) {
    this.price = price;
  }


  @Override
  public String toString() {
    return "Brand [brand_name=" + brand_name + ", menu=" + menu + ", price=" + price + "]";
  }


}
