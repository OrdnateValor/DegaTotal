package mini.util;

import java.sql.*;

//DB 연결 시 사용

public class DBcon {
	// 싱글톤 패턴으로 Connection 객체를 반환하도록 처리
	private static Connection con;

	// 외부에서는 쓸 수 없지만, static이라 공유해서는 사용이 가능.
	private DBcon() {
	}

	public static Connection getConnection() {
		// DB 연결을 위한 작업 하나로 묶어버린것.
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "MINI";
		String pw = "3939";

		if (con == null) {
			try {
				Class.forName(driver);
				con = DriverManager.getConnection(url, user, pw);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return con;
	}

	public void setCon(Connection con) {
		DBcon.con = con;
	};

	public static void close() { // 커넥션만 종료
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(Statement stmt) {
		// stmt 종료 - DML 종료용
		try {
			if (stmt != null)
				stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(PreparedStatement pstmt) {
		// pstmt 종료 - DML 종료용
		try {
			if (pstmt != null)
				pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rs, Statement stmt) {
		// rs와 stmt 종료 - DQL 종료용
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rs, PreparedStatement pstmt) {
		// rs와 pstmt 종료 - DQL 종료용
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
