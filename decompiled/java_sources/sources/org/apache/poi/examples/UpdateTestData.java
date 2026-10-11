package org.apache.poi.examples;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.text.DecimalFormat;
import javax.imageio.ImageIO;
import org.apache.poi.convert.WordConvertFactory;
import org.apache.poi.examples.UpdateTestData;
import org.apache.poi.openxml4j.util.ZipSecureFile;
import org.apache.poi.picture.BufferedImagePicturesManager;
import org.apache.poi.sl.PPTFactory;
import org.apache.poi.util.CloseUtils;

/* loaded from: classes12.dex */
public class UpdateTestData {
    private final String TEST_DATA_PATH = "./test-data/ext/";
    private DecimalFormat format = new DecimalFormat("000.png");

    private void drawSingleSlide(PPTFactory pPTFactory, Dimension dimension, String str, int i) throws Exception {
        long currentTimeMillis = System.currentTimeMillis();
        BufferedImage bufferedImage = new BufferedImage(dimension.width, dimension.height, 2);
        pPTFactory.drawSlide(bufferedImage.createGraphics(), i);
        File file = new File(str, this.format.format(i + 1));
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        ImageIO.write(bufferedImage, "png", fileOutputStream);
        CloseUtils.close(fileOutputStream);
        System.out.println("Save image success : " + file.getAbsolutePath() + ", duration : " + (System.currentTimeMillis() - currentTimeMillis));
    }

    private String getSaveDir(File file) {
        String name = file.getName();
        File file2 = new File(file.getParentFile(), name.substring(0, name.lastIndexOf(".")));
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$updatePPT$0(File file) {
        return file.isFile() && PPTFactory.accept(file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$updateWord$1(File file) {
        return file.isFile() && WordConvertFactory.accept(file.getName());
    }

    public static void main(String[] strArr) throws Exception {
        MacInit.init();
        new UpdateTestData();
    }

    public void updatePPT() throws Exception {
        ZipSecureFile.setMinInflateRatio(0.001d);
        for (File file : new File("./test-data/ext/ppt").listFiles(new FileFilter() { // from class: com.sunia.HTREnginev2.lxn
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                boolean lambda$updatePPT$0;
                lambda$updatePPT$0 = UpdateTestData.lambda$updatePPT$0(file2);
                return lambda$updatePPT$0;
            }
        })) {
            System.out.println("Start Open ppt : " + file.getName());
            String saveDir = getSaveDir(file);
            PPTFactory build = new PPTFactory.Builder().setFilePath(file.getPath()).build();
            build.openPPT();
            Dimension pageSize = build.getPageSize();
            for (int i = 0; i < build.getSlideSize(); i++) {
                drawSingleSlide(build, pageSize, saveDir, i);
            }
            build.close();
            System.err.println("End Open ppt : " + file.getName() + "\n");
        }
    }

    public void updateWord() throws Exception {
        for (File file : new File("./test-data/ext/convert").listFiles(new FileFilter() { // from class: com.sunia.HTREnginev2.kxn
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                boolean lambda$updateWord$1;
                lambda$updateWord$1 = UpdateTestData.lambda$updateWord$1(file2);
                return lambda$updateWord$1;
            }
        })) {
            System.out.println("f.getName() = " + file.getName());
            String saveDir = getSaveDir(file);
            WordConvertFactory build = new WordConvertFactory.Builder().setFilePath(file.getPath()).setDocumentParaSize(2000).setPicturesManager(new BufferedImagePicturesManager(saveDir)).build();
            build.convertWord();
            build.write(saveDir, true);
            build.close();
        }
    }
}
