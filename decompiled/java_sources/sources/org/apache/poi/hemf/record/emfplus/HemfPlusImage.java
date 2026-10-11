package org.apache.poi.hemf.record.emfplus;

import java.awt.Color;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import javax.imageio.ImageIO;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hemf.draw.HemfDrawProperties;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emfplus.HemfPlusHeader;
import org.apache.poi.hemf.record.emfplus.HemfPlusImage;
import org.apache.poi.hemf.record.emfplus.HemfPlusObject;
import org.apache.poi.hemf.usermodel.HemfPicture;
import org.apache.poi.hwmf.usermodel.HwmfPicture;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfPlusImage {

    /* renamed from: org.apache.poi.hemf.record.emfplus.HemfPlusImage$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194481 {

        /* renamed from: $SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusImageDataType */
        static final /* synthetic */ int[] f111349xdb66ef41;

        /* renamed from: $SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusMetafileDataType */
        static final /* synthetic */ int[] f111350x311e7423;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic;

        static {
            int[] iArr = new int[FileMagic.values().length];
            $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic = iArr;
            try {
                iArr[FileMagic.GIF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.TIFF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.PNG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.JPEG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.BMP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[EmfPlusMetafileDataType.values().length];
            f111350x311e7423 = iArr2;
            try {
                iArr2[EmfPlusMetafileDataType.Wmf.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f111350x311e7423[EmfPlusMetafileDataType.WmfPlaceable.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f111350x311e7423[EmfPlusMetafileDataType.Emf.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f111350x311e7423[EmfPlusMetafileDataType.EmfPlusDual.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f111350x311e7423[EmfPlusMetafileDataType.EmfPlusOnly.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr3 = new int[EmfPlusImageDataType.values().length];
            f111349xdb66ef41 = iArr3;
            try {
                iArr3[EmfPlusImageDataType.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f111349xdb66ef41[EmfPlusImageDataType.CONTINUED.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f111349xdb66ef41[EmfPlusImageDataType.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f111349xdb66ef41[EmfPlusImageDataType.METAFILE.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusBitmapDataType {
        PIXEL(0),
        COMPRESSED(1);


        /* renamed from: id */
        public final int f111351id;

        EmfPlusBitmapDataType(int i) {
            this.f111351id = i;
        }

        public static EmfPlusBitmapDataType valueOf(int i) {
            for (EmfPlusBitmapDataType emfPlusBitmapDataType : values()) {
                if (emfPlusBitmapDataType.f111351id == i) {
                    return emfPlusBitmapDataType;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusImage implements HemfPlusObject.EmfPlusObjectData {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final String GDI_CONTENT = "GDI";
        private static final int MAX_OBJECT_SIZE = 50000000;
        private int bitmapHeight;
        private int bitmapStride;
        private EmfPlusBitmapDataType bitmapType;
        private int bitmapWidth;
        private final HemfPlusHeader.EmfPlusGraphicsVersion graphicsVersion = new HemfPlusHeader.EmfPlusGraphicsVersion();
        private byte[] imageData;
        private EmfPlusImageDataType imageDataType;
        private int metafileDataSize;
        private EmfPlusMetafileDataType metafileType;
        private EmfPlusPixelFormat pixelFormat;

        private String getContentType(byte[] bArr) {
            PictureData.PictureType pictureType = PictureData.PictureType.UNKNOWN;
            int i = C194481.f111349xdb66ef41[getImageDataType().ordinal()];
            if (i != 3) {
                if (i == 4) {
                    int i2 = C194481.f111350x311e7423[getMetafileType().ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        pictureType = PictureData.PictureType.WMF;
                    } else if (i2 == 3 || i2 == 4 || i2 == 5) {
                        pictureType = PictureData.PictureType.EMF;
                    }
                }
            } else {
                if (getBitmapType() == EmfPlusBitmapDataType.PIXEL) {
                    return GDI_CONTENT;
                }
                int i3 = C194481.$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.valueOf(bArr).ordinal()];
                if (i3 == 1) {
                    pictureType = PictureData.PictureType.GIF;
                } else if (i3 == 2) {
                    pictureType = PictureData.PictureType.TIFF;
                } else if (i3 == 3) {
                    pictureType = PictureData.PictureType.PNG;
                } else if (i3 == 4) {
                    pictureType = PictureData.PictureType.JPEG;
                } else if (i3 == 5) {
                    pictureType = PictureData.PictureType.BMP;
                }
            }
            return pictureType.contentType;
        }

        private HemfPlusGDIImageRenderer getGDIRenderer() {
            if (getImageDataType() != EmfPlusImageDataType.BITMAP || getBitmapType() != EmfPlusBitmapDataType.PIXEL) {
                throw new IllegalStateException("image data is not a GDI image");
            }
            HemfPlusGDIImageRenderer hemfPlusGDIImageRenderer = new HemfPlusGDIImageRenderer();
            hemfPlusGDIImageRenderer.setWidth(getBitmapWidth());
            hemfPlusGDIImageRenderer.setHeight(getBitmapHeight());
            hemfPlusGDIImageRenderer.setStride(getBitmapStride());
            hemfPlusGDIImageRenderer.setPixelFormat(getPixelFormat());
            return hemfPlusGDIImageRenderer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this.metafileDataSize);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            HemfDrawProperties properties = hemfGraphics.getProperties();
            byte[] rawData = getRawData(list);
            String contentType = getContentType(rawData);
            ImageRenderer gDIRenderer = GDI_CONTENT.equals(contentType) ? getGDIRenderer() : hemfGraphics.getImageRenderer(contentType);
            try {
                gDIRenderer.loadImage(rawData, contentType);
            } catch (IOException unused) {
                gDIRenderer = null;
            }
            properties.setEmfPlusImage(gDIRenderer);
        }

        public int getBitmapHeight() {
            return this.bitmapHeight;
        }

        public int getBitmapStride() {
            return this.bitmapStride;
        }

        public EmfPlusBitmapDataType getBitmapType() {
            return this.bitmapType;
        }

        public int getBitmapWidth() {
            return this.bitmapWidth;
        }

        public Rectangle2D getBounds(List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            int i;
            UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream;
            try {
                i = C194481.f111349xdb66ef41[getImageDataType().ordinal()];
            } catch (Exception unused) {
            }
            if (i == 3) {
                if (getBitmapType() == EmfPlusBitmapDataType.PIXEL) {
                    return new Rectangle2D.Double(0.0d, 0.0d, this.bitmapWidth, this.bitmapHeight);
                }
                unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(getRawData(list));
                try {
                    BufferedImage read = ImageIO.read(unsynchronizedByteArrayInputStream);
                    Rectangle2D.Double r12 = new Rectangle2D.Double(read.getMinX(), read.getMinY(), read.getWidth(), read.getHeight());
                    unsynchronizedByteArrayInputStream.close();
                    return r12;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            if (i == 4) {
                unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(getRawData(list));
                try {
                    int i2 = C194481.f111350x311e7423[getMetafileType().ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        Rectangle2D bounds = new HwmfPicture(unsynchronizedByteArrayInputStream).getBounds();
                        unsynchronizedByteArrayInputStream.close();
                        return bounds;
                    }
                    if (i2 == 3 || i2 == 4 || i2 == 5) {
                        Rectangle2D bounds2 = new HemfPicture(unsynchronizedByteArrayInputStream).getBounds();
                        unsynchronizedByteArrayInputStream.close();
                        return bounds2;
                    }
                    unsynchronizedByteArrayInputStream.close();
                } finally {
                }
            }
            return new Rectangle2D.Double(1.0d, 1.0d, 1.0d, 1.0d);
            return new Rectangle2D.Double(1.0d, 1.0d, 1.0d, 1.0d);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("graphicsVersion", new Supplier() { // from class: com.sunia.HTREnginev2.yph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImage.this.getGraphicsVersion();
                }
            });
            linkedHashMap.put("imageDataType", new Supplier() { // from class: com.sunia.HTREnginev2.zph
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImage.this.getImageDataType();
                }
            });
            linkedHashMap.put("bitmapWidth", new Supplier() { // from class: com.sunia.HTREnginev2.aqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusImage.EmfPlusImage.this.getBitmapWidth());
                }
            });
            linkedHashMap.put("bitmapHeight", new Supplier() { // from class: com.sunia.HTREnginev2.bqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusImage.EmfPlusImage.this.getBitmapHeight());
                }
            });
            linkedHashMap.put("bitmapStride", new Supplier() { // from class: com.sunia.HTREnginev2.cqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusImage.EmfPlusImage.this.getBitmapStride());
                }
            });
            linkedHashMap.put("pixelFormat", new Supplier() { // from class: com.sunia.HTREnginev2.dqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImage.this.getPixelFormat();
                }
            });
            linkedHashMap.put("bitmapType", new Supplier() { // from class: com.sunia.HTREnginev2.eqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImage.this.getBitmapType();
                }
            });
            linkedHashMap.put("imageData", new Supplier() { // from class: com.sunia.HTREnginev2.fqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImage.this.getImageData();
                }
            });
            linkedHashMap.put("metafileType", new Supplier() { // from class: com.sunia.HTREnginev2.gqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImage.this.getMetafileType();
                }
            });
            linkedHashMap.put("metafileDataSize", new Supplier() { // from class: com.sunia.HTREnginev2.hqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusImage.EmfPlusImage.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
            return Collections.unmodifiableMap(linkedHashMap);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public HemfPlusHeader.EmfPlusGraphicsVersion getGraphicsVersion() {
            return this.graphicsVersion;
        }

        public byte[] getImageData() {
            return this.imageData;
        }

        public EmfPlusImageDataType getImageDataType() {
            return this.imageDataType;
        }

        public EmfPlusMetafileDataType getMetafileType() {
            return this.metafileType;
        }

        public EmfPlusPixelFormat getPixelFormat() {
            return this.pixelFormat;
        }

        public byte[] getRawData(List<? extends HemfPlusObject.EmfPlusObjectData> list) {
            try {
                UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                try {
                    unsynchronizedByteArrayOutputStream.write(getImageData());
                    if (list != null) {
                        Iterator<? extends HemfPlusObject.EmfPlusObjectData> it2 = list.iterator();
                        while (it2.hasNext()) {
                            unsynchronizedByteArrayOutputStream.write(((EmfPlusImage) it2.next()).getImageData());
                        }
                    }
                    byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                    unsynchronizedByteArrayOutputStream.close();
                    return byteArray;
                } finally {
                }
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public long init(LittleEndianInputStream littleEndianInputStream, long j, HemfPlusObject.EmfPlusObjectType emfPlusObjectType, int i) throws IOException {
            long j2;
            littleEndianInputStream.mark(4);
            long init = this.graphicsVersion.init(littleEndianInputStream);
            if (isContinuedRecord()) {
                this.imageDataType = EmfPlusImageDataType.CONTINUED;
                littleEndianInputStream.reset();
                j2 = 0;
            } else {
                this.imageDataType = EmfPlusImageDataType.valueOf(littleEndianInputStream.readInt());
                j2 = init + 4;
            }
            if (this.imageDataType == null) {
                this.imageDataType = EmfPlusImageDataType.UNKNOWN;
            }
            int i2 = C194481.f111349xdb66ef41[this.imageDataType.ordinal()];
            if (i2 == 3) {
                this.bitmapWidth = littleEndianInputStream.readInt();
                this.bitmapHeight = littleEndianInputStream.readInt();
                this.bitmapStride = littleEndianInputStream.readInt();
                int readInt = littleEndianInputStream.readInt();
                EmfPlusBitmapDataType valueOf = EmfPlusBitmapDataType.valueOf(littleEndianInputStream.readInt());
                this.bitmapType = valueOf;
                j2 += 20;
                this.pixelFormat = valueOf == EmfPlusBitmapDataType.PIXEL ? EmfPlusPixelFormat.valueOf(readInt) : EmfPlusPixelFormat.UNDEFINED;
            } else {
                if (i2 != 4) {
                    this.bitmapWidth = -1;
                    this.bitmapHeight = -1;
                    this.bitmapStride = -1;
                    this.bitmapType = null;
                    this.pixelFormat = null;
                    int i3 = (int) j;
                    this.imageData = IOUtils.toByteArray(littleEndianInputStream, i3, 50000000);
                    return j2 + i3;
                }
                this.metafileType = EmfPlusMetafileDataType.valueOf(littleEndianInputStream.readInt());
                this.metafileDataSize = littleEndianInputStream.readInt();
                j2 += 8;
            }
            j -= j2;
            int i32 = (int) j;
            this.imageData = IOUtils.toByteArray(littleEndianInputStream, i32, 50000000);
            return j2 + i32;
        }

        public BufferedImage readGDIImage(byte[] bArr) {
            return getGDIRenderer().readGDIImage(bArr);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public HemfPlusObject.EmfPlusObjectType getGenericRecordType() {
            return HemfPlusObject.EmfPlusObjectType.IMAGE;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusImageAttributes implements HemfPlusObject.EmfPlusObjectData {
        private Color clampColor;
        private final HemfPlusHeader.EmfPlusGraphicsVersion graphicsVersion = new HemfPlusHeader.EmfPlusGraphicsVersion();
        private EmfPlusObjectClamp objectClamp;
        private EmfPlusWrapMode wrapMode;

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends HemfPlusObject.EmfPlusObjectData> list) {
        }

        public Color getClampColor() {
            return this.clampColor;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("graphicsVersion", new Supplier() { // from class: com.sunia.HTREnginev2.iqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImageAttributes.this.getGraphicsVersion();
                }
            }, "wrapMode", new Supplier() { // from class: com.sunia.HTREnginev2.jqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImageAttributes.this.getWrapMode();
                }
            }, "clampColor", new Supplier() { // from class: com.sunia.HTREnginev2.kqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImageAttributes.this.getClampColor();
                }
            }, "objectClamp", new Supplier() { // from class: com.sunia.HTREnginev2.lqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusImage.EmfPlusImageAttributes.this.getObjectClamp();
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public HemfPlusHeader.EmfPlusGraphicsVersion getGraphicsVersion() {
            return this.graphicsVersion;
        }

        public EmfPlusObjectClamp getObjectClamp() {
            return this.objectClamp;
        }

        public EmfPlusWrapMode getWrapMode() {
            return this.wrapMode;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public long init(LittleEndianInputStream littleEndianInputStream, long j, HemfPlusObject.EmfPlusObjectType emfPlusObjectType, int i) throws IOException {
            long init = this.graphicsVersion.init(littleEndianInputStream);
            littleEndianInputStream.skipFully(4);
            this.wrapMode = EmfPlusWrapMode.valueOf(littleEndianInputStream.readInt());
            this.clampColor = HemfPlusDraw.readARGB(littleEndianInputStream.readInt());
            this.objectClamp = EmfPlusObjectClamp.valueOf(littleEndianInputStream.readInt());
            littleEndianInputStream.skipFully(4);
            return init + 20;
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public HemfPlusObject.EmfPlusObjectType getGenericRecordType() {
            return HemfPlusObject.EmfPlusObjectType.IMAGE_ATTRIBUTES;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusImageDataType {
        UNKNOWN(0),
        BITMAP(1),
        METAFILE(2),
        CONTINUED(-1);


        /* renamed from: id */
        public final int f111352id;

        EmfPlusImageDataType(int i) {
            this.f111352id = i;
        }

        public static EmfPlusImageDataType valueOf(int i) {
            for (EmfPlusImageDataType emfPlusImageDataType : values()) {
                if (emfPlusImageDataType.f111352id == i) {
                    return emfPlusImageDataType;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusMetafileDataType {
        Wmf(1),
        WmfPlaceable(2),
        Emf(3),
        EmfPlusOnly(4),
        EmfPlusDual(5);


        /* renamed from: id */
        public final int f111353id;

        EmfPlusMetafileDataType(int i) {
            this.f111353id = i;
        }

        public static EmfPlusMetafileDataType valueOf(int i) {
            for (EmfPlusMetafileDataType emfPlusMetafileDataType : values()) {
                if (emfPlusMetafileDataType.f111353id == i) {
                    return emfPlusMetafileDataType;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusObjectClamp {
        RectClamp(0),
        BitmapClamp(1);


        /* renamed from: id */
        public final int f111354id;

        EmfPlusObjectClamp(int i) {
            this.f111354id = i;
        }

        public static EmfPlusObjectClamp valueOf(int i) {
            for (EmfPlusObjectClamp emfPlusObjectClamp : values()) {
                if (emfPlusObjectClamp.f111354id == i) {
                    return emfPlusObjectClamp;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusPixelFormat {
        UNDEFINED(0),
        INDEXED_1BPP(196865),
        INDEXED_4BPP(197634),
        INDEXED_8BPP(198659),
        GRAYSCALE_16BPP(1052676),
        RGB555_16BPP(135173),
        RGB565_16BPP(135174),
        ARGB1555_16BPP(397319),
        RGB_24BPP(137224),
        RGB_32BPP(139273),
        ARGB_32BPP(2498570),
        PARGB_32BPP(925707),
        RGB_48BPP(1060876),
        ARGB_64BPP(3424269),
        PARGB_64BPP(1720334);


        /* renamed from: id */
        public final int f111355id;
        private static final BitField CANONICAL = BitFieldFactory.getInstance(2097152);
        private static final BitField EXTCOLORS = BitFieldFactory.getInstance(1048576);
        private static final BitField PREMULTI = BitFieldFactory.getInstance(524288);
        private static final BitField ALPHA = BitFieldFactory.getInstance(262144);
        private static final BitField GDI = BitFieldFactory.getInstance(131072);
        private static final BitField PALETTE = BitFieldFactory.getInstance(65536);
        private static final BitField BPP = BitFieldFactory.getInstance(65280);
        private static final BitField INDEX = BitFieldFactory.getInstance(255);

        EmfPlusPixelFormat(int i) {
            this.f111355id = i;
        }

        public int getBitsPerPixel() {
            int i = this.f111355id;
            if (i == -1) {
                return -1;
            }
            return BPP.getValue(i);
        }

        public int getGDIEnumIndex() {
            int i = this.f111355id;
            if (i == -1) {
                return -1;
            }
            return INDEX.getValue(i);
        }

        public boolean isAlpha() {
            int i = this.f111355id;
            return i != -1 && ALPHA.isSet(i);
        }

        public boolean isCanonical() {
            int i = this.f111355id;
            return i != -1 && CANONICAL.isSet(i);
        }

        public boolean isExtendedColors() {
            int i = this.f111355id;
            return i != -1 && EXTCOLORS.isSet(i);
        }

        public boolean isGDISupported() {
            int i = this.f111355id;
            return i != -1 && GDI.isSet(i);
        }

        public boolean isPaletteIndexed() {
            int i = this.f111355id;
            return i != -1 && PALETTE.isSet(i);
        }

        public boolean isPreMultiplied() {
            int i = this.f111355id;
            return i != -1 && PREMULTI.isSet(i);
        }

        public static EmfPlusPixelFormat valueOf(int i) {
            for (EmfPlusPixelFormat emfPlusPixelFormat : values()) {
                if (emfPlusPixelFormat.f111355id == i) {
                    return emfPlusPixelFormat;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusWrapMode {
        WRAP_MODE_TILE(0),
        WRAP_MODE_TILE_FLIP_X(1),
        WRAP_MODE_TILE_FLIP_Y(2),
        WRAP_MODE_TILE_FLIP_XY(3),
        WRAP_MODE_CLAMP(4);


        /* renamed from: id */
        public final int f111356id;

        EmfPlusWrapMode(int i) {
            this.f111356id = i;
        }

        public static EmfPlusWrapMode valueOf(int i) {
            for (EmfPlusWrapMode emfPlusWrapMode : values()) {
                if (emfPlusWrapMode.f111356id == i) {
                    return emfPlusWrapMode;
                }
            }
            return null;
        }
    }
}
