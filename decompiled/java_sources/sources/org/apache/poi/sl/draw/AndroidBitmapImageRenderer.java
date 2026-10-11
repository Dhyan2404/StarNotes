package org.apache.poi.sl.draw;

import android.graphics.Bitmap;
import com.onyx.common.util.CloseUtils;
import com.onyx.poi.util.TiffUtils;
import com.trans.android.AndroidImage;
import com.trans.android.BufferedImageWrapper;
import com.trans.android.util.ImageUtils;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.sl.draw.AndroidBitmapImageRenderer;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class AndroidBitmapImageRenderer implements ImageRenderer, Closeable {
    private static final String UNSUPPORTED_IMAGE_TYPE = "Unsupported Image Type";
    private String cachedContentType;
    private byte[] cachedImage;
    private boolean doCache;
    protected AndroidImage image;
    private static final Logger LOG = LogManager.getLogger((Class<?>) BitmapImageRenderer.class);
    public static final PictureData.PictureType[] ALLOWED_TYPES = {PictureData.PictureType.JPEG, PictureData.PictureType.JPG, PictureData.PictureType.PNG, PictureData.PictureType.BMP, PictureData.PictureType.GIF, PictureData.PictureType.TIFF};

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$canRender$0(String str, PictureData.PictureType pictureType) {
        return pictureType.contentType.equalsIgnoreCase(str);
    }

    private AndroidImage readImage(InputStream inputStream, String str, Rectangle2D rectangle2D) {
        return PictureData.PictureType.TIFF.contentType.equalsIgnoreCase(str) ? TiffUtils.read(inputStream, rectangle2D) : ImageUtils.read(inputStream, rectangle2D);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean canRender(final String str) {
        return Stream.of((Object[]) ALLOWED_TYPES).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.ka
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$canRender$0;
                lambda$canRender$0 = AndroidBitmapImageRenderer.lambda$canRender$0(str, (PictureData.PictureType) obj);
                return lambda$canRender$0;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        CloseUtils.close(this.image);
        this.cachedImage = null;
        this.image = null;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        return drawImage(graphics2D, rectangle2D, null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getBounds() {
        return getBounds(this.image);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public String getCachedContentType() {
        return this.cachedContentType;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public byte[] getCachedImage() {
        return this.cachedImage;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage() {
        AndroidImage androidImage = this.image;
        this.image = null;
        if (androidImage == null) {
            return null;
        }
        return new BufferedImageWrapper(androidImage);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getNativeBounds() {
        return getBounds();
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str) throws IOException {
        loadImage(inputStream, str, (Rectangle2D) null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void setAlpha(double d) {
        this.image = setAlpha(this.image, d);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void setCacheInput(boolean z) {
        this.doCache = z;
        if (z) {
            return;
        }
        this.cachedContentType = null;
        this.cachedImage = null;
    }

    public static Rectangle2D getBounds(AndroidImage androidImage) {
        return androidImage == null ? new Rectangle2D.Double() : new Rectangle2D.Double(0.0d, 0.0d, androidImage.getWidth(), androidImage.getHeight());
    }

    public static AndroidImage setAlpha(AndroidImage androidImage, double d) {
        if (androidImage == null) {
            return new AndroidImage(1, 1);
        }
        androidImage.setAlpha(d);
        return androidImage;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D, Insets insets) {
        return drawImage(graphics2D, this.image, rectangle2D, insets);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str, Rectangle2D rectangle2D) throws IOException {
        if (this.doCache) {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            IOUtils.copy(inputStream, unsynchronizedByteArrayOutputStream);
            this.cachedImage = unsynchronizedByteArrayOutputStream.toByteArray();
            this.cachedContentType = str;
            inputStream = unsynchronizedByteArrayOutputStream.toInputStream();
        }
        this.image = readImage(inputStream, str, rectangle2D);
    }

    public static boolean drawImage(Graphics2D graphics2D, AndroidImage androidImage, Rectangle2D rectangle2D, Insets insets) {
        Insets insets2;
        boolean z = false;
        if (androidImage == null) {
            return false;
        }
        if (insets == null) {
            insets2 = new Insets(0, 0, 0, 0);
        } else {
            insets2 = insets;
            z = true;
        }
        int width = androidImage.getWidth();
        int height = androidImage.getHeight();
        double d = width;
        double width2 = rectangle2D.getWidth() / ((((100000 - insets2.left) - insets2.right) / 100000.0d) * d);
        double d2 = height;
        double height2 = rectangle2D.getHeight() / ((((100000 - insets2.top) - insets2.bottom) / 100000.0d) * d2);
        AffineTransform affineTransform = new AffineTransform(width2, 0.0d, 0.0d, height2, rectangle2D.getX() - (((d * width2) * insets2.left) / 100000.0d), rectangle2D.getY() - (((d2 * height2) * insets2.top) / 100000.0d));
        Shape clip = graphics2D.getClip();
        if (z) {
            graphics2D.clip(rectangle2D.getBounds2D());
        }
        graphics2D.drawRenderedImage(androidImage, affineTransform);
        graphics2D.setClip(clip);
        CloseUtils.close(androidImage);
        return true;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage(Dimension2D dimension2D) {
        AndroidImage androidImage = this.image;
        this.image = null;
        return getImage(androidImage, dimension2D);
    }

    public static BufferedImage getImage(AndroidImage androidImage, Dimension2D dimension2D) {
        if (androidImage == null) {
            return null;
        }
        int width = androidImage.getWidth(null);
        int height = androidImage.getHeight(null);
        int width2 = (int) (dimension2D.getWidth() + 0.5d);
        int height2 = (int) (dimension2D.getHeight() + 0.5d);
        if (width == width2 && height == height2) {
            return new BufferedImageWrapper(androidImage);
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(androidImage.getAndroidBitmap(), width2, height2, true);
        CloseUtils.close(androidImage);
        return new BufferedImageWrapper(new AndroidImage(createScaledBitmap));
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str) throws IOException {
        loadImage(bArr, str, (Rectangle2D) null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str, Rectangle2D rectangle2D) throws IOException {
        if (bArr == null) {
            return;
        }
        if (this.doCache) {
            this.cachedImage = (byte[]) bArr.clone();
            this.cachedContentType = str;
        }
        this.image = readImage(new UnsynchronizedByteArrayInputStream(bArr), str, rectangle2D);
    }
}
