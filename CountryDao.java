package kr.co.greenart.country;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CountryDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void bulkAdd(List<Country> list) {
		String query = "INSERT INTO country (id, name) VALUES (?, ?)";
		jdbcTemplate.batchUpdate(query, new BatchPreparedStatementSetter() {
					//	반환값 : int 배열로 알려줌 
			@Override
			public void setValues(PreparedStatement ps, int i) throws SQLException {
				// 제일 처음 실행하면, 0이라는 값이 반환됨
				// 넣고자 하는 제일 앞의 값을 꺼냄
				Country c = list.get(i);
				ps.setString(1, c.getId());
				ps.setString(2, c.getName());
			}

			@Override	//	몇 번을 할 건지 알려줌 : list의 크기만큼(길이만큼)
			public int getBatchSize() {
				return list.size();
			}
		});
	}

}
