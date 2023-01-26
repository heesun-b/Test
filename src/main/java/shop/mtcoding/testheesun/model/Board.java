package shop.mtcoding.testheesun.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import shop.mtcoding.testheesun.util.DateUtil;

@Getter
@Setter
public class Board {
    private int id;
    private String title;
    private int userId;
    private Timestamp createdAt;

    public String getCreatedAtToString() {
        return DateUtil.format(createdAt);
    }
}
