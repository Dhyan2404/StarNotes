package org.apache.poi.hssf.record;

import org.apache.poi.hssf.util.CellRangeAddress8Bit;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public abstract class SharedValueRecordBase extends StandardRecord {
    private CellRangeAddress8Bit _range;

    public SharedValueRecordBase(SharedValueRecordBase sharedValueRecordBase) {
        super(sharedValueRecordBase);
        CellRangeAddress8Bit cellRangeAddress8Bit = sharedValueRecordBase._range;
        this._range = cellRangeAddress8Bit == null ? null : cellRangeAddress8Bit.copy();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return getExtraDataSize() + 6;
    }

    public abstract int getExtraDataSize();

    public final int getFirstColumn() {
        return (short) this._range.getFirstColumn();
    }

    public final int getFirstRow() {
        return this._range.getFirstRow();
    }

    public final int getLastColumn() {
        return (short) this._range.getLastColumn();
    }

    public final int getLastRow() {
        return this._range.getLastRow();
    }

    public final CellRangeAddress8Bit getRange() {
        return this._range;
    }

    public final boolean isFirstCell(int i, int i2) {
        CellRangeAddress8Bit range = getRange();
        return range.getFirstRow() == i && range.getFirstColumn() == i2;
    }

    public final boolean isInRange(int i, int i2) {
        CellRangeAddress8Bit cellRangeAddress8Bit = this._range;
        return cellRangeAddress8Bit.getFirstRow() <= i && cellRangeAddress8Bit.getLastRow() >= i && cellRangeAddress8Bit.getFirstColumn() <= i2 && cellRangeAddress8Bit.getLastColumn() >= i2;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        this._range.serialize(littleEndianOutput);
        serializeExtraData(littleEndianOutput);
    }

    public abstract void serializeExtraData(LittleEndianOutput littleEndianOutput);

    public SharedValueRecordBase(CellRangeAddress8Bit cellRangeAddress8Bit) {
        if (cellRangeAddress8Bit != null) {
            this._range = cellRangeAddress8Bit;
            return;
        }
        throw new IllegalArgumentException("range must be supplied.");
    }

    public SharedValueRecordBase() {
        this(new CellRangeAddress8Bit(0, 0, 0, 0));
    }

    public SharedValueRecordBase(LittleEndianInput littleEndianInput) {
        this._range = new CellRangeAddress8Bit(littleEndianInput);
    }
}
