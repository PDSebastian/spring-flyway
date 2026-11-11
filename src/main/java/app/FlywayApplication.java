package app;

import app.view.ViewProduct;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FlywayApplication implements CommandLineRunner {

    private final ViewProduct viewProduct;

    public FlywayApplication(ViewProduct viewProduct) {
        this.viewProduct = viewProduct;
    }

    public static void main(String[] args) {
        SpringApplication.run(FlywayApplication.class, args);
    }

    @Override
    public void run(String... args) {
        viewProduct.start();
    }
}
