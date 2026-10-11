package java.awt;

import android.graphics.Rect;
import com.onyx.common.util.CloseUtils;
import com.onyx.common.util.PaintFactory;
import com.trans.android.AndroidImage;
import com.trans.android.BufferedImageWrapper;
import com.trans.android.awt.TexturePaintConvert;
import com.trans.android.awt.TexturePaintUtils;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.io.Closeable;

/* loaded from: classes4.dex */
public class TexturePaint implements Paint, Closeable {
    BufferedImage bufImg;

    /* renamed from: sx */
    double f97734sx;

    /* renamed from: sy */
    double f97735sy;

    /* renamed from: tx */
    double f97736tx;

    /* renamed from: ty */
    double f97737ty;

    public TexturePaint(AndroidImage androidImage, Rectangle2D rectangle2D) {
        this(new BufferedImageWrapper(androidImage), rectangle2D);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        BufferedImage bufferedImage = this.bufImg;
        if (bufferedImage instanceof BufferedImageWrapper) {
            CloseUtils.close(((BufferedImageWrapper) bufferedImage).getAndroidImage());
        }
        CloseUtils.close(this.bufImg);
    }

    @Override // java.awt.Paint
    public PaintContext createContext(ColorModel colorModel, Rectangle rectangle, Rectangle2D rectangle2D, AffineTransform affineTransform, RenderingHints renderingHints) {
        AffineTransform affineTransform2 = affineTransform == null ? new AffineTransform() : (AffineTransform) affineTransform.clone();
        affineTransform2.translate(this.f97736tx, this.f97737ty);
        affineTransform2.scale(this.f97734sx, this.f97735sy);
        return TexturePaintContext.getContext(this.bufImg, affineTransform2, renderingHints, rectangle);
    }

    public Rectangle2D getAnchorRect() {
        return new Rectangle2D.Double(this.f97736tx, this.f97737ty, this.f97734sx * this.bufImg.getWidth(), this.f97735sy * this.bufImg.getHeight());
    }

    public AndroidImage getAndroidImage() {
        BufferedImage bufferedImage = this.bufImg;
        if (bufferedImage instanceof BufferedImageWrapper) {
            return ((BufferedImageWrapper) bufferedImage).getAndroidImage();
        }
        return new AndroidImage(this.bufImg);
    }

    public BufferedImage getImage() {
        return this.bufImg;
    }

    @Override // java.awt.Transparency
    public int getTransparency() {
        return this.bufImg.getColorModel().getTransparency();
    }

    public TexturePaint(BufferedImage bufferedImage, Rectangle2D rectangle2D) {
        this.bufImg = bufferedImage;
        this.f97736tx = rectangle2D.getX();
        this.f97737ty = rectangle2D.getY();
        this.f97734sx = rectangle2D.getWidth() / this.bufImg.getWidth();
        this.f97735sy = rectangle2D.getHeight() / this.bufImg.getHeight();
    }

    public AndroidImage getAndroidImage(AffineTransform affineTransform, Rectangle2D rectangle2D) {
        TexturePaintConvert convert = TexturePaintUtils.getConvert();
        if (convert.accept(this)) {
            return convert.getAndroidImage(this, rectangle2D, affineTransform);
        }
        affineTransform.translate(rectangle2D.getX(), rectangle2D.getY());
        return getAndroidImage(getAndroidImage(), rectangle2D);
    }

    public AndroidImage getAndroidImage(AndroidImage androidImage, Rectangle2D rectangle2D) {
        AndroidImage androidImage2;
        if (Double.compare(this.f97734sx, 1.0d) == 0 && Double.compare(this.f97735sy, 1.0d) == 0 && Double.compare(this.f97736tx, 0.0d) == 0 && Double.compare(this.f97737ty, 0.0d) == 0 && Math.abs(androidImage.getWidth() - rectangle2D.getWidth()) < 1.0d && Math.abs(androidImage.getHeight() - rectangle2D.getHeight()) < 1.0d) {
            return androidImage;
        }
        if (Double.compare(this.f97734sx, 1.0d) == 0 && Double.compare(this.f97735sy, 1.0d) == 0 && Double.compare(this.f97736tx, 0.0d) == 0 && Double.compare(this.f97737ty, 0.0d) == 0) {
            androidImage2 = androidImage;
        } else {
            androidImage2 = new AndroidImage(this.f97734sx * androidImage.getWidth(), this.f97735sy * androidImage.getHeight());
            androidImage2.getCanvas().drawBitmap(androidImage.getAndroidBitmap(), new Rect((int) this.f97736tx, (int) this.f97737ty, androidImage.getWidth(), androidImage.getHeight()), new Rect(0, 0, androidImage2.getWidth(), androidImage2.getHeight()), PaintFactory.createImagePaint());
            CloseUtils.close(androidImage);
        }
        if (Math.abs(androidImage2.getWidth() - rectangle2D.getWidth()) < 1.0d && Math.abs(androidImage2.getHeight() - rectangle2D.getHeight()) < 1.0d) {
            return androidImage2;
        }
        AndroidImage subimage = androidImage2.getSubimage(0, 0, androidImage2.getWidth(), androidImage2.getHeight(), (int) rectangle2D.getWidth(), (int) rectangle2D.getHeight());
        CloseUtils.close(androidImage2);
        return subimage;
    }
}
