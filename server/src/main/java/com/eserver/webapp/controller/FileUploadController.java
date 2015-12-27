package com.eserver.webapp.controller;


import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;

@Controller
public class FileUploadController extends BaseFormController {

	@RequestMapping("/files*")
	 public String execute(ModelMap model) {
        return "fileupload1";
    }
	
	/***
	 * 保存文件
	 * @param file
	 * @return
	 */
	private boolean saveFile(MultipartFile file) {
		
		// 判断文件是否为空
		if (!file.isEmpty()) {
			try {
				// 文件保存路径
				String filePath = this.getServletContext().getRealPath("/") + "upload/"
						+ file.getOriginalFilename();
				// 转存文件
				file.transferTo(new File(filePath));
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	@RequestMapping("filesUpload")
	public String filesUpload(@RequestParam("files") MultipartFile[] files) {


		//判断file数组不能为空并且长度大于0
		if(files!=null&&files.length>0){
			//循环获取file数组中得文件
			for(int i = 0;i<files.length;i++){
				MultipartFile file = files[i];
				//保存文件
				saveFile(file);
			}
		}
		// 重定向
		return "filesUpload";
	}

}
