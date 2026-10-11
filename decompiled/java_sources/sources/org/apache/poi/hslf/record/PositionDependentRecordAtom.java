package org.apache.poi.hslf.record;

import java.util.Map;

/* loaded from: classes12.dex */
public abstract class PositionDependentRecordAtom extends RecordAtom implements PositionDependentRecord {
    private int myLastOnDiskOffset;

    @Override // org.apache.poi.hslf.record.PositionDependentRecord
    public int getLastOnDiskOffset() {
        return this.myLastOnDiskOffset;
    }

    @Override // org.apache.poi.hslf.record.PositionDependentRecord
    public void setLastOnDiskOffset(int i) {
        this.myLastOnDiskOffset = i;
    }

    public abstract void updateOtherRecordReferences(Map<Integer, Integer> map);
}
