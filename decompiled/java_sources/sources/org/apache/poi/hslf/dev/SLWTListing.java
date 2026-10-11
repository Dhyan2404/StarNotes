package org.apache.poi.hslf.dev;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import org.apache.poi.hslf.record.Document;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.SlideListWithText;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;

/* loaded from: classes12.dex */
public final class SLWTListing {
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
                SlideListWithText[] slideListWithTexts = ((Document) record).getSlideListWithTexts();
                System.out.println("Document at " + i + " had " + slideListWithTexts.length + " SlideListWithTexts");
                if (slideListWithTexts.length == 0) {
                    System.err.println("** Warning: Should have had at least 1! **");
                }
                if (slideListWithTexts.length > 3) {
                    System.err.println("** Warning: Shouldn't have more than 3!");
                }
                for (int i2 = 0; i2 < slideListWithTexts.length; i2++) {
                    SlideListWithText slideListWithText = slideListWithTexts[i2];
                    Record[] childRecords = slideListWithText.getChildRecords();
                    System.out.println(" - SLWT at " + i2 + " had " + childRecords.length + " children:");
                    int length = slideListWithText.getSlideAtomsSets().length;
                    if (i2 == 1) {
                        if (length == 0) {
                            System.err.println("  ** 2nd SLWT didn't have any SlideAtomSets!");
                        } else {
                            System.out.println("  - Contains " + length + " SlideAtomSets");
                        }
                    } else if (length > 0) {
                        System.err.println("  ** SLWT " + i2 + " had " + length + " SlideAtomSets! (expected 0)");
                    }
                    int min = Math.min(childRecords.length, 5);
                    for (int i3 = 0; i3 < min; i3++) {
                        int recordType = (int) childRecords[i3].getRecordType();
                        String name = RecordTypes.forTypeID(recordType).name();
                        System.out.println("   - " + recordType + " (" + name + MotionUtils.f31762d);
                    }
                }
            }
        }
        hSLFSlideShowImpl.close();
    }
}
