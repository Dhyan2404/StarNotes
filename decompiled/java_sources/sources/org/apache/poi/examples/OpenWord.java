package org.apache.poi.examples;

import java.io.File;
import org.apache.poi.convert.WordConvertFactory;
import org.apache.poi.picture.BufferedImagePicturesManager;
import org.apache.poi.util.StringUtils;

/* loaded from: classes12.dex */
public class OpenWord {
    private String password;
    private String saveDir;
    private String dirSuffix = "_5.2";
    private String wordDir = "/Users/luoxg/Resources/工作资料/books/office/word/";
    private String wordName = "3.1铁及其化合物同步练习2023-2024学年高一上学期化学人教版（2019）必修第一册.docx";

    private void getSaveDir() {
        File file;
        String str = this.wordName;
        String substring = str.substring(0, str.lastIndexOf("."));
        if (StringUtils.isNullOrEmpty(this.wordDir)) {
            file = new File(substring + this.dirSuffix);
        } else {
            file = new File(this.wordDir, substring + this.dirSuffix);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        this.saveDir = file.getAbsolutePath();
    }

    public static void main(String[] strArr) throws Exception {
        MacInit.init();
        OpenWord openWord = new OpenWord();
        if (strArr != null && strArr.length >= 1) {
            openWord.dirSuffix = "";
            openWord.wordDir = "";
            openWord.wordName = strArr[0];
            if (strArr.length >= 2) {
                openWord.password = strArr[1];
            }
        }
        openWord.getSaveDir();
        openWord.open();
    }

    private void open() throws Exception {
        WordConvertFactory build = new WordConvertFactory.Builder().setFilePath(this.wordDir + this.wordName).setPassword(this.password).setDocumentParaSize(2000).setPicturesManager(new BufferedImagePicturesManager(this.saveDir)).build();
        build.convertWord();
        build.close();
        build.write(this.saveDir, true);
    }
}
