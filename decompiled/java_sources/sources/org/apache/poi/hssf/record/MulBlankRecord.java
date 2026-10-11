package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.MulBlankRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class MulBlankRecord extends StandardRecord {
    public static final short sid = 190;
    private final int _firstCol;
    private final int _lastCol;
    private final int _row;
    private final short[] _xfs;

    public MulBlankRecord(int i, int i2, short[] sArr) {
        this._row = i;
        this._firstCol = i2;
        this._xfs = sArr;
        this._lastCol = (i2 + sArr.length) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this._xfs;
    }

    private static short[] parseXFs(RecordInputStream recordInputStream) {
        int remaining = (recordInputStream.remaining() - 2) / 2;
        short[] sArr = new short[remaining];
        for (int i = 0; i < remaining; i++) {
            sArr[i] = recordInputStream.readShort();
        }
        return sArr;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public MulBlankRecord copy() {
        return this;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this._xfs.length * 2) + 6;
    }

    public int getFirstColumn() {
        return this._firstCol;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.opj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(MulBlankRecord.this.getRow());
            }
        }, "firstColumn", new Supplier() { // from class: com.sunia.HTREnginev2.ppj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(MulBlankRecord.this.getFirstColumn());
            }
        }, "lastColumn", new Supplier() { // from class: com.sunia.HTREnginev2.qpj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(MulBlankRecord.this.getLastColumn());
            }
        }, "xf", new Supplier() { // from class: com.sunia.HTREnginev2.rpj
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = MulBlankRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public int getLastColumn() {
        return this._lastCol;
    }

    public int getNumColumns() {
        return (this._lastCol - this._firstCol) + 1;
    }

    public int getRow() {
        return this._row;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 190;
    }

    public short getXFAt(int i) {
        return this._xfs[i];
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._row);
        littleEndianOutput.writeShort(this._firstCol);
        for (short s : this._xfs) {
            littleEndianOutput.writeShort(s);
        }
        littleEndianOutput.writeShort(this._lastCol);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.MUL_BLANK;
    }

    public MulBlankRecord(RecordInputStream recordInputStream) {
        this._row = recordInputStream.readUShort();
        this._firstCol = recordInputStream.readShort();
        this._xfs = parseXFs(recordInputStream);
        this._lastCol = recordInputStream.readShort();
    }
}
