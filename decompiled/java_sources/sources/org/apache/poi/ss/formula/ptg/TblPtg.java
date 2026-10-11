package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.ptg.TblPtg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class TblPtg extends ControlPtg {
    private static final int SIZE = 5;
    public static final short sid = 2;
    private final int field_1_first_row;
    private final int field_2_first_col;

    public TblPtg(LittleEndianInput littleEndianInput) {
        this.field_1_first_row = littleEndianInput.readUShort();
        this.field_2_first_col = littleEndianInput.readUShort();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public TblPtg copy() {
        return this;
    }

    public int getColumn() {
        return this.field_2_first_col;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.oan
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TblPtg.this.getRow());
            }
        }, "column", new Supplier() { // from class: com.sunia.HTREnginev2.pan
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TblPtg.this.getColumn());
            }
        });
    }

    public int getRow() {
        return this.field_1_first_row;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 2;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 5;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        throw new IllegalStateException("Table and Arrays are not yet supported");
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 2);
        littleEndianOutput.writeShort(this.field_1_first_row);
        littleEndianOutput.writeShort(this.field_2_first_col);
    }
}
