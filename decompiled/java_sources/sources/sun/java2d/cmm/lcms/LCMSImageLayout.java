package sun.java2d.cmm.lcms;

import com.fasterxml.jackson.core.base.ParserBase;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentColorModel;
import java.awt.image.ComponentSampleModel;
import java.awt.image.Raster;
import sun.awt.image.ByteComponentRaster;
import sun.awt.image.IntegerComponentRaster;
import sun.awt.image.ShortComponentRaster;

/* loaded from: classes16.dex */
class LCMSImageLayout {
    public static final int DOSWAP = 1024;
    public static final int DT_BYTE = 0;
    public static final int DT_DOUBLE = 3;
    public static final int DT_INT = 2;
    public static final int DT_SHORT = 1;
    public static final int SWAPFIRST = 16384;
    Object dataArray;
    private int dataArrayLength;
    int dataType;
    int height;
    private boolean imageAtOnce;
    boolean isIntPacked;
    private int nextPixelOffset;
    int nextRowOffset;
    int offset;
    int pixelType;
    int width;
    public static final int PT_RGB_8 = CHANNELS_SH(3) | BYTES_SH(1);
    public static final int PT_GRAY_8 = CHANNELS_SH(1) | BYTES_SH(1);
    public static final int PT_GRAY_16 = CHANNELS_SH(1) | BYTES_SH(2);
    public static final int PT_RGBA_8 = (EXTRA_SH(1) | CHANNELS_SH(3)) | BYTES_SH(1);
    public static final int PT_ARGB_8 = ((EXTRA_SH(1) | CHANNELS_SH(3)) | BYTES_SH(1)) | 16384;
    public static final int PT_BGR_8 = (CHANNELS_SH(3) | 1024) | BYTES_SH(1);
    public static final int PT_ABGR_8 = ((EXTRA_SH(1) | 1024) | CHANNELS_SH(3)) | BYTES_SH(1);
    public static final int PT_BGRA_8 = (((CHANNELS_SH(3) | EXTRA_SH(1)) | BYTES_SH(1)) | 1024) | 16384;

