package java.awt.image;

import android.graphics.Bitmap;
import com.google.android.material.motion.MotionUtils;
import com.trans.android.ImageBridge;
import com.trans.android.util.BridgeUtils;
import dalvik.system.BaseDexClassLoader;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GraphicsEnvironment;
import java.awt.Image;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.Transparency;
import java.awt.color.ColorSpace;
import java.io.Closeable;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Hashtable;
import java.util.Set;
import java.util.Vector;
import sun.awt.image.ByteComponentRaster;
import sun.awt.image.BytePackedRaster;
import sun.awt.image.IntegerComponentRaster;
import sun.awt.image.OffScreenImageSource;
import sun.awt.image.ShortComponentRaster;

/* loaded from: classes5.dex */
public class BufferedImage extends Image implements WritableRenderedImage, Transparency, ImageBridge, Closeable {
    public static final int DCM_555_BLU_MASK = 31;
    public static final int DCM_555_GRN_MASK = 992;
    public static final int DCM_555_RED_MASK = 31744;
    public static final int DCM_565_BLU_MASK = 31;
    public static final int DCM_565_GRN_MASK = 2016;
    public static final int DCM_565_RED_MASK = 63488;
    public static final int DCM_ALPHA_MASK = -16777216;
    public static final int DCM_BGR_BLU_MASK = 16711680;
    public static final int DCM_BGR_GRN_MASK = 65280;
    public static final int DCM_BGR_RED_MASK = 255;
    public static final int DCM_BLUE_MASK = 255;
    public static final int DCM_GREEN_MASK = 65280;
    public static final int DCM_RED_MASK = 16711680;
    public static final int TYPE_3BYTE_BGR = 5;
    public static final int TYPE_4BYTE_ABGR = 6;
    public static final int TYPE_4BYTE_ABGR_PRE = 7;
    public static final int TYPE_BYTE_BINARY = 12;
    public static final int TYPE_BYTE_GRAY = 10;
    public static final int TYPE_BYTE_INDEXED = 13;
    public static final int TYPE_CUSTOM = 0;
    public static final int TYPE_INT_ARGB = 2;
    public static final int TYPE_INT_ARGB_PRE = 3;
    public static final int TYPE_INT_BGR = 4;
    public static final int TYPE_INT_RGB = 1;
    public static final int TYPE_USHORT_555_RGB = 9;
    public static final int TYPE_USHORT_565_RGB = 8;
    public static final int TYPE_USHORT_GRAY = 11;
    private ColorModel colorModel;
    private int imageType;
    private OffScreenImageSource osis;
    private Hashtable<String, Object> properties;
    private WritableRaster raster;

    static {
        ColorModel.loadLibraries();
        initIDs();
    }

