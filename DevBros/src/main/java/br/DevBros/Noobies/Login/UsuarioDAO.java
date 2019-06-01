package br.DevBros.Noobies.Login;

import static br.DevBros.Noobies.Utils.ConnectionUtils.obterConexao;
import br.DevBros.Noobies.Login.Usuario;
import br.DevBros.Noobies.Utils.ConnectionUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nathan.osantos
 */
public class UsuarioDAO {

    public static Usuario buscaUsuario(String usuario) throws SQLException {
        
        PreparedStatement stmt = null;
        Connection conn = null;

        String sql = "SELECT LOGIN_SIST, SENHA_SIST, CARGO_FUNCIONARIO FROM DB_LOJA_NOOBIES.TB_FUNCIONARIOS WHERE LOGIN_SIST = ?";

        try {
            conn = ConnectionUtils.obterConexao();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, usuario);

            ResultSet rs = stmt.executeQuery();
            
            
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setLogin(rs.getString("LOGIN_SIST"));
                u.setSenha(rs.getString("SENHA_SIST"));
                u.setCargo(rs.getString("CARGO_FUNCIONARIO"));
                
                return u;
            }
        } catch (ClassNotFoundException | SQLException e) {
            return null;
        } finally {
            if (stmt != null && !stmt.isClosed()){
                stmt.close();
            }
            if (conn != null && !conn.isClosed()){
                conn.close();
            }
        }
        return null;
    }
}
