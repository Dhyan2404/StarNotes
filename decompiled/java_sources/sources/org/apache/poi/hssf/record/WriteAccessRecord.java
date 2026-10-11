package org.apache.poi.hssf.record;

import com.couchbase.lite.internal.core.C4Replicator;
import com.google.android.material.motion.MotionUtils;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.WriteAccessRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class WriteAccessRecord extends StandardRecord {
    private static final int DATA_SIZE = 112;
    private static final byte[] PADDING;
    private static final byte PAD_CHAR = 32;
    private static final int STRING_SIZE = 109;
    private static final BitField UTF16FLAG = BitFieldFactory.getInstance(1);
    public static final short sid = 92;
    private String field_1_username;

    static {
        byte[] bArr = new byte[109];
        PADDING = bArr;
        Arrays.fill(bArr, (byte) 32);
    }

    public WriteAccessRecord() {
        setUsername("");
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 112;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(C4Replicator.REPLICATOR_AUTH_USER_NAME, new Supplier() { // from class: com.sunia.HTREnginev2.cbo
            @Override // java.util.function.Supplier
            public final Object get() {
                return WriteAccessRecord.this.getUsername();
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 92;
    }

    public String getUsername() {
        return this.field_1_username;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        String username = getUsername();
        boolean hasMultibyte = StringUtil.hasMultibyte(username);
        littleEndianOutput.writeShort(username.length());
        littleEndianOutput.writeByte(hasMultibyte ? 1 : 0);
        byte[] bArr = (byte[]) PADDING.clone();
        if (hasMultibyte) {
            StringUtil.putUnicodeLE(username, bArr, 0);
        } else {
            StringUtil.putCompressedUnicode(username, bArr, 0);
        }
        littleEndianOutput.write(bArr);
    }

    public void setUsername(String str) {
        if (str.length() * (StringUtil.hasMultibyte(str) ? 2 : 1) <= 109) {
            this.field_1_username = str;
            return;
        }
        throw new IllegalArgumentException("Name is too long: " + str);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.WRITE_ACCESS;
    }

    public WriteAccessRecord(WriteAccessRecord writeAccessRecord) {
        super(writeAccessRecord);
        this.field_1_username = writeAccessRecord.field_1_username;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public WriteAccessRecord copy() {
        return new WriteAccessRecord(this);
    }

    public WriteAccessRecord(RecordInputStream recordInputStream) {
        byte[] safelyAllocate;
        Charset charset;
        int i;
        if (recordInputStream.remaining() <= 112) {
            int readUShort = recordInputStream.readUShort();
            int readUByte = recordInputStream.readUByte();
            if (readUShort <= 109 && (readUByte & 254) == 0) {
                safelyAllocate = IOUtils.safelyAllocate(recordInputStream.remaining(), 109);
                recordInputStream.readFully(safelyAllocate);
                if (UTF16FLAG.isSet(readUByte)) {
                    i = Math.min(readUShort * 2, safelyAllocate.length);
                    charset = StandardCharsets.UTF_16LE;
                } else {
                    i = Math.min(readUShort, safelyAllocate.length);
                    charset = StandardCharsets.ISO_8859_1;
                }
            } else if (recordInputStream.isEncrypted()) {
                safelyAllocate = IOUtils.safelyAllocate(recordInputStream.remaining(), 109);
                recordInputStream.readPlain(safelyAllocate, 0, safelyAllocate.length);
                i = safelyAllocate.length;
                while (i > 0 && safelyAllocate[i - 1] == 32) {
                    i--;
                }
                charset = (safelyAllocate.length <= 1 || safelyAllocate[1] != 0) ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_16LE;
            } else {
                int remaining = recordInputStream.remaining() + 3;
                safelyAllocate = IOUtils.safelyAllocate(remaining, 112);
                LittleEndian.putUShort(safelyAllocate, 0, readUShort);
                LittleEndian.putByte(safelyAllocate, 2, readUByte);
                recordInputStream.readFully(safelyAllocate, 3, remaining - 3);
                charset = StandardCharsets.UTF_8;
                i = remaining;
            }
            setUsername(new String(safelyAllocate, 0, i, charset).trim());
            return;
        }
        throw new RecordFormatException("Expected data size (112) but got (" + recordInputStream.remaining() + MotionUtils.f31762d);
    }
}
