package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.poi.hssf.record.SelectionRecord;
import org.apache.poi.hssf.util.CellRangeAddress8Bit;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class SelectionRecord extends StandardRecord {
    public static final short sid = 29;
    private byte field_1_pane;
    private int field_2_row_active_cell;
    private int field_3_col_active_cell;
    private int field_4_active_cell_ref_index;
    private CellRangeAddress8Bit[] field_6_refs;

    public SelectionRecord(SelectionRecord selectionRecord) {
        super(selectionRecord);
        this.field_1_pane = selectionRecord.field_1_pane;
        this.field_2_row_active_cell = selectionRecord.field_2_row_active_cell;
        this.field_3_col_active_cell = selectionRecord.field_3_col_active_cell;
        this.field_4_active_cell_ref_index = selectionRecord.field_4_active_cell_ref_index;
        CellRangeAddress8Bit[] cellRangeAddress8BitArr = selectionRecord.field_6_refs;
        this.field_6_refs = cellRangeAddress8BitArr == null ? null : (CellRangeAddress8Bit[]) Stream.of((Object[]) cellRangeAddress8BitArr).map(new Function() { // from class: com.sunia.HTREnginev2.ngm
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CellRangeAddress8Bit) obj).copy();
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.ogm
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                CellRangeAddress8Bit[] lambda$new$0;
                lambda$new$0 = SelectionRecord.lambda$new$0(i);
                return lambda$new$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return this.field_6_refs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CellRangeAddress8Bit[] lambda$new$0(int i) {
        return new CellRangeAddress8Bit[i];
    }

    private void resetField6() {
        int i = this.field_2_row_active_cell;
        int i2 = this.field_3_col_active_cell;
        this.field_6_refs = new CellRangeAddress8Bit[]{new CellRangeAddress8Bit(i, i, i2, i2)};
    }

    public int getActiveCellCol() {
        return this.field_3_col_active_cell;
    }

    public int getActiveCellRef() {
        return this.field_4_active_cell_ref_index;
    }

    public int getActiveCellRow() {
        return this.field_2_row_active_cell;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return CellRangeAddress8Bit.getEncodedSize(this.field_6_refs.length) + 9;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("pane", new Supplier() { // from class: com.sunia.HTREnginev2.pgm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(SelectionRecord.this.getPane());
            }
        }, "activeCellRow", new Supplier() { // from class: com.sunia.HTREnginev2.qgm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SelectionRecord.this.getActiveCellRow());
            }
        }, "activeCellCol", new Supplier() { // from class: com.sunia.HTREnginev2.rgm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SelectionRecord.this.getActiveCellCol());
            }
        }, "activeCellRef", new Supplier() { // from class: com.sunia.HTREnginev2.sgm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SelectionRecord.this.getActiveCellRef());
            }
        }, "refs", new Supplier() { // from class: com.sunia.HTREnginev2.tgm
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = SelectionRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    public byte getPane() {
        return this.field_1_pane;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 29;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPane());
        littleEndianOutput.writeShort(getActiveCellRow());
        littleEndianOutput.writeShort(getActiveCellCol());
        littleEndianOutput.writeShort(getActiveCellRef());
        littleEndianOutput.writeShort(this.field_6_refs.length);
        for (CellRangeAddress8Bit cellRangeAddress8Bit : this.field_6_refs) {
            cellRangeAddress8Bit.serialize(littleEndianOutput);
        }
    }

    public void setActiveCellCol(short s) {
        this.field_3_col_active_cell = s;
        resetField6();
    }

    public void setActiveCellRef(short s) {
        this.field_4_active_cell_ref_index = s;
    }

    public void setActiveCellRow(int i) {
        this.field_2_row_active_cell = i;
        resetField6();
    }

    public void setPane(byte b) {
        this.field_1_pane = b;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SELECTION;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SelectionRecord copy() {
        return new SelectionRecord(this);
    }

    public SelectionRecord(int i, int i2) {
        this.field_1_pane = (byte) 3;
        this.field_2_row_active_cell = i;
        this.field_3_col_active_cell = i2;
        this.field_4_active_cell_ref_index = 0;
        this.field_6_refs = new CellRangeAddress8Bit[]{new CellRangeAddress8Bit(i, i, i2, i2)};
    }

    public SelectionRecord(RecordInputStream recordInputStream) {
        this.field_1_pane = recordInputStream.readByte();
        this.field_2_row_active_cell = recordInputStream.readUShort();
        this.field_3_col_active_cell = recordInputStream.readShort();
        this.field_4_active_cell_ref_index = recordInputStream.readShort();
        this.field_6_refs = new CellRangeAddress8Bit[recordInputStream.readUShort()];
        int i = 0;
        while (true) {
            CellRangeAddress8Bit[] cellRangeAddress8BitArr = this.field_6_refs;
            if (i >= cellRangeAddress8BitArr.length) {
                return;
            }
            cellRangeAddress8BitArr[i] = new CellRangeAddress8Bit(recordInputStream);
            i++;
        }
    }
}
