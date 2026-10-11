package org.apache.poi.hslf.usermodel;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.awt.Dimension;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.hslf.blip.DIB;
import org.apache.poi.hslf.blip.EMF;
import org.apache.poi.hslf.blip.JPEG;
import org.apache.poi.hslf.blip.PICT;
import org.apache.poi.hslf.blip.PNG;
import org.apache.poi.hslf.blip.WMF;
import org.apache.poi.hslf.usermodel.HSLFPictureData;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Removal;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public abstract class HSLFPictureData implements PictureData, GenericRecord {
    protected static final int CHECKSUM_SIZE = 16;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) HSLFPictureData.class);
    static final int PREAMBLE_SIZE = 8;
    final EscherContainerRecord bStore;
    final EscherBSERecord bse;
    private byte[] formattedData;
    private int index;
    private int uidInstanceCount;

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFPictureData$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194601 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType;

        static {
            int[] iArr = new int[PictureData.PictureType.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType = iArr;
            try {
                iArr[PictureData.PictureType.EMF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.WMF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.PICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.JPEG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.PNG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.DIB.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @Removal(version = "5.3")
    @Deprecated
    public HSLFPictureData() {
        this(new EscherContainerRecord(), new EscherBSERecord());
        LOGGER.atWarn().log("The no-arg constructor is deprecated. Some functionality such as updating pictures won't work.");
    }

    @Removal(version = "5.3")
    @Deprecated
    public static HSLFPictureData create(PictureData.PictureType pictureType) {
        LOGGER.atWarn().log("HSLFPictureData#create(PictureType) is deprecated. Some functionality such as updating pictures won't work.");
        EscherContainerRecord escherContainerRecord = new EscherContainerRecord();
        return new HSLFSlideShowImpl.PictureFactory(escherContainerRecord, pictureType, new byte[0], 0, 0).setRecord(new EscherBSERecord()).build();
    }

    public static HSLFPictureData createFromImageData(PictureData.PictureType pictureType, EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord, byte[] bArr) {
        HSLFPictureData newInstance = newInstance(pictureType, escherContainerRecord, escherBSERecord);
        newInstance.formattedData = newInstance.formatImageForSlideshow(bArr);
        return newInstance;
    }

    public static HSLFPictureData createFromSlideshowData(PictureData.PictureType pictureType, EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord, byte[] bArr, int i) {
        HSLFPictureData newInstance = newInstance(pictureType, escherContainerRecord, escherBSERecord);
        newInstance.setSignature(i);
        newInstance.formattedData = bArr;
        return newInstance;
    }

    private static HSLFPictureData newInstance(PictureData.PictureType pictureType, EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        switch (C194601.$SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[pictureType.ordinal()]) {
            case 1:
                return new EMF(escherContainerRecord, escherBSERecord);
            case 2:
                return new WMF(escherContainerRecord, escherBSERecord);
            case 3:
                return new PICT(escherContainerRecord, escherBSERecord);
            case 4:
                return new JPEG(escherContainerRecord, escherBSERecord);
            case 5:
                return new PNG(escherContainerRecord, escherBSERecord);
            case 6:
                return new DIB(escherContainerRecord, escherBSERecord);
            default:
                throw new IllegalArgumentException("Unsupported picture type: " + pictureType);
        }
    }

    public abstract byte[] formatImageForSlideshow(byte[] bArr);

    public int getBseSize() {
        return this.formattedData.length + 8;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public byte[] getChecksum() {
        return getUID();
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public final String getContentType() {
        return getType().contentType;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("type", new Supplier() { // from class: com.sunia.HTREnginev2.d7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return HSLFPictureData.this.getType();
            }
        });
        linkedHashMap.put("imageDimension", new Supplier() { // from class: com.sunia.HTREnginev2.e7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return HSLFPictureData.this.getImageDimension();
            }
        });
        linkedHashMap.put("signature", new Supplier() { // from class: com.sunia.HTREnginev2.f7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HSLFPictureData.this.getSignature());
            }
        });
        linkedHashMap.put("uidInstanceCount", new Supplier() { // from class: com.sunia.HTREnginev2.g7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HSLFPictureData.this.getUIDInstanceCount());
            }
        });
        linkedHashMap.put(TypedValues.CycleType.S_WAVE_OFFSET, new Supplier() { // from class: com.sunia.HTREnginev2.h7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HSLFPictureData.this.getOffset());
            }
        });
        linkedHashMap.put(CouchFieldKey.KEY_UID, new Supplier() { // from class: com.sunia.HTREnginev2.i7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return HSLFPictureData.this.getUID();
            }
        });
        linkedHashMap.put("checksum", new Supplier() { // from class: com.sunia.HTREnginev2.j7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return HSLFPictureData.this.getChecksum();
            }
        });
        linkedHashMap.put(FirebaseAnalytics.Param.INDEX, new Supplier() { // from class: com.sunia.HTREnginev2.k7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HSLFPictureData.this.getIndex());
            }
        });
        linkedHashMap.put("rawData", new Supplier() { // from class: com.sunia.HTREnginev2.l7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return HSLFPictureData.this.getRawData();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public byte[] getHeader() {
        byte[] bArr = new byte[24];
        LittleEndian.putInt(bArr, 0, getSignature());
        LittleEndian.putInt(bArr, 4, getRawData().length);
        System.arraycopy(this.formattedData, 0, bArr, 8, 16);
        return bArr;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public Dimension getImageDimensionInPixels() {
        Dimension imageDimension = getImageDimension();
        return new Dimension(Units.pointsToPixel(imageDimension.getWidth()), Units.pointsToPixel(imageDimension.getHeight()));
    }

    public int getIndex() {
        return this.index;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public InputStream getInputStream() throws IOException {
        byte[] data = getData();
        if (data == null) {
            data = new byte[0];
        }
        return new ByteArrayInputStream(data);
    }

    public int getOffset() {
        return this.bse.getOffset();
    }

    public byte[] getRawData() {
        return this.formattedData;
    }

    public abstract int getSignature();

    public byte[] getUID() {
        return Arrays.copyOf(this.formattedData, 16);
    }

    public int getUIDInstanceCount() {
        return this.uidInstanceCount;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public final void setData(byte[] bArr) throws IOException {
        int bseSize = getBseSize();
        this.formattedData = formatImageForSlideshow(bArr);
        int bseSize2 = getBseSize();
        int i = bseSize2 - bseSize;
        byte[] uid = getUID();
        List<EscherRecord> childRecords = this.bStore.getChildRecords();
        childRecords.sort(Comparator.comparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.m7h
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((EscherBSERecord) obj).getOffset();
            }
        }));
        Iterator<EscherRecord> it2 = childRecords.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            EscherBSERecord escherBSERecord = (EscherBSERecord) it2.next();
            if (z) {
                escherBSERecord.setOffset(escherBSERecord.getOffset() + i);
            } else if (escherBSERecord == this.bse) {
                escherBSERecord.setUid(uid);
                escherBSERecord.setSize(bseSize2);
                z = true;
            }
        }
    }

    public void setIndex(int i) {
        this.index = i;
    }

    @Removal(version = "5.3")
    @Deprecated
    public void setOffset(int i) {
        LOGGER.atWarn().log("HSLFPictureData#setOffset is deprecated.");
    }

    @Removal(version = "5.3")
    @Deprecated
    public void setRawData(byte[] bArr) {
        this.formattedData = bArr == null ? null : (byte[]) bArr.clone();
    }

    public abstract void setSignature(int i);

    public void setUIDInstanceCount(int i) {
        this.uidInstanceCount = i;
    }

    public void write(OutputStream outputStream) throws IOException {
        LittleEndian.putUShort(getSignature(), outputStream);
        LittleEndian.putUShort(getType().nativeId + EscherRecordTypes.BLIP_START.typeID, outputStream);
        byte[] rawData = getRawData();
        LittleEndian.putInt(rawData.length, outputStream);
        outputStream.write(rawData);
    }

    public static byte[] getChecksum(byte[] bArr) {
        MessageDigest messageDigest = CryptoFunctions.getMessageDigest(HashAlgorithm.md5);
        messageDigest.update(bArr);
        return messageDigest.digest();
    }

    @Internal
    public HSLFPictureData(EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        this.uidInstanceCount = 1;
        this.index = -1;
        Objects.requireNonNull(escherContainerRecord);
        this.bStore = escherContainerRecord;
        Objects.requireNonNull(escherBSERecord);
        this.bse = escherBSERecord;
    }
}
