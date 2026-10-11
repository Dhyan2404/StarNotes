package org.apache.poi.ss.formula.ptg;

import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.util.LittleEndianInput;

/* loaded from: classes13.dex */
public final class AreaPtg extends Area2DPtgBase {
    public static final short sid = 37;

    public AreaPtg(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4) {
        super(i, i2, i3, i4, z, z2, z3, z4);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 37;
    }

    public AreaPtg(AreaPtg areaPtg) {
        super(areaPtg);
    }

    public AreaPtg(LittleEndianInput littleEndianInput) {
        super(littleEndianInput);
    }

    public AreaPtg(AreaReference areaReference) {
        super(areaReference);
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public AreaPtg copy() {
        return new AreaPtg(this);
    }
}
