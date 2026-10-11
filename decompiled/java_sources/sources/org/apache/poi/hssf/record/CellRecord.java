package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.CellRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public abstract class CellRecord extends StandardRecord implements CellValueRecordInterface {
    private int _columnIndex;
    private int _formatIndex;
    private int _rowIndex;

    public CellRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public abstract CellRecord copy();

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public final short getColumn() {
        return (short) this._columnIndex;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public final int getDataSize() {
        return getValueDataSize() + 6;
    }

    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.cpd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(CellRecord.this.getRow());
            }
        }, "col", new Supplier() { // from class: com.sunia.HTREnginev2.dpd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CellRecord.this.getColumn());
            }
        }, "xfIndex", new Supplier() { // from class: com.sunia.HTREnginev2.epd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CellRecord.this.getXFIndex());
            }
        });
    }

    public abstract String getRecordName();

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public final int getRow() {
        return this._rowIndex;
    }

    public abstract int getValueDataSize();

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public final short getXFIndex() {
        return (short) this._formatIndex;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public final void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getRow());
        littleEndianOutput.writeShort(getColumn());
        littleEndianOutput.writeShort(getXFIndex());
        serializeValue(littleEndianOutput);
    }

    public abstract void serializeValue(LittleEndianOutput littleEndianOutput);

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public final void setColumn(short s) {
        this._columnIndex = s;
    }

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public final void setRow(int i) {
        this._rowIndex = i;
    }

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public final void setXFIndex(short s) {
        this._formatIndex = s;
    }

    public CellRecord(CellRecord cellRecord) {
        super(cellRecord);
        this._rowIndex = cellRecord.getRow();
        this._columnIndex = cellRecord.getColumn();
        this._formatIndex = cellRecord.getXFIndex();
    }

    public CellRecord(RecordInputStream recordInputStream) {
        this._rowIndex = recordInputStream.readUShort();
        this._columnIndex = recordInputStream.readUShort();
        this._formatIndex = recordInputStream.readUShort();
    }
}
