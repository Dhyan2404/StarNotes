package sun.awt.image;

import java.awt.GraphicsConfiguration;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.DataBuffer;
import java.awt.image.DirectColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.loops.CompositeType;
import sun.java2d.loops.RenderLoops;
import sun.java2d.loops.SurfaceType;

/* loaded from: classes16.dex */
public class BufImgSurfaceData extends SurfaceData {
    private static final int CACHE_SIZE = 5;
    private static final int DCM_4444_ALPHA_MASK = 61440;
    private static final int DCM_4444_BLUE_MASK = 15;
    private static final int DCM_4444_GREEN_MASK = 240;
    private static final int DCM_4444_RED_MASK = 3840;
    private static final int DCM_555X_BLUE_MASK = 62;
    private static final int DCM_555X_GREEN_MASK = 1984;
    private static final int DCM_555X_RED_MASK = 63488;
    private static final int DCM_ARGBBM_ALPHA_MASK = 16777216;
    private static final int DCM_ARGBBM_BLUE_MASK = 255;
    private static final int DCM_ARGBBM_GREEN_MASK = 65280;
    private static final int DCM_ARGBBM_RED_MASK = 16711680;
    private static final int DCM_RGBX_BLUE_MASK = 65280;
    private static final int DCM_RGBX_GREEN_MASK = 16711680;
    private static final int DCM_RGBX_RED_MASK = -16777216;
    private static RenderLoops[] loopcache;
    private static SurfaceType[] typecache;
    BufferedImage bufImg;
    RenderLoops solidloops;

    /* loaded from: classes16.dex */
    public static final class ICMColorData {
        private long pData;

        private ICMColorData(long j) {
            this.pData = j;
        }

        public void finalize() {
            long j = this.pData;
            if (j != 0) {
                BufImgSurfaceData.freeNativeICMData(j);
                this.pData = 0L;
            }
        }
    }

    static {
        initIDs(IndexColorModel.class, ICMColorData.class);
        loopcache = new RenderLoops[5];
        typecache = new SurfaceType[5];
    }

    public BufImgSurfaceData(DataBuffer dataBuffer, BufferedImage bufferedImage, SurfaceType surfaceType) {
        super(SunWritableRaster.stealTrackable(dataBuffer), surfaceType, bufferedImage.getColorModel());
        this.bufImg = bufferedImage;
    }

