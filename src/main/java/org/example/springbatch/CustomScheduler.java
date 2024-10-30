package org.example.springbatch;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class CustomScheduler {

    private final JdbcTemplate jdbcTemplate;

    public CustomScheduler(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    //@Scheduled(fixedDelay = 5000)
    public void schedule() {
        System.out.println(
            "This time is " + jdbcTemplate.queryForObject("SELECT NOW()", String.class));
    }



}