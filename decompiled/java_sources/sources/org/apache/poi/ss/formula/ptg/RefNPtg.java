package org.apache.poi.ss.formula.ptg;

import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class RefNPtg extends Ref2DPtgBase {
    public static final byte sid = 44;

    public RefNPtg(LittleEndianInput littleEndianInput) {
        super(littleEndianInput);
    }

    @Override // org.apache.poi.ss.formula.ptg.RefPtgBase
    public final String formatReferenceAsString() {
        StringBuilder sb = new StringBuilder();
        if (isRowRelative()) {
            sb.append("RowOffset: ");
            sb.append(getRow());
            sb.append(" ");
        } else {
            sb.append(getRow() + 1);
        }
        if (isColRelative()) {
            sb.append(" ColOffset: ");
            sb.append(getColumn());
        } else {
            sb.append(CellReference.convertNumToColString(getColumn()));
        }
        return sb.toString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 44;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ref2DPtgBase, org.apache.poi.ss.formula.ptg.Ptg
    public /* bridge */ /* synthetic */ void write(LittleEndianOutput littleEndianOutput) {
        super.write(littleEndianOutput);
    }

    public RefNPtg(RefNPtg refNPtg) {
        super(refNPtg);
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public RefNPtg copy() {
        return new RefNPtg(this);
    }
}
