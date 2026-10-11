package org.apache.poi.ss.formula.ptg;

import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public abstract class Ref2DPtgBase extends RefPtgBase {
    private static final int SIZE = 5;

    public Ref2DPtgBase(int i, int i2, boolean z, boolean z2) {
        setRow(i);
        setColumn(i2);
        setRowRelative(z);
        setColRelative(z2);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public final int getSize() {
        return 5;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public final String toFormulaString() {
        return formatReferenceAsString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getSid() + getPtgClass());
        writeCoordinates(littleEndianOutput);
    }

    public Ref2DPtgBase(Ref2DPtgBase ref2DPtgBase) {
        super(ref2DPtgBase);
    }

    public Ref2DPtgBase(LittleEndianInput littleEndianInput) {
        readCoordinates(littleEndianInput);
    }

    public Ref2DPtgBase(CellReference cellReference) {
        super(cellReference);
    }
}
