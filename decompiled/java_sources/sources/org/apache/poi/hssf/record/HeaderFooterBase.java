package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HeaderFooterBase;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public abstract class HeaderFooterBase extends StandardRecord {
    private boolean field_2_hasMultibyte;
    private String field_3_text;

    public HeaderFooterBase(String str) {
        setText(str);
    }

    private int getTextLength() {
        return this.field_3_text.length();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public abstract HeaderFooterBase copy();

    @Override // org.apache.poi.hssf.record.StandardRecord
    public final int getDataSize() {
        if (getTextLength() < 1) {
            return 0;
        }
        return (getTextLength() * (this.field_2_hasMultibyte ? 2 : 1)) + 3;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("text", new Supplier() { // from class: com.sunia.HTREnginev2.rfh
            @Override // java.util.function.Supplier
            public final Object get() {
                return HeaderFooterBase.this.getText();
            }
        });
    }

    public final String getText() {
        return this.field_3_text;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public final void serialize(LittleEndianOutput littleEndianOutput) {
        if (getTextLength() > 0) {
            littleEndianOutput.writeShort(getTextLength());
            littleEndianOutput.writeByte(this.field_2_hasMultibyte ? 1 : 0);
            if (this.field_2_hasMultibyte) {
                StringUtil.putUnicodeLE(this.field_3_text, littleEndianOutput);
            } else {
                StringUtil.putCompressedUnicode(this.field_3_text, littleEndianOutput);
            }
        }
    }

    public final void setText(String str) {
        if (str == null) {
            throw new IllegalArgumentException("text must not be null");
        }
        this.field_2_hasMultibyte = StringUtil.hasMultibyte(str);
        this.field_3_text = str;
        if (getDataSize() > 8224) {
            throw new IllegalArgumentException("Header/Footer string too long (limit is 8224 bytes)");
        }
    }

    public HeaderFooterBase(HeaderFooterBase headerFooterBase) {
        super(headerFooterBase);
        this.field_2_hasMultibyte = headerFooterBase.field_2_hasMultibyte;
        this.field_3_text = headerFooterBase.field_3_text;
    }

    public HeaderFooterBase(RecordInputStream recordInputStream) {
        if (recordInputStream.remaining() > 0) {
            short readShort = recordInputStream.readShort();
            if (readShort == 0) {
                this.field_3_text = "";
                if (recordInputStream.remaining() == 0) {
                    return;
                }
            }
            boolean z = recordInputStream.readByte() != 0;
            this.field_2_hasMultibyte = z;
            if (z) {
                this.field_3_text = recordInputStream.readUnicodeLEString(readShort);
                return;
            } else {
                this.field_3_text = recordInputStream.readCompressedUnicode(readShort);
                return;
            }
        }
        this.field_3_text = "";
    }
}
