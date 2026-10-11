package org.apache.poi.ss.formula.ptg;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.ptg.AreaPtgBase;
import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public abstract class AreaPtgBase extends OperandPtg implements AreaI {
    private int field_1_first_row;
    private int field_2_last_row;
    private int field_3_first_column;
    private int field_4_last_column;
    private static final BitField rowRelative = BitFieldFactory.getInstance(32768);
    private static final BitField colRelative = BitFieldFactory.getInstance(16384);
    private static final BitField columnMask = BitFieldFactory.getInstance(16383);

    public AreaPtgBase() {
    }

    public final String formatReferenceAsString() {
        CellReference cellReference = new CellReference(getFirstRow(), getFirstColumn(), !isFirstRowRelative(), !isFirstColRelative());
        CellReference cellReference2 = new CellReference(getLastRow(), getLastColumn(), !isLastRowRelative(), !isLastColRelative());
        SpreadsheetVersion spreadsheetVersion = SpreadsheetVersion.EXCEL97;
        if (AreaReference.isWholeColumnReference(spreadsheetVersion, cellReference, cellReference2)) {
            return new AreaReference(cellReference, cellReference2, spreadsheetVersion).formatAsString();
        }
        SpreadsheetVersion spreadsheetVersion2 = SpreadsheetVersion.EXCEL2007;
        if (AreaReference.isWholeColumnReference(spreadsheetVersion2, cellReference, cellReference2)) {
            return new AreaReference(cellReference, cellReference2, spreadsheetVersion2).formatAsString();
        }
        return cellReference.formatAsString() + ":" + cellReference2.formatAsString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        return (byte) 0;
    }

    @Override // org.apache.poi.ss.formula.ptg.AreaI
    public final int getFirstColumn() {
        return columnMask.getValue(this.field_3_first_column);
    }

    public final short getFirstColumnRaw() {
        return (short) this.field_3_first_column;
    }

    @Override // org.apache.poi.ss.formula.ptg.AreaI
    public final int getFirstRow() {
        return this.field_1_first_row;
    }

    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("firstRow", new Supplier() { // from class: com.sunia.HTREnginev2.me
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AreaPtgBase.this.getFirstRow());
            }
        }, "firstRowRelative", new Supplier() { // from class: com.sunia.HTREnginev2.ne
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AreaPtgBase.this.isFirstRowRelative());
            }
        }, "firstColumn", new Supplier() { // from class: com.sunia.HTREnginev2.oe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AreaPtgBase.this.getFirstColumn());
            }
        }, "firstColRelative", new Supplier() { // from class: com.sunia.HTREnginev2.pe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AreaPtgBase.this.isFirstColRelative());
            }
        }, "lastRow", new Supplier() { // from class: com.sunia.HTREnginev2.qe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AreaPtgBase.this.getLastRow());
            }
        }, "lastRowRelative", new Supplier() { // from class: com.sunia.HTREnginev2.re
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AreaPtgBase.this.isLastRowRelative());
            }
        }, "lastColumn", new Supplier() { // from class: com.sunia.HTREnginev2.se
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AreaPtgBase.this.getLastColumn());
            }
        }, "lastColRelative", new Supplier() { // from class: com.sunia.HTREnginev2.te
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AreaPtgBase.this.isLastColRelative());
            }
        }, "formatReference", new Supplier() { // from class: com.sunia.HTREnginev2.ue
            @Override // java.util.function.Supplier
            public final Object get() {
                return AreaPtgBase.this.formatReferenceAsString();
            }
        });
    }

    @Override // org.apache.poi.ss.formula.ptg.AreaI
    public final int getLastColumn() {
        return columnMask.getValue(this.field_4_last_column);
    }

    public final short getLastColumnRaw() {
        return (short) this.field_4_last_column;
    }

    @Override // org.apache.poi.ss.formula.ptg.AreaI
    public final int getLastRow() {
        return this.field_2_last_row;
    }

    public final boolean isFirstColRelative() {
        return colRelative.isSet(this.field_3_first_column);
    }

    public final boolean isFirstRowRelative() {
        return rowRelative.isSet(this.field_3_first_column);
    }

    public final boolean isLastColRelative() {
        return colRelative.isSet(this.field_4_last_column);
    }

    public final boolean isLastRowRelative() {
        return rowRelative.isSet(this.field_4_last_column);
    }

    public final void readCoordinates(LittleEndianInput littleEndianInput) {
        this.field_1_first_row = littleEndianInput.readUShort();
        this.field_2_last_row = littleEndianInput.readUShort();
        this.field_3_first_column = littleEndianInput.readUShort();
        this.field_4_last_column = littleEndianInput.readUShort();
    }

    public final void setFirstColRelative(boolean z) {
        this.field_3_first_column = colRelative.setBoolean(this.field_3_first_column, z);
    }

    public final void setFirstColumn(int i) {
        this.field_3_first_column = columnMask.setValue(this.field_3_first_column, i);
    }

    public final void setFirstColumnRaw(int i) {
        this.field_3_first_column = i;
    }

    public final void setFirstRow(int i) {
        this.field_1_first_row = i;
    }

    public final void setFirstRowRelative(boolean z) {
        this.field_3_first_column = rowRelative.setBoolean(this.field_3_first_column, z);
    }

    public final void setLastColRelative(boolean z) {
        this.field_4_last_column = colRelative.setBoolean(this.field_4_last_column, z);
    }

    public final void setLastColumn(int i) {
        this.field_4_last_column = columnMask.setValue(this.field_4_last_column, i);
    }

    public final void setLastColumnRaw(short s) {
        this.field_4_last_column = s;
    }

    public final void setLastRow(int i) {
        this.field_2_last_row = i;
    }

    public final void setLastRowRelative(boolean z) {
        this.field_4_last_column = rowRelative.setBoolean(this.field_4_last_column, z);
    }

    public void sortTopLeftToBottomRight() {
        if (getFirstRow() > getLastRow()) {
            int firstRow = getFirstRow();
            boolean isFirstRowRelative = isFirstRowRelative();
            setFirstRow(getLastRow());
            setFirstRowRelative(isLastRowRelative());
            setLastRow(firstRow);
            setLastRowRelative(isFirstRowRelative);
        }
        if (getFirstColumn() > getLastColumn()) {
            int firstColumn = getFirstColumn();
            boolean isFirstColRelative = isFirstColRelative();
            setFirstColumn(getLastColumn());
            setFirstColRelative(isLastColRelative());
            setLastColumn(firstColumn);
            setLastColRelative(isFirstColRelative);
        }
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        return formatReferenceAsString();
    }

    public final void writeCoordinates(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_first_row);
        littleEndianOutput.writeShort(this.field_2_last_row);
        littleEndianOutput.writeShort(this.field_3_first_column);
        littleEndianOutput.writeShort(this.field_4_last_column);
    }

    public AreaPtgBase(AreaPtgBase areaPtgBase) {
        super(areaPtgBase);
        this.field_1_first_row = areaPtgBase.field_1_first_row;
        this.field_2_last_row = areaPtgBase.field_2_last_row;
        this.field_3_first_column = areaPtgBase.field_3_first_column;
        this.field_4_last_column = areaPtgBase.field_4_last_column;
    }

    public AreaPtgBase(AreaReference areaReference) {
        CellReference firstCell = areaReference.getFirstCell();
        CellReference lastCell = areaReference.getLastCell();
        setFirstRow(firstCell.getRow());
        setFirstColumn(firstCell.getCol() == -1 ? (short) 0 : firstCell.getCol());
        setLastRow(lastCell.getRow());
        setLastColumn(lastCell.getCol() == -1 ? (short) 255 : lastCell.getCol());
        setFirstColRelative(!firstCell.isColAbsolute());
        setLastColRelative(!lastCell.isColAbsolute());
        setFirstRowRelative(!firstCell.isRowAbsolute());
        setLastRowRelative(!lastCell.isRowAbsolute());
    }

    public AreaPtgBase(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4) {
        if (i2 >= i) {
            setFirstRow(i);
            setLastRow(i2);
            setFirstRowRelative(z);
            setLastRowRelative(z2);
        } else {
            setFirstRow(i2);
            setLastRow(i);
            setFirstRowRelative(z2);
            setLastRowRelative(z);
        }
        if (i4 >= i3) {
            setFirstColumn(i3);
            setLastColumn(i4);
            setFirstColRelative(z3);
            setLastColRelative(z4);
            return;
        }
        setFirstColumn(i4);
        setLastColumn(i3);
        setFirstColRelative(z4);
        setLastColRelative(z3);
    }
}
