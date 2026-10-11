package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hssf.record.EmbeddedObjectRefSubRecord;
import org.apache.poi.hssf.record.SubRecord;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.formula.ptg.Area3DPtg;
import org.apache.poi.ss.formula.ptg.AreaPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.Ref3DPtg;
import org.apache.poi.ss.formula.ptg.RefPtg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class EmbeddedObjectRefSubRecord extends SubRecord {
    public static final short sid = 9;
    private int field_1_unknown_int;
    private Ptg field_2_refPtg;
    private byte[] field_2_unknownFormulaData;
    private boolean field_3_unicode_flag;
    private String field_4_ole_classname;
    private Byte field_4_unknownByte;
    private Integer field_5_stream_id;
    private byte[] field_6_unknown;
    private static final Logger LOG = LogManager.getLogger((Class<?>) EmbeddedObjectRefSubRecord.class);
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

    public EmbeddedObjectRefSubRecord() {
        this.field_2_unknownFormulaData = new byte[]{2, 108, 106, 22, 1};
        this.field_6_unknown = EMPTY_BYTE_ARRAY;
        this.field_4_ole_classname = null;
    }

    private int getDataSize(int i) {
        int i2 = i + 2;
        if (this.field_5_stream_id != null) {
            i2 += 4;
        }
        return i2 + this.field_6_unknown.length;
    }

    private int getStreamIDOffset(int i) {
        int i2 = i + 6;
        String str = this.field_4_ole_classname;
        if (str != null) {
            i2 += 3;
            int length = str.length();
            if (length > 0) {
                int i3 = i2 + 1;
                if (this.field_3_unicode_flag) {
                    length *= 2;
                }
                i2 = i3 + length;
            }
        }
        return i2 % 2 != 0 ? i2 + 1 : i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.field_1_unknown_int);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return this.field_2_unknownFormulaData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return this.field_2_refPtg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Boolean.valueOf(this.field_3_unicode_flag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return this.field_4_ole_classname;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return this.field_4_unknownByte;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$6() {
        return this.field_5_stream_id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$7() {
        return this.field_6_unknown;
    }

    private static byte[] readRawData(LittleEndianInput littleEndianInput, int i) {
        if (i >= 0) {
            if (i == 0) {
                return EMPTY_BYTE_ARRAY;
            }
            byte[] safelyAllocate = IOUtils.safelyAllocate(i, HSSFWorkbook.getMaxRecordLength());
            littleEndianInput.readFully(safelyAllocate);
            return safelyAllocate;
        }
        throw new IllegalArgumentException("Negative size (" + i + MotionUtils.f31762d);
    }

    private static Ptg readRefPtg(byte[] bArr) {
        try {
            LittleEndianInputStream littleEndianInputStream = new LittleEndianInputStream(new UnsynchronizedByteArrayInputStream(bArr));
            try {
                byte readByte = littleEndianInputStream.readByte();
                if (readByte == 36) {
                    RefPtg refPtg = new RefPtg(littleEndianInputStream);
                    littleEndianInputStream.close();
                    return refPtg;
                }
                if (readByte == 37) {
                    AreaPtg areaPtg = new AreaPtg(littleEndianInputStream);
                    littleEndianInputStream.close();
                    return areaPtg;
                }
                if (readByte == 58) {
                    Ref3DPtg ref3DPtg = new Ref3DPtg(littleEndianInputStream);
                    littleEndianInputStream.close();
                    return ref3DPtg;
                }
                if (readByte != 59) {
                    littleEndianInputStream.close();
                    return null;
                }
                Area3DPtg area3DPtg = new Area3DPtg(littleEndianInputStream);
                littleEndianInputStream.close();
                return area3DPtg;
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException("Unexpected exception in readRefPtg", e);
        }
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("f2unknown", new Supplier() { // from class: com.sunia.HTREnginev2.eof
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EmbeddedObjectRefSubRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "f3unknown", new Supplier() { // from class: com.sunia.HTREnginev2.fof
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = EmbeddedObjectRefSubRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "formula", new Supplier() { // from class: com.sunia.HTREnginev2.gof
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = EmbeddedObjectRefSubRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "unicodeFlag", new Supplier() { // from class: com.sunia.HTREnginev2.hof
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = EmbeddedObjectRefSubRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "oleClassname", new Supplier() { // from class: com.sunia.HTREnginev2.iof
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = EmbeddedObjectRefSubRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        }, "f4unknown", new Supplier() { // from class: com.sunia.HTREnginev2.jof
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = EmbeddedObjectRefSubRecord.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        }, "streamId", new Supplier() { // from class: com.sunia.HTREnginev2.kof
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$6;
                lambda$getGenericProperties$6 = EmbeddedObjectRefSubRecord.this.lambda$getGenericProperties$6();
                return lambda$getGenericProperties$6;
            }
        }, "f7unknown", new Supplier() { // from class: com.sunia.HTREnginev2.lof
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$7;
                lambda$getGenericProperties$7 = EmbeddedObjectRefSubRecord.this.lambda$getGenericProperties$7();
                return lambda$getGenericProperties$7;
            }
        });
    }

    public String getOLEClassName() {
        return this.field_4_ole_classname;
    }

    public byte[] getObjectData() {
        return this.field_6_unknown;
    }

    public short getSid() {
        return (short) 9;
    }

    public Integer getStreamId() {
        return this.field_5_stream_id;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        Ptg ptg = this.field_2_refPtg;
        int length = ptg == null ? this.field_2_unknownFormulaData.length : ptg.getSize();
        int streamIDOffset = getStreamIDOffset(length);
        int dataSize = getDataSize(streamIDOffset);
        littleEndianOutput.writeShort(9);
        littleEndianOutput.writeShort(dataSize);
        littleEndianOutput.writeShort(streamIDOffset);
        littleEndianOutput.writeShort(length);
        littleEndianOutput.writeInt(this.field_1_unknown_int);
        Ptg ptg2 = this.field_2_refPtg;
        if (ptg2 == null) {
            littleEndianOutput.write(this.field_2_unknownFormulaData);
        } else {
            ptg2.write(littleEndianOutput);
        }
        int i = length + 12;
        if (this.field_4_ole_classname != null) {
            littleEndianOutput.writeByte(3);
            int length2 = this.field_4_ole_classname.length();
            littleEndianOutput.writeShort(length2);
            i = i + 1 + 2;
            if (length2 > 0) {
                littleEndianOutput.writeByte(this.field_3_unicode_flag ? 1 : 0);
                int i2 = i + 1;
                if (this.field_3_unicode_flag) {
                    StringUtil.putUnicodeLE(this.field_4_ole_classname, littleEndianOutput);
                    length2 *= 2;
                } else {
                    StringUtil.putCompressedUnicode(this.field_4_ole_classname, littleEndianOutput);
                }
                i = i2 + length2;
            }
        }
        int i3 = streamIDOffset - (i - 6);
        if (i3 != 0) {
            if (i3 != 1) {
                throw new IllegalStateException("Bad padding calculation (" + streamIDOffset + ", " + i + MotionUtils.f31762d);
            }
            Byte b = this.field_4_unknownByte;
            littleEndianOutput.writeByte(b == null ? 0 : b.intValue());
        }
        Integer num = this.field_5_stream_id;
        if (num != null) {
            littleEndianOutput.writeInt(num.intValue());
        }
        littleEndianOutput.write(this.field_6_unknown);
    }

    public void setOleClassname(String str) {
        this.field_4_ole_classname = str;
    }

    public void setStorageId(int i) {
        this.field_5_stream_id = Integer.valueOf(i);
    }

    public void setUnknownFormulaData(byte[] bArr) {
        this.field_2_unknownFormulaData = bArr;
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.usermodel.GenericRecord
    public SubRecord.SubRecordTypes getGenericRecordType() {
        return SubRecord.SubRecordTypes.EMBEDDED_OBJECT_REF;
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.Duplicatable
    public EmbeddedObjectRefSubRecord copy() {
        return new EmbeddedObjectRefSubRecord(this);
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public int getDataSize() {
        Ptg ptg = this.field_2_refPtg;
        return getDataSize(getStreamIDOffset(ptg == null ? this.field_2_unknownFormulaData.length : ptg.getSize()));
    }

    public EmbeddedObjectRefSubRecord(EmbeddedObjectRefSubRecord embeddedObjectRefSubRecord) {
        super(embeddedObjectRefSubRecord);
        this.field_1_unknown_int = embeddedObjectRefSubRecord.field_1_unknown_int;
        Ptg ptg = embeddedObjectRefSubRecord.field_2_refPtg;
        this.field_2_refPtg = ptg == null ? null : ptg.copy();
        byte[] bArr = embeddedObjectRefSubRecord.field_2_unknownFormulaData;
        this.field_2_unknownFormulaData = bArr == null ? null : (byte[]) bArr.clone();
        this.field_3_unicode_flag = embeddedObjectRefSubRecord.field_3_unicode_flag;
        this.field_4_ole_classname = embeddedObjectRefSubRecord.field_4_ole_classname;
        this.field_4_unknownByte = embeddedObjectRefSubRecord.field_4_unknownByte;
        this.field_5_stream_id = embeddedObjectRefSubRecord.field_5_stream_id;
        byte[] bArr2 = embeddedObjectRefSubRecord.field_6_unknown;
        this.field_6_unknown = bArr2 != null ? (byte[]) bArr2.clone() : null;
    }

    public EmbeddedObjectRefSubRecord(LittleEndianInput littleEndianInput, int i) {
        this(littleEndianInput, i, -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EmbeddedObjectRefSubRecord(LittleEndianInput littleEndianInput, int i, int i2) {
        int readShort = (i - 2) - littleEndianInput.readShort();
        int readUShort = littleEndianInput.readUShort();
        this.field_1_unknown_int = littleEndianInput.readInt();
        byte[] readRawData = readRawData(littleEndianInput, readUShort);
        int i3 = ((r9 - 2) - 4) - readUShort;
        Ptg readRefPtg = readRefPtg(readRawData);
        this.field_2_refPtg = readRefPtg;
        if (readRefPtg == null) {
            this.field_2_unknownFormulaData = readRawData;
        } else {
            this.field_2_unknownFormulaData = null;
        }
        int i4 = 0;
        if (i3 >= readShort + 3) {
            if (littleEndianInput.readByte() == 3) {
                int readUShort2 = littleEndianInput.readUShort();
                if (readUShort2 > 0) {
                    boolean z = (littleEndianInput.readByte() & 1) != 0;
                    this.field_3_unicode_flag = z;
                    if (z) {
                        this.field_4_ole_classname = StringUtil.readUnicodeLE(littleEndianInput, readUShort2);
                        readUShort2 *= 2;
                    } else {
                        this.field_4_ole_classname = StringUtil.readCompressedUnicode(littleEndianInput, readUShort2);
                    }
                    i4 = readUShort2 + 4;
                } else {
                    this.field_4_ole_classname = "";
                    i4 = 3;
                }
            } else {
                throw new RecordFormatException("Expected byte 0x03 here");
            }
        } else {
            this.field_4_ole_classname = null;
        }
        int i5 = i3 - i4;
        if ((i4 + readUShort) % 2 != 0) {
            byte readByte = littleEndianInput.readByte();
            i5--;
            if (this.field_2_refPtg != null && this.field_4_ole_classname == null) {
                this.field_4_unknownByte = Byte.valueOf(readByte);
            }
        }
        int i6 = i5 - readShort;
        if (i6 > 0) {
            LOG.atError().log("Discarding {} unexpected padding bytes", Unbox.box(i6));
            readRawData(littleEndianInput, i6);
            i5 -= i6;
        }
        if (readShort >= 4) {
            this.field_5_stream_id = Integer.valueOf(littleEndianInput.readInt());
            i5 -= 4;
        } else {
            this.field_5_stream_id = null;
        }
        this.field_6_unknown = readRawData(littleEndianInput, i5);
    }
}
