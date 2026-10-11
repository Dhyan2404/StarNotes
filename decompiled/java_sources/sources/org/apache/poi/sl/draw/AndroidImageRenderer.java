package org.apache.poi.sl.draw;

import com.onyx.common.util.CloseUtils;
import com.onyx.common.util.RectUtils;
import com.onyx.poi.latex.AndroidLatexRender;
import com.trans.android.util.ImageUtils;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hemf.draw.AndroidHemfImageRenderer;
import org.apache.poi.hwmf.draw.AndroidHwmfImageRenderer;
import org.apache.poi.latex.Latex;
import org.apache.poi.sl.draw.AndroidImageRenderer;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.xslf.draw.AndroidSVGImageRenderer;

/* loaded from: classes12.dex */
public class AndroidImageRenderer implements ImageRenderer {
    private static final Logger LOG = LogManager.getLogger((Class<?>) AndroidImageRenderer.class);
    private Rectangle2D imageSize;
    private ImageRenderer renderer;
    private double scale;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$canRender$0(String str, PictureData.PictureType pictureType) {
        return pictureType.contentType.equalsIgnoreCase(str);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean canRender(final String str) {
        reset();
        if (PictureData.PictureType.SVG.contentType.equalsIgnoreCase(str)) {
            this.renderer = new AndroidSVGImageRenderer();
        } else if (PictureData.PictureType.WMF.contentType.equalsIgnoreCase(str)) {
            this.renderer = new AndroidHwmfImageRenderer();
        } else if (PictureData.PictureType.EMF.contentType.equalsIgnoreCase(str)) {
            this.renderer = new AndroidHemfImageRenderer();
        } else if (Stream.of((Object[]) AndroidBitmapImageRenderer.ALLOWED_TYPES).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.sa
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$canRender$0;
                lambda$canRender$0 = AndroidImageRenderer.lambda$canRender$0(str, (PictureData.PictureType) obj);
                return lambda$canRender$0;
            }
        })) {
            this.renderer = new AndroidBitmapImageRenderer();
        } else if (Latex.LATEX_TYPE.equalsIgnoreCase(str)) {
            this.renderer = new AndroidLatexRender();
        } else {
            this.renderer = new AndroidBitmapImageRenderer();
            LOG.error("Unknown content type: {}, use default render, avoid call java render", str);
        }
        return this.renderer != null;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        return this.renderer.drawImage(graphics2D, rectangle2D);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getBounds() {
        return this.renderer.getBounds();
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage() {
        return this.renderer.getImage();
    }

    public Rectangle2D getImageSize() {
        return this.imageSize;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getNativeBounds() {
        return this.renderer.getNativeBounds();
    }

    public double getScale() {
        return this.scale;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str) throws IOException {
        this.renderer.loadImage(inputStream, str);
    }

    public void reset() {
        ImageRenderer imageRenderer = this.renderer;
        if (imageRenderer != null) {
            CloseUtils.close((Closeable) imageRenderer);
        }
        this.renderer = null;
        this.imageSize = null;
        this.scale = 0.0d;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void setAlpha(double d) {
        this.renderer.setAlpha(d);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean useDeviceBounds() {
        ImageRenderer imageRenderer = this.renderer;
        return imageRenderer != null && imageRenderer.useDeviceBounds();
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D, Insets insets) {
        return this.renderer.drawImage(graphics2D, rectangle2D, insets);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage(Dimension2D dimension2D) {
        return this.renderer.getImage(dimension2D);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str, Rectangle2D rectangle2D) throws IOException {
        this.renderer.loadImage(inputStream, str, rectangle2D);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str) throws IOException {
        this.renderer.loadImage(bArr, str);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str, Rectangle2D rectangle2D) throws IOException {
        this.renderer.loadImage(bArr, str, rectangle2D);
    }

    public void loadImage(byte[] bArr, String str, Rectangle2D rectangle2D, double d) throws IOException {
        double min;
        ImageRenderer imageRenderer = this.renderer;
        if (imageRenderer instanceof AndroidBitmapImageRenderer) {
            Dimension readImageSize = ImageUtils.readImageSize(bArr);
            min = RectUtils.isNullOrEmpty(readImageSize) ? 1.0d : Math.min(readImageSize.getWidth() / rectangle2D.getWidth(), readImageSize.getHeight() / rectangle2D.getHeight());
            this.scale = min;
            this.scale = Math.min(min, d);
            Rectangle2D.Double r3 = new Rectangle2D.Double(0.0d, 0.0d, this.scale * rectangle2D.getWidth(), this.scale * rectangle2D.getHeight());
            this.imageSize = r3;
            this.renderer.loadImage(bArr, str, r3);
            return;
        }
        imageRenderer.loadImage(bArr, str, rectangle2D);
        Rectangle2D bounds = this.renderer.getBounds();
        min = RectUtils.isNullOrEmpty(bounds) ? 1.0d : Math.min(bounds.getWidth() / rectangle2D.getWidth(), bounds.getHeight() / rectangle2D.getHeight());
        this.scale = min;
        this.scale = Math.min(min, d);
        this.imageSize = new Rectangle2D.Double(0.0d, 0.0d, this.scale * rectangle2D.getWidth(), this.scale * rectangle2D.getHeight());
    }

    public void loadImage(InputStream inputStream, String str, Rectangle2D rectangle2D, double d) throws IOException {
        double min;
        ImageRenderer imageRenderer = this.renderer;
        if (imageRenderer instanceof AndroidBitmapImageRenderer) {
            Dimension readImageSize = ImageUtils.readImageSize(inputStream, false);
            min = RectUtils.isNullOrEmpty(readImageSize) ? 1.0d : Math.min(readImageSize.getWidth() / rectangle2D.getWidth(), readImageSize.getHeight() / rectangle2D.getHeight());
            this.scale = min;
            this.scale = Math.min(min, d);
            Rectangle2D.Double r3 = new Rectangle2D.Double(0.0d, 0.0d, this.scale * rectangle2D.getWidth(), this.scale * rectangle2D.getHeight());
            this.imageSize = r3;
            this.renderer.loadImage(inputStream, str, r3);
            return;
        }
        imageRenderer.loadImage(inputStream, str, rectangle2D);
        Rectangle2D bounds = this.renderer.getBounds();
        min = RectUtils.isNullOrEmpty(bounds) ? 1.0d : Math.min(bounds.getWidth() / rectangle2D.getWidth(), bounds.getHeight() / rectangle2D.getHeight());
        this.scale = min;
        this.scale = Math.min(min, d);
        this.imageSize = new Rectangle2D.Double(0.0d, 0.0d, this.scale * rectangle2D.getWidth(), this.scale * rectangle2D.getHeight());
    }
}
