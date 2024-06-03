package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import data.dto.UserDto;
import data.mapper.UserMapperInter;

@Service
public class UserService {
    @Autowired
    private UserMapperInter userInter;
    
    public void insertMember(UserDto dto) {
        userInter.insertMember(dto);
    }

    public UserDto getDataById(String userId) {
        return userInter.getDataById(userId);
    }

    public int getIdCheckCount(String searchid)
    {
        return userInter.getIdCheckCount(searchid);
    }

    public int getIdCheckByUserId(String user_id, String user_password){
        return userInter.getIdCheckByUserId(user_id, user_password);
    }
}
