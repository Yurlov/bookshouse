package online.mega.library.Utils;


import org.springframework.web.multipart.MultipartFile;

import java.io.*;

public class MyUtils {

    public static void writeFiles(MultipartFile content, String path){
        try {
            OutputStream fos = new BufferedOutputStream(new FileOutputStream(new File(path)));
            fos.write(content.getBytes());
            fos.flush();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void deleteFiles(String pathToContent, String pathToImage){
        File content = new File(pathToContent);
        File image = new File(pathToImage);
        content.delete();
        image.delete();

    }












}
