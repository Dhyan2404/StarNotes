package org.apache.poi.hssf.record.cf;

import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.LittleEndianInput;

/* loaded from: classes12.dex */
public final class DataBarThreshold extends Threshold implements Duplicatable {
    public DataBarThreshold() {
    }

    public DataBarThreshold(DataBarThreshold dataBarThreshold) {
        super(dataBarThreshold);
    }

    public DataBarThreshold(LittleEndianInput littleEndianInput) {
        super(littleEndianInput);
    }

    @Override // org.apache.poi.hssf.record.cf.Threshold, org.apache.poi.common.Duplicatable
    public DataBarThreshold copy() {
        return new DataBarThreshold(this);
    }
}
