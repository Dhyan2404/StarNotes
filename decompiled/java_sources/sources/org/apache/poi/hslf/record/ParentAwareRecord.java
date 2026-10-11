package org.apache.poi.hslf.record;

/* loaded from: classes12.dex */
public interface ParentAwareRecord {
    RecordContainer getParentRecord();

    void setParentRecord(RecordContainer recordContainer);
}
