package org.apache.poi.ss.formula.ptg;

import org.apache.poi.util.LittleEndianInput;

/* loaded from: classes13.dex */
public final class AreaNPtg extends Area2DPtgBase {
    public static final short sid = 45;

    public AreaNPtg(AreaNPtg areaNPtg) {
        super(areaNPtg);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 45;
    }

    public AreaNPtg(LittleEndianInput littleEndianInput) {
        super(littleEndianInput);
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public AreaNPtg copy() {
        return new AreaNPtg(this);
    }
}
