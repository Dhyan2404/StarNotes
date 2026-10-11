package org.apache.poi.xslf.draw;

import android.graphics.Bitmap;
import com.onyx.batik.transcoder.image.BitmapTranscoder;
import com.onyx.common.util.BitmapUtils;
import com.onyx.common.util.CloseUtils;
import com.trans.android.AndroidImage;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.poi.sl.draw.AndroidBitmapImageRenderer;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.sl.usermodel.PictureData;

/* loaded from: classes13.dex */
public class AndroidSVGImageRenderer implements ImageRenderer, Closeable {
    public static final float SVG_EXPAND_RATIO = 1.5f;
    private double alpha = 1.0d;
    protected AndroidImage image;

    private void loadSvgImage(InputStream inputStream, Rectangle2D rectangle2D) {
        Closeable closeable = null;
        try {
            Closeable bitmapTranscoder = new BitmapTranscoder(inputStream);
            try {
                Bitmap bitmap = rectangle2D == null ? bitmapTranscoder.getBitmap(1.5f) : bitmapTranscoder.getBitmap(new Dimension((int) (rectangle2D.getWidth() * 1.5d), (int) (rectangle2D.getHeight() * 1.5d)));
                if (BitmapUtils.isValid(bitmap)) {
                    this.image = AndroidBitmapImageRenderer.setAlpha(new AndroidImage(bitmap), this.alpha);
                }
                CloseUtils.close(inputStream);
                CloseUtils.close(bitmapTranscoder);
            } catch (Throwable th) {
                th = th;
                closeable = bitmapTranscoder;
                CloseUtils.close(inputStream);
                CloseUtils.close(closeable);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean canRender(String str) {
        return PictureData.PictureType.SVG.contentType.equalsIgnoreCase(str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        CloseUtils.close(this.image);
        this.image = null;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        return drawImage(graphics2D, rectangle2D, null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getBounds() {
        return AndroidBitmapImageRenderer.getBounds(this.image);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage() {
        return getImage(getDimension());
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getNativeBounds() {
        return getBounds();
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str) throws IOException {
        loadSvgImage(inputStream, null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void setAlpha(double d) {
        this.alpha = d;
        this.image = AndroidBitmapImageRenderer.setAlpha(this.image, d);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D, Insets insets) {
        return AndroidBitmapImageRenderer.drawImage(graphics2D, this.image, rectangle2D, insets);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage(Dimension2D dimension2D) {
        return AndroidBitmapImageRenderer.getImage(this.image, dimension2D);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str, Rectangle2D rectangle2D) throws IOException {
        loadSvgImage(inputStream, rectangle2D);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str) throws IOException {
        loadSvgImage(new UnsynchronizedByteArrayInputStream(bArr), null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str, Rectangle2D rectangle2D) throws IOException {
        loadSvgImage(new UnsynchronizedByteArrayInputStream(bArr), rectangle2D);
    }
}