    public BufferedImage(int i, int i2, int i3) {
        this.imageType = 0;
        switch (i3) {
            case 1:
                DirectColorModel directColorModel = new DirectColorModel(24, 16711680, 65280, 255, 0);
                this.colorModel = directColorModel;
                this.raster = directColorModel.createCompatibleWritableRaster(i, i2);
                break;
            case 2:
                ColorModel rGBdefault = ColorModel.getRGBdefault();
                this.colorModel = rGBdefault;
                this.raster = rGBdefault.createCompatibleWritableRaster(i, i2);
                break;
            case 3:
                DirectColorModel directColorModel2 = new DirectColorModel(ColorSpace.getInstance(1000), 32, 16711680, 65280, 255, -16777216, true, 3);
                this.colorModel = directColorModel2;
                this.raster = directColorModel2.createCompatibleWritableRaster(i, i2);
                break;
            case 4:
                DirectColorModel directColorModel3 = new DirectColorModel(24, 255, 65280, 16711680);
                this.colorModel = directColorModel3;
                this.raster = directColorModel3.createCompatibleWritableRaster(i, i2);
                break;
            case 5:
                this.colorModel = new ComponentColorModel(ColorSpace.getInstance(1000), new int[]{8, 8, 8}, false, false, 1, 0);
                this.raster = Raster.createInterleavedRaster(0, i, i2, i * 3, 3, new int[]{2, 1, 0}, (Point) null);
                break;
            case 6:
                this.colorModel = new ComponentColorModel(ColorSpace.getInstance(1000), new int[]{8, 8, 8, 8}, true, false, 3, 0);
                this.raster = Raster.createInterleavedRaster(0, i, i2, i * 4, 4, new int[]{3, 2, 1, 0}, (Point) null);
                break;
            case 7:
                this.colorModel = new ComponentColorModel(ColorSpace.getInstance(1000), new int[]{8, 8, 8, 8}, true, true, 3, 0);
                this.raster = Raster.createInterleavedRaster(0, i, i2, i * 4, 4, new int[]{3, 2, 1, 0}, (Point) null);
                break;
            case 8:
                DirectColorModel directColorModel4 = new DirectColorModel(16, DCM_565_RED_MASK, DCM_565_GRN_MASK, 31);
                this.colorModel = directColorModel4;
                this.raster = directColorModel4.createCompatibleWritableRaster(i, i2);
                break;
            case 9:
                DirectColorModel directColorModel5 = new DirectColorModel(15, 31744, 992, 31);
                this.colorModel = directColorModel5;
                this.raster = directColorModel5.createCompatibleWritableRaster(i, i2);
                break;
            case 10:
                ComponentColorModel componentColorModel = new ComponentColorModel(ColorSpace.getInstance(1003), new int[]{8}, false, true, 1, 0);
                this.colorModel = componentColorModel;
                this.raster = componentColorModel.createCompatibleWritableRaster(i, i2);
                break;
            case 11:
                ComponentColorModel componentColorModel2 = new ComponentColorModel(ColorSpace.getInstance(1003), new int[]{16}, false, true, 1, 1);
                this.colorModel = componentColorModel2;
                this.raster = componentColorModel2.createCompatibleWritableRaster(i, i2);
                break;
            case 12:
                byte[] bArr = {0, -1};
                this.colorModel = new IndexColorModel(1, 2, bArr, bArr, bArr);
                this.raster = Raster.createPackedRaster(0, i, i2, 1, 1, (Point) null);
                break;
            case 13:
                int[] iArr = new int[256];
                int i4 = 0;
                for (int i5 = 0; i5 < 256; i5 += 51) {
                    for (int i6 = 0; i6 < 256; i6 += 51) {
                        int i7 = 0;
                        while (i7 < 256) {
                            iArr[i4] = (i5 << 16) | (i6 << 8) | i7;
                            i7 += 51;
                            i4++;
                        }
                    }
                }
                int i8 = 256 / (256 - i4);
                int i9 = i8 * 3;
                while (i4 < 256) {
                    iArr[i4] = (i9 << 16) | (i9 << 8) | i9;
                    i9 += i8;
                    i4++;
                }
                this.colorModel = new IndexColorModel(8, 256, iArr, 0, false, -1, 0);
                this.raster = Raster.createInterleavedRaster(0, i, i2, 1, null);
                break;
            default:
                throw new IllegalArgumentException("Unknown image type " + i3);
        }
        this.imageType = i3;
    }

    private static void initIDs() {
    }

