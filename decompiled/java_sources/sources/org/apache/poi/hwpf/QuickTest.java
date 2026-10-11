package org.apache.poi.hwpf;

import java.io.FileInputStream;
import java.io.IOException;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.hwpf.usermodel.Section;

/* loaded from: classes12.dex */
public final class QuickTest {
    public static void main(String[] strArr) throws IOException {
        HWPFDocument hWPFDocument = new HWPFDocument(new FileInputStream(strArr[0]));
        Range range = hWPFDocument.getRange();
        System.out.println("Example you supplied:");
        System.out.println("---------------------");
        for (int i = 0; i < range.numSections(); i++) {
            Section section = range.getSection(i);
            for (int i2 = 0; i2 < section.numParagraphs(); i2++) {
                Paragraph paragraph = section.getParagraph(i2);
                for (int i3 = 0; i3 < paragraph.numCharacterRuns(); i3++) {
                    System.out.print(paragraph.getCharacterRun(i3).text());
                }
                System.out.println();
            }
        }
        hWPFDocument.close();
    }
}
