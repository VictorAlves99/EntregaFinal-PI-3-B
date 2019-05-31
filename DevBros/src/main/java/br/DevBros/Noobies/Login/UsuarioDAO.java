package br.DevBros.Noobies.Login;

import static br.DevBros.Noobies.Utils.ConnectionUtils.obterConexao;
import br.DevBros.Noobies.Login.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nathan.osantos
 */
public class UsuarioDAO {

    public static Usuario buscaUsuario(Usuario u) {
        PreparedStatement stmt = null;
        Connection conn = null;

        String sql = "SELECT LOGIN_SIST, SENHA_SIST FROM DB_LOJA_NOOBIES.TB_FUNCIONARIOS WHERE LOGIN_SIST = ?";

        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, u.getLogin());

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String login = rs.getString("LOGIN_SIST");
                String senha = rs.getString("SENHA_SIST");
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Não foi possível executar" + e);
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    
                }
            }
        }
        return u;
    }
}
