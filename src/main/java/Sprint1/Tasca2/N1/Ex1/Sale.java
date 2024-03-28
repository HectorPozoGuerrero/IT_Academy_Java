package Sprint1.Tasca2.N1.Ex1;

import java.util.ArrayList;

public class Sale {
    public ArrayList<Product> productsSaleList = new ArrayList<Product>();
    public float totalSalePrice;


    public Sale(ArrayList<Product> productsSaleList) {
        this.productsSaleList = productsSaleList;
        this.totalSalePrice = 0f;
        calculateTotal();
    }

    public ArrayList<Product> getProductsSaleList() {
        return productsSaleList;
    }

    public float getTotalSalePrice() {
        return totalSalePrice;
    }

    public void setProductsSaleList(ArrayList<Product> productsSaleList) {
        this.productsSaleList = productsSaleList;
    }

    public void setTotalSalePrice(float totalSalePrice) {
        this.totalSalePrice = totalSalePrice;
    }

    public void controlSale(ArrayList<Product> productsSaleList) throws EmptySaleException {
        if (productsSaleList.isEmpty()){
            throw new EmptySaleException("Per fer una venda primer has d’afegir productes");
        }
    }

    public void calculateTotal(){

        try{
            controlSale(this.productsSaleList);
            for (Product product : productsSaleList){
                this.setTotalSalePrice(this.totalSalePrice += product.getPriceProduct());
            }
            System.out.println("Preu total: " + this.totalSalePrice + "€.");
        } catch (EmptySaleException e) {
            System.out.println(e.getMessage());
        }
    }
}
