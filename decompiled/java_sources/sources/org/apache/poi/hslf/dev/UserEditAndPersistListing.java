package org.apache.poi.hslf.dev;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Map;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hslf.record.CurrentUserAtom;
import org.apache.poi.hslf.record.PersistPtrHolder;
import org.apache.poi.hslf.record.PositionDependentRecord;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.UserEditAtom;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class UserEditAndPersistListing {
    private static byte[] fileContents;

    public static Record findRecordAtPos(int i) {
        return Record.createRecordForType(LittleEndian.getUShort(fileContents, i + 2), fileContents, i, ((int) LittleEndian.getUInt(fileContents, i + 4)) + 8);
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 1) {
            System.err.println("Need to give a filename");
            System.exit(1);
        }
        HSLFSlideShowImpl hSLFSlideShowImpl = new HSLFSlideShowImpl(strArr[0]);
        try {
            fileContents = hSLFSlideShowImpl.getUnderlyingBytes();
            System.out.println();
            int i = 0;
            for (Record record : hSLFSlideShowImpl.getRecords()) {
                if (record.getRecordType() == 6001) {
                    System.out.println("Found PersistPtrFullBlock at " + i + " (" + Integer.toHexString(i) + MotionUtils.f31762d);
                }
                if (record.getRecordType() == 6002) {
                    System.out.println("Found PersistPtrIncrementalBlock at " + i + " (" + Integer.toHexString(i) + MotionUtils.f31762d);
                    PersistPtrHolder persistPtrHolder = (PersistPtrHolder) record;
                    Map<Integer, Integer> slideLocationsLookup = persistPtrHolder.getSlideLocationsLookup();
                    int[] knownSlideIDs = persistPtrHolder.getKnownSlideIDs();
                    int length = knownSlideIDs.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        int i3 = knownSlideIDs[i2];
                        Integer num = slideLocationsLookup.get(Integer.valueOf(i3));
                        System.out.println("  Knows about sheet " + i3);
                        System.out.println("    That sheet lives at " + num);
                        Record findRecordAtPos = findRecordAtPos(num.intValue());
                        System.out.println("    The record at that pos is of type " + findRecordAtPos.getRecordType());
                        System.out.println("    The record at that pos has class " + findRecordAtPos.getClass().getName());
                        if (!(findRecordAtPos instanceof PositionDependentRecord)) {
                            System.out.println("    ** The record class isn't position aware! **");
                        }
                    }
                }
                UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                record.writeOut(unsynchronizedByteArrayOutputStream);
                i += unsynchronizedByteArrayOutputStream.size();
            }
            System.out.println();
            int i4 = 0;
            for (Record record2 : hSLFSlideShowImpl.getRecords()) {
                if (record2 instanceof UserEditAtom) {
                    UserEditAtom userEditAtom = (UserEditAtom) record2;
                    System.out.println("Found UserEditAtom at " + i4 + " (" + Integer.toHexString(i4) + MotionUtils.f31762d);
                    PrintStream printStream = System.out;
                    StringBuilder sb = new StringBuilder();
                    sb.append("  lastUserEditAtomOffset = ");
                    sb.append(userEditAtom.getLastUserEditAtomOffset());
                    printStream.println(sb.toString());
                    System.out.println("  persistPointersOffset  = " + userEditAtom.getPersistPointersOffset());
                    System.out.println("  docPersistRef          = " + userEditAtom.getDocPersistRef());
                    System.out.println("  maxPersistWritten      = " + userEditAtom.getMaxPersistWritten());
                }
                UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream2 = new UnsynchronizedByteArrayOutputStream();
                record2.writeOut(unsynchronizedByteArrayOutputStream2);
                i4 += unsynchronizedByteArrayOutputStream2.size();
            }
            System.out.println();
            CurrentUserAtom currentUserAtom = hSLFSlideShowImpl.getCurrentUserAtom();
            System.out.println("Checking Current User Atom");
            System.out.println("  Thinks the CurrentEditOffset is " + currentUserAtom.getCurrentEditOffset());
            System.out.println();
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
