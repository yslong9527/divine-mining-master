package com.divine.system.service;

import com.divine.common.mybatis.core.page.BasePage;
import com.divine.system.domain.dto.SysFileDTO;
import com.divine.system.domain.dto.SysQueryFileDto;
import com.divine.system.domain.vo.SysFileVo;
import com.divine.common.mybatis.core.page.PageInfoRes;
import com.divine.system.domain.vo.UploadFileVO;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.Collection;
import java.util.List;

/**
 * 文件上传 服务层实现
 *
 * @author Lion Li
 */
public interface SysFileService {

    PageInfoRes<SysFileVo> queryPageList(SysQueryFileDto dto, BasePage basePage);

    List<SysFileVo> listByIds(Collection<Long> ossIds);

    String selectUrlByIds(String ossIds);

    SysFileVo getById(Long ossId);

    /**
     * 下载
     * @param ossId
     * @param response
     */
    void download(Long ossId, HttpServletResponse response);

    /**
     * 上传OSS对象存储
     * @param file
     * @return
     */
    UploadFileVO upload(MultipartFile file);

    /**
     * 保存文件信息
     * @param dto
     */
    void saveFile(SysFileDTO dto);

    UploadFileVO upload(File file);

    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
