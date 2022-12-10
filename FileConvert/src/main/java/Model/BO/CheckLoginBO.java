package Model.BO;

import Model.BEAN.user;
import Model.DAO.CheckLoginDAO;

public class CheckLoginBO {

	public user CheckLogin(String username, String password) {
		return new CheckLoginDAO().CheckLogin(username, password);
	}

}
