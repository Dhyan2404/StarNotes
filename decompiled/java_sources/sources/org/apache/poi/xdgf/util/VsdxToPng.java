package org.apache.poi.xdgf.util;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Iterator;
import javax.imageio.ImageIO;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.xdgf.usermodel.XDGFPage;
import org.apache.poi.xdgf.usermodel.XmlVisioDocument;
import org.apache.poi.xdgf.usermodel.shape.ShapeDebuggerRenderer;
import org.apache.poi.xdgf.usermodel.shape.ShapeRenderer;

/* loaded from: classes13.dex */
public class VsdxToPng {
    public static void main(String[] strArr) throws Exception {
        if (strArr.length > 2) {
            System.err.println("Usage: [--debug] in.vsdx outdir");
            System.exit(1);
        }
        ShapeRenderer shapeRenderer = new ShapeRenderer();
        String str = strArr[0];
        String str2 = strArr[1];
        if (str.equals("--debug")) {
            str = strArr[1];
            str2 = strArr[2];
            shapeRenderer = new ShapeDebuggerRenderer();
        }
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            renderToPng(new XmlVisioDocument(fileInputStream), str2, 181.8181818181818d, shapeRenderer);
            fileInputStream.close();
        } finally {
        }
    }

    public static void renderToPng(XDGFPage xDGFPage, String str, double d, ShapeRenderer shapeRenderer) throws IOException {
        renderToPng(xDGFPage, new File(str), d, shapeRenderer);
    }

    public static void renderToPngDir(XDGFPage xDGFPage, File file, double d, ShapeRenderer shapeRenderer) throws IOException {
        File file2 = new File(file, "page" + xDGFPage.getPageNumber() + "-" + Util.sanitizeFilename(xDGFPage.getName()) + ".png");
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("** Writing image to ");
        sb.append(file2);
        printStream.println(sb.toString());
        renderToPng(xDGFPage, file2, d, shapeRenderer);
    }

    public static void renderToPng(XDGFPage xDGFPage, File file, double d, ShapeRenderer shapeRenderer) throws IOException {
        Dimension2DDouble pageSize = xDGFPage.getPageSize();
        int width = (int) (pageSize.getWidth() * d);
        int height = (int) (pageSize.getHeight() * d);
        BufferedImage bufferedImage = new BufferedImage(width, height, 1);
        Graphics2D createGraphics = bufferedImage.createGraphics();
        createGraphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        createGraphics.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
        createGraphics.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BICUBIC);
        createGraphics.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
        createGraphics.setColor(Color.black);
        createGraphics.setBackground(Color.white);
        createGraphics.clearRect(0, 0, width, height);
        createGraphics.translate(0, bufferedImage.getHeight());
        createGraphics.scale(d, -d);
        shapeRenderer.setGraphics(createGraphics);
        xDGFPage.getContent().visitShapes(shapeRenderer);
        createGraphics.dispose();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            ImageIO.write(bufferedImage, "png", fileOutputStream);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void renderToPng(XmlVisioDocument xmlVisioDocument, String str, double d, ShapeRenderer shapeRenderer) throws IOException {
        File file = new File(str);
        Iterator<XDGFPage> it2 = xmlVisioDocument.getPages().iterator();
        while (it2.hasNext()) {
            renderToPngDir(it2.next(), file, d, shapeRenderer);
        }
    }
}
