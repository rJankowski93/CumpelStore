package com.packt.service;

import com.packt.exception.ApplicationException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Service
public class UploadFileService {

    private final String uploadedFolder = "resources\\images\\customers";

    private final String defaultExtension = "jpg";

    public void uploadImage(Long customerId, MultipartFile file, String resourceServerFolder) throws ApplicationException {
        if (!file.isEmpty()) {
            try {
                if (!checkImageType(file)) {
                    throw new ApplicationException("WRONG_TYPE_FILE", "File: " + file.getName() + " has wrong type");
                }
                byte[] bytes = file.getBytes();
                File uploadDirectory = new File(resourceServerFolder + uploadedFolder);
                if (!uploadDirectory.exists()) {
                    uploadDirectory.mkdirs();
                }
                File serverFile = new File(uploadDirectory.getAbsolutePath() + File.separator + customerId + "." + defaultExtension);
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
            } catch (IOException e) {
                throw new ApplicationException("FAILED_UPLOAD", e.getMessage());
            }
        } else {
            throw new ApplicationException("EMPTY_FILE", "File: " + file.getName() + " is empty");
        }
    }

    private boolean checkImageType(MultipartFile file) {
        String contentFile = file.getContentType();
        if (contentFile != null && contentFile.split("/")[0].equals("image")) {
            return true;
        } else {
            return false;
        }
    }

}

