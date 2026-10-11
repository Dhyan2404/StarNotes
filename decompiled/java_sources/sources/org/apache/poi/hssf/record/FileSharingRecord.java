package org.apache.poi.hssf.record;

import com.couchbase.lite.internal.core.C4Replicator;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.FileSharingRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class FileSharingRecord extends StandardRecord {
    public static final short sid = 91;
    private short field_1_readonly;
    private short field_2_password;
    private byte field_3_username_unicode_options;
    private String field_3_username_value;

    public FileSharingRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        int length = this.field_3_username_value.length();
        if (length < 1) {
            return 6;
        }
        return length + 7;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("readOnly", new Supplier() { // from class: com.sunia.HTREnginev2.lhg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FileSharingRecord.this.getReadOnly());
            }
        }, "password", new Supplier() { // from class: com.sunia.HTREnginev2.mhg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FileSharingRecord.this.getPassword());
            }
        }, C4Replicator.REPLICATOR_AUTH_USER_NAME, new Supplier() { // from class: com.sunia.HTREnginev2.nhg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FileSharingRecord.this.getUsername();
            }
        });
    }

    public short getPassword() {
        return this.field_2_password;
    }

    public short getReadOnly() {
        return this.field_1_readonly;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 91;
    }

    public String getUsername() {
        return this.field_3_username_value;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getReadOnly());
        littleEndianOutput.writeShort(getPassword());
        littleEndianOutput.writeShort(this.field_3_username_value.length());
        if (this.field_3_username_value.length() > 0) {
            littleEndianOutput.writeByte(this.field_3_username_unicode_options);
            StringUtil.putCompressedUnicode(getUsername(), littleEndianOutput);
        }
    }

    public void setPassword(short s) {
        this.field_2_password = s;
    }

    public void setReadOnly(short s) {
        this.field_1_readonly = s;
    }

    public void setUsername(String str) {
        this.field_3_username_value = str;
    }

    public FileSharingRecord(FileSharingRecord fileSharingRecord) {
        super(fileSharingRecord);
        this.field_1_readonly = fileSharingRecord.field_1_readonly;
        this.field_2_password = fileSharingRecord.field_2_password;
        this.field_3_username_unicode_options = fileSharingRecord.field_3_username_unicode_options;
        this.field_3_username_value = fileSharingRecord.field_3_username_value;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.FILE_SHARING;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public FileSharingRecord copy() {
        return new FileSharingRecord(this);
    }

    public FileSharingRecord(RecordInputStream recordInputStream) {
        this.field_1_readonly = recordInputStream.readShort();
        this.field_2_password = recordInputStream.readShort();
        short readShort = recordInputStream.readShort();
        if (readShort > 0) {
            this.field_3_username_unicode_options = recordInputStream.readByte();
            this.field_3_username_value = recordInputStream.readCompressedUnicode(readShort);
        } else {
            this.field_3_username_value = "";
        }
    }
}
