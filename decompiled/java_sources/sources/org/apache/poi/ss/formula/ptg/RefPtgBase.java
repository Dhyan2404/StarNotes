package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.ptg.RefPtgBase;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public abstract class RefPtgBase extends OperandPtg {
    private int field_1_row;
    private int field_2_col;
    private static final BitField column = BitFieldFactory.getInstance(16383);
    private static final BitField rowRelative = BitFieldFactory.getInstance(32768);
    private static final BitField colRelative = BitFieldFactory.getInstance(16384);

    public RefPtgBase() {
    }

    public String formatReferenceAsString() {
        return new CellReference(getRow(), getColumn(), !isRowRelative(), !isColRelative()).formatAsString();
    }

    public final int getColumn() {
        return column.getValue(this.field_2_col);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public final byte getDefaultOperandClass() {
        return (byte) 0;
    }

    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.ajl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(RefPtgBase.this.getRow());
            }
        }, "rowRelative", new Supplier() { // from class: com.sunia.HTREnginev2.bjl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(RefPtgBase.this.isRowRelative());
            }
        }, "column", new Supplier() { // from class: com.sunia.HTREnginev2.cjl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(RefPtgBase.this.getColumn());
            }
        }, "colRelative", new Supplier() { // from class: com.sunia.HTREnginev2.djl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(RefPtgBase.this.isColRelative());
            }
        }, "formatReference", new Supplier() { // from class: com.sunia.HTREnginev2.ejl
            @Override // java.util.function.Supplier
            public final Object get() {
                return RefPtgBase.this.formatReferenceAsString();
            }
        });
    }

    public final int getRow() {
        return this.field_1_row;
    }

    public final boolean isColRelative() {
        return colRelative.isSet(this.field_2_col);
    }

    public final boolean isRowRelative() {
        return rowRelative.isSet(this.field_2_col);
    }

    public final void readCoordinates(LittleEndianInput littleEndianInput) {
        this.field_1_row = littleEndianInput.readUShort();
        this.field_2_col = littleEndianInput.readUShort();
    }

    public final void setColRelative(boolean z) {
        this.field_2_col = colRelative.setBoolean(this.field_2_col, z);
    }

    public final void setColumn(int i) {
        this.field_2_col = column.setValue(this.field_2_col, i);
    }

    public final void setRow(int i) {
        this.field_1_row = i;
    }

    public final void setRowRelative(boolean z) {
        this.field_2_col = rowRelative.setBoolean(this.field_2_col, z);
    }

    public final void writeCoordinates(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_row);
        littleEndianOutput.writeShort(this.field_2_col);
    }

    public RefPtgBase(RefPtgBase refPtgBase) {
        super(refPtgBase);
        this.field_1_row = refPtgBase.field_1_row;
        this.field_2_col = refPtgBase.field_2_col;
    }

    public RefPtgBase(CellReference cellReference) {
        setRow(cellReference.getRow());
        setColumn(cellReference.getCol());
        setColRelative(!cellReference.isColAbsolute());
        setRowRelative(!cellReference.isRowAbsolute());
    }
}
