package org.apache.poi.hslf.record;

/* loaded from: classes12.dex */
public abstract class RecordAtom extends Record {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static int MAX_RECORD_LENGTH = 1000000;

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public Record[] getChildRecords() {
        return null;
    }

    @Override // org.apache.poi.hslf.record.Record
    public boolean isAnAtom() {
        return true;
    }
}
