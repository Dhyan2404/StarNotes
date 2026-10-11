package org.apache.poi.ss.formula.ptg;

import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public abstract class Area2DPtgBase extends AreaPtgBase {
    private static final int SIZE = 9;

    public Area2DPtgBase(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4) {
        super(i, i2, i3, i4, z, z2, z3, z4);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public final int getSize() {
        return 9;
    }

    @Override // org.apache.poi.ss.formula.ptg.AreaPtgBase, org.apache.poi.ss.formula.ptg.Ptg
    public final String toFormulaString() {
        return formatReferenceAsString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public final void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getSid() + getPtgClass());
        writeCoordinates(littleEndianOutput);
    }

    public Area2DPtgBase(Area2DPtgBase area2DPtgBase) {
        super(area2DPtgBase);
    }

    public Area2DPtgBase(AreaReference areaReference) {
        super(areaReference);
    }

    public Area2DPtgBase(LittleEndianInput littleEndianInput) {
        readCoordinates(littleEndianInput);
    }
}
