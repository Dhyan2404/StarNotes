package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.FormulaRenderingWorkbook;
import org.apache.poi.ss.formula.WorkbookDependentFormula;
import org.apache.poi.ss.formula.ptg.NameXPtg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class NameXPtg extends OperandPtg implements WorkbookDependentFormula {
    private static final int SIZE = 7;
    public static final short sid = 57;
    private final int _nameNumber;
    private final int _reserved;
    private final int _sheetRefIndex;

    private NameXPtg(int i, int i2, int i3) {
        this._sheetRefIndex = i;
        this._nameNumber = i2;
        this._reserved = i3;
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public NameXPtg copy() {
        return this;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        return (byte) 32;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("sheetRefIndex", new Supplier() { // from class: com.sunia.HTREnginev2.hsj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(NameXPtg.this.getSheetRefIndex());
            }
        }, "nameIndex", new Supplier() { // from class: com.sunia.HTREnginev2.isj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(NameXPtg.this.getNameIndex());
            }
        });
    }

    public int getNameIndex() {
        return this._nameNumber - 1;
    }

    public int getSheetRefIndex() {
        return this._sheetRefIndex;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 57;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 7;
    }

    @Override // org.apache.poi.ss.formula.WorkbookDependentFormula
    public String toFormulaString(FormulaRenderingWorkbook formulaRenderingWorkbook) {
        return formulaRenderingWorkbook.resolveNameXText(this);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 57);
        littleEndianOutput.writeShort(this._sheetRefIndex);
        littleEndianOutput.writeShort(this._nameNumber);
        littleEndianOutput.writeShort(this._reserved);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        throw new IllegalStateException("3D references need a workbook to determine formula text");
    }

    public NameXPtg(int i, int i2) {
        this(i, i2 + 1, 0);
    }

    public NameXPtg(LittleEndianInput littleEndianInput) {
        this(littleEndianInput.readUShort(), littleEndianInput.readUShort(), littleEndianInput.readUShort());
    }
}
