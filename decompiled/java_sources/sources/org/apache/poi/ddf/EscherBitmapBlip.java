package org.apache.poi.ddf;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherBitmapBlip;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class EscherBitmapBlip extends EscherBlipRecord {
    private static final int HEADER_SIZE = 8;
    private final byte[] field_1_UID;
    private byte field_2_marker;
    public static final short RECORD_ID_JPEG = EscherRecordTypes.BLIP_JPEG.typeID;
    public static final short RECORD_ID_PNG = EscherRecordTypes.BLIP_PNG.typeID;
    public static final short RECORD_ID_DIB = EscherRecordTypes.BLIP_DIB.typeID;

    public EscherBitmapBlip() {
        this.field_1_UID = new byte[16];
        this.field_2_marker = (byte) -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        int i2 = i + 8;
        System.arraycopy(bArr, i2, this.field_1_UID, 0, 16);
        int i3 = i2 + 16;
        this.field_2_marker = bArr[i3];
        setPictureData(bArr, i3 + 1, readHeader - 17);
        return readHeader + 8;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.qsf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherBitmapBlip.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, CouchFieldKey.KEY_UID, new Supplier() { // from class: com.sunia.HTREnginev2.rsf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherBitmapBlip.this.getUID();
            }
        }, "marker", new Supplier() { // from class: com.sunia.HTREnginev2.ssf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(EscherBitmapBlip.this.getMarker());
            }
        });
    }

    public byte getMarker() {
        return this.field_2_marker;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return (getPicturedata() == null ? 0 : getPicturedata().length) + 25;
    }

    public byte[] getUID() {
        return this.field_1_UID;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        LittleEndian.putInt(bArr, i + 4, getRecordSize() - 8);
        int i2 = i + 8;
        System.arraycopy(this.field_1_UID, 0, bArr, i2, 16);
        bArr[i2 + 16] = this.field_2_marker;
        byte[] picturedata = getPicturedata();
        System.arraycopy(picturedata, 0, bArr, i2 + 17, picturedata.length);
        escherSerializationListener.afterRecordSerialize(i + getRecordSize(), getRecordId(), getRecordSize(), this);
        return picturedata.length + 25;
    }

    public void setMarker(byte b) {
        this.field_2_marker = b;
    }

    public void setUID(byte[] bArr) {
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("field_1_UID must be byte[16]");
        }
        System.arraycopy(bArr, 0, this.field_1_UID, 0, 16);
    }

    public EscherBitmapBlip(EscherBitmapBlip escherBitmapBlip) {
        super(escherBitmapBlip);
        byte[] bArr = new byte[16];
        this.field_1_UID = bArr;
        this.field_2_marker = (byte) -1;
        System.arraycopy(escherBitmapBlip.field_1_UID, 0, bArr, 0, bArr.length);
        this.field_2_marker = escherBitmapBlip.field_2_marker;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherBitmapBlip copy() {
        return new EscherBitmapBlip(this);
    }
}
