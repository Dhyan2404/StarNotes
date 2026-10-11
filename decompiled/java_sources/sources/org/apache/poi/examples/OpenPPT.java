package org.apache.poi.examples;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.text.DecimalFormat;
import javax.imageio.ImageIO;
import org.apache.poi.examples.OpenPPT;
import org.apache.poi.openxml4j.util.ZipSecureFile;
import org.apache.poi.sl.PPTFactory;
import org.apache.poi.util.CloseUtils;

/* loaded from: classes12.dex */
public class OpenPPT {
    private String saveDir;
    private String pptDir = "/Users/luoxg/Resources/工作资料/books/office/ppt/";
    private String pptName = "测试用例.pptx";
    private boolean appendSuffix = true;
    private String suffix = "_2";
    private int index = 1;

    private void drawSingleSlide(PPTFactory pPTFactory, Dimension dimension, int i) throws Exception {
        long currentTimeMillis = System.currentTimeMillis();
        BufferedImage bufferedImage = new BufferedImage(dimension.width, dimension.height, 2);
        pPTFactory.drawSlide(bufferedImage.createGraphics(), i);
        File file = new File(this.saveDir, new DecimalFormat("000.png").format(i + 1));
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        ImageIO.write(bufferedImage, "png", fileOutputStream);
        CloseUtils.close(fileOutputStream);
        System.out.println("Save image success : " + file.getAbsolutePath() + ", duration : " + (System.currentTimeMillis() - currentTimeMillis));
    }

    private void getSaveDir() {
        String str = this.pptName;
        String substring = str.substring(0, str.lastIndexOf("."));
        String str2 = this.pptDir;
        StringBuilder sb = new StringBuilder();
        sb.append(substring);
        sb.append(this.appendSuffix ? this.suffix : "");
        File file = new File(str2, sb.toString());
        if (!file.exists()) {
            file.mkdirs();
        }
        this.saveDir = file.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$openAll$0(File file) {
        return file.isFile() && (file.getName().endsWith(".ppt") || file.getName().endsWith(".pptx")) && !file.getName().startsWith("~$");
    }

    public static void main(String[] strArr) throws Exception {
        MacInit.init();
        new OpenPPT().openSingle();
        System.exit(0);
    }

    private void open() throws Exception {
        String str = this.pptDir + this.pptName;
        System.out.println("Start Open ppt : " + str);
        ZipSecureFile.setMinInflateRatio(0.001d);
        PPTFactory build = new PPTFactory.Builder().setFilePath(str).setPassword("123456").build();
        build.openPPT();
        Dimension pageSize = build.getPageSize();
        int i = this.index;
        if (i < 1) {
            for (int i2 = 0; i2 < build.getSlideSize(); i2++) {
                drawSingleSlide(build, pageSize, i2);
            }
        } else {
            drawSingleSlide(build, pageSize, i - 1);
        }
        build.close();
        System.err.println("End Open ppt : " + str + "\n");
    }

    private void openAll() throws Exception {
        for (File file : new File(this.pptDir).listFiles(new FileFilter() { // from class: com.sunia.HTREnginev2.fhk
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                boolean lambda$openAll$0;
                lambda$openAll$0 = OpenPPT.lambda$openAll$0(file2);
                return lambda$openAll$0;
            }
        })) {
            this.pptName = file.getName();
            openSingle();
        }
    }

    private void openSingle() throws Exception {
        getSaveDir();
        open();
    }
}
