package com.udea.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.udea.model.User;
import com.udea.model.Login;

public class UserDaoImpl implements UserDao {
	
	 @Autowired
	  DataSource datasource;
	  @Autowired
	  JdbcTemplate jdbcTemplate;
	  public void register(User user) {
	    String sql = "insert into users values(?,?,?,?,?,?,?,?,?,?,?,?)";
	    jdbcTemplate.update(sql, new Object[] { user.getId(), user.getNombre(), user.getApellido(), user.getCargo(),
	    		user.getTelefono(), user.getUsername(), user.getPassword(), user.getRol(),
	     user.getDireccion(), user.getDepartamento(),user.isEstado(),user.getNacimiento() });
	    }
	    public User validateUser(Login login) {
	    String sql = "select * from users where username='" + login.getUsername() + "' and password='" + login.getPassword()
	    + "'";
	    List<User> users = jdbcTemplate.query(sql, new UserMapper());
	    return users.size() > 0 ? users.get(0) : null;
	    }

}

class UserMapper implements RowMapper<User> {
	  public User mapRow(ResultSet rs, int arg1) throws SQLException {
	    User user = new User();
	    
	    user.setId(rs.getInt("id"));
	    user.setNombre(rs.getString("nombre"));
	    user.setApellido(rs.getString("apellido"));
	    user.setCargo(rs.getString("cargo"));
	    user.setTelefono(rs.getInt("telefono"));
	    user.setUsername(rs.getString("username"));
	    user.setPassword(rs.getString("password"));
	    user.setRol(rs.getString("rol"));
	    user.setDireccion(rs.getString("direccion"));
	    user.setDepartamento(rs.getString("departamento"));
	    user.setEstado(rs.getBoolean("estado"));
	    user.setNacimiento(rs.getDate("nacimiento"));
	    return user;
	  }
	}

