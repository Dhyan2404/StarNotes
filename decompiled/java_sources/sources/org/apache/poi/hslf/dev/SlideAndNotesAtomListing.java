package org.apache.poi.hslf.dev;

import java.io.IOException;
import org.apache.poi.hslf.record.Notes;
import org.apache.poi.hslf.record.NotesAtom;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.Slide;
import org.apache.poi.hslf.record.SlideAtom;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;

/* loaded from: classes12.dex */
public final class SlideAndNotesAtomListing {
    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 1) {
            System.err.println("Need to give a filename");
            System.exit(1);
        }
        HSLFSlideShowImpl hSLFSlideShowImpl = new HSLFSlideShowImpl(strArr[0]);
        System.out.println();
        Record[] records = hSLFSlideShowImpl.getRecords();
        for (int i = 0; i < records.length; i++) {
            Record record = records[i];
            if (record instanceof Slide) {
                SlideAtom slideAtom = ((Slide) record).getSlideAtom();
                System.out.println("Found Slide at " + i);
                System.out.println("  Slide's master ID is " + slideAtom.getMasterID());
                System.out.println("  Slide's notes ID is  " + slideAtom.getNotesID());
                System.out.println();
            }
            if (record instanceof Notes) {
                NotesAtom notesAtom = ((Notes) record).getNotesAtom();
                System.out.println("Found Notes at " + i);
                System.out.println("  Notes ID is " + notesAtom.getSlideID());
                System.out.println();
            }
        }
        hSLFSlideShowImpl.close();
    }
}
