package com.trans.android;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.util.Log;
import com.onyx.common.util.BitmapUtils;
import com.onyx.common.util.CollectionUtils;
import com.onyx.common.util.PaintFactory;
import com.trans.android.util.BridgeUtils;
import com.trans.android.util.ColorUtils;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.Transparency;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ImageObserver;
import java.awt.image.ImageProducer;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.awt.image.TileObserver;
import java.awt.image.WritableRaster;
import java.awt.image.WritableRenderedImage;
import java.io.Closeable;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes10.dex */
public class AndroidImage extends Image implements Transparency, WritableRenderedImage, Closeable {
    public static final double MAX_ALPHA = 1.0d;
    private static final String TAG = "AndroidImage";
    private double alpha;
    private Bitmap bitmap;
    private Canvas canvas;
    private boolean closeable;
    private ColorModel colorModel;
    private int imageType;
    private Hashtable<String, Object> properties;
    private WritableRaster raster;

    public AndroidImage(int i, int i2) {
        this(i, i2, Bitmap.Config.ARGB_8888);
    }

    private Paint createImagePaint() {
        return PaintFactory.createImagePaint();
    }

    private void initImageData() {
        if (this.colorModel == null || this.raster == null) {
            BufferedImage bufferedImage = new BufferedImage(getWidth(), getHeight(), this.imageType);
            this.colorModel = bufferedImage.getColorModel();
            this.raster = bufferedImage.getRaster();
        }
    }

