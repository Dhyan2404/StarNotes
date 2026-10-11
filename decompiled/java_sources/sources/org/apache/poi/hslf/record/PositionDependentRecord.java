package org.apache.poi.hslf.record;

import java.util.Map;

/* loaded from: classes12.dex */
public interface PositionDependentRecord {
    int getLastOnDiskOffset();

    void setLastOnDiskOffset(int i);

    void updateOtherRecordReferences(Map<Integer, Integer> map);
}
