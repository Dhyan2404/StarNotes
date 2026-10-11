package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hssf.record.OldLabelRecord;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class OldLabelRecord extends OldCellRecord {
    private static final Logger LOG = LogManager.getLogger((Class<?>) OldLabelRecord.class);
    public static final short biff2_sid = 4;
    public static final short biff345_sid = 516;
    private CodepageRecord codepage;
    private short field_4_string_len;
    private final byte[] field_5_bytes;

    public OldLabelRecord(RecordInputStream recordInputStream) {
        super(recordInputStream, recordInputStream.getSid() == 4);
        if (isBiff2()) {
            this.field_4_string_len = (short) recordInputStream.readUByte();
        } else {
            this.field_4_string_len = recordInputStream.readShort();
        }
        byte[] safelyAllocate = IOUtils.safelyAllocate(this.field_4_string_len, HSSFWorkbook.getMaxRecordLength());
        this.field_5_bytes = safelyAllocate;
        recordInputStream.read(safelyAllocate, 0, this.field_4_string_len);
        if (recordInputStream.remaining() > 0) {
            LOG.atInfo().log("LabelRecord data remains: {} : {}", Unbox.box(recordInputStream.remaining()), HexDump.toHex(recordInputStream.readRemainder()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.hssf.record.OldCellRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.xfk
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = OldLabelRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "stringLength", new Supplier() { // from class: com.sunia.HTREnginev2.yfk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(OldLabelRecord.this.getStringLength());
            }
        }, "value", new Supplier() { // from class: com.sunia.HTREnginev2.zfk
            @Override // java.util.function.Supplier
            public final Object get() {
                return OldLabelRecord.this.getValue();
            }
        });
    }

    public int getRecordSize() {
        throw new RecordFormatException("Old Label Records are supported READ ONLY");
    }

    public short getStringLength() {
        return this.field_4_string_len;
    }

    public String getValue() {
        return OldStringRecord.getString(this.field_5_bytes, this.codepage);
    }

    public int serialize(int i, byte[] bArr) {
        throw new RecordFormatException("Old Label Records are supported READ ONLY");
    }

    public void setCodePage(CodepageRecord codepageRecord) {
        this.codepage = codepageRecord;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.LABEL;
    }
}
