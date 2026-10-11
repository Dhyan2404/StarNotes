package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.ptg.ExpPtg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class ExpPtg extends ControlPtg {
    private static final int SIZE = 5;
    public static final short sid = 1;
    private final int field_1_first_row;
    private final int field_2_first_col;

    public ExpPtg(LittleEndianInput littleEndianInput) {
        this.field_1_first_row = littleEndianInput.readShort();
        this.field_2_first_col = littleEndianInput.readShort();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public ExpPtg copy() {
        return this;
    }

    public int getColumn() {
        return this.field_2_first_col;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.o1g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExpPtg.this.getRow());
            }
        }, "column", new Supplier() { // from class: com.sunia.HTREnginev2.p1g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExpPtg.this.getColumn());
            }
        });
    }

    public int getRow() {
        return this.field_1_first_row;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 5;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        throw new IllegalStateException("Coding Error: Expected ExpPtg to be converted from Shared to Non-Shared Formula by ValueRecordsAggregate, but it wasn't");
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 1);
        littleEndianOutput.writeShort(this.field_1_first_row);
        littleEndianOutput.writeShort(this.field_2_first_col);
    }

    public ExpPtg(int i, int i2) {
        this.field_1_first_row = i;
        this.field_2_first_col = i2;
    }
}
