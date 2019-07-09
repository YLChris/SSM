package cn.bin.system.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bin.system.index.bound.IndexMapper;
import cn.bin.system.index.bound.ModuleEntity;
import cn.bin.system.user.bound.UserEntity;

@Service
public class IndexService {
	@Autowired
	private IndexMapper indexMapper;

	public List<ModuleEntity> listModule() {
		return indexMapper.listModule();
	}

	public void setIndexMapper(IndexMapper indexMapper) {
		this.indexMapper = indexMapper;
	}

	public UserEntity getUserByUsername(UserEntity user) {
		return indexMapper.getUserByUsername(user);
	}

}