    /* renamed from: sun.java2d.cmm.lcms.LCMSImageLayout$1 */
    /* loaded from: classes16.dex */
    public static /* synthetic */ class C205501 {
        static final /* synthetic */ int[] $SwitchMap$sun$java2d$cmm$lcms$LCMSImageLayout$BandOrder;

        static {
            int[] iArr = new int[BandOrder.values().length];
            $SwitchMap$sun$java2d$cmm$lcms$LCMSImageLayout$BandOrder = iArr;
            try {
                iArr[BandOrder.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$sun$java2d$cmm$lcms$LCMSImageLayout$BandOrder[BandOrder.DIRECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$sun$java2d$cmm$lcms$LCMSImageLayout$BandOrder[BandOrder.INVERTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes16.dex */
    public enum BandOrder {
        DIRECT,
        INVERTED,
        ARBITRARY,
        UNKNOWN;

        public static BandOrder getBandOrder(int[] iArr) {
            int i;
            BandOrder bandOrder = UNKNOWN;
            int length = iArr.length;
            while (true) {
                BandOrder bandOrder2 = ARBITRARY;
                if (bandOrder == bandOrder2 || i >= iArr.length) {
                    break;
                }
                int i2 = C205501.$SwitchMap$sun$java2d$cmm$lcms$LCMSImageLayout$BandOrder[bandOrder.ordinal()];
                if (i2 == 1) {
                    int i3 = iArr[i];
                    if (i3 == i) {
                        bandOrder = DIRECT;
                    } else {
                        if (i3 == (length - 1) - i) {
                            bandOrder = INVERTED;
                        }
                        bandOrder = bandOrder2;
                    }
                } else if (i2 != 2) {
                    if (i2 == 3) {
                        if (iArr[i] == (length - 1) - i) {
                        }
                        bandOrder = bandOrder2;
                    }
                } else {
                    i = iArr[i] == i ? i + 1 : 0;
                    bandOrder = bandOrder2;
                }
            }
            return bandOrder;
        }
    }

    /* loaded from: classes16.dex */
    public static class ImageLayoutException extends Exception {
        public ImageLayoutException(String str) {
            super(str);
        }
    }

    private LCMSImageLayout(int i, int i2, int i3) throws ImageLayoutException {
        this.isIntPacked = false;
        this.imageAtOnce = false;
        this.pixelType = i2;
        this.width = i;
        this.height = 1;
        this.nextPixelOffset = i3;
        this.nextRowOffset = safeMult(i3, i);
        this.offset = 0;
    }

    public static int BYTES_SH(int i) {
        return i;
    }

    public static int CHANNELS_SH(int i) {
        return i << 3;
    }

    public static int EXTRA_SH(int i) {
        return i << 7;
    }

    public static LCMSImageLayout createImageLayout(BufferedImage bufferedImage) throws ImageLayoutException {
        LCMSImageLayout lCMSImageLayout = new LCMSImageLayout();
        int type = bufferedImage.getType();
        if (type == 1) {
            lCMSImageLayout.pixelType = PT_ARGB_8;
            lCMSImageLayout.isIntPacked = true;
        } else if (type == 2) {
            lCMSImageLayout.pixelType = PT_ARGB_8;
            lCMSImageLayout.isIntPacked = true;
        } else if (type == 4) {
            lCMSImageLayout.pixelType = PT_ABGR_8;
            lCMSImageLayout.isIntPacked = true;
        } else if (type == 5) {
            lCMSImageLayout.pixelType = PT_BGR_8;
        } else if (type == 6) {
            lCMSImageLayout.pixelType = PT_ABGR_8;
        } else if (type != 10) {
            if (type != 11) {
                ColorModel colorModel = bufferedImage.getColorModel();
                if (!(colorModel instanceof ComponentColorModel)) {
                    return null;
                }
                for (int i : ((ComponentColorModel) colorModel).getComponentSize()) {
                    if (i != 8) {
                        return null;
                    }
                }
                return createImageLayout(bufferedImage.getRaster());
            }
            lCMSImageLayout.pixelType = PT_GRAY_16;
        } else {
            lCMSImageLayout.pixelType = PT_GRAY_8;
        }
        lCMSImageLayout.width = bufferedImage.getWidth();
        lCMSImageLayout.height = bufferedImage.getHeight();
        int type2 = bufferedImage.getType();
        if (type2 == 1 || type2 == 2 || type2 == 4) {
            IntegerComponentRaster integerComponentRaster = (IntegerComponentRaster) bufferedImage.getRaster();
            lCMSImageLayout.nextRowOffset = safeMult(4, integerComponentRaster.getScanlineStride());
            lCMSImageLayout.nextPixelOffset = safeMult(4, integerComponentRaster.getPixelStride());
            lCMSImageLayout.offset = safeMult(4, integerComponentRaster.getDataOffset(0));
            lCMSImageLayout.dataArray = integerComponentRaster.getDataStorage();
            lCMSImageLayout.dataArrayLength = integerComponentRaster.getDataStorage().length * 4;
            lCMSImageLayout.dataType = 2;
            if (lCMSImageLayout.nextRowOffset == lCMSImageLayout.width * 4 * integerComponentRaster.getPixelStride()) {
                lCMSImageLayout.imageAtOnce = true;
            }
        } else if (type2 == 5 || type2 == 6) {
            ByteComponentRaster byteComponentRaster = (ByteComponentRaster) bufferedImage.getRaster();
            lCMSImageLayout.nextRowOffset = byteComponentRaster.getScanlineStride();
            lCMSImageLayout.nextPixelOffset = byteComponentRaster.getPixelStride();
            lCMSImageLayout.offset = byteComponentRaster.getDataOffset(bufferedImage.getSampleModel().getNumBands() - 1);
            lCMSImageLayout.dataArray = byteComponentRaster.getDataStorage();
            lCMSImageLayout.dataArrayLength = byteComponentRaster.getDataStorage().length;
            lCMSImageLayout.dataType = 0;
            if (lCMSImageLayout.nextRowOffset == lCMSImageLayout.width * byteComponentRaster.getPixelStride()) {
                lCMSImageLayout.imageAtOnce = true;
            }
        } else if (type2 != 10) {
            if (type2 != 11) {
                return null;
            }
            ShortComponentRaster shortComponentRaster = (ShortComponentRaster) bufferedImage.getRaster();
            lCMSImageLayout.nextRowOffset = safeMult(2, shortComponentRaster.getScanlineStride());
            lCMSImageLayout.nextPixelOffset = safeMult(2, shortComponentRaster.getPixelStride());
            lCMSImageLayout.offset = safeMult(2, shortComponentRaster.getDataOffset(0));
            lCMSImageLayout.dataArray = shortComponentRaster.getDataStorage();
            lCMSImageLayout.dataArrayLength = shortComponentRaster.getDataStorage().length * 2;
            lCMSImageLayout.dataType = 1;
            if (lCMSImageLayout.nextRowOffset == lCMSImageLayout.width * 2 * shortComponentRaster.getPixelStride()) {
                lCMSImageLayout.imageAtOnce = true;
            }
        } else {
            ByteComponentRaster byteComponentRaster2 = (ByteComponentRaster) bufferedImage.getRaster();
            lCMSImageLayout.nextRowOffset = byteComponentRaster2.getScanlineStride();
            lCMSImageLayout.nextPixelOffset = byteComponentRaster2.getPixelStride();
            lCMSImageLayout.dataArrayLength = byteComponentRaster2.getDataStorage().length;
            lCMSImageLayout.offset = byteComponentRaster2.getDataOffset(0);
            lCMSImageLayout.dataArray = byteComponentRaster2.getDataStorage();
            lCMSImageLayout.dataType = 0;
            if (lCMSImageLayout.nextRowOffset == lCMSImageLayout.width * byteComponentRaster2.getPixelStride()) {
                lCMSImageLayout.imageAtOnce = true;
            }
        }
        lCMSImageLayout.verify();
        return lCMSImageLayout;
    }

    private static int getBytesPerPixel(int i) {
        return (i & 7) * (((i >> 3) & 15) + ((i >> 7) & 7));
    }

    public static int safeAdd(int i, int i2) throws ImageLayoutException {
        long j = i + i2;
        if (j < ParserBase.f21225q || j > 2147483647L) {
            throw new ImageLayoutException("Invalid image layout");
        }
        return (int) j;
    }

    public static int safeMult(int i, int i2) throws ImageLayoutException {
        long j = i * i2;
        if (j < ParserBase.f21225q || j > 2147483647L) {
            throw new ImageLayoutException("Invalid image layout");
        }
        return (int) j;
    }

    private void verify() throws ImageLayoutException {
        int i = this.offset;
        if (i < 0 || i >= this.dataArrayLength) {
            throw new ImageLayoutException("Invalid image layout");
        }
        if (this.nextPixelOffset != getBytesPerPixel(this.pixelType)) {
            throw new ImageLayoutException("Invalid image layout");
        }
        int safeAdd = safeAdd(this.offset, safeAdd(safeMult(this.nextPixelOffset, this.width - 1), safeMult(this.nextRowOffset, this.height - 1)));
        if (safeAdd < 0 || safeAdd >= this.dataArrayLength) {
            throw new ImageLayoutException("Invalid image layout");
        }
    }

    private LCMSImageLayout(int i, int i2, int i3, int i4) throws ImageLayoutException {
        this.isIntPacked = false;
        this.imageAtOnce = false;
        this.pixelType = i3;
        this.width = i;
        this.height = i2;
        this.nextPixelOffset = i4;
        this.nextRowOffset = safeMult(i4, i);
        this.offset = 0;
    }

    public LCMSImageLayout(byte[] bArr, int i, int i2, int i3) throws ImageLayoutException {
        this(i, i2, i3);
        this.dataType = 0;
        this.dataArray = bArr;
        this.dataArrayLength = bArr.length;
        verify();
    }

    public LCMSImageLayout(short[] sArr, int i, int i2, int i3) throws ImageLayoutException {
        this(i, i2, i3);
        this.dataType = 1;
        this.dataArray = sArr;
        this.dataArrayLength = sArr.length * 2;
        verify();
    }

    public LCMSImageLayout(int[] iArr, int i, int i2, int i3) throws ImageLayoutException {
        this(i, i2, i3);
        this.dataType = 2;
        this.dataArray = iArr;
        this.dataArrayLength = iArr.length * 4;
        verify();
    }

    public LCMSImageLayout(double[] dArr, int i, int i2, int i3) throws ImageLayoutException {
        this(i, i2, i3);
        this.dataType = 3;
        this.dataArray = dArr;
        this.dataArrayLength = dArr.length * 8;
        verify();
    }

    private LCMSImageLayout() {
        this.isIntPacked = false;
        this.imageAtOnce = false;
    }

    public static LCMSImageLayout createImageLayout(Raster raster) {
        int i;
        LCMSImageLayout lCMSImageLayout = new LCMSImageLayout();
        if (!(raster instanceof ByteComponentRaster) || !(raster.getSampleModel() instanceof ComponentSampleModel)) {
            return null;
        }
        ByteComponentRaster byteComponentRaster = (ByteComponentRaster) raster;
        ComponentSampleModel componentSampleModel = (ComponentSampleModel) raster.getSampleModel();
        lCMSImageLayout.pixelType = CHANNELS_SH(byteComponentRaster.getNumBands()) | BYTES_SH(1);
        int i2 = C205501.$SwitchMap$sun$java2d$cmm$lcms$LCMSImageLayout$BandOrder[BandOrder.getBandOrder(componentSampleModel.getBandOffsets()).ordinal()];
        if (i2 == 2) {
            i = 0;
        } else {
            if (i2 != 3) {
                return null;
            }
            lCMSImageLayout.pixelType |= 1024;
            i = componentSampleModel.getNumBands() - 1;
        }
        lCMSImageLayout.nextRowOffset = byteComponentRaster.getScanlineStride();
        lCMSImageLayout.nextPixelOffset = byteComponentRaster.getPixelStride();
        lCMSImageLayout.offset = byteComponentRaster.getDataOffset(i);
        lCMSImageLayout.dataArray = byteComponentRaster.getDataStorage();
        lCMSImageLayout.dataType = 0;
        lCMSImageLayout.width = byteComponentRaster.getWidth();
        lCMSImageLayout.height = byteComponentRaster.getHeight();
        if (lCMSImageLayout.nextRowOffset == lCMSImageLayout.width * byteComponentRaster.getPixelStride()) {
            lCMSImageLayout.imageAtOnce = true;
        }
        return lCMSImageLayout;
    }
}
