package org.apache.poi.hwmf.record;

import java.awt.AlphaComposite;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.LinearGradientPaint;
import java.awt.MultipleGradientPaint;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.IndexColorModel;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import javax.imageio.ImageIO;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.record.HwmfBitmapDib;
import org.apache.poi.hwmf.usermodel.HwmfPicture;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public class HwmfBitmapDib implements GenericRecord {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int BMP_HEADER_SIZE = 14;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HwmfBitmapDib.class);
    private int colorMaskB;
    private int colorMaskG;
    private int colorMaskR;
    private Color[] colorTable;
    private BitCount headerBitCount;
    private Compression headerCompression;
    private int headerHeight;
    private int headerPlanes;
    private int headerSize;
    private int headerWidth;
    private byte[] imageData;
    private int introSize;
    private long headerImageSize = -1;
    private int headerXPelsPerMeter = -1;
    private int headerYPelsPerMeter = -1;
    private long headerColorUsed = -1;
    private long headerColorImportant = -1;

    /* renamed from: org.apache.poi.hwmf.record.HwmfBitmapDib$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195501 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$Compression;

        static {
            int[] iArr = new int[BitCount.values().length];
            $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount = iArr;
            try {
                iArr[BitCount.BI_BITCOUNT_0.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount[BitCount.BI_BITCOUNT_1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount[BitCount.BI_BITCOUNT_2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount[BitCount.BI_BITCOUNT_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount[BitCount.BI_BITCOUNT_4.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount[BitCount.BI_BITCOUNT_5.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount[BitCount.BI_BITCOUNT_6.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr2 = new int[Compression.values().length];
            $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$Compression = iArr2;
            try {
                iArr2[Compression.BI_RGB.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$Compression[Compression.BI_BITFIELDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum BitCount {
        BI_BITCOUNT_0(0),
        BI_BITCOUNT_1(1),
        BI_BITCOUNT_2(4),
        BI_BITCOUNT_3(8),
        BI_BITCOUNT_4(16),
        BI_BITCOUNT_5(24),
        BI_BITCOUNT_6(32);

        int flag;

        BitCount(int i) {
            this.flag = i;
        }

        public static BitCount valueOf(int i) {
            for (BitCount bitCount : values()) {
                if (bitCount.flag == i) {
                    return bitCount;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum Compression {
        BI_RGB(0),
        BI_RLE8(1),
        BI_RLE4(2),
        BI_BITFIELDS(3),
        BI_JPEG(4),
        BI_PNG(5),
        BI_CMYK(11),
        BI_CMYKRLE8(12),
        BI_CMYKRLE4(13);

        int flag;

        Compression(int i) {
            this.flag = i;
        }

        public static Compression valueOf(int i) {
            for (Compression compression : values()) {
                if (compression.flag == i) {
                    return compression;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.headerSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.headerWidth);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$10() {
        return Long.valueOf(this.headerColorImportant);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this.headerHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this.headerPlanes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return this.headerBitCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return this.headerCompression;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$6() {
        return Long.valueOf(this.headerImageSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$7() {
        return Integer.valueOf(this.headerXPelsPerMeter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$8() {
        return Integer.valueOf(this.headerYPelsPerMeter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$9() {
        return Long.valueOf(this.headerColorUsed);
    }

    public byte[] getBMPData() {
        if (this.headerWidth <= 0 || this.headerHeight <= 0) {
            return null;
        }
        if (this.imageData == null) {
            throw new RecordFormatException("used to throw exception: bitmap not initialized ... need to call init() before");
        }
        int max = (int) Math.max(r0.length, this.introSize + this.headerImageSize);
        byte[] safelyAllocate = IOUtils.safelyAllocate(max + 14, HwmfPicture.getMaxRecordLength());
        safelyAllocate[0] = 66;
        safelyAllocate[1] = 77;
        LittleEndian.putInt(safelyAllocate, 2, max + 14);
        LittleEndian.putInt(safelyAllocate, 6, 0);
        LittleEndian.putInt(safelyAllocate, 10, this.introSize + 14);
        byte[] bArr = this.imageData;
        System.arraycopy(bArr, 0, safelyAllocate, 14, bArr.length);
        return safelyAllocate;
    }

    public InputStream getBMPStream() {
        return new ByteArrayInputStream(getBMPData());
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("headerSize", new Supplier() { // from class: com.sunia.HTREnginev2.m1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = HwmfBitmapDib.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
        linkedHashMap.put("width", new Supplier() { // from class: com.sunia.HTREnginev2.t1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = HwmfBitmapDib.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
        linkedHashMap.put("height", new Supplier() { // from class: com.sunia.HTREnginev2.u1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = HwmfBitmapDib.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
        linkedHashMap.put("planes", new Supplier() { // from class: com.sunia.HTREnginev2.v1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = HwmfBitmapDib.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        });
        linkedHashMap.put("bitCount", new Supplier() { // from class: com.sunia.HTREnginev2.w1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = HwmfBitmapDib.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        });
        linkedHashMap.put("compression", new Supplier() { // from class: com.sunia.HTREnginev2.x1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = HwmfBitmapDib.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
        linkedHashMap.put("imageSize", new Supplier() { // from class: com.sunia.HTREnginev2.y1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$6;
                lambda$getGenericProperties$6 = HwmfBitmapDib.this.lambda$getGenericProperties$6();
                return lambda$getGenericProperties$6;
            }
        });
        linkedHashMap.put("xPelsPerMeter", new Supplier() { // from class: com.sunia.HTREnginev2.n1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$7;
                lambda$getGenericProperties$7 = HwmfBitmapDib.this.lambda$getGenericProperties$7();
                return lambda$getGenericProperties$7;
            }
        });
        linkedHashMap.put("yPelsPerMeter", new Supplier() { // from class: com.sunia.HTREnginev2.o1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$8;
                lambda$getGenericProperties$8 = HwmfBitmapDib.this.lambda$getGenericProperties$8();
                return lambda$getGenericProperties$8;
            }
        });
        linkedHashMap.put("colorUsed", new Supplier() { // from class: com.sunia.HTREnginev2.p1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$9;
                lambda$getGenericProperties$9 = HwmfBitmapDib.this.lambda$getGenericProperties$9();
                return lambda$getGenericProperties$9;
            }
        });
        linkedHashMap.put("colorImportant", new Supplier() { // from class: com.sunia.HTREnginev2.q1i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$10;
                lambda$getGenericProperties$10 = HwmfBitmapDib.this.lambda$getGenericProperties$10();
                return lambda$getGenericProperties$10;
            }
        });
        linkedHashMap.put("image", new Supplier() { // from class: com.sunia.HTREnginev2.r1i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfBitmapDib.this.getImage();
            }
        });
        linkedHashMap.put("bmpData", new Supplier() { // from class: com.sunia.HTREnginev2.s1i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfBitmapDib.this.getBMPData();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public BufferedImage getImage() {
        return getImage(null, null, false);
    }

    public BufferedImage getPlaceholder() {
        if (this.headerHeight <= 0 || this.headerWidth <= 0) {
            return new BufferedImage(1, 1, 2);
        }
        BufferedImage bufferedImage = new BufferedImage(this.headerWidth, this.headerHeight, 2);
        Graphics2D createGraphics = bufferedImage.createGraphics();
        createGraphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        createGraphics.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
        createGraphics.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BICUBIC);
        createGraphics.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
        createGraphics.setComposite(AlphaComposite.Clear);
        createGraphics.fillRect(0, 0, this.headerWidth, this.headerHeight);
        int min = Math.min(this.headerWidth, this.headerHeight) / 7;
        Color color = Color.LIGHT_GRAY;
        Color color2 = Color.GRAY;
        LinearGradientPaint linearGradientPaint = new LinearGradientPaint(0.0f, 0.0f, 5.0f, 5.0f, new float[]{0.0f, 0.1f, 0.1001f}, new Color[]{color2, color2, color}, MultipleGradientPaint.CycleMethod.REFLECT);
        createGraphics.setComposite(AlphaComposite.SrcOver.derive(0.4f));
        createGraphics.setPaint(linearGradientPaint);
        createGraphics.fillRoundRect(0, 0, this.headerWidth - 1, this.headerHeight - 1, min, min);
        createGraphics.setColor(Color.DARK_GRAY);
        createGraphics.setComposite(AlphaComposite.Src);
        createGraphics.setStroke(new BasicStroke(2.0f));
        createGraphics.drawRoundRect(0, 0, this.headerWidth - 1, this.headerHeight - 1, min, min);
        createGraphics.dispose();
        return bufferedImage;
    }

    public int init(LittleEndianInputStream littleEndianInputStream, int i) throws IOException {
        Compression compression;
        littleEndianInputStream.mark(10000);
        int readHeader = readHeader(littleEndianInputStream);
        this.introSize = readHeader;
        this.introSize = readHeader + readColors(littleEndianInputStream);
        littleEndianInputStream.reset();
        int abs = (((((this.headerWidth * this.headerPlanes) * this.headerBitCount.flag) + 31) & (-32)) / 8) * Math.abs(this.headerHeight);
        if (this.headerSize != 12 && (compression = this.headerCompression) != Compression.BI_RGB && compression != Compression.BI_BITFIELDS && compression != Compression.BI_CMYK) {
            byte[] safelyAllocate = IOUtils.safelyAllocate(i, HwmfPicture.getMaxRecordLength());
            this.imageData = safelyAllocate;
            littleEndianInputStream.readFully(safelyAllocate);
            return i;
        }
        int min = Math.min(this.introSize + abs, i);
        byte[] safelyAllocate2 = IOUtils.safelyAllocate(min, HwmfPicture.getMaxRecordLength());
        this.imageData = safelyAllocate2;
        littleEndianInputStream.readFully(safelyAllocate2, 0, this.introSize);
        int i2 = i - min;
        littleEndianInputStream.skipFully(i2);
        byte[] bArr = this.imageData;
        int i3 = this.introSize;
        return this.introSize + i2 + littleEndianInputStream.read(bArr, i3, min - i3);
    }

    public boolean isValid() {
        if (this.imageData == null) {
            return false;
        }
        if (this.headerBitCount != BitCount.BI_BITCOUNT_1) {
            return true;
        }
        Color[] colorArr = this.colorTable;
        if (colorArr == null) {
            return false;
        }
        for (Color color : colorArr) {
            if (!Color.BLACK.equals(color)) {
                return true;
            }
        }
        return false;
    }

    public int readColors(LittleEndianInputStream littleEndianInputStream) throws IOException {
        switch (C195501.$SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$BitCount[this.headerBitCount.ordinal()]) {
            case 2:
                long j = this.headerColorUsed;
                return readRGBQuad(littleEndianInputStream, (int) (j != 0 ? Math.min(j, 2L) : 2L));
            case 3:
                long j2 = this.headerColorUsed;
                return readRGBQuad(littleEndianInputStream, (int) (j2 != 0 ? Math.min(j2, 16L) : 16L));
            case 4:
                long j3 = this.headerColorUsed;
                return readRGBQuad(littleEndianInputStream, (int) (j3 != 0 ? Math.min(j3, 256L) : 256L));
            case 5:
                int i = C195501.$SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$Compression[this.headerCompression.ordinal()];
                if (i == 1) {
                    this.colorMaskB = 31;
                    this.colorMaskG = 992;
                    this.colorMaskR = 31744;
                    return 0;
                }
                if (i == 2) {
                    this.colorMaskB = littleEndianInputStream.readInt();
                    this.colorMaskG = littleEndianInputStream.readInt();
                    this.colorMaskR = littleEndianInputStream.readInt();
                    return 12;
                }
                throw new IOException("Invalid compression option (" + this.headerCompression + ") for bitcount (" + this.headerBitCount + ").");
            case 6:
            case 7:
                int i2 = C195501.$SwitchMap$org$apache$poi$hwmf$record$HwmfBitmapDib$Compression[this.headerCompression.ordinal()];
                if (i2 == 1) {
                    this.colorMaskR = 255;
                    this.colorMaskG = 255;
                    this.colorMaskB = 255;
                    return 0;
                }
                if (i2 == 2) {
                    this.colorMaskB = littleEndianInputStream.readInt();
                    this.colorMaskG = littleEndianInputStream.readInt();
                    this.colorMaskR = littleEndianInputStream.readInt();
                    return 12;
                }
                throw new IOException("Invalid compression option (" + this.headerCompression + ") for bitcount (" + this.headerBitCount + ").");
            default:
                return 0;
        }
    }

    public int readHeader(LittleEndianInputStream littleEndianInputStream) {
        int readInt = littleEndianInputStream.readInt();
        this.headerSize = readInt;
        if (readInt == 12) {
            this.headerWidth = littleEndianInputStream.readUShort();
            this.headerHeight = littleEndianInputStream.readUShort();
            this.headerPlanes = littleEndianInputStream.readUShort();
            this.headerBitCount = BitCount.valueOf(littleEndianInputStream.readUShort());
            return 12;
        }
        this.headerSize = 40;
        this.headerWidth = littleEndianInputStream.readInt();
        this.headerHeight = littleEndianInputStream.readInt();
        this.headerPlanes = littleEndianInputStream.readUShort();
        this.headerBitCount = BitCount.valueOf(littleEndianInputStream.readUShort());
        this.headerCompression = Compression.valueOf((int) littleEndianInputStream.readUInt());
        this.headerImageSize = littleEndianInputStream.readUInt();
        this.headerXPelsPerMeter = littleEndianInputStream.readInt();
        this.headerYPelsPerMeter = littleEndianInputStream.readInt();
        this.headerColorUsed = littleEndianInputStream.readUInt();
        this.headerColorImportant = littleEndianInputStream.readUInt();
        return 40;
    }

    public int readRGBQuad(LittleEndianInputStream littleEndianInputStream, int i) throws IOException {
        this.colorTable = new Color[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            int readUByte = littleEndianInputStream.readUByte();
            int readUByte2 = littleEndianInputStream.readUByte();
            int readUByte3 = littleEndianInputStream.readUByte();
            littleEndianInputStream.readUByte();
            this.colorTable[i3] = new Color(readUByte3, readUByte2, readUByte);
            i2 += 4;
        }
        return i2;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    public BufferedImage getImage(Color color, Color color2, boolean z) {
        try {
            BufferedImage read = ImageIO.read(getBMPStream());
            if (color == null || color2 == null || this.headerBitCount != BitCount.BI_BITCOUNT_1) {
                return read;
            }
            IndexColorModel indexColorModel = (IndexColorModel) read.getColorModel();
            int rgb = color.getRGB();
            int rgb2 = color2.getRGB() & (z ? 16777215 : -1);
            int i = (indexColorModel.getRGB(0) & 16777215) == (16777215 & rgb2) ? 1 : 0;
            return new BufferedImage((ColorModel) new IndexColorModel(1, 2, i != 0 ? new int[]{rgb2, rgb} : new int[]{rgb, rgb2}, 0, z, i ^ 1, read.getData().getTransferType()), read.getRaster(), false, (Hashtable<?, ?>) null);
        } catch (IOException | RuntimeException unused) {
            LOG.atError().log("invalid bitmap data - returning placeholder image");
            return getPlaceholder();
        }
    }
}
