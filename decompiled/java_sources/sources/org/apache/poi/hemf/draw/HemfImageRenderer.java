package org.apache.poi.hemf.draw;

import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.RenderingHints;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.usermodel.HemfPicture;
import org.apache.poi.hwmf.draw.HwmfGraphicsState;
import org.apache.poi.hwmf.draw.HwmfImageRenderer;
import org.apache.poi.sl.draw.BitmapImageRenderer;
import org.apache.poi.sl.draw.Drawable;
import org.apache.poi.sl.draw.EmbeddedExtractor;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public class HemfImageRenderer implements ImageRenderer, EmbeddedExtractor {
    double alpha;
    boolean charsetInitialized = false;
    HemfPicture image;

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean canRender(String str) {
        return PictureData.PictureType.EMF.contentType.equalsIgnoreCase(str);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        return drawImage(graphics2D, rectangle2D, null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getBounds() {
        HemfPicture hemfPicture = this.image;
        return Units.pointsToPixel(hemfPicture == null ? new Rectangle2D.Double() : hemfPicture.getBoundsInPoints());
    }

    @Override // org.apache.poi.sl.draw.EmbeddedExtractor
    public Iterable<EmbeddedExtractor.EmbeddedPart> getEmbeddings() {
        return HwmfImageRenderer.getEmbeddings(this.image.getEmbeddings());
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public GenericRecord getGenericRecord() {
        return this.image;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage() {
        return getImage(getDimension());
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getNativeBounds() {
        return this.image.getBounds();
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str) throws IOException {
        if (PictureData.PictureType.EMF.contentType.equals(str)) {
            this.image = new HemfPicture(inputStream);
            return;
        }
        throw new IOException("Invalid picture type");
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void setAlpha(double d) {
        this.alpha = d;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void setDefaultCharset(Charset charset) {
        this.image.setDefaultCharset(charset);
        this.charsetInitialized = true;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D, Insets insets) {
        if (this.image == null) {
            return false;
        }
        Charset charset = (Charset) graphics2D.getRenderingHint(Drawable.DEFAULT_CHARSET);
        if (charset != null && !this.charsetInitialized) {
            setDefaultCharset(charset);
        }
        HwmfGraphicsState hwmfGraphicsState = new HwmfGraphicsState();
        hwmfGraphicsState.backup(graphics2D);
        try {
            if (insets != null) {
                graphics2D.clip(rectangle2D);
            } else {
                insets = new Insets(0, 0, 0, 0);
            }
            this.image.draw(graphics2D, HwmfImageRenderer.getOuterBounds(rectangle2D, insets));
            hwmfGraphicsState.restore(graphics2D);
            return true;
        } catch (Throwable th) {
            hwmfGraphicsState.restore(graphics2D);
            throw th;
        }
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage(Dimension2D dimension2D) {
        if (this.image == null) {
            return new BufferedImage(1, 1, 2);
        }
        BufferedImage bufferedImage = new BufferedImage((int) dimension2D.getWidth(), (int) dimension2D.getHeight(), 2);
        Graphics2D createGraphics = bufferedImage.createGraphics();
        createGraphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        createGraphics.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
        createGraphics.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BICUBIC);
        createGraphics.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
        this.image.draw(createGraphics, new Rectangle2D.Double(0.0d, 0.0d, dimension2D.getWidth(), dimension2D.getHeight()));
        createGraphics.dispose();
        return BitmapImageRenderer.setAlpha(bufferedImage, this.alpha);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str) throws IOException {
        if (PictureData.PictureType.EMF.contentType.equals(str)) {
            this.image = new HemfPicture(new UnsynchronizedByteArrayInputStream(bArr));
            return;
        }
        throw new IOException("Invalid picture type");
    }
}
