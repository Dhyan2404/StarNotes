package org.apache.poi.util;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Sheet;

/* loaded from: classes13.dex */
public final class DrawingDump {
    private DrawingDump() {
    }

    public static void main(String[] strArr) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(System.out, Charset.defaultCharset());
        try {
            PrintWriter printWriter = new PrintWriter(outputStreamWriter);
            try {
                POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(new File(strArr[0]));
                try {
                    HSSFWorkbook hSSFWorkbook = new HSSFWorkbook(pOIFSFileSystem);
                    try {
                        printWriter.println("Drawing group:");
                        hSSFWorkbook.dumpDrawingGroupRecords(true);
                        for (Sheet sheet : hSSFWorkbook) {
                            printWriter.println("Sheet 1" + MotionUtils.f31761c + sheet.getSheetName() + "):");
                            ((HSSFSheet) sheet).dumpDrawingRecords(true, printWriter);
                        }
                        hSSFWorkbook.close();
                        pOIFSFileSystem.close();
                        printWriter.close();
                        outputStreamWriter.close();
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
