package org.apache.poi.hssf.record;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.NameCommentRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class NameCommentRecord extends StandardRecord {
    public static final short sid = 2196;
    private final short field_1_record_type;
    private final short field_2_frt_cell_ref_flag;
    private final long field_3_reserved;
    private String field_6_name_text;
    private String field_7_comment_text;

    public NameCommentRecord(NameCommentRecord nameCommentRecord) {
        this.field_1_record_type = nameCommentRecord.field_1_record_type;
        this.field_2_frt_cell_ref_flag = nameCommentRecord.field_2_frt_cell_ref_flag;
        this.field_3_reserved = nameCommentRecord.field_3_reserved;
        this.field_6_name_text = nameCommentRecord.field_6_name_text;
        this.field_7_comment_text = nameCommentRecord.field_7_comment_text;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Short.valueOf(this.field_2_frt_cell_ref_flag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Long.valueOf(this.field_3_reserved);
    }

    public String getCommentText() {
        return this.field_7_comment_text;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        int length = (StringUtil.hasMultibyte(this.field_6_name_text) ? this.field_6_name_text.length() * 2 : this.field_6_name_text.length()) + 18;
        boolean hasMultibyte = StringUtil.hasMultibyte(this.field_7_comment_text);
        int length2 = this.field_7_comment_text.length();
        if (hasMultibyte) {
            length2 *= 2;
        }
        return length + length2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(CouchFieldKey.KEY_RECORD_TYPE, new Supplier() { // from class: com.sunia.HTREnginev2.brj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(NameCommentRecord.this.getRecordType());
            }
        }, "frtCellRefFlag", new Supplier() { // from class: com.sunia.HTREnginev2.crj
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = NameCommentRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "reserved", new Supplier() { // from class: com.sunia.HTREnginev2.drj
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = NameCommentRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "name", new Supplier() { // from class: com.sunia.HTREnginev2.erj
            @Override // java.util.function.Supplier
            public final Object get() {
                return NameCommentRecord.this.getNameText();
            }
        }, "comment", new Supplier() { // from class: com.sunia.HTREnginev2.frj
            @Override // java.util.function.Supplier
            public final Object get() {
                return NameCommentRecord.this.getCommentText();
            }
        });
    }

    public String getNameText() {
        return this.field_6_name_text;
    }

    public short getRecordType() {
        return this.field_1_record_type;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        int length = this.field_6_name_text.length();
        int length2 = this.field_7_comment_text.length();
        littleEndianOutput.writeShort(this.field_1_record_type);
        littleEndianOutput.writeShort(this.field_2_frt_cell_ref_flag);
        littleEndianOutput.writeLong(this.field_3_reserved);
        littleEndianOutput.writeShort(length);
        littleEndianOutput.writeShort(length2);
        boolean hasMultibyte = StringUtil.hasMultibyte(this.field_6_name_text);
        littleEndianOutput.writeByte(hasMultibyte ? 1 : 0);
        if (hasMultibyte) {
            StringUtil.putUnicodeLE(this.field_6_name_text, littleEndianOutput);
        } else {
            StringUtil.putCompressedUnicode(this.field_6_name_text, littleEndianOutput);
        }
        boolean hasMultibyte2 = StringUtil.hasMultibyte(this.field_7_comment_text);
        littleEndianOutput.writeByte(hasMultibyte2 ? 1 : 0);
        if (hasMultibyte2) {
            StringUtil.putUnicodeLE(this.field_7_comment_text, littleEndianOutput);
        } else {
            StringUtil.putCompressedUnicode(this.field_7_comment_text, littleEndianOutput);
        }
    }

    public void setCommentText(String str) {
        this.field_7_comment_text = str;
    }

    public void setNameText(String str) {
        this.field_6_name_text = str;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.NAME_COMMENT;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public NameCommentRecord copy() {
        return new NameCommentRecord(this);
    }

    public NameCommentRecord(String str, String str2) {
        this.field_1_record_type = (short) 0;
        this.field_2_frt_cell_ref_flag = (short) 0;
        this.field_3_reserved = 0L;
        this.field_6_name_text = str;
        this.field_7_comment_text = str2;
    }

    public NameCommentRecord(RecordInputStream recordInputStream) {
        this.field_1_record_type = recordInputStream.readShort();
        this.field_2_frt_cell_ref_flag = recordInputStream.readShort();
        this.field_3_reserved = recordInputStream.readLong();
        short readShort = recordInputStream.readShort();
        short readShort2 = recordInputStream.readShort();
        if (recordInputStream.readByte() == 0) {
            this.field_6_name_text = StringUtil.readCompressedUnicode(recordInputStream, readShort);
        } else {
            this.field_6_name_text = StringUtil.readUnicodeLE(recordInputStream, readShort);
        }
        if (recordInputStream.readByte() == 0) {
            this.field_7_comment_text = StringUtil.readCompressedUnicode(recordInputStream, readShort2);
        } else {
            this.field_7_comment_text = StringUtil.readUnicodeLE(recordInputStream, readShort2);
        }
    }
}
