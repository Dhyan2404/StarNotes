package org.apache.poi.ss.formula.ptg;

import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class RefPtg extends Ref2DPtgBase {
    public static final byte sid = 36;

    public RefPtg(String str) {
        super(new CellReference(str));
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 36;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ref2DPtgBase, org.apache.poi.ss.formula.ptg.Ptg
    public /* bridge */ /* synthetic */ void write(LittleEndianOutput littleEndianOutput) {
        super.write(littleEndianOutput);
    }

    public RefPtg(RefPtg refPtg) {
        super(refPtg);
    }

    public RefPtg(int i, int i2, boolean z, boolean z2) {
        super(i, i2, z, z2);
    }

    public RefPtg(LittleEndianInput littleEndianInput) {
        super(littleEndianInput);
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public RefPtg copy() {
        return new RefPtg(this);
    }

    public RefPtg(CellReference cellReference) {
        super(cellReference);
    }
}
