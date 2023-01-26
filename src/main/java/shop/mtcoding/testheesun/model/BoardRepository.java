package shop.mtcoding.testheesun.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardRepository {

    public List<Board> findAll();

    public List<Board> findByUserId(int userId);
}
