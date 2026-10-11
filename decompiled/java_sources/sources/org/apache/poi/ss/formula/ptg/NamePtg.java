package org.apache.poi.ss.formula.ptg;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.FormulaRenderingWorkbook;
import org.apache.poi.ss.formula.WorkbookDependentFormula;
import org.apache.poi.ss.formula.ptg.NamePtg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class NamePtg extends OperandPtg implements WorkbookDependentFormula {
    private static final int SIZE = 5;
    public static final short sid = 35;
    private int field_1_label_index;
    private short field_2_zero;

    public NamePtg(int i) {
        this.field_1_label_index = i + 1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        return (byte) 0;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(FirebaseAnalytics.Param.INDEX, new Supplier() { // from class: com.sunia.HTREnginev2.qrj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(NamePtg.this.getIndex());
            }
        });
    }

    public int getIndex() {
        return this.field_1_label_index - 1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 35;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 5;
    }

    @Override // org.apache.poi.ss.formula.WorkbookDependentFormula
    public String toFormulaString(FormulaRenderingWorkbook formulaRenderingWorkbook) {
        return formulaRenderingWorkbook.getNameText(this);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 35);
        littleEndianOutput.writeShort(this.field_1_label_index);
        littleEndianOutput.writeShort(this.field_2_zero);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        throw new IllegalStateException("3D references need a workbook to determine formula text");
    }

    public NamePtg(NamePtg namePtg) {
        super(namePtg);
        this.field_1_label_index = namePtg.field_1_label_index;
        this.field_2_zero = namePtg.field_2_zero;
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public NamePtg copy() {
        return new NamePtg(this);
    }

    public NamePtg(LittleEndianInput littleEndianInput) {
        this.field_1_label_index = littleEndianInput.readUShort();
        this.field_2_zero = littleEndianInput.readShort();
    }
}