    private static boolean isStandard(ColorModel colorModel, WritableRaster writableRaster) {
        final Class<?> cls = colorModel.getClass();
        final Class<?> cls2 = writableRaster.getClass();
        final Class<?> cls3 = writableRaster.getSampleModel().getClass();
        return ((Boolean) AccessController.doPrivileged(new PrivilegedAction<Boolean>() { // from class: java.awt.image.BufferedImage.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public Boolean run() {
                return Boolean.valueOf((cls.getClassLoader() instanceof BaseDexClassLoader) && (cls3.getClassLoader() instanceof BaseDexClassLoader) && (cls2.getClassLoader() instanceof BaseDexClassLoader));
            }
        })).booleanValue();
    }

    @Override // java.awt.image.WritableRenderedImage
    public void addTileObserver(TileObserver tileObserver) {
    }

    public void close() throws IOException {
        this.colorModel = null;
        this.raster = null;
    }

    public void coerceData(boolean z) {
        if (!this.colorModel.hasAlpha() || this.colorModel.isAlphaPremultiplied() == z) {
            return;
        }
        this.colorModel = this.colorModel.coerceData(this.raster, z);
    }

    @Override // java.awt.image.RenderedImage
    public WritableRaster copyData(WritableRaster writableRaster) {
        if (writableRaster == null) {
            return (WritableRaster) getData();
        }
        int width = writableRaster.getWidth();
        int height = writableRaster.getHeight();
        int minX = writableRaster.getMinX();
        int minY = writableRaster.getMinY();
        Object obj = null;
        for (int i = minY; i < minY + height; i++) {
            int i2 = i;
            obj = this.raster.getDataElements(minX, i2, width, 1, obj);
            writableRaster.setDataElements(minX, i2, width, 1, obj);
        }
        return writableRaster;
    }

    public Graphics2D createGraphics() {
        return GraphicsEnvironment.getLocalGraphicsEnvironment().createGraphics(this);
    }

    public WritableRaster getAlphaRaster() {
        return this.colorModel.getAlphaRaster(this.raster);
    }

    public ColorModel getColorModel() {
        return this.colorModel;
    }

    public Raster getData() {
        int width = this.raster.getWidth();
        int height = this.raster.getHeight();
        int minX = this.raster.getMinX();
        int minY = this.raster.getMinY();
        WritableRaster createWritableRaster = Raster.createWritableRaster(this.raster.getSampleModel(), new Point(this.raster.getSampleModelTranslateX(), this.raster.getSampleModelTranslateY()));
        Object obj = null;
        for (int i = minY; i < minY + height; i++) {
            int i2 = i;
            obj = this.raster.getDataElements(minX, i2, width, 1, obj);
            createWritableRaster.setDataElements(minX, i2, width, 1, obj);
        }
        return createWritableRaster;
    }

    @Override // java.awt.Image
    public Graphics getGraphics() {
        return createGraphics();
    }

    @Override // java.awt.image.RenderedImage
    public int getHeight() {
        return this.raster.getHeight();
    }

    @Override // java.awt.image.RenderedImage
    public int getMinTileX() {
        return 0;
    }

    @Override // java.awt.image.RenderedImage
    public int getMinTileY() {
        return 0;
    }

    @Override // java.awt.image.RenderedImage
    public int getMinX() {
        return this.raster.getMinX();
    }

    @Override // java.awt.image.RenderedImage
    public int getMinY() {
        return this.raster.getMinY();
    }

    @Override // java.awt.image.RenderedImage
    public int getNumXTiles() {
        return 1;
    }

    @Override // java.awt.image.RenderedImage
    public int getNumYTiles() {
        return 1;
    }

    @Override // java.awt.Image
    public Object getProperty(String str, ImageObserver imageObserver) {
        return getProperty(str);
    }

    @Override // java.awt.image.RenderedImage
    public String[] getPropertyNames() {
        Hashtable<String, Object> hashtable = this.properties;
        if (hashtable == null || hashtable.isEmpty()) {
            return null;
        }
        Set<String> keySet = this.properties.keySet();
        return (String[]) keySet.toArray(new String[keySet.size()]);
    }

    public int getRGB(int i, int i2) {
        return this.colorModel.getRGB(this.raster.getDataElements(i, i2, null));
    }

    public WritableRaster getRaster() {
        return this.raster;
    }

    @Override // java.awt.image.RenderedImage
    public SampleModel getSampleModel() {
        return this.raster.getSampleModel();
    }

    @Override // java.awt.Image
    public ImageProducer getSource() {
        if (this.osis == null) {
            if (this.properties == null) {
                this.properties = new Hashtable<>();
            }
            this.osis = new OffScreenImageSource(this, this.properties);
        }
        return this.osis;
    }

    @Override // java.awt.image.RenderedImage
    public Vector<RenderedImage> getSources() {
        return null;
    }

    public BufferedImage getSubimage(int i, int i2, int i3, int i4) {
        return new BufferedImage(this.colorModel, this.raster.createWritableChild(i, i2, i3, i4, 0, 0, null), this.colorModel.isAlphaPremultiplied(), this.properties);
    }

    @Override // java.awt.image.RenderedImage
    public Raster getTile(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return this.raster;
        }
        throw new ArrayIndexOutOfBoundsException("BufferedImages only have one tile with index 0,0");
    }

    @Override // java.awt.image.RenderedImage
    public int getTileGridXOffset() {
        return this.raster.getSampleModelTranslateX();
    }

    @Override // java.awt.image.RenderedImage
    public int getTileGridYOffset() {
        return this.raster.getSampleModelTranslateY();
    }

    @Override // java.awt.image.RenderedImage
    public int getTileHeight() {
        return this.raster.getHeight();
    }

    @Override // java.awt.image.RenderedImage
    public int getTileWidth() {
        return this.raster.getWidth();
    }

    @Override // java.awt.Transparency
    public int getTransparency() {
        return this.colorModel.getTransparency();
    }

    public int getType() {
        return this.imageType;
    }

    @Override // java.awt.image.RenderedImage
    public int getWidth() {
        return this.raster.getWidth();
    }

    @Override // java.awt.image.WritableRenderedImage
    public WritableRaster getWritableTile(int i, int i2) {
        return this.raster;
    }

    @Override // java.awt.image.WritableRenderedImage
    public Point[] getWritableTileIndices() {
        return new Point[]{new Point(0, 0)};
    }

    @Override // java.awt.image.WritableRenderedImage
    public boolean hasTileWriters() {
        return true;
    }

    public boolean isAlphaPremultiplied() {
        return this.colorModel.isAlphaPremultiplied();
    }

    @Override // java.awt.image.WritableRenderedImage
    public boolean isTileWritable(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return true;
        }
        throw new IllegalArgumentException("Only 1 tile in image");
    }

    @Override // java.awt.image.WritableRenderedImage
    public void releaseWritableTile(int i, int i2) {
    }

    @Override // java.awt.image.WritableRenderedImage
    public void removeTileObserver(TileObserver tileObserver) {
    }

    @Override // java.awt.image.WritableRenderedImage
    public void setData(Raster raster) {
        Rectangle rectangle = new Rectangle(raster.getMinX(), raster.getMinY(), raster.getWidth(), raster.getHeight());
        WritableRaster writableRaster = this.raster;
        Rectangle intersection = rectangle.intersection(new Rectangle(0, 0, writableRaster.width, writableRaster.height));
        if (intersection.isEmpty()) {
            return;
        }
        int i = intersection.width;
        int i2 = intersection.height;
        int i3 = intersection.f97732x;
        int i4 = intersection.f97733y;
        int[] iArr = null;
        for (int i5 = i4; i5 < i4 + i2; i5++) {
            int i6 = i5;
            iArr = raster.getPixels(i3, i6, i, 1, iArr);
            this.raster.setPixels(i3, i6, i, 1, iArr);
        }
    }

    public synchronized void setRGB(int i, int i2, int i3) {
        this.raster.setDataElements(i, i2, this.colorModel.getDataElements(i3, null));
    }

    public String toString() {
        return "BufferedImage@" + Integer.toHexString(hashCode()) + ": type = " + this.imageType + " " + this.colorModel + " " + this.raster;
    }

    @Override // java.awt.Image
    public int getHeight(ImageObserver imageObserver) {
        return this.raster.getHeight();
    }

    @Override // java.awt.image.RenderedImage
    public Object getProperty(String str) {
        if (str != null) {
            Hashtable<String, Object> hashtable = this.properties;
            if (hashtable == null) {
                return Image.UndefinedProperty;
            }
            Object obj = hashtable.get(str);
            return obj == null ? Image.UndefinedProperty : obj;
        }
        throw new NullPointerException("null property name is not allowed");
    }

    public int[] getRGB(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) {
        Object obj;
        int numBands = this.raster.getNumBands();
        int dataType = this.raster.getDataBuffer().getDataType();
        if (dataType == 0) {
            obj = new byte[numBands];
        } else if (dataType == 1) {
            obj = new short[numBands];
        } else if (dataType == 3) {
            obj = new int[numBands];
        } else if (dataType == 4) {
            obj = new float[numBands];
        } else if (dataType == 5) {
            obj = new double[numBands];
        } else {
            throw new IllegalArgumentException("Unknown data buffer type: " + dataType);
        }
        if (iArr == null) {
            iArr = new int[(i4 * i6) + i5];
        }
        int i7 = i2;
        while (i7 < i2 + i4) {
            int i8 = i;
            int i9 = i5;
            while (i8 < i + i3) {
                iArr[i9] = this.colorModel.getRGB(this.raster.getDataElements(i8, i7, obj));
                i8++;
                i9++;
            }
            i7++;
            i5 += i6;
        }
        return iArr;
    }

    @Override // java.awt.Image
    public int getWidth(ImageObserver imageObserver) {
        return this.raster.getWidth();
    }

    public void setRGB(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) {
        Object obj = null;
        int i7 = i2;
        while (i7 < i2 + i4) {
            int i8 = i;
            int i9 = i5;
            while (i8 < i + i3) {
                obj = this.colorModel.getDataElements(iArr[i9], obj);
                this.raster.setDataElements(i8, i7, obj);
                i8++;
                i9++;
            }
            i7++;
            i5 += i6;
        }
    }

    @Override // java.awt.image.RenderedImage
    public Raster getData(Rectangle rectangle) {
        WritableRaster createWritableRaster = Raster.createWritableRaster(this.raster.getSampleModel().createCompatibleSampleModel(rectangle.width, rectangle.height), rectangle.getLocation());
        int i = rectangle.width;
        int i2 = rectangle.height;
        int i3 = rectangle.f97732x;
        int i4 = rectangle.f97733y;
        Object obj = null;
        int i5 = i4;
        while (true) {
            Object obj2 = obj;
            if (i5 >= i4 + i2) {
                return createWritableRaster;
            }
            obj = this.raster.getDataElements(i3, i5, i, 1, obj2);
            createWritableRaster.setDataElements(i3, i5, i, 1, obj);
            i5++;
        }
    }

    @Override // com.trans.android.ImageBridge
    public void setData(Bitmap bitmap) {
        BridgeUtils.copyData(bitmap, this.raster);
    }

    public BufferedImage(int i, int i2, int i3, IndexColorModel indexColorModel) {
        int i4;
        this.imageType = 0;
        if (indexColorModel.hasAlpha() && indexColorModel.isAlphaPremultiplied()) {
            throw new IllegalArgumentException("This image types do not have premultiplied alpha.");
        }
        int i5 = 1;
        if (i3 == 12) {
            int mapSize = indexColorModel.getMapSize();
            if (mapSize > 2) {
                i5 = 4;
                if (mapSize <= 4) {
                    i4 = 2;
                    this.raster = Raster.createPackedRaster(0, i, i2, 1, i4, (Point) null);
                } else if (mapSize > 16) {
                    throw new IllegalArgumentException("Color map for TYPE_BYTE_BINARY must have no more than 16 entries");
                }
            }
            i4 = i5;
            this.raster = Raster.createPackedRaster(0, i, i2, 1, i4, (Point) null);
        } else if (i3 == 13) {
            this.raster = Raster.createInterleavedRaster(0, i, i2, 1, null);
        } else {
            throw new IllegalArgumentException("Invalid image type (" + i3 + ").  Image type must be either TYPE_BYTE_BINARY or  TYPE_BYTE_INDEXED");
        }
        if (indexColorModel.isCompatibleRaster(this.raster)) {
            this.colorModel = indexColorModel;
            this.imageType = i3;
            return;
        }
        throw new IllegalArgumentException("Incompatible image type and IndexColorModel");
    }

    public BufferedImage(ColorModel colorModel, WritableRaster writableRaster, boolean z, Hashtable<?, ?> hashtable) {
        boolean z2;
        this.imageType = 0;
        if (colorModel.isCompatibleRaster(writableRaster)) {
            if (writableRaster.minX == 0 && writableRaster.minY == 0) {
                this.colorModel = colorModel;
                this.raster = writableRaster;
                if (hashtable != null && !hashtable.isEmpty()) {
                    this.properties = new Hashtable<>();
                    for (Object obj : hashtable.keySet()) {
                        if (obj instanceof String) {
                            this.properties.put((String) obj, hashtable.get(obj));
                        }
                    }
                }
                int numBands = writableRaster.getNumBands();
                boolean isAlphaPremultiplied = colorModel.isAlphaPremultiplied();
                boolean isStandard = isStandard(colorModel, writableRaster);
                coerceData(z);
                SampleModel sampleModel = writableRaster.getSampleModel();
                int type = colorModel.getColorSpace().getType();
                if (type != 5) {
                    if (type == 6 && isStandard && (colorModel instanceof ComponentColorModel)) {
                        if ((sampleModel instanceof ComponentSampleModel) && ((ComponentSampleModel) sampleModel).getPixelStride() != numBands) {
                            this.imageType = 0;
                            return;
                        }
                        if ((writableRaster instanceof ByteComponentRaster) && writableRaster.getNumBands() == 1 && colorModel.getComponentSize(0) == 8 && ((ByteComponentRaster) writableRaster).getPixelStride() == 1) {
                            this.imageType = 10;
                            return;
                        } else {
                            if ((writableRaster instanceof ShortComponentRaster) && writableRaster.getNumBands() == 1 && colorModel.getComponentSize(0) == 16 && ((ShortComponentRaster) writableRaster).getPixelStride() == 1) {
                                this.imageType = 11;
                                return;
                            }
                            return;
                        }
                    }
                    this.imageType = 0;
                    return;
                }
                if ((writableRaster instanceof IntegerComponentRaster) && (numBands == 3 || numBands == 4)) {
                    int pixelSize = colorModel.getPixelSize();
                    if (((IntegerComponentRaster) writableRaster).getPixelStride() == 1 && isStandard && (colorModel instanceof DirectColorModel)) {
                        if (pixelSize == 32 || pixelSize == 24) {
                            DirectColorModel directColorModel = (DirectColorModel) colorModel;
                            int redMask = directColorModel.getRedMask();
                            int greenMask = directColorModel.getGreenMask();
                            int blueMask = directColorModel.getBlueMask();
                            if (redMask == 16711680 && greenMask == 65280 && blueMask == 255) {
                                if (directColorModel.getAlphaMask() == -16777216) {
                                    this.imageType = isAlphaPremultiplied ? 3 : 2;
                                    return;
                                } else {
                                    if (directColorModel.hasAlpha()) {
                                        return;
                                    }
                                    this.imageType = 1;
                                    return;
                                }
                            }
                            if (redMask == 255 && greenMask == 65280 && blueMask == 16711680 && !directColorModel.hasAlpha()) {
                                this.imageType = 4;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                if ((colorModel instanceof IndexColorModel) && numBands == 1 && isStandard && (!colorModel.hasAlpha() || !isAlphaPremultiplied)) {
                    int pixelSize2 = ((IndexColorModel) colorModel).getPixelSize();
                    if (writableRaster instanceof BytePackedRaster) {
                        this.imageType = 12;
                        return;
                    } else {
                        if ((writableRaster instanceof ByteComponentRaster) && ((ByteComponentRaster) writableRaster).getPixelStride() == 1 && pixelSize2 <= 8) {
                            this.imageType = 13;
                            return;
                        }
                        return;
                    }
                }
                if ((writableRaster instanceof ShortComponentRaster) && (colorModel instanceof DirectColorModel) && isStandard && numBands == 3 && !colorModel.hasAlpha()) {
                    DirectColorModel directColorModel2 = (DirectColorModel) colorModel;
                    if (directColorModel2.getRedMask() == 63488) {
                        if (directColorModel2.getGreenMask() == 2016 && directColorModel2.getBlueMask() == 31) {
                            this.imageType = 8;
                            return;
                        }
                        return;
                    }
                    if (directColorModel2.getRedMask() == 31744 && directColorModel2.getGreenMask() == 992 && directColorModel2.getBlueMask() == 31) {
                        this.imageType = 9;
                        return;
                    }
                    return;
                }
                if ((writableRaster instanceof ByteComponentRaster) && (colorModel instanceof ComponentColorModel) && isStandard && (writableRaster.getSampleModel() instanceof PixelInterleavedSampleModel)) {
                    if (numBands == 3 || numBands == 4) {
                        ComponentColorModel componentColorModel = (ComponentColorModel) colorModel;
                        PixelInterleavedSampleModel pixelInterleavedSampleModel = (PixelInterleavedSampleModel) writableRaster.getSampleModel();
                        ByteComponentRaster byteComponentRaster = (ByteComponentRaster) writableRaster;
                        int[] bandOffsets = pixelInterleavedSampleModel.getBandOffsets();
                        if (componentColorModel.getNumComponents() == numBands) {
                            int[] componentSize = componentColorModel.getComponentSize();
                            int i = 0;
                            while (true) {
                                if (i >= numBands) {
                                    z2 = true;
                                    break;
                                } else {
                                    if (componentSize[i] != 8) {
                                        z2 = false;
                                        break;
                                    }
                                    i++;
                                }
                            }
                            if (z2 && byteComponentRaster.getPixelStride() == numBands && bandOffsets[0] == numBands - 1 && bandOffsets[1] == numBands - 2 && bandOffsets[2] == numBands - 3) {
                                if (numBands == 3 && !componentColorModel.hasAlpha()) {
                                    this.imageType = 5;
                                    return;
                                } else {
                                    if (bandOffsets[3] == 0 && componentColorModel.hasAlpha()) {
                                        this.imageType = isAlphaPremultiplied ? 7 : 6;
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                        throw new RasterFormatException("Number of components in ColorModel (" + componentColorModel.getNumComponents() + ") does not match # in  Raster (" + numBands + MotionUtils.f31762d);
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Raster " + writableRaster + " has minX or minY not equal to zero: " + writableRaster.minX + " " + writableRaster.minY);
        }
        throw new IllegalArgumentException("Raster " + writableRaster + " is incompatible with ColorModel " + colorModel);
    }
}
