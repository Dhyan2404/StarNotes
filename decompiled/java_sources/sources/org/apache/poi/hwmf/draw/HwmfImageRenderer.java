package org.apache.poi.hwmf.draw;

import com.sunia.HTREnginev2.C14341ra;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.RenderingHints;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.draw.HwmfImageRenderer;
import org.apache.poi.hwmf.usermodel.HwmfEmbedded;
import org.apache.poi.hwmf.usermodel.HwmfPicture;
import org.apache.poi.sl.draw.BitmapImageRenderer;
import org.apache.poi.sl.draw.Drawable;
import org.apache.poi.sl.draw.EmbeddedExtractor;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public class HwmfImageRenderer implements ImageRenderer, EmbeddedExtractor {
    double alpha;
    boolean charsetInitialized = false;
    HwmfPicture image;

    @Internal
    public static Rectangle2D getOuterBounds(Rectangle2D rectangle2D, Insets insets) {
        double width = rectangle2D.getWidth() / (((100000.0d - insets.left) - insets.right) / 100000.0d);
        double height = rectangle2D.getHeight() / (((100000.0d - insets.top) - insets.bottom) / 100000.0d);
        return new Rectangle2D.Double(rectangle2D.getX() - ((insets.left / 100000.0d) * width), rectangle2D.getY() - ((insets.top / 100000.0d) * height), width, height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Iterator lambda$getEmbeddings$0(Iterable iterable) {
        final Iterator it2 = iterable.iterator();
        final int[] iArr = {1};
        return new Iterator<EmbeddedExtractor.EmbeddedPart>() { // from class: org.apache.poi.hwmf.draw.HwmfImageRenderer.1
            @Override // java.util.Iterator
            public boolean hasNext() {
                return it2.hasNext();
            }

            @Override // java.util.Iterator
            public EmbeddedExtractor.EmbeddedPart next() {
                EmbeddedExtractor.EmbeddedPart embeddedPart = new EmbeddedExtractor.EmbeddedPart();
                HwmfEmbedded hwmfEmbedded = (HwmfEmbedded) it2.next();
                hwmfEmbedded.getClass();
                embeddedPart.setData(new C14341ra(hwmfEmbedded));
                StringBuilder sb = new StringBuilder();
                sb.append("embed_");
                int[] iArr2 = iArr;
                int i = iArr2[0];
                iArr2[0] = i + 1;
                sb.append(i);
                sb.append(hwmfEmbedded.getEmbeddedType().extension);
                embeddedPart.setName(sb.toString());
                return embeddedPart;
            }
        };
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean canRender(String str) {
        return PictureData.PictureType.WMF.contentType.equalsIgnoreCase(str);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        return drawImage(graphics2D, rectangle2D, null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getBounds() {
        HwmfPicture hwmfPicture = this.image;
        return Units.pointsToPixel(hwmfPicture == null ? new Rectangle2D.Double() : hwmfPicture.getBoundsInPoints());
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Dimension2D getDimension() {
        HwmfPicture hwmfPicture = this.image;
        return Units.pointsToPixel(hwmfPicture == null ? new Dimension() : hwmfPicture.getSize());
    }

    @Override // org.apache.poi.sl.draw.EmbeddedExtractor
    public Iterable<EmbeddedExtractor.EmbeddedPart> getEmbeddings() {
        return getEmbeddings(this.image.getEmbeddings());
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
        if (PictureData.PictureType.WMF.contentType.equals(str)) {
            this.image = new HwmfPicture(inputStream);
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
    public boolean useDeviceBounds() {
        return true;
    }

    @Internal
    public static Iterable<EmbeddedExtractor.EmbeddedPart> getEmbeddings(final Iterable<HwmfEmbedded> iterable) {
        return new Iterable() { // from class: com.sunia.HTREnginev2.p5i
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                Iterator lambda$getEmbeddings$0;
                lambda$getEmbeddings$0 = HwmfImageRenderer.lambda$getEmbeddings$0(iterable);
                return lambda$getEmbeddings$0;
            }
        };
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D, Insets insets) {
        boolean z = false;
        if (this.image == null) {
            return false;
        }
        Charset charset = (Charset) graphics2D.getRenderingHint(Drawable.DEFAULT_CHARSET);
        if (charset != null && !this.charsetInitialized) {
            setDefaultCharset(charset);
        }
        HwmfGraphicsState hwmfGraphicsState = new HwmfGraphicsState();
        hwmfGraphicsState.backup(graphics2D);
        if (insets == null) {
            insets = new Insets(0, 0, 0, 0);
        } else {
            z = true;
        }
        if (z) {
            graphics2D.clip(rectangle2D);
        }
        this.image.draw(graphics2D, getOuterBounds(rectangle2D, insets));
        hwmfGraphicsState.restore(graphics2D);
        return true;
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
        if (PictureData.PictureType.WMF.contentType.equals(str)) {
            this.image = new HwmfPicture(new ByteArrayInputStream(bArr));
            return;
        }
        throw new IOException("Invalid picture type");
    }
}
