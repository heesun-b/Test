package shop.mtcoding.testheesun.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserRepository {

    public int insert(@Param("username") String username, @Param("password") String password,
            @Param("email") String email);

    public User findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    public int update(@Param("id") int id, @Param("password") String password,
            @Param("email") String email);

    public User findId(int id);

}
