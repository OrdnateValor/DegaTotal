package mini.util;

import java.sql.*;

//DB ���� �� ���

public class DBcon {
	// �̱��� �������� Connection ��ü�� ��ȯ�ϵ��� ó��
	private static Connection con;

	// �ܺο����� �� �� ������, static�̶� �����ؼ��� ����� ����.
	private DBcon() {
	}

	public static Connection getConnection() {
		// DB ������ ���� �۾� �ϳ��� ���������.
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

	public static void close() { // Ŀ�ؼǸ� ����
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(Statement stmt) {
		// stmt ���� - DML �����
		try {
			if (stmt != null)
				stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(PreparedStatement pstmt) {
		// pstmt ���� - DML �����
		try {
			if (pstmt != null)
				pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rs, Statement stmt) {
		// rs�� stmt ���� - DQL �����
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
		// rs�� pstmt ���� - DQL �����
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
