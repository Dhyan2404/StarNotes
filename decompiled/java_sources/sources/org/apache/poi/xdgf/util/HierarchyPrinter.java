package org.apache.poi.xdgf.util;

import com.bumptech.glide.load.engine.GlideException;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import java.awt.geom.AffineTransform;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import org.apache.poi.xdgf.usermodel.XDGFPage;
import org.apache.poi.xdgf.usermodel.XDGFShape;
import org.apache.poi.xdgf.usermodel.XmlVisioDocument;
import org.apache.poi.xdgf.usermodel.shape.ShapeVisitor;

/* loaded from: classes13.dex */
public class HierarchyPrinter {
    public static void main(String[] strArr) throws Exception {
        if (strArr.length != 2) {
            System.err.println("Usage: in.vsdx outdir");
            System.exit(1);
        }
        String str = strArr[0];
        String str2 = strArr[1];
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            printHierarchy(new XmlVisioDocument(fileInputStream), str2);
            fileInputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void printHierarchy(XDGFPage xDGFPage, File file) throws FileNotFoundException, UnsupportedEncodingException, IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(file, "page" + xDGFPage.getPageNumber() + "-" + Util.sanitizeFilename(xDGFPage.getName()) + LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION));
        try {
            PrintStream printStream = new PrintStream((OutputStream) fileOutputStream, false, StandardCharsets.UTF_8.name());
            try {
                printHierarchy(xDGFPage, printStream);
                printStream.close();
                fileOutputStream.close();
            } finally {
            }
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

    public static void printHierarchy(XDGFPage xDGFPage, final PrintStream printStream) {
        xDGFPage.getContent().visitShapes(new ShapeVisitor() { // from class: org.apache.poi.xdgf.util.HierarchyPrinter.1
            @Override // org.apache.poi.xdgf.usermodel.shape.ShapeVisitor
            public void visit(XDGFShape xDGFShape, AffineTransform affineTransform, int i) {
                for (int i2 = 0; i2 < i; i2++) {
                    printStream.append((CharSequence) GlideException.C1935a.f14609h);
                }
                printStream.println(xDGFShape + " [" + xDGFShape.getShapeType() + ", " + xDGFShape.getSymbolName() + "] " + xDGFShape.getMasterShape() + " " + xDGFShape.getTextAsString().trim());
            }
        });
    }

    public static void printHierarchy(XmlVisioDocument xmlVisioDocument, String str) throws FileNotFoundException, UnsupportedEncodingException, IOException {
        File file = new File(str);
        Iterator<XDGFPage> it2 = xmlVisioDocument.getPages().iterator();
        while (it2.hasNext()) {
            printHierarchy(it2.next(), file);
        }
    }
}
