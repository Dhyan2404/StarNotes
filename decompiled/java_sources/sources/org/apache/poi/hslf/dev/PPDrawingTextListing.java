package org.apache.poi.hslf.dev;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.PrintStream;
import org.apache.commons.collections4.MapUtils;
import org.apache.poi.hslf.record.EscherTextboxWrapper;
import org.apache.poi.hslf.record.PPDrawing;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.TextBytesAtom;
import org.apache.poi.hslf.record.TextCharsAtom;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;

/* loaded from: classes12.dex */
public final class PPDrawingTextListing {
    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 1) {
            System.err.println("Need to give a filename");
            System.exit(1);
        }
        HSLFSlideShowImpl hSLFSlideShowImpl = new HSLFSlideShowImpl(strArr[0]);
        try {
            Record[] records = hSLFSlideShowImpl.getRecords();
            for (int i = 0; i < records.length; i++) {
                Record[] childRecords = records[i].getChildRecords();
                if (childRecords != null && childRecords.length != 0) {
                    for (int i2 = 0; i2 < childRecords.length; i2++) {
                        if (childRecords[i2] instanceof PPDrawing) {
                            System.out.println("Found PPDrawing at " + i2 + " in top level record " + i + " (" + records[i].getRecordType() + MotionUtils.f31762d);
                            EscherTextboxWrapper[] textboxWrappers = ((PPDrawing) childRecords[i2]).getTextboxWrappers();
                            PrintStream printStream = System.out;
                            StringBuilder sb = new StringBuilder();
                            sb.append("  Has ");
                            sb.append(textboxWrappers.length);
                            sb.append(" textbox wrappers within");
                            printStream.println(sb.toString());
                            for (int i3 = 0; i3 < textboxWrappers.length; i3++) {
                                EscherTextboxWrapper escherTextboxWrapper = textboxWrappers[i3];
                                System.out.println(MapUtils.f104930a + i3 + " has " + escherTextboxWrapper.getChildRecords().length + " PPT atoms within");
                                Record[] childRecords2 = escherTextboxWrapper.getChildRecords();
                                int length = childRecords2.length;
                                for (int i4 = 0; i4 < length; i4++) {
                                    Record record = childRecords2[i4];
                                    String text = record instanceof TextBytesAtom ? ((TextBytesAtom) record).getText() : null;
                                    if (record instanceof TextCharsAtom) {
                                        text = ((TextCharsAtom) record).getText();
                                    }
                                    if (text != null) {
                                        String replace = text.replace('\r', '\n');
                                        System.out.println("        ''" + replace + "''");
                                    }
                                }
                            }
                        }
                    }
                }
            }
            hSLFSlideShowImpl.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    hSLFSlideShowImpl.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
