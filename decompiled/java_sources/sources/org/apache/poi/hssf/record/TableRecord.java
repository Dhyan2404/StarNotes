package org.apache.poi.hssf.record;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.TableRecord;
import org.apache.poi.hssf.util.CellRangeAddress8Bit;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class TableRecord extends SharedValueRecordBase {
    public static final short sid = 566;
    private int field_10_colInputCol;
    private int field_5_flags;
    private int field_6_res;
    private int field_7_rowInputRow;
    private int field_8_colInputRow;
    private int field_9_rowInputCol;
    private static final BitField alwaysCalc = BitFieldFactory.getInstance(1);
    private static final BitField calcOnOpen = BitFieldFactory.getInstance(2);
    private static final BitField rowOrColInpCell = BitFieldFactory.getInstance(4);
    private static final BitField oneOrTwoVar = BitFieldFactory.getInstance(8);
    private static final BitField rowDeleted = BitFieldFactory.getInstance(16);
    private static final BitField colDeleted = BitFieldFactory.getInstance(32);

    public TableRecord(TableRecord tableRecord) {
        super(tableRecord);
        this.field_5_flags = tableRecord.field_5_flags;
        this.field_6_res = tableRecord.field_6_res;
        this.field_7_rowInputRow = tableRecord.field_7_rowInputRow;
        this.field_8_colInputRow = tableRecord.field_8_colInputRow;
        this.field_9_rowInputCol = tableRecord.field_9_rowInputCol;
        this.field_10_colInputCol = tableRecord.field_10_colInputCol;
    }

    /* renamed from: cr */
    private static CellReference m69152cr(int i, int i2) {
        return new CellReference(i, i2 & 255, (32768 & i2) == 0, (i2 & 16384) == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.field_6_res);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return m69152cr(this.field_7_rowInputRow, this.field_8_colInputRow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return m69152cr(this.field_9_rowInputCol, this.field_10_colInputCol);
    }

    public int getColInputCol() {
        return this.field_10_colInputCol;
    }

    public int getColInputRow() {
        return this.field_8_colInputRow;
    }

    @Override // org.apache.poi.hssf.record.SharedValueRecordBase
    public int getExtraDataSize() {
        return 10;
    }

    public int getFlags() {
        return this.field_5_flags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(SessionDescription.f26441q, new Supplier() { // from class: com.sunia.HTREnginev2.l8n
            @Override // java.util.function.Supplier
            public final Object get() {
                return TableRecord.this.getRange();
            }
        }, "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.m8n
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TableRecord.this.getFlags());
            }
        }, new BitField[]{alwaysCalc, calcOnOpen, rowOrColInpCell, oneOrTwoVar, rowDeleted, colDeleted}, new String[]{"ALWAYS_CALC", "CALC_ON_OPEN", "ROW_OR_COL_INP_CELL", "ONE_OR_TWO_VAR", "ROW_DELETED", "COL_DELETED"}), "reserved", new Supplier() { // from class: com.sunia.HTREnginev2.n8n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = TableRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "rowInput", new Supplier() { // from class: com.sunia.HTREnginev2.o8n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = TableRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "colInput", new Supplier() { // from class: com.sunia.HTREnginev2.p8n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = TableRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
    }

    public int getRowInputCol() {
        return this.field_9_rowInputCol;
    }

    public int getRowInputRow() {
        return this.field_7_rowInputRow;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isAlwaysCalc() {
        return alwaysCalc.isSet(this.field_5_flags);
    }

    public boolean isColDeleted() {
        return colDeleted.isSet(this.field_5_flags);
    }

    public boolean isOneNotTwoVar() {
        return oneOrTwoVar.isSet(this.field_5_flags);
    }

    public boolean isRowDeleted() {
        return rowDeleted.isSet(this.field_5_flags);
    }

    public boolean isRowOrColInpCell() {
        return rowOrColInpCell.isSet(this.field_5_flags);
    }

    @Override // org.apache.poi.hssf.record.SharedValueRecordBase
    public void serializeExtraData(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(this.field_5_flags);
        littleEndianOutput.writeByte(this.field_6_res);
        littleEndianOutput.writeShort(this.field_7_rowInputRow);
        littleEndianOutput.writeShort(this.field_8_colInputRow);
        littleEndianOutput.writeShort(this.field_9_rowInputCol);
        littleEndianOutput.writeShort(this.field_10_colInputCol);
    }

    public void setAlwaysCalc(boolean z) {
        this.field_5_flags = alwaysCalc.setBoolean(this.field_5_flags, z);
    }

    public void setColDeleted(boolean z) {
        this.field_5_flags = colDeleted.setBoolean(this.field_5_flags, z);
    }

    public void setColInputCol(int i) {
        this.field_10_colInputCol = i;
    }

    public void setColInputRow(int i) {
        this.field_8_colInputRow = i;
    }

    public void setFlags(int i) {
        this.field_5_flags = i;
    }

    public void setOneNotTwoVar(boolean z) {
        this.field_5_flags = oneOrTwoVar.setBoolean(this.field_5_flags, z);
    }

    public void setRowDeleted(boolean z) {
        this.field_5_flags = rowDeleted.setBoolean(this.field_5_flags, z);
    }

    public void setRowInputCol(int i) {
        this.field_9_rowInputCol = i;
    }

    public void setRowInputRow(int i) {
        this.field_7_rowInputRow = i;
    }

    public void setRowOrColInpCell(boolean z) {
        this.field_5_flags = rowOrColInpCell.setBoolean(this.field_5_flags, z);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.TABLE;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public TableRecord copy() {
        return new TableRecord(this);
    }

    public TableRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
        this.field_5_flags = recordInputStream.readByte();
        this.field_6_res = recordInputStream.readByte();
        this.field_7_rowInputRow = recordInputStream.readShort();
        this.field_8_colInputRow = recordInputStream.readShort();
        this.field_9_rowInputCol = recordInputStream.readShort();
        this.field_10_colInputCol = recordInputStream.readShort();
    }

    public TableRecord(CellRangeAddress8Bit cellRangeAddress8Bit) {
        super(cellRangeAddress8Bit);
        this.field_6_res = 0;
    }
}
