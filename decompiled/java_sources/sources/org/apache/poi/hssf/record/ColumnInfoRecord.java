package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.ColumnInfoRecord;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ColumnInfoRecord extends StandardRecord {
    public static final short sid = 125;
    private int _colWidth;
    private int _firstCol;
    private int _lastCol;
    private int _options;
    private int _xfIndex;
    private int field_6_reserved;
    private static final BitField hidden = BitFieldFactory.getInstance(1);
    private static final BitField outlevel = BitFieldFactory.getInstance(1792);
    private static final BitField collapsed = BitFieldFactory.getInstance(4096);

    public ColumnInfoRecord() {
        setColumnWidth(2275);
        this._options = 2;
        this._xfIndex = 15;
        this.field_6_reserved = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this._options);
    }

    public boolean containsColumn(int i) {
        return this._firstCol <= i && i <= this._lastCol;
    }

    public boolean formatMatches(ColumnInfoRecord columnInfoRecord) {
        return this._xfIndex == columnInfoRecord._xfIndex && this._options == columnInfoRecord._options && this._colWidth == columnInfoRecord._colWidth;
    }

    public boolean getCollapsed() {
        return collapsed.isSet(this._options);
    }

    public int getColumnWidth() {
        return this._colWidth;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 12;
    }

    public int getFirstColumn() {
        return this._firstCol;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("firstColumn", new Supplier() { // from class: com.sunia.HTREnginev2.k3e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColumnInfoRecord.this.getFirstColumn());
            }
        }, "lastColumn", new Supplier() { // from class: com.sunia.HTREnginev2.l3e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColumnInfoRecord.this.getLastColumn());
            }
        }, "columnWidth", new Supplier() { // from class: com.sunia.HTREnginev2.m3e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColumnInfoRecord.this.getColumnWidth());
            }
        }, "xfIndex", new Supplier() { // from class: com.sunia.HTREnginev2.n3e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColumnInfoRecord.this.getXFIndex());
            }
        }, "options", new Supplier() { // from class: com.sunia.HTREnginev2.o3e
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ColumnInfoRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, CellUtil.HIDDEN, new Supplier() { // from class: com.sunia.HTREnginev2.p3e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ColumnInfoRecord.this.getHidden());
            }
        }, "outlineLevel", new Supplier() { // from class: com.sunia.HTREnginev2.q3e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ColumnInfoRecord.this.getOutlineLevel());
            }
        }, "collapsed", new Supplier() { // from class: com.sunia.HTREnginev2.r3e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ColumnInfoRecord.this.getCollapsed());
            }
        });
    }

    public boolean getHidden() {
        return hidden.isSet(this._options);
    }

    public int getLastColumn() {
        return this._lastCol;
    }

    public int getOutlineLevel() {
        return outlevel.getValue(this._options);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 125;
    }

    public int getXFIndex() {
        return this._xfIndex;
    }

    public boolean isAdjacentBefore(ColumnInfoRecord columnInfoRecord) {
        return this._lastCol == columnInfoRecord._firstCol - 1;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getFirstColumn());
        littleEndianOutput.writeShort(getLastColumn());
        littleEndianOutput.writeShort(getColumnWidth());
        littleEndianOutput.writeShort(getXFIndex());
        littleEndianOutput.writeShort(this._options);
        littleEndianOutput.writeShort(this.field_6_reserved);
    }

    public void setCollapsed(boolean z) {
        this._options = collapsed.setBoolean(this._options, z);
    }

    public void setColumnWidth(int i) {
        this._colWidth = i;
    }

    public void setFirstColumn(int i) {
        this._firstCol = i;
    }

    public void setHidden(boolean z) {
        this._options = hidden.setBoolean(this._options, z);
    }

    public void setLastColumn(int i) {
        this._lastCol = i;
    }

    public void setOutlineLevel(int i) {
        this._options = outlevel.setValue(this._options, i);
    }

    public void setXFIndex(int i) {
        this._xfIndex = i;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.COLUMN_INFO;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ColumnInfoRecord copy() {
        return new ColumnInfoRecord(this);
    }

    public ColumnInfoRecord(ColumnInfoRecord columnInfoRecord) {
        super(columnInfoRecord);
        this._firstCol = columnInfoRecord._firstCol;
        this._lastCol = columnInfoRecord._lastCol;
        this._colWidth = columnInfoRecord._colWidth;
        this._xfIndex = columnInfoRecord._xfIndex;
        this._options = columnInfoRecord._options;
        this.field_6_reserved = columnInfoRecord.field_6_reserved;
    }

    public ColumnInfoRecord(RecordInputStream recordInputStream) {
        this._firstCol = recordInputStream.readUShort();
        this._lastCol = recordInputStream.readUShort();
        this._colWidth = recordInputStream.readUShort();
        this._xfIndex = recordInputStream.readUShort();
        this._options = recordInputStream.readUShort();
        int remaining = recordInputStream.remaining();
        if (remaining == 0) {
            this.field_6_reserved = 0;
            return;
        }
        if (remaining == 1) {
            this.field_6_reserved = recordInputStream.readByte();
            return;
        }
        if (remaining == 2) {
            this.field_6_reserved = recordInputStream.readUShort();
            return;
        }
        throw new IllegalArgumentException("Unusual record size remaining=(" + recordInputStream.remaining() + MotionUtils.f31762d);
    }
}
