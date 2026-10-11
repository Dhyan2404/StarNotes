package org.apache.poi.hslf.record;

import java.util.Map;

/* loaded from: classes12.dex */
public abstract class PositionDependentRecordContainer extends RecordContainer implements PositionDependentRecord {
    private int myLastOnDiskOffset;
    private int sheetId;

    @Override // org.apache.poi.hslf.record.PositionDependentRecord
    public int getLastOnDiskOffset() {
        return this.myLastOnDiskOffset;
    }

    public int getSheetId() {
        return this.sheetId;
    }

    @Override // org.apache.poi.hslf.record.PositionDependentRecord
    public void setLastOnDiskOffset(int i) {
        this.myLastOnDiskOffset = i;
    }

    public void setSheetId(int i) {
        this.sheetId = i;
    }

    @Override // org.apache.poi.hslf.record.PositionDependentRecord
    public void updateOtherRecordReferences(Map<Integer, Integer> map) {
    }
}
