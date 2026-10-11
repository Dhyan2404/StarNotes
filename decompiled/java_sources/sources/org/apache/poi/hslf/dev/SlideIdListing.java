package org.apache.poi.hslf.dev;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Map;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hslf.record.Document;
import org.apache.poi.hslf.record.Notes;
import org.apache.poi.hslf.record.NotesAtom;
import org.apache.poi.hslf.record.PersistPtrHolder;
import org.apache.poi.hslf.record.PositionDependentRecord;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.Slide;
import org.apache.poi.hslf.record.SlideAtom;
import org.apache.poi.hslf.record.SlideListWithText;
import org.apache.poi.hslf.record.SlidePersistAtom;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class SlideIdListing {
    private static byte[] fileContents;

    public static Record findRecordAtPos(int i) {
        return Record.createRecordForType(LittleEndian.getUShort(fileContents, i + 2), fileContents, i, ((int) LittleEndian.getUInt(fileContents, i + 4)) + 8);
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 1) {
            System.err.println("Need to give a filename");
            System.exit(1);
        }
        int i = 0;
        HSLFSlideShowImpl hSLFSlideShowImpl = new HSLFSlideShowImpl(strArr[0]);
        try {
            HSLFSlideShow hSLFSlideShow = new HSLFSlideShow(hSLFSlideShowImpl);
            try {
                fileContents = hSLFSlideShowImpl.getUnderlyingBytes();
                Record[] records = hSLFSlideShowImpl.getRecords();
                Record[] mostRecentCoreRecords = hSLFSlideShow.getMostRecentCoreRecords();
                Document document = null;
                for (Record record : mostRecentCoreRecords) {
                    if (record instanceof Document) {
                        document = (Document) record;
                    }
                }
                System.out.println();
                for (SlideListWithText slideListWithText : document.getSlideListWithTexts()) {
                    for (Record record2 : slideListWithText.getChildRecords()) {
                        if (record2 instanceof SlidePersistAtom) {
                            SlidePersistAtom slidePersistAtom = (SlidePersistAtom) record2;
                            System.out.println("SlidePersistAtom knows about slide:");
                            System.out.println("\t" + slidePersistAtom.getRefID());
                            System.out.println("\t" + slidePersistAtom.getSlideIdentifier());
                        }
                    }
                }
                System.out.println();
                for (int i2 = 0; i2 < mostRecentCoreRecords.length; i2++) {
                    Record record3 = mostRecentCoreRecords[i2];
                    if (record3 instanceof Slide) {
                        Slide slide = (Slide) record3;
                        SlideAtom slideAtom = slide.getSlideAtom();
                        System.out.println("Found the latest version of a slide record:");
                        System.out.println("\tCore ID is " + slide.getSheetId());
                        System.out.println("\t(Core Records count is " + i2 + MotionUtils.f31762d);
                        System.out.println("\tDisk Position is " + slide.getLastOnDiskOffset());
                        System.out.println("\tMaster ID is " + slideAtom.getMasterID());
                        System.out.println("\tNotes ID is " + slideAtom.getNotesID());
                    }
                }
                System.out.println();
                for (int i3 = 0; i3 < mostRecentCoreRecords.length; i3++) {
                    Record record4 = mostRecentCoreRecords[i3];
                    if (record4 instanceof Notes) {
                        Notes notes = (Notes) record4;
                        NotesAtom notesAtom = notes.getNotesAtom();
                        System.out.println("Found the latest version of a notes record:");
                        System.out.println("\tCore ID is " + notes.getSheetId());
                        System.out.println("\t(Core Records count is " + i3 + MotionUtils.f31762d);
                        System.out.println("\tDisk Position is " + notes.getLastOnDiskOffset());
                        System.out.println("\tMatching slide is " + notesAtom.getSlideID());
                    }
                }
                System.out.println();
                int length = records.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length) {
                    Record record5 = records[i4];
                    if (record5.getRecordType() == 6001) {
                        System.out.println("Found PersistPtrFullBlock at " + i5 + " (" + Integer.toHexString(i5) + MotionUtils.f31762d);
                    }
                    if (record5.getRecordType() == 6002) {
                        System.out.println("Found PersistPtrIncrementalBlock at " + i5 + " (" + Integer.toHexString(i5) + MotionUtils.f31762d);
                        PersistPtrHolder persistPtrHolder = (PersistPtrHolder) record5;
                        int[] knownSlideIDs = persistPtrHolder.getKnownSlideIDs();
                        Map<Integer, Integer> slideLocationsLookup = persistPtrHolder.getSlideLocationsLookup();
                        int length2 = knownSlideIDs.length;
                        int i6 = i;
                        while (i6 < length2) {
                            Integer valueOf = Integer.valueOf(knownSlideIDs[i6]);
                            Integer num = slideLocationsLookup.get(valueOf);
                            PrintStream printStream = System.out;
                            StringBuilder sb = new StringBuilder();
                            Record[] recordArr = records;
                            sb.append("  Knows about sheet ");
                            sb.append(valueOf);
                            printStream.println(sb.toString());
                            System.out.println("    That sheet lives at " + num);
                            Record findRecordAtPos = findRecordAtPos(num.intValue());
                            System.out.println("    The record at that pos is of type " + findRecordAtPos.getRecordType());
                            System.out.println("    The record at that pos has class " + findRecordAtPos.getClass().getName());
                            if (!(findRecordAtPos instanceof PositionDependentRecord)) {
                                System.out.println("    ** The record class isn't position aware! **");
                            }
                            i6++;
                            records = recordArr;
                        }
                    }
                    Record[] recordArr2 = records;
                    UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                    record5.writeOut(unsynchronizedByteArrayOutputStream);
                    i5 += unsynchronizedByteArrayOutputStream.size();
                    i4++;
                    records = recordArr2;
                    i = 0;
                }
                hSLFSlideShow.close();
                hSLFSlideShowImpl.close();
                System.out.println();
            } finally {
            }
        } finally {
        }
    }
}
