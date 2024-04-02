package Sprint1.Tasca2.N1.Ex1;

public class Product {

    public String nameProduct;
    public float priceProduct;


    public Product(String nameProdcut, float priceProduct) {
        this.nameProduct = nameProdcut;
        this.priceProduct = priceProduct;
    }

    public String getNameProdcut() {
        return nameProduct;
    }

    public float getPriceProduct() {
        return priceProduct;
    }

    public void setNameProdcut(String nameProdcut) {
        this.nameProduct = nameProdcut;
    }

    public void setPriceProduct(float priceProduct) {
        this.priceProduct = priceProduct;
    }
}