    public static SurfaceData createData(BufferedImage bufferedImage) {
        SurfaceData createDataIC;
        SurfaceType surfaceType;
        SurfaceType surfaceType2;
        SurfaceType surfaceType3;
        if (bufferedImage != null) {
            ColorModel colorModel = bufferedImage.getColorModel();
            IndexColorModel indexColorModel = null;
            switch (bufferedImage.getType()) {
                case 1:
                    createDataIC = createDataIC(bufferedImage, SurfaceType.IntRgb);
                    break;
                case 2:
                    createDataIC = createDataIC(bufferedImage, SurfaceType.IntArgb);
                    break;
                case 3:
                    createDataIC = createDataIC(bufferedImage, SurfaceType.IntArgbPre);
                    break;
                case 4:
                    createDataIC = createDataIC(bufferedImage, SurfaceType.IntBgr);
                    break;
                case 5:
                    createDataIC = createDataBC(bufferedImage, SurfaceType.ThreeByteBgr, 2);
                    break;
                case 6:
                    createDataIC = createDataBC(bufferedImage, SurfaceType.FourByteAbgr, 3);
                    break;
                case 7:
                    createDataIC = createDataBC(bufferedImage, SurfaceType.FourByteAbgrPre, 3);
                    break;
                case 8:
                    createDataIC = createDataSC(bufferedImage, SurfaceType.Ushort565Rgb, null);
                    break;
                case 9:
                    createDataIC = createDataSC(bufferedImage, SurfaceType.Ushort555Rgb, null);
                    break;
                case 10:
                    createDataIC = createDataBC(bufferedImage, SurfaceType.ByteGray, 0);
                    break;
                case 11:
                    createDataIC = createDataSC(bufferedImage, SurfaceType.UshortGray, null);
                    break;
                case 12:
                    int sampleSize = bufferedImage.getRaster().getSampleModel().getSampleSize(0);
                    if (sampleSize == 1) {
                        surfaceType = SurfaceType.ByteBinary1Bit;
                    } else if (sampleSize == 2) {
                        surfaceType = SurfaceType.ByteBinary2Bit;
                    } else if (sampleSize == 4) {
                        surfaceType = SurfaceType.ByteBinary4Bit;
                    } else {
                        throw new InternalError("Unrecognized pixel size");
                    }
                    createDataIC = createDataBP(bufferedImage, surfaceType);
                    break;
                case 13:
                    int transparency = colorModel.getTransparency();
                    if (transparency != 1) {
                        if (transparency == 2) {
                            surfaceType2 = SurfaceType.ByteIndexedBm;
                        } else if (transparency == 3) {
                            surfaceType2 = SurfaceType.ByteIndexed;
                        } else {
                            throw new InternalError("Unrecognized transparency");
                        }
                    } else if (SurfaceData.isOpaqueGray((IndexColorModel) colorModel)) {
                        surfaceType2 = SurfaceType.Index8Gray;
                    } else {
                        surfaceType2 = SurfaceType.ByteIndexedOpaque;
                    }
                    createDataIC = createDataBC(bufferedImage, surfaceType2, 0);
                    break;
                default:
                    WritableRaster raster = bufferedImage.getRaster();
                    int numBands = raster.getNumBands();
                    if ((raster instanceof IntegerComponentRaster) && raster.getNumDataElements() == 1 && ((IntegerComponentRaster) raster).getPixelStride() == 1) {
                        SurfaceType surfaceType4 = SurfaceType.AnyInt;
                        if (colorModel instanceof DirectColorModel) {
                            DirectColorModel directColorModel = (DirectColorModel) colorModel;
                            int alphaMask = directColorModel.getAlphaMask();
                            int redMask = directColorModel.getRedMask();
                            int greenMask = directColorModel.getGreenMask();
                            int blueMask = directColorModel.getBlueMask();
                            if (numBands == 3 && alphaMask == 0 && redMask == -16777216 && greenMask == 16711680 && blueMask == 65280) {
                                surfaceType4 = SurfaceType.IntRgbx;
                            } else if (numBands == 4 && alphaMask == 16777216 && redMask == 16711680 && greenMask == 65280 && blueMask == 255) {
                                surfaceType4 = SurfaceType.IntArgbBm;
                            } else {
                                surfaceType4 = SurfaceType.AnyDcm;
                            }
                        }
                        createDataIC = createDataIC(bufferedImage, surfaceType4);
                        break;
                    } else if ((raster instanceof ShortComponentRaster) && raster.getNumDataElements() == 1 && ((ShortComponentRaster) raster).getPixelStride() == 1) {
                        SurfaceType surfaceType5 = SurfaceType.AnyShort;
                        if (colorModel instanceof DirectColorModel) {
                            DirectColorModel directColorModel2 = (DirectColorModel) colorModel;
                            int alphaMask2 = directColorModel2.getAlphaMask();
                            int redMask2 = directColorModel2.getRedMask();
                            int greenMask2 = directColorModel2.getGreenMask();
                            int blueMask2 = directColorModel2.getBlueMask();
                            if (numBands == 3 && alphaMask2 == 0 && redMask2 == 63488 && greenMask2 == DCM_555X_GREEN_MASK && blueMask2 == 62) {
                                surfaceType3 = SurfaceType.Ushort555Rgbx;
                            } else if (numBands == 4 && alphaMask2 == 61440 && redMask2 == 3840 && greenMask2 == 240 && blueMask2 == 15) {
                                surfaceType3 = SurfaceType.Ushort4444Argb;
                            }
                            surfaceType5 = surfaceType3;
                        } else if (colorModel instanceof IndexColorModel) {
                            IndexColorModel indexColorModel2 = (IndexColorModel) colorModel;
                            if (indexColorModel2.getPixelSize() == 12) {
                                if (SurfaceData.isOpaqueGray(indexColorModel2)) {
                                    surfaceType5 = SurfaceType.Index12Gray;
                                } else {
                                    surfaceType5 = SurfaceType.UshortIndexed;
                                }
                                indexColorModel = indexColorModel2;
                            }
                        }
                        createDataIC = createDataSC(bufferedImage, surfaceType5, indexColorModel);
                        break;
                    } else {
                        createDataIC = new BufImgSurfaceData(raster.getDataBuffer(), bufferedImage, SurfaceType.Custom);
                        break;
                    }
                    break;
            }
            ((BufImgSurfaceData) createDataIC).initSolidLoops();
            return createDataIC;
        }
        throw new NullPointerException("BufferedImage cannot be null");
    }

    public static SurfaceData createDataBC(BufferedImage bufferedImage, SurfaceType surfaceType, int i) {
        ByteComponentRaster byteComponentRaster = (ByteComponentRaster) bufferedImage.getRaster();
        BufImgSurfaceData bufImgSurfaceData = new BufImgSurfaceData(byteComponentRaster.getDataBuffer(), bufferedImage, surfaceType);
        ColorModel colorModel = bufferedImage.getColorModel();
        bufImgSurfaceData.initRaster(byteComponentRaster.getDataStorage(), byteComponentRaster.getDataOffset(i), 0, byteComponentRaster.getWidth(), byteComponentRaster.getHeight(), byteComponentRaster.getPixelStride(), byteComponentRaster.getScanlineStride(), colorModel instanceof IndexColorModel ? (IndexColorModel) colorModel : null);
        return bufImgSurfaceData;
    }

