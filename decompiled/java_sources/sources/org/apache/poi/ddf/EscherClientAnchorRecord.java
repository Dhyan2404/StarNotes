package org.apache.poi.ddf;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherClientAnchorRecord;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class EscherClientAnchorRecord extends EscherRecord {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static int MAX_RECORD_LENGTH = 100000;
    public static final short RECORD_ID = EscherRecordTypes.CLIENT_ANCHOR.typeID;
    private short field_1_flag;
    private short field_2_col1;
    private short field_3_dx1;
    private short field_4_row1;
    private short field_5_dy1;
    private short field_6_col2;
    private short field_7_dx2;
    private short field_8_row2;
    private short field_9_dy2;
    private byte[] remainingData;
    private boolean shortRecord;

    public EscherClientAnchorRecord() {
        this.remainingData = new byte[0];
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        int i2 = i + 8;
        int i3 = 0;
        if (readHeader != 4) {
            int i4 = 16;
            if (readHeader == 16) {
                this.field_2_col1 = LittleEndian.getShort(bArr, i2 + 0);
                this.field_1_flag = LittleEndian.getShort(bArr, i2 + 4);
                this.field_3_dx1 = LittleEndian.getShort(bArr, i2 + 8);
                this.field_4_row1 = LittleEndian.getShort(bArr, i2 + 12);
                this.shortRecord = true;
            } else {
                this.field_1_flag = LittleEndian.getShort(bArr, i2 + 0);
                this.field_2_col1 = LittleEndian.getShort(bArr, i2 + 2);
                this.field_3_dx1 = LittleEndian.getShort(bArr, i2 + 4);
                this.field_4_row1 = LittleEndian.getShort(bArr, i2 + 6);
                i4 = 18;
                if (readHeader >= 18) {
                    this.field_5_dy1 = LittleEndian.getShort(bArr, i2 + 8);
                    this.field_6_col2 = LittleEndian.getShort(bArr, i2 + 10);
                    this.field_7_dx2 = LittleEndian.getShort(bArr, i2 + 12);
                    this.field_8_row2 = LittleEndian.getShort(bArr, i2 + 14);
                    this.field_9_dy2 = LittleEndian.getShort(bArr, i2 + 16);
                    this.shortRecord = false;
                } else {
                    this.shortRecord = true;
                    i3 = 8;
                }
            }
            i3 = i4;
        }
        int i5 = readHeader - i3;
        this.remainingData = IOUtils.safelyClone(bArr, i2 + i3, i5, MAX_RECORD_LENGTH);
        return i3 + 8 + i5;
    }

    public short getCol1() {
        return this.field_2_col1;
    }

    public short getCol2() {
        return this.field_6_col2;
    }

    public short getDx1() {
        return this.field_3_dx1;
    }

    public short getDx2() {
        return this.field_7_dx2;
    }

    public short getDy1() {
        return this.field_5_dy1;
    }

    public short getDy2() {
        return this.field_9_dy2;
    }

    public short getFlag() {
        return this.field_1_flag;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(super.getGenericProperties());
        linkedHashMap.put("flag", new Supplier() { // from class: com.sunia.HTREnginev2.atf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherClientAnchorRecord.this.getFlag());
            }
        });
        linkedHashMap.put("col1", new Supplier() { // from class: com.sunia.HTREnginev2.btf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherClientAnchorRecord.this.getCol1());
            }
        });
        linkedHashMap.put("dx1", new Supplier() { // from class: com.sunia.HTREnginev2.ctf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherClientAnchorRecord.this.getDx1());
            }
        });
        linkedHashMap.put("row1", new Supplier() { // from class: com.sunia.HTREnginev2.dtf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherClientAnchorRecord.this.getRow1());
            }
        });
        linkedHashMap.put("dy1", new Supplier() { // from class: com.sunia.HTREnginev2.etf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherClientAnchorRecord.this.getDy1());
            }
        });
        linkedHashMap.put("col2", new Supplier() { // from class: com.sunia.HTREnginev2.ftf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherClientAnchorRecord.this.getCol2());
            }
        });
        linkedHashMap.put("dx2", new Supplier() { // from class: com.sunia.HTREnginev2.gtf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherClientAnchorRecord.this.getDx2());
            }
        });
        linkedHashMap.put("row2", new Supplier() { // from class: com.sunia.HTREnginev2.htf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherClientAnchorRecord.this.getRow2());
            }
        });
        linkedHashMap.put("dy2", new Supplier() { // from class: com.sunia.HTREnginev2.itf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherClientAnchorRecord.this.getDy2());
            }
        });
        linkedHashMap.put("remainingData", new Supplier() { // from class: com.sunia.HTREnginev2.jtf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherClientAnchorRecord.this.getRemainingData();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.CLIENT_ANCHOR;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public short getRecordId() {
        return RECORD_ID;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return EscherRecordTypes.CLIENT_ANCHOR.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        int i = (this.shortRecord ? 8 : 18) + 8;
        byte[] bArr = this.remainingData;
        return i + (bArr == null ? 0 : bArr.length);
    }

    public byte[] getRemainingData() {
        return this.remainingData;
    }

    public short getRow1() {
        return this.field_4_row1;
    }

    public short getRow2() {
        return this.field_8_row2;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        if (this.remainingData == null) {
            this.remainingData = new byte[0];
        }
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        LittleEndian.putInt(bArr, i + 4, this.remainingData.length + (this.shortRecord ? 8 : 18));
        int i2 = i + 8;
        LittleEndian.putShort(bArr, i2, this.field_1_flag);
        LittleEndian.putShort(bArr, i + 10, this.field_2_col1);
        LittleEndian.putShort(bArr, i + 12, this.field_3_dx1);
        LittleEndian.putShort(bArr, i + 14, this.field_4_row1);
        if (!this.shortRecord) {
            LittleEndian.putShort(bArr, i + 16, this.field_5_dy1);
            LittleEndian.putShort(bArr, i + 18, this.field_6_col2);
            LittleEndian.putShort(bArr, i + 20, this.field_7_dx2);
            LittleEndian.putShort(bArr, i + 22, this.field_8_row2);
            LittleEndian.putShort(bArr, i + 24, this.field_9_dy2);
        }
        byte[] bArr2 = this.remainingData;
        System.arraycopy(bArr2, 0, bArr, (this.shortRecord ? 16 : 26) + i, bArr2.length);
        int length = i2 + (this.shortRecord ? 8 : 18) + this.remainingData.length;
        int i3 = length - i;
        escherSerializationListener.afterRecordSerialize(length, getRecordId(), i3, this);
        return i3;
    }

    public void setCol1(short s) {
        this.field_2_col1 = s;
    }

    public void setCol2(short s) {
        this.shortRecord = false;
        this.field_6_col2 = s;
    }

    public void setDx1(short s) {
        this.field_3_dx1 = s;
    }

    public void setDx2(short s) {
        this.shortRecord = false;
        this.field_7_dx2 = s;
    }

    public void setDy1(short s) {
        this.shortRecord = false;
        this.field_5_dy1 = s;
    }

    public void setDy2(short s) {
        this.shortRecord = false;
        this.field_9_dy2 = s;
    }

    public void setFlag(short s) {
        this.field_1_flag = s;
    }

    public void setRemainingData(byte[] bArr) {
        if (bArr == null) {
            this.remainingData = new byte[0];
        } else {
            this.remainingData = (byte[]) bArr.clone();
        }
    }

    public void setRow1(short s) {
        this.field_4_row1 = s;
    }

    public void setRow2(short s) {
        this.shortRecord = false;
        this.field_8_row2 = s;
    }

    public EscherClientAnchorRecord(EscherClientAnchorRecord escherClientAnchorRecord) {
        super(escherClientAnchorRecord);
        this.remainingData = new byte[0];
        this.field_1_flag = escherClientAnchorRecord.field_1_flag;
        this.field_2_col1 = escherClientAnchorRecord.field_2_col1;
        this.field_3_dx1 = escherClientAnchorRecord.field_3_dx1;
        this.field_4_row1 = escherClientAnchorRecord.field_4_row1;
        this.field_5_dy1 = escherClientAnchorRecord.field_5_dy1;
        this.field_6_col2 = escherClientAnchorRecord.field_6_col2;
        this.field_7_dx2 = escherClientAnchorRecord.field_7_dx2;
        this.field_8_row2 = escherClientAnchorRecord.field_8_row2;
        this.field_9_dy2 = escherClientAnchorRecord.field_9_dy2;
        byte[] bArr = escherClientAnchorRecord.remainingData;
        this.remainingData = bArr == null ? null : (byte[]) bArr.clone();
        this.shortRecord = escherClientAnchorRecord.shortRecord;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherClientAnchorRecord copy() {
        return new EscherClientAnchorRecord(this);
    }
}
