package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.OldCellRecord;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public abstract class OldCellRecord implements GenericRecord {
    private final int field_1_row;
    private final short field_2_column;
    private int field_3_cell_attrs;
    private short field_3_xf_index;
    private final boolean isBiff2;
    private final short sid;

    public OldCellRecord(RecordInputStream recordInputStream, boolean z) {
        this.sid = recordInputStream.getSid();
        this.isBiff2 = z;
        this.field_1_row = recordInputStream.readUShort();
        this.field_2_column = recordInputStream.readShort();
        if (!z) {
            this.field_3_xf_index = recordInputStream.readShort();
            return;
        }
        int readUShort = recordInputStream.readUShort() << 8;
        this.field_3_cell_attrs = readUShort;
        this.field_3_cell_attrs = readUShort + recordInputStream.readUByte();
    }

    public int getCellAttrs() {
        return this.field_3_cell_attrs;
    }

    public final short getColumn() {
        return this.field_2_column;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.ofk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(OldCellRecord.this.getRow());
            }
        }, "column", new Supplier() { // from class: com.sunia.HTREnginev2.pfk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(OldCellRecord.this.getColumn());
            }
        }, "biff2", new Supplier() { // from class: com.sunia.HTREnginev2.qfk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(OldCellRecord.this.isBiff2());
            }
        }, "biff2CellAttrs", new Supplier() { // from class: com.sunia.HTREnginev2.rfk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(OldCellRecord.this.getCellAttrs());
            }
        }, "xfIndex", new Supplier() { // from class: com.sunia.HTREnginev2.sfk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(OldCellRecord.this.getXFIndex());
            }
        });
    }

    public final int getRow() {
        return this.field_1_row;
    }

    public short getSid() {
        return this.sid;
    }

    public final short getXFIndex() {
        return this.field_3_xf_index;
    }

    public boolean isBiff2() {
        return this.isBiff2;
    }

    public final String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }
}
