package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hssf.record.FormatRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class FormatRecord extends StandardRecord {
    private static final Logger LOG = LogManager.getLogger((Class<?>) FormatRecord.class);
    public static final short sid = 1054;
    private final int field_1_index_code;
    private final boolean field_3_hasMultibyte;
    private final String field_4_formatstring;

    private FormatRecord(FormatRecord formatRecord) {
        super(formatRecord);
        this.field_1_index_code = formatRecord.field_1_index_code;
        this.field_3_hasMultibyte = formatRecord.field_3_hasMultibyte;
        this.field_4_formatstring = formatRecord.field_4_formatstring;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Boolean.valueOf(this.field_3_hasMultibyte);
    }

    private static String readStringCommon(RecordInputStream recordInputStream, int i, boolean z) {
        if (i < 0 || i > 1048576) {
            throw new IllegalArgumentException("Bad requested string length (" + i + MotionUtils.f31762d);
        }
        int remaining = recordInputStream.remaining();
        if (!z) {
            remaining /= 2;
        }
        char[] cArr = i == remaining ? new char[i] : new char[remaining];
        for (int i2 = 0; i2 < cArr.length; i2++) {
            cArr[i2] = (char) (z ? recordInputStream.readUByte() : recordInputStream.readShort());
        }
        if (recordInputStream.available() == 1) {
            char[] copyOf = Arrays.copyOf(cArr, cArr.length + 1);
            copyOf[cArr.length] = (char) recordInputStream.readUByte();
            cArr = copyOf;
        }
        if (recordInputStream.available() > 0) {
            LOG.atInfo().log("FormatRecord has {} unexplained bytes. Silently skipping", Unbox.box(recordInputStream.available()));
            while (recordInputStream.available() > 0) {
                recordInputStream.readByte();
            }
        }
        return new String(cArr);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (getFormatString().length() * (this.field_3_hasMultibyte ? 2 : 1)) + 5;
    }

    public String getFormatString() {
        return this.field_4_formatstring;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("indexCode", new Supplier() { // from class: com.sunia.HTREnginev2.htg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FormatRecord.this.getIndexCode());
            }
        }, "unicode", new Supplier() { // from class: com.sunia.HTREnginev2.itg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = FormatRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "formatString", new Supplier() { // from class: com.sunia.HTREnginev2.jtg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FormatRecord.this.getFormatString();
            }
        });
    }

    public int getIndexCode() {
        return this.field_1_index_code;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        String formatString = getFormatString();
        littleEndianOutput.writeShort(getIndexCode());
        littleEndianOutput.writeShort(formatString.length());
        littleEndianOutput.writeByte(this.field_3_hasMultibyte ? 1 : 0);
        if (this.field_3_hasMultibyte) {
            StringUtil.putUnicodeLE(formatString, littleEndianOutput);
        } else {
            StringUtil.putCompressedUnicode(formatString, littleEndianOutput);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.FORMAT;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public FormatRecord copy() {
        return new FormatRecord(this);
    }

    public FormatRecord(int i, String str) {
        this.field_1_index_code = i;
        this.field_4_formatstring = str;
        this.field_3_hasMultibyte = StringUtil.hasMultibyte(str);
    }

    public FormatRecord(RecordInputStream recordInputStream) {
        this.field_1_index_code = recordInputStream.readShort();
        int readUShort = recordInputStream.readUShort();
        boolean z = (recordInputStream.readByte() & 1) != 0;
        this.field_3_hasMultibyte = z;
        if (z) {
            this.field_4_formatstring = readStringCommon(recordInputStream, readUShort, false);
        } else {
            this.field_4_formatstring = readStringCommon(recordInputStream, readUShort, true);
        }
    }
}
