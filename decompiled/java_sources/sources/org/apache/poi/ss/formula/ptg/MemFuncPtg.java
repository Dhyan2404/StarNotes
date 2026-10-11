package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.ptg.MemFuncPtg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class MemFuncPtg extends OperandPtg {
    public static final byte sid = 41;
    private final int field_1_len_ref_subexpression;

    public MemFuncPtg(LittleEndianInput littleEndianInput) {
        this(littleEndianInput.readUShort());
    }

    @Override // org.apache.poi.ss.formula.ptg.OperandPtg, org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public MemFuncPtg copy() {
        return this;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        return (byte) 0;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("lenRefSubexpression", new Supplier() { // from class: com.sunia.HTREnginev2.ylj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(MemFuncPtg.this.getLenRefSubexpression());
            }
        });
    }

    public int getLenRefSubexpression() {
        return this.field_1_len_ref_subexpression;
    }

    public int getNumberOfOperands() {
        return this.field_1_len_ref_subexpression;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 41;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 3;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        return "";
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 41);
        littleEndianOutput.writeShort(this.field_1_len_ref_subexpression);
    }

    public MemFuncPtg(int i) {
        this.field_1_len_ref_subexpression = i;
    }
}
