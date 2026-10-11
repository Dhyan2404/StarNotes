package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherBlipRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class EscherBlipRecord extends EscherRecord {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 104857600;
    private static final int HEADER_SIZE = 8;
    private static int MAX_RECORD_LENGTH = 104857600;
    private byte[] field_pictureData;
    public static final short RECORD_ID_START = EscherRecordTypes.BLIP_START.typeID;
    public static final short RECORD_ID_END = EscherRecordTypes.BLIP_END.typeID;

    public EscherBlipRecord() {
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        this.field_pictureData = IOUtils.safelyClone(bArr, i + 8, readHeader, MAX_RECORD_LENGTH);
        return readHeader + 8;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.tsf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherBlipRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "pictureData", new Supplier() { // from class: com.sunia.HTREnginev2.usf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherBlipRecord.this.getPicturedata();
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        EscherRecordTypes forTypeID = EscherRecordTypes.forTypeID(getRecordId());
        return forTypeID != EscherRecordTypes.UNKNOWN ? forTypeID : EscherRecordTypes.BLIP_START;
    }

    public byte[] getPicturedata() {
        return this.field_pictureData;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        EscherRecordTypes forTypeID = EscherRecordTypes.forTypeID(getRecordId());
        if (forTypeID == EscherRecordTypes.UNKNOWN) {
            forTypeID = EscherRecordTypes.BLIP_START;
        }
        return forTypeID.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return this.field_pictureData.length + 8;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        byte[] bArr2 = this.field_pictureData;
        int i2 = i + 4;
        System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
        escherSerializationListener.afterRecordSerialize(i2 + this.field_pictureData.length, getRecordId(), this.field_pictureData.length + 4, this);
        return this.field_pictureData.length + 4;
    }

    public void setPictureData(byte[] bArr) {
        setPictureData(bArr, 0, bArr == null ? 0 : bArr.length);
    }

    public EscherBlipRecord(EscherBlipRecord escherBlipRecord) {
        super(escherBlipRecord);
        byte[] bArr = escherBlipRecord.field_pictureData;
        this.field_pictureData = bArr == null ? null : (byte[]) bArr.clone();
    }

    public void setPictureData(byte[] bArr, int i, int i2) {
        if (bArr != null && i >= 0 && i2 >= 0 && bArr.length >= i + i2) {
            this.field_pictureData = IOUtils.safelyClone(bArr, i, i2, MAX_RECORD_LENGTH);
            return;
        }
        throw new IllegalArgumentException("picture data can't be null");
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherBlipRecord copy() {
        return new EscherBlipRecord(this);
    }
}
