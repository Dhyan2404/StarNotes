package org.apache.poi.hwmf.draw;

import android.graphics.Bitmap;
import com.onyx.batik.transcoder.image.BitmapTranscoder;
import com.onyx.batik.transcoder.image.WMFTranscoder;
import com.onyx.common.util.BitmapUtils;
import com.onyx.common.util.CloseUtils;
import com.onyx.poi.POIFactory;
import com.sunia.HTREnginev2.C14341ra;
import com.trans.android.AndroidImage;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.draw.AndroidHwmfImageRenderer;
import org.apache.poi.hwmf.usermodel.HwmfEmbedded;
import org.apache.poi.sl.draw.AndroidBitmapImageRenderer;
import org.apache.poi.sl.draw.EmbeddedExtractor;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public class AndroidHwmfImageRenderer implements ImageRenderer, EmbeddedExtractor, Closeable {
    double alpha;
    Charset charset;
    boolean charsetInitialized = false;
    AndroidImage image;
    Rectangle2D nativeBounds;

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
        return new Iterator<EmbeddedExtractor.EmbeddedPart>() { // from class: org.apache.poi.hwmf.draw.AndroidHwmfImageRenderer.1
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

    private void loadSvgImage(InputStream inputStream, Rectangle2D rectangle2D) {
        BitmapTranscoder bitmapTranscoder;
        Closeable closeable = null;
        try {
            Closeable wMFTranscoder = new WMFTranscoder(inputStream);
            try {
                bitmapTranscoder = new BitmapTranscoder(wMFTranscoder.getInput());
                try {
                    Bitmap bitmap = rectangle2D == null ? bitmapTranscoder.getBitmap(1.5f) : bitmapTranscoder.getBitmap(new Dimension((int) (rectangle2D.getWidth() * 1.5d), (int) (rectangle2D.getHeight() * 1.5d)));
                    if (BitmapUtils.isValid(bitmap)) {
                        this.image = new AndroidImage(bitmap);
                    }
                    CloseUtils.close(inputStream);
                    CloseUtils.close(wMFTranscoder);
                } catch (Exception e) {
                    e = e;
                    closeable = wMFTranscoder;
                    try {
                        POIFactory.printPOIThrowable(e);
                        CloseUtils.close(inputStream);
                        CloseUtils.close(closeable);
                        CloseUtils.close(bitmapTranscoder);
                    } catch (Throwable th) {
                        th = th;
                        CloseUtils.close(inputStream);
                        CloseUtils.close(closeable);
                        CloseUtils.close(bitmapTranscoder);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeable = wMFTranscoder;
                    CloseUtils.close(inputStream);
                    CloseUtils.close(closeable);
                    CloseUtils.close(bitmapTranscoder);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                bitmapTranscoder = null;
            } catch (Throwable th3) {
                th = th3;
                bitmapTranscoder = null;
            }
        } catch (Exception e3) {
            e = e3;
            bitmapTranscoder = null;
        } catch (Throwable th4) {
            th = th4;
            bitmapTranscoder = null;
        }
        CloseUtils.close(bitmapTranscoder);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean canRender(String str) {
        return PictureData.PictureType.WMF.contentType.equalsIgnoreCase(str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        CloseUtils.close(this.image);
        this.nativeBounds = null;
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
    public Dimension2D getDimension() {
        AndroidImage androidImage = this.image;
        return androidImage == null ? new Dimension() : new Dimension(androidImage.getWidth(), this.image.getHeight());
    }

    @Override // org.apache.poi.sl.draw.EmbeddedExtractor
    public Iterable<EmbeddedExtractor.EmbeddedPart> getEmbeddings() {
        return null;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public GenericRecord getGenericRecord() {
        return null;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage() {
        return getImage(getDimension());
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getNativeBounds() {
        Rectangle2D rectangle2D = this.nativeBounds;
        return rectangle2D == null ? getBounds() : rectangle2D;
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
    public void setDefaultCharset(Charset charset) {
        this.charset = charset;
        this.charsetInitialized = true;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean useDeviceBounds() {
        return true;
    }

    @Internal
    public static Iterable<EmbeddedExtractor.EmbeddedPart> getEmbeddings(final Iterable<HwmfEmbedded> iterable) {
        return new Iterable() { // from class: com.sunia.HTREnginev2.qa
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                Iterator lambda$getEmbeddings$0;
                lambda$getEmbeddings$0 = AndroidHwmfImageRenderer.lambda$getEmbeddings$0(iterable);
                return lambda$getEmbeddings$0;
            }
        };
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D, Insets insets) {
        return AndroidBitmapImageRenderer.drawImage(graphics2D, this.image, rectangle2D, insets);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage(Dimension2D dimension2D) {
        AndroidImage androidImage = this.image;
        this.image = null;
        return AndroidBitmapImageRenderer.getImage(androidImage, dimension2D);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str, Rectangle2D rectangle2D) throws IOException {
        loadSvgImage(inputStream, rectangle2D);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str) throws IOException {
        loadSvgImage(new ByteArrayInputStream(bArr), null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str, Rectangle2D rectangle2D) throws IOException {
        loadSvgImage(new ByteArrayInputStream(bArr), rectangle2D);
    }
}
