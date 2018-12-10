package pl.aliberadzki.monitoring.springprometheusdemo;

import lombok.extern.java.Log;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@Log
public class SpringPrometheusDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringPrometheusDemoApplication.class, args);
        log.info("added something");
    }
}
