package org.apache.poi.hssf.record;

import androidx.core.app.NotificationCompat;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.NoteRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class NoteRecord extends StandardRecord {
    public static final short NOTE_HIDDEN = 0;
    public static final short NOTE_VISIBLE = 2;
    public static final short sid = 28;
    private int field_1_row;
    private int field_2_col;
    private short field_3_flags;
    private int field_4_shapeid;
    private boolean field_5_hasMultibyte;
    private String field_6_author;
    private Byte field_7_padding;
    public static final NoteRecord[] EMPTY_ARRAY = new NoteRecord[0];
    private static final Byte DEFAULT_PADDING = (byte) 0;

    public NoteRecord() {
        this.field_6_author = "";
        this.field_3_flags = (short) 0;
        this.field_7_padding = DEFAULT_PADDING;
    }

    public boolean authorIsMultibyte() {
        return this.field_5_hasMultibyte;
    }

    public String getAuthor() {
        return this.field_6_author;
    }

    public int getColumn() {
        return this.field_2_col;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this.field_6_author.length() * (this.field_5_hasMultibyte ? 2 : 1)) + 11 + (this.field_7_padding == null ? 0 : 1);
    }

    public short getFlags() {
        return this.field_3_flags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.y0k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(NoteRecord.this.getRow());
            }
        }, "column", new Supplier() { // from class: com.sunia.HTREnginev2.z0k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(NoteRecord.this.getColumn());
            }
        }, "flags", new Supplier() { // from class: com.sunia.HTREnginev2.a1k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(NoteRecord.this.getFlags());
            }
        }, "shapeId", new Supplier() { // from class: com.sunia.HTREnginev2.b1k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(NoteRecord.this.getShapeId());
            }
        }, NotificationCompat.CarExtender.f4973i, new Supplier() { // from class: com.sunia.HTREnginev2.c1k
            @Override // java.util.function.Supplier
            public final Object get() {
                return NoteRecord.this.getAuthor();
            }
        });
    }

    public int getRow() {
        return this.field_1_row;
    }

    public int getShapeId() {
        return this.field_4_shapeid;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 28;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_row);
        littleEndianOutput.writeShort(this.field_2_col);
        littleEndianOutput.writeShort(this.field_3_flags);
        littleEndianOutput.writeShort(this.field_4_shapeid);
        littleEndianOutput.writeShort(this.field_6_author.length());
        littleEndianOutput.writeByte(this.field_5_hasMultibyte ? 1 : 0);
        if (this.field_5_hasMultibyte) {
            StringUtil.putUnicodeLE(this.field_6_author, littleEndianOutput);
        } else {
            StringUtil.putCompressedUnicode(this.field_6_author, littleEndianOutput);
        }
        Byte b = this.field_7_padding;
        if (b != null) {
            littleEndianOutput.writeByte(b.intValue());
        }
    }

    public void setAuthor(String str) {
        this.field_6_author = str;
        this.field_5_hasMultibyte = StringUtil.hasMultibyte(str);
    }

    public void setColumn(int i) {
        this.field_2_col = i;
    }

    public void setFlags(short s) {
        this.field_3_flags = s;
    }

    public void setRow(int i) {
        this.field_1_row = i;
    }

    public void setShapeId(int i) {
        this.field_4_shapeid = i;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.NOTE;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public NoteRecord copy() {
        return new NoteRecord(this);
    }

    public NoteRecord(NoteRecord noteRecord) {
        super(noteRecord);
        this.field_1_row = noteRecord.field_1_row;
        this.field_2_col = noteRecord.field_2_col;
        this.field_3_flags = noteRecord.field_3_flags;
        this.field_4_shapeid = noteRecord.field_4_shapeid;
        this.field_5_hasMultibyte = noteRecord.field_5_hasMultibyte;
        this.field_6_author = noteRecord.field_6_author;
        this.field_7_padding = noteRecord.field_7_padding;
    }

    public NoteRecord(RecordInputStream recordInputStream) {
        this.field_1_row = recordInputStream.readUShort();
        this.field_2_col = recordInputStream.readShort();
        this.field_3_flags = recordInputStream.readShort();
        this.field_4_shapeid = recordInputStream.readUShort();
        short readShort = recordInputStream.readShort();
        boolean z = recordInputStream.readByte() != 0;
        this.field_5_hasMultibyte = z;
        if (z) {
            this.field_6_author = StringUtil.readUnicodeLE(recordInputStream, readShort);
        } else {
            this.field_6_author = StringUtil.readCompressedUnicode(recordInputStream, readShort);
        }
        if (recordInputStream.available() == 1) {
            this.field_7_padding = Byte.valueOf(recordInputStream.readByte());
        } else if (recordInputStream.available() == 2 && readShort == 0) {
            this.field_7_padding = Byte.valueOf(recordInputStream.readByte());
            recordInputStream.readByte();
        }
    }
}
