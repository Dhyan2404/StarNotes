package org.apache.poi.ddf;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.awt.Dimension;
import java.awt.Rectangle;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.EscherMetafileBlip;
import org.apache.poi.hssf.usermodel.HSSFPictureData;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class EscherMetafileBlip extends EscherBlipRecord {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000000;
    private static final int HEADER_SIZE = 8;
    private final byte[] field_1_UID;
    private final byte[] field_2_UID;
    private int field_2_cb;
    private int field_3_rcBounds_x1;
    private int field_3_rcBounds_x2;
    private int field_3_rcBounds_y1;
    private int field_3_rcBounds_y2;
    private int field_4_ptSize_h;
    private int field_4_ptSize_w;
    private int field_5_cbSave;
    private byte field_6_fCompression;
    private byte field_7_fFilter;
    private byte[] raw_pictureData;
    private byte[] remainingData;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) EscherMetafileBlip.class);
    private static int MAX_RECORD_LENGTH = 100000000;

    @Removal(version = "5.3")
    @Deprecated
    public static final short RECORD_ID_EMF = EscherRecordTypes.BLIP_EMF.typeID;

    @Removal(version = "5.3")
    @Deprecated
    public static final short RECORD_ID_WMF = EscherRecordTypes.BLIP_WMF.typeID;

    @Removal(version = "5.3")
    @Deprecated
    public static final short RECORD_ID_PICT = EscherRecordTypes.BLIP_PICT.typeID;

    /* renamed from: org.apache.poi.ddf.EscherMetafileBlip$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194341 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ddf$EscherRecordTypes;

        static {
            int[] iArr = new int[EscherRecordTypes.values().length];
            $SwitchMap$org$apache$poi$ddf$EscherRecordTypes = iArr;
            try {
                iArr[EscherRecordTypes.BLIP_EMF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_WMF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_PICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public EscherMetafileBlip() {
        this.field_1_UID = new byte[16];
        this.field_2_UID = new byte[16];
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    private static byte[] inflatePictureData(byte[] bArr) {
        try {
            InflaterInputStream inflaterInputStream = new InflaterInputStream(new UnsynchronizedByteArrayInputStream(bArr));
            try {
                UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                try {
                    IOUtils.copy(inflaterInputStream, unsynchronizedByteArrayOutputStream);
                    byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                    unsynchronizedByteArrayOutputStream.close();
                    inflaterInputStream.close();
                    return byteArray;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            LOGGER.atWarn().withThrowable(e).log("Possibly corrupt compression or non-compressed data");
            return bArr;
        }
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        int i2 = i + 8;
        System.arraycopy(bArr, i2, this.field_1_UID, 0, 16);
        int i3 = i2 + 16;
        if ((getOptions() ^ getSignature()) == 16) {
            System.arraycopy(bArr, i3, this.field_2_UID, 0, 16);
            i3 += 16;
        }
        this.field_2_cb = LittleEndian.getInt(bArr, i3);
        int i4 = i3 + 4;
        this.field_3_rcBounds_x1 = LittleEndian.getInt(bArr, i4);
        int i5 = i4 + 4;
        this.field_3_rcBounds_y1 = LittleEndian.getInt(bArr, i5);
        int i6 = i5 + 4;
        this.field_3_rcBounds_x2 = LittleEndian.getInt(bArr, i6);
        int i7 = i6 + 4;
        this.field_3_rcBounds_y2 = LittleEndian.getInt(bArr, i7);
        int i8 = i7 + 4;
        this.field_4_ptSize_w = LittleEndian.getInt(bArr, i8);
        int i9 = i8 + 4;
        this.field_4_ptSize_h = LittleEndian.getInt(bArr, i9);
        int i10 = i9 + 4;
        int i11 = LittleEndian.getInt(bArr, i10);
        this.field_5_cbSave = i11;
        int i12 = i10 + 4;
        this.field_6_fCompression = bArr[i12];
        int i13 = i12 + 1;
        this.field_7_fFilter = bArr[i13];
        int i14 = i13 + 1;
        byte[] safelyClone = IOUtils.safelyClone(bArr, i14, i11, MAX_RECORD_LENGTH);
        this.raw_pictureData = safelyClone;
        int i15 = i14 + this.field_5_cbSave;
        if (this.field_6_fCompression == 0) {
            super.setPictureData(inflatePictureData(safelyClone));
        } else {
            super.setPictureData(safelyClone);
        }
        int i16 = (readHeader - i15) + i + 8;
        if (i16 > 0) {
            this.remainingData = IOUtils.safelyClone(bArr, i15, i16, MAX_RECORD_LENGTH);
        }
        return readHeader + 8;
    }

    public Rectangle getBounds() {
        int i = this.field_3_rcBounds_x1;
        int i2 = this.field_3_rcBounds_y1;
        return new Rectangle(i, i2, this.field_3_rcBounds_x2 - i, this.field_3_rcBounds_y2 - i2);
    }

    public int getCompressedSize() {
        return this.field_5_cbSave;
    }

    public byte getFilter() {
        return this.field_7_fFilter;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(super.getGenericProperties());
        linkedHashMap.put(CouchFieldKey.KEY_UID, new Supplier() { // from class: com.sunia.HTREnginev2.iuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherMetafileBlip.this.getUID();
            }
        });
        linkedHashMap.put("uncompressedSize", new Supplier() { // from class: com.sunia.HTREnginev2.juf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherMetafileBlip.this.getUncompressedSize());
            }
        });
        linkedHashMap.put("bounds", new Supplier() { // from class: com.sunia.HTREnginev2.kuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherMetafileBlip.this.getBounds();
            }
        });
        linkedHashMap.put("sizeInEMU", new Supplier() { // from class: com.sunia.HTREnginev2.luf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherMetafileBlip.this.getSizeEMU();
            }
        });
        linkedHashMap.put("compressedSize", new Supplier() { // from class: com.sunia.HTREnginev2.muf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherMetafileBlip.this.getCompressedSize());
            }
        });
        linkedHashMap.put("isCompressed", new Supplier() { // from class: com.sunia.HTREnginev2.nuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(EscherMetafileBlip.this.isCompressed());
            }
        });
        linkedHashMap.put("filter", new Supplier() { // from class: com.sunia.HTREnginev2.ouf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(EscherMetafileBlip.this.getFilter());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public byte[] getPrimaryUID() {
        return this.field_2_UID;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        int length = this.raw_pictureData.length + 58;
        byte[] bArr = this.remainingData;
        if (bArr != null) {
            length += bArr.length;
        }
        return (getOptions() ^ getSignature()) == 16 ? length + this.field_2_UID.length : length;
    }

    public byte[] getRemainingData() {
        return this.remainingData;
    }

    public short getSignature() {
        int i = C194341.$SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.forTypeID(getRecordId()).ordinal()];
        if (i == 1) {
            return HSSFPictureData.MSOBI_EMF;
        }
        if (i == 2) {
            return HSSFPictureData.MSOBI_WMF;
        }
        if (i == 3) {
            return HSSFPictureData.MSOBI_PICT;
        }
        LOGGER.atWarn().log("Unknown metafile: {}", Unbox.box(getRecordId()));
        return (short) 0;
    }

    public Dimension getSizeEMU() {
        return new Dimension(this.field_4_ptSize_w, this.field_4_ptSize_h);
    }

    public byte[] getUID() {
        return this.field_1_UID;
    }

    public int getUncompressedSize() {
        return this.field_2_cb;
    }

    public boolean isCompressed() {
        return this.field_6_fCompression == 0;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        int i2 = i + 2;
        LittleEndian.putShort(bArr, i2, getRecordId());
        int i3 = i2 + 2;
        LittleEndian.putInt(bArr, i3, getRecordSize() - 8);
        int i4 = i3 + 4;
        byte[] bArr2 = this.field_1_UID;
        System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
        int length = i4 + this.field_1_UID.length;
        if ((getOptions() ^ getSignature()) == 16) {
            byte[] bArr3 = this.field_2_UID;
            System.arraycopy(bArr3, 0, bArr, length, bArr3.length);
            length += this.field_2_UID.length;
        }
        LittleEndian.putInt(bArr, length, this.field_2_cb);
        int i5 = length + 4;
        LittleEndian.putInt(bArr, i5, this.field_3_rcBounds_x1);
        int i6 = i5 + 4;
        LittleEndian.putInt(bArr, i6, this.field_3_rcBounds_y1);
        int i7 = i6 + 4;
        LittleEndian.putInt(bArr, i7, this.field_3_rcBounds_x2);
        int i8 = i7 + 4;
        LittleEndian.putInt(bArr, i8, this.field_3_rcBounds_y2);
        int i9 = i8 + 4;
        LittleEndian.putInt(bArr, i9, this.field_4_ptSize_w);
        int i10 = i9 + 4;
        LittleEndian.putInt(bArr, i10, this.field_4_ptSize_h);
        int i11 = i10 + 4;
        LittleEndian.putInt(bArr, i11, this.field_5_cbSave);
        int i12 = i11 + 4;
        bArr[i12] = this.field_6_fCompression;
        int i13 = i12 + 1;
        bArr[i13] = this.field_7_fFilter;
        int i14 = i13 + 1;
        byte[] bArr4 = this.raw_pictureData;
        System.arraycopy(bArr4, 0, bArr, i14, bArr4.length);
        int length2 = i14 + this.raw_pictureData.length;
        byte[] bArr5 = this.remainingData;
        if (bArr5 != null) {
            System.arraycopy(bArr5, 0, bArr, length2, bArr5.length);
        }
        escherSerializationListener.afterRecordSerialize(i + getRecordSize(), getRecordId(), getRecordSize(), this);
        return getRecordSize();
    }

    public void setBounds(Rectangle rectangle) {
        int i = rectangle.f97732x;
        this.field_3_rcBounds_x1 = i;
        int i2 = rectangle.f97733y;
        this.field_3_rcBounds_y1 = i2;
        this.field_3_rcBounds_x2 = i + rectangle.width;
        this.field_3_rcBounds_y2 = i2 + rectangle.height;
    }

    public void setCompressed(boolean z) {
        this.field_6_fCompression = z ? (byte) 0 : (byte) -2;
    }

    public void setCompressedSize(int i) {
        this.field_5_cbSave = i;
    }

    public void setFilter(byte b) {
        this.field_7_fFilter = b;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord
    public void setPictureData(byte[] bArr) {
        super.setPictureData(bArr);
        setUncompressedSize(bArr.length);
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(unsynchronizedByteArrayOutputStream);
                try {
                    deflaterOutputStream.write(bArr);
                    deflaterOutputStream.close();
                    this.raw_pictureData = unsynchronizedByteArrayOutputStream.toByteArray();
                    unsynchronizedByteArrayOutputStream.close();
                    setCompressedSize(this.raw_pictureData.length);
                    setCompressed(true);
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException("Can't compress metafile picture data", e);
        }
    }

    public void setPrimaryUID(byte[] bArr) {
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("primaryUID must be byte[16]");
        }
        byte[] bArr2 = this.field_2_UID;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
    }

    public void setSizeEMU(Dimension dimension) {
        this.field_4_ptSize_w = dimension.width;
        this.field_4_ptSize_h = dimension.height;
    }

    public void setUID(byte[] bArr) {
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("uid must be byte[16]");
        }
        byte[] bArr2 = this.field_1_UID;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
    }

    public void setUncompressedSize(int i) {
        this.field_2_cb = i;
    }

    public EscherMetafileBlip(EscherMetafileBlip escherMetafileBlip) {
        super(escherMetafileBlip);
        byte[] bArr = new byte[16];
        this.field_1_UID = bArr;
        byte[] bArr2 = new byte[16];
        this.field_2_UID = bArr2;
        System.arraycopy(escherMetafileBlip.field_1_UID, 0, bArr, 0, bArr.length);
        System.arraycopy(escherMetafileBlip.field_2_UID, 0, bArr2, 0, bArr2.length);
        this.field_2_cb = escherMetafileBlip.field_2_cb;
        this.field_3_rcBounds_x1 = escherMetafileBlip.field_3_rcBounds_x1;
        this.field_3_rcBounds_y1 = escherMetafileBlip.field_3_rcBounds_y1;
        this.field_3_rcBounds_x2 = escherMetafileBlip.field_3_rcBounds_x2;
        this.field_3_rcBounds_y2 = escherMetafileBlip.field_3_rcBounds_y2;
        this.field_4_ptSize_h = escherMetafileBlip.field_4_ptSize_h;
        this.field_4_ptSize_w = escherMetafileBlip.field_4_ptSize_w;
        this.field_5_cbSave = escherMetafileBlip.field_5_cbSave;
        this.field_6_fCompression = escherMetafileBlip.field_6_fCompression;
        this.field_7_fFilter = escherMetafileBlip.field_7_fFilter;
        byte[] bArr3 = escherMetafileBlip.raw_pictureData;
        this.raw_pictureData = bArr3 == null ? null : (byte[]) bArr3.clone();
        byte[] bArr4 = escherMetafileBlip.remainingData;
        this.remainingData = bArr4 != null ? (byte[]) bArr4.clone() : null;
    }

    @Override // org.apache.poi.ddf.EscherBlipRecord, org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherMetafileBlip copy() {
        return new EscherMetafileBlip(this);
    }
}
