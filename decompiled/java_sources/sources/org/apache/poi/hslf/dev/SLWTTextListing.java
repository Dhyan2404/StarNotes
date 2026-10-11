package org.apache.poi.hslf.dev;

import java.io.IOException;
import org.apache.commons.collections4.MapUtils;
import org.apache.poi.hslf.record.Document;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.SlideListWithText;
import org.apache.poi.hslf.record.SlidePersistAtom;
import org.apache.poi.hslf.record.TextBytesAtom;
import org.apache.poi.hslf.record.TextCharsAtom;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;

/* loaded from: classes12.dex */
public final class SLWTTextListing {
    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 1) {
            System.err.println("Need to give a filename");
            System.exit(1);
        }
        HSLFSlideShowImpl hSLFSlideShowImpl = new HSLFSlideShowImpl(strArr[0]);
        Record[] records = hSLFSlideShowImpl.getRecords();
        for (int i = 0; i < records.length; i++) {
            Record record = records[i];
            if (record instanceof Document) {
                Record[] childRecords = record.getChildRecords();
                for (int i2 = 0; i2 < childRecords.length; i2++) {
                    if (childRecords[i2] instanceof SlideListWithText) {
                        System.out.println("Found SLWT at pos " + i2 + " in the Document at " + i);
                        System.out.println("  Has " + childRecords[i2].getChildRecords().length + " children");
                        SlideListWithText.SlideAtomsSet[] slideAtomsSets = ((SlideListWithText) childRecords[i2]).getSlideAtomsSets();
                        System.out.println("  Has " + slideAtomsSets.length + " AtomSets in it");
                        for (int i3 = 0; i3 < slideAtomsSets.length; i3++) {
                            SlidePersistAtom slidePersistAtom = slideAtomsSets[i3].getSlidePersistAtom();
                            System.out.println(MapUtils.f104930a + i3 + " has slide id " + slidePersistAtom.getSlideIdentifier());
                            System.out.println(MapUtils.f104930a + i3 + " has ref id " + slidePersistAtom.getRefID());
                            Record[] slideRecords = slideAtomsSets[i3].getSlideRecords();
                            int length = slideRecords.length;
                            for (int i4 = 0; i4 < length; i4++) {
                                Record record2 = slideRecords[i4];
                                String text = record2 instanceof TextBytesAtom ? ((TextBytesAtom) record2).getText() : null;
                                if (record2 instanceof TextCharsAtom) {
                                    text = ((TextCharsAtom) record2).getText();
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
    }
}
