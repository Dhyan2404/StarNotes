package org.apache.poi.hssf.record;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.ToIntFunction;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class RecordFactory {
    private static final int DEFAULT_MAX_NUMBER_OF_RECORDS = 5000000;
    private static int MAX_NUMBER_OF_RECORDS = 5000000;
    private static final int NUM_RECORDS = 512;

    private RecordFactory() {
    }

    public static BlankRecord[] convertBlankRecords(MulBlankRecord mulBlankRecord) {
        BlankRecord[] blankRecordArr = new BlankRecord[mulBlankRecord.getNumColumns()];
        for (int i = 0; i < mulBlankRecord.getNumColumns(); i++) {
            BlankRecord blankRecord = new BlankRecord();
            blankRecord.setColumn((short) (mulBlankRecord.getFirstColumn() + i));
            blankRecord.setRow(mulBlankRecord.getRow());
            blankRecord.setXFIndex(mulBlankRecord.getXFAt(i));
            blankRecordArr[i] = blankRecord;
        }
        return blankRecordArr;
    }

    public static NumberRecord[] convertRKRecords(MulRKRecord mulRKRecord) {
        int numColumns = mulRKRecord.getNumColumns();
        if (numColumns < 0) {
            throw new RecordFormatException("Cannot create RKRecords with negative number of columns: " + numColumns);
        }
        NumberRecord[] numberRecordArr = new NumberRecord[numColumns];
        for (int i = 0; i < numColumns; i++) {
            NumberRecord numberRecord = new NumberRecord();
            numberRecord.setColumn((short) (mulRKRecord.getFirstColumn() + i));
            numberRecord.setRow(mulRKRecord.getRow());
            numberRecord.setXFIndex(mulRKRecord.getXFAt(i));
            numberRecord.setValue(mulRKRecord.getRKNumberAt(i));
            numberRecordArr[i] = numberRecord;
        }
        return numberRecordArr;
    }

    public static NumberRecord convertToNumberRecord(RKRecord rKRecord) {
        NumberRecord numberRecord = new NumberRecord();
        numberRecord.setColumn(rKRecord.getColumn());
        numberRecord.setRow(rKRecord.getRow());
        numberRecord.setXFIndex(rKRecord.getXFIndex());
        numberRecord.setValue(rKRecord.getRKNumber());
        return numberRecord;
    }

    public static Record[] createRecord(RecordInputStream recordInputStream) {
        Record createSingleRecord = createSingleRecord(recordInputStream);
        return createSingleRecord instanceof DBCellRecord ? new Record[]{null} : createSingleRecord instanceof RKRecord ? new Record[]{convertToNumberRecord((RKRecord) createSingleRecord)} : createSingleRecord instanceof MulRKRecord ? convertRKRecords((MulRKRecord) createSingleRecord) : new Record[]{createSingleRecord};
    }

    public static List<Record> createRecords(InputStream inputStream) throws RecordFormatException {
        ArrayList arrayList = new ArrayList(512);
        RecordFactoryInputStream recordFactoryInputStream = new RecordFactoryInputStream(inputStream, true);
        while (true) {
            Record nextRecord = recordFactoryInputStream.nextRecord();
            if (nextRecord == null) {
                return arrayList;
            }
            arrayList.add(nextRecord);
            IOUtils.safelyAllocateCheck(arrayList.size(), MAX_NUMBER_OF_RECORDS);
        }
    }

    public static Record createSingleRecord(RecordInputStream recordInputStream) {
        HSSFRecordTypes forSID = HSSFRecordTypes.forSID(recordInputStream.getSid());
        if (!forSID.isParseable()) {
            forSID = HSSFRecordTypes.UNKNOWN;
        }
        return forSID.recordConstructor.apply(recordInputStream);
    }

    public static short[] getAllKnownRecordSIDs() {
        int[] array = Arrays.stream(HSSFRecordTypes.values()).mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.qel
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((HSSFRecordTypes) obj).getSid();
            }
        }).toArray();
        short[] sArr = new short[array.length];
        for (int i = 0; i < array.length; i++) {
            sArr[i] = (short) array[i];
        }
        return sArr;
    }

    public static int getMaxNumberOfRecords() {
        return MAX_NUMBER_OF_RECORDS;
    }

    public static Class<? extends Record> getRecordClass(int i) {
        return HSSFRecordTypes.forSID(i).clazz;
    }

    public static void setMaxNumberOfRecords(int i) {
        MAX_NUMBER_OF_RECORDS = i;
    }
}