    @Override // java.awt.image.WritableRenderedImage
    public void addTileObserver(TileObserver tileObserver) {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closeable) {
            BitmapUtils.recycle(this.bitmap);
            Hashtable<String, Object> hashtable = this.properties;
            if (hashtable != null) {
                hashtable.clear();
            }
            this.bitmap = null;
            this.canvas = null;
            this.colorModel = null;
            this.raster = null;
            this.properties = null;
        }
    }

    @Override // java.awt.image.RenderedImage
    public WritableRaster copyData(WritableRaster writableRaster) {
        initImageData();
        if (writableRaster == null) {
            return (WritableRaster) getData();
        }
        updateRaster();
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

    public AndroidGraphics2D createGraphics() {
        return (AndroidGraphics2D) getGraphics();
    }

    public void drawColor(int i) {
        this.canvas.drawColor(i);
    }

    public void drawPicture(Picture picture) {
        int width = picture.getWidth();
        int height = picture.getHeight();
        if (this.bitmap.getWidth() == width && this.bitmap.getHeight() == height) {
            picture.draw(this.canvas);
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        picture.draw(new Canvas(createBitmap));
        Matrix matrix = new Matrix();
        matrix.setScale((createBitmap.getWidth() * 1.0f) / width, (createBitmap.getHeight() * 1.0f) / height);
        this.canvas.drawBitmap(createBitmap, matrix, null);
        BitmapUtils.recycle(createBitmap);
    }

    public void eraseColor(int i) {
        if (this.bitmap.isMutable()) {
            this.bitmap.eraseColor(i);
        }
    }

    public double getAlpha() {
        return this.alpha;
    }

    public Bitmap getAndroidBitmap() {
        return this.bitmap;
    }

    public Canvas getCanvas() {
        Canvas canvas = this.canvas;
        if (canvas != null) {
            return canvas;
        }
        if (this.bitmap.isMutable()) {
            this.canvas = new Canvas(this.bitmap);
        }
        return this.canvas;
    }

    @Override // java.awt.image.RenderedImage
    public ColorModel getColorModel() {
        initImageData();
        return this.colorModel;
    }

    @Override // java.awt.image.RenderedImage
    public Raster getData() {
        initImageData();
        updateRaster();
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
        if (this.bitmap.isMutable()) {
            return new AndroidGraphics2D(this.bitmap);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.awt.Image
    public int getHeight(ImageObserver imageObserver) {
        return this.bitmap.getHeight();
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
        return 0;
    }

    @Override // java.awt.image.RenderedImage
    public int getMinY() {
        return 0;
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
        if (hashtable == null) {
            return null;
        }
        return (String[]) hashtable.keySet().toArray(new String[0]);
    }

    @Override // java.awt.image.RenderedImage
    public SampleModel getSampleModel() {
        initImageData();
        return this.raster.getSampleModel();
    }

    @Override // java.awt.Image
    public ImageProducer getSource() {
        return null;
    }

    @Override // java.awt.image.RenderedImage
    public Vector<RenderedImage> getSources() {
        return null;
    }

    public AndroidImage getSubimage(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0 && getWidth() == i3 && getHeight() == i4) {
            return this;
        }
        AndroidImage androidImage = new AndroidImage(i3, i4);
        androidImage.canvas.drawBitmap(getAndroidBitmap(), new Rect(i, i2, i + i3, i2 + i4), new Rect(0, 0, i3, i4), createImagePaint());
        return androidImage;
    }

    @Override // java.awt.image.RenderedImage
    public Raster getTile(int i, int i2) {
        if (i != 0 || i2 != 0) {
            throw new ArrayIndexOutOfBoundsException("BufferedImages only have one tile with index 0,0");
        }
        initImageData();
        updateRaster();
        return this.raster;
    }

    @Override // java.awt.image.RenderedImage
    public int getTileGridXOffset() {
        initImageData();
        return this.raster.getSampleModelTranslateX();
    }

    @Override // java.awt.image.RenderedImage
    public int getTileGridYOffset() {
        initImageData();
        return this.raster.getSampleModelTranslateY();
    }

    @Override // java.awt.image.RenderedImage
    public int getTileHeight() {
        return getHeight();
    }

    @Override // java.awt.image.RenderedImage
    public int getTileWidth() {
        return getWidth();
    }

    @Override // java.awt.Transparency
    public int getTransparency() {
        double d = this.alpha;
        if (d == 0.0d) {
            return 2;
        }
        return d == 1.0d ? 1 : 3;
    }

    public int getType() {
        return this.imageType;
    }

    @Override // java.awt.Image
    public int getWidth(ImageObserver imageObserver) {
        return this.bitmap.getWidth();
    }

    @Override // java.awt.image.WritableRenderedImage
    public WritableRaster getWritableTile(int i, int i2) {
        return null;
    }

    @Override // java.awt.image.WritableRenderedImage
    public Point[] getWritableTileIndices() {
        return new Point[]{new Point(0, 0)};
    }

    @Override // java.awt.image.WritableRenderedImage
    public boolean hasTileWriters() {
        return true;
    }

    @Override // java.awt.image.WritableRenderedImage
    public boolean isTileWritable(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return true;
        }
        throw new IllegalArgumentException("Only 1 tile in image");
    }

    public boolean isValid() {
        return BitmapUtils.isValid(this.bitmap);
    }

    @Override // java.awt.image.WritableRenderedImage
    public void releaseWritableTile(int i, int i2) {
    }

    @Override // java.awt.image.WritableRenderedImage
    public void removeTileObserver(TileObserver tileObserver) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000c, code lost:
    
        if (r5 > 1.0d) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setAlpha(double r5) {
        /*
            r4 = this;
            r0 = 0
            int r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r2 >= 0) goto L8
        L6:
            r5 = r0
            goto Lf
        L8:
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r2 <= 0) goto Lf
            goto L6
        Lf:
            double r0 = r4.alpha
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 != 0) goto L16
            return
        L16:
            r4.alpha = r5
            int r0 = r4.getWidth()
            int r1 = r4.getHeight()
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r0, r1, r2)
            android.graphics.Paint r1 = com.onyx.common.util.PaintFactory.createImagePaint()
            r2 = 4643176031446892544(0x406fe00000000000, double:255.0)
            double r5 = r5 * r2
            int r5 = (int) r5
            r1.setAlpha(r5)
            android.graphics.Canvas r5 = new android.graphics.Canvas
            r5.<init>(r0)
            r4.canvas = r5
            android.graphics.Bitmap r6 = r4.bitmap
            r2 = 0
            r5.drawBitmap(r6, r2, r2, r1)
            android.graphics.Bitmap r5 = r4.bitmap
            com.onyx.common.util.BitmapUtils.recycle(r5)
            r4.bitmap = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.trans.android.AndroidImage.setAlpha(double):void");
    }

    public void setCloseable(boolean z) {
        this.closeable = z;
    }

    public void setData(Raster raster, int i) {
        this.imageType = i;
        setData(raster);
    }

    public AndroidImage setProperties(Hashtable<String, Object> hashtable) {
        Hashtable<String, Object> hashtable2 = this.properties;
        if (hashtable2 != null) {
            hashtable2.clear();
        }
        if (!CollectionUtils.isNullOrEmpty(hashtable)) {
            if (this.properties == null) {
                this.properties = new Hashtable<>();
            }
            for (String str : hashtable.keySet()) {
                if (str instanceof String) {
                    this.properties.put(str, hashtable.get(str));
                }
            }
        }
        return this;
    }

    public void updateRaster() {
        int width = getWidth();
        int height = getHeight();
        int[] iArr = new int[width];
        for (int i = 0; i < height; i++) {
            this.bitmap.getPixels(iArr, 0, width, 0, i, width, 1);
            this.raster.setDataElements(0, i, width, 1, iArr);
        }
    }

    public AndroidImage(int i, int i2, Bitmap.Config config) {
        this.imageType = 2;
        this.closeable = true;
        this.alpha = 1.0d;
        this.bitmap = Bitmap.createBitmap(i, i2, config);
        this.imageType = BridgeUtils.getImageTypeByConfig(config);
        this.canvas = new Canvas(this.bitmap);
        this.bitmap.prepareToDraw();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AndroidImage m72437clone() {
        try {
            return (AndroidImage) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return new AndroidImage(getWidth(), getHeight());
        }
    }

    @Override // java.awt.image.RenderedImage
    public int getHeight() {
        return this.bitmap.getHeight();
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

    @Override // java.awt.image.RenderedImage
    public int getWidth() {
        return this.bitmap.getWidth();
    }

    @Override // java.awt.image.WritableRenderedImage
    public void setData(Raster raster) {
        int i;
        int i2;
        int i3;
        if (!this.bitmap.isMutable()) {
            Log.e(TAG, "Bitmap is not mutable");
            return;
        }
        initImageData();
        Rectangle intersection = new Rectangle(raster.getMinX(), raster.getMinY(), raster.getWidth(), raster.getHeight()).intersection(new Rectangle(0, 0, getWidth(), getHeight()));
        if (intersection.isEmpty()) {
            return;
        }
        int i4 = intersection.width;
        int i5 = intersection.height;
        int i6 = intersection.f97732x;
        int i7 = intersection.f97733y;
        boolean z = raster != this.raster;
        int[] iArr = null;
        int i8 = i7;
        while (i8 < i7 + i5) {
            iArr = raster.getPixels(i6, i8, i4, 1, iArr);
            if (z) {
                i = i8;
                i2 = i7;
                i3 = i6;
                this.raster.setPixels(i6, i8, i4, 1, iArr);
            } else {
                i = i8;
                i2 = i7;
                i3 = i6;
            }
            this.bitmap.setPixels(ColorUtils.toAndroidPixels(raster, this.colorModel, iArr), 0, i4, 0, i, i4, 1);
            i8 = i + 1;
            i6 = i3;
            i7 = i2;
            i5 = i5;
            i4 = i4;
        }
    }

    public AndroidImage getSubimage(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i == 0 && i2 == 0 && getWidth() == i5 && getHeight() == i6) {
            return this;
        }
        AndroidImage androidImage = new AndroidImage(i5, i6);
        androidImage.canvas.drawBitmap(getAndroidBitmap(), new Rect(i, i2, i3 + i, i4 + i2), new Rect(0, 0, i5, i6), createImagePaint());
        return androidImage;
    }

    public AndroidImage(double d, double d2) {
        this((int) Math.ceil(d), (int) Math.ceil(d2));
    }

    public static AndroidImage setAlpha(AndroidImage androidImage, double d) {
        if (androidImage == null) {
            return null;
        }
        androidImage.setAlpha(d);
        return androidImage;
    }

    public AndroidImage(Bitmap bitmap) {
        this.imageType = 2;
        this.closeable = true;
        this.alpha = 1.0d;
        this.bitmap = bitmap;
    }

    @Override // java.awt.image.RenderedImage
    public Raster getData(Rectangle rectangle) {
        initImageData();
        updateRaster();
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

    public AndroidImage(BufferedImage bufferedImage) {
        this.imageType = 2;
        this.closeable = true;
        this.alpha = 1.0d;
        int type = bufferedImage.getType();
        this.imageType = type;
        this.bitmap = Bitmap.createBitmap(bufferedImage.getWidth(), bufferedImage.getHeight(), BridgeUtils.getConfigByImageType(type));
        this.canvas = new Canvas(this.bitmap);
        this.bitmap.prepareToDraw();
        this.colorModel = bufferedImage.getColorModel().m72614clone();
        WritableRaster writableRaster = (WritableRaster) bufferedImage.getData();
        this.raster = writableRaster;
        setData(writableRaster);
    }
}