    public static SurfaceData createDataBP(BufferedImage bufferedImage, SurfaceType surfaceType) {
        BytePackedRaster bytePackedRaster = (BytePackedRaster) bufferedImage.getRaster();
        BufImgSurfaceData bufImgSurfaceData = new BufImgSurfaceData(bytePackedRaster.getDataBuffer(), bufferedImage, surfaceType);
        ColorModel colorModel = bufferedImage.getColorModel();
        bufImgSurfaceData.initRaster(bytePackedRaster.getDataStorage(), bytePackedRaster.getDataBitOffset() / 8, bytePackedRaster.getDataBitOffset() & 7, bytePackedRaster.getWidth(), bytePackedRaster.getHeight(), 0, bytePackedRaster.getScanlineStride(), colorModel instanceof IndexColorModel ? (IndexColorModel) colorModel : null);
        return bufImgSurfaceData;
    }

    public static SurfaceData createDataIC(BufferedImage bufferedImage, SurfaceType surfaceType) {
        IntegerComponentRaster integerComponentRaster = (IntegerComponentRaster) bufferedImage.getRaster();
        BufImgSurfaceData bufImgSurfaceData = new BufImgSurfaceData(integerComponentRaster.getDataBuffer(), bufferedImage, surfaceType);
        bufImgSurfaceData.initRaster(integerComponentRaster.getDataStorage(), integerComponentRaster.getDataOffset(0) * 4, 0, integerComponentRaster.getWidth(), integerComponentRaster.getHeight(), integerComponentRaster.getPixelStride() * 4, integerComponentRaster.getScanlineStride() * 4, null);
        return bufImgSurfaceData;
    }

    public static SurfaceData createDataSC(BufferedImage bufferedImage, SurfaceType surfaceType, IndexColorModel indexColorModel) {
        ShortComponentRaster shortComponentRaster = (ShortComponentRaster) bufferedImage.getRaster();
        BufImgSurfaceData bufImgSurfaceData = new BufImgSurfaceData(shortComponentRaster.getDataBuffer(), bufferedImage, surfaceType);
        bufImgSurfaceData.initRaster(shortComponentRaster.getDataStorage(), shortComponentRaster.getDataOffset(0) * 2, 0, shortComponentRaster.getWidth(), shortComponentRaster.getHeight(), shortComponentRaster.getPixelStride() * 2, shortComponentRaster.getScanlineStride() * 2, indexColorModel);
        return bufImgSurfaceData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void freeNativeICMData(long j) {
    }

    public static synchronized RenderLoops getSolidLoops(SurfaceType surfaceType) {
        synchronized (BufImgSurfaceData.class) {
            for (int i = 4; i >= 0; i--) {
                SurfaceType surfaceType2 = typecache[i];
                if (surfaceType2 == surfaceType) {
                    return loopcache[i];
                }
                if (surfaceType2 == null) {
                    break;
                }
            }
            RenderLoops makeRenderLoops = SurfaceData.makeRenderLoops(SurfaceType.OpaqueColor, CompositeType.SrcNoEa, surfaceType);
            RenderLoops[] renderLoopsArr = loopcache;
            System.arraycopy(renderLoopsArr, 1, renderLoopsArr, 0, 4);
            SurfaceType[] surfaceTypeArr = typecache;
            System.arraycopy(surfaceTypeArr, 1, surfaceTypeArr, 0, 4);
            loopcache[4] = makeRenderLoops;
            typecache[4] = surfaceType;
            return makeRenderLoops;
        }
    }

    private static void initIDs(Class cls, Class cls2) {
    }

    @Override // sun.java2d.SurfaceData
    public void checkCustomComposite() {
    }

    @Override // sun.java2d.SurfaceData
    public Rectangle getBounds() {
        return new Rectangle(this.bufImg.getWidth(), this.bufImg.getHeight());
    }

    @Override // sun.java2d.SurfaceData
    public Object getDestination() {
        return this.bufImg;
    }

    @Override // sun.java2d.SurfaceData
    public synchronized GraphicsConfiguration getDeviceConfiguration() {
        return null;
    }

    @Override // sun.java2d.SurfaceData
    public Raster getRaster(int i, int i2, int i3, int i4) {
        return this.bufImg.getRaster();
    }

    @Override // sun.java2d.SurfaceData
    public RenderLoops getRenderLoops(SunGraphics2D sunGraphics2D) {
        return (sunGraphics2D.paintState > 1 || sunGraphics2D.compositeState > 0) ? super.getRenderLoops(sunGraphics2D) : this.solidloops;
    }

    @Override // sun.java2d.SurfaceData
    public SurfaceData getReplacement() {
        return SurfaceData.restoreContents(this.bufImg);
    }

    public native void initRaster(Object obj, int i, int i2, int i3, int i4, int i5, int i6, IndexColorModel indexColorModel);

    public void initSolidLoops() {
        this.solidloops = getSolidLoops(getSurfaceType());
    }

    public BufImgSurfaceData(SurfaceType surfaceType, ColorModel colorModel) {
        super(surfaceType, colorModel);
    }

    public static SurfaceData createData(Raster raster, ColorModel colorModel) {
        throw new InternalError("SurfaceData not implemented for Raster/CM");
    }
}
