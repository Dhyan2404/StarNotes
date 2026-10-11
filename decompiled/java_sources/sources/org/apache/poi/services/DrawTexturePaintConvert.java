package org.apache.poi.services;

import android.graphics.Canvas;
import android.graphics.Rect;
import com.onyx.common.util.CloseUtils;
import com.onyx.common.util.PaintFactory;
import com.trans.android.AndroidImage;
import com.trans.android.BufferedImageWrapper;
import com.trans.android.awt.TexturePaintConvert;
import com.trans.android.util.BridgeUtils;
import java.awt.Shape;
import java.awt.TexturePaint;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import org.apache.poi.sl.draw.DrawTexturePaint;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.util.Dimension2DDouble;

/* loaded from: classes12.dex */
public class DrawTexturePaintConvert implements TexturePaintConvert {
    private static final Insets2D INSETS_EMPTY = new Insets2D(0.0d, 0.0d, 0.0d, 0.0d);

    @Override // com.trans.android.awt.TexturePaintConvert
    public boolean accept(TexturePaint texturePaint) {
        return texturePaint instanceof DrawTexturePaint;
    }

    @Override // com.trans.android.awt.TexturePaintConvert
    public AndroidImage getAndroidImage(TexturePaint texturePaint, Rectangle2D rectangle2D, AffineTransform affineTransform) {
        return getAndroidImage((DrawTexturePaint) texturePaint, rectangle2D, affineTransform);
    }

    public AndroidImage getAndroidImage(DrawTexturePaint drawTexturePaint, Rectangle2D rectangle2D, AffineTransform affineTransform) {
        PaintStyle.TexturePaint fill = drawTexturePaint.getFill();
        Shape awtShape = drawTexturePaint.getAwtShape();
        AndroidImage androidImage = getAndroidImage(drawTexturePaint);
        if (!fill.isRotatedWithShape() && awtShape != null) {
            AffineTransform affineTransform2 = new AffineTransform(affineTransform);
            affineTransform2.preConcatenate(AffineTransform.getTranslateInstance(-affineTransform2.getTranslateX(), -affineTransform2.getTranslateY()));
            Point2D.Double r3 = new Point2D.Double(1.0d, 0.0d);
            Point2D transform = affineTransform2.transform(r3, r3);
            double atan2 = Math.atan2(transform.getY(), transform.getX());
            if (atan2 != 0.0d) {
                affineTransform.rotate(-atan2, rectangle2D.getCenterX(), rectangle2D.getCenterY());
            }
            Rectangle2D bounds2D = AffineTransform.getRotateInstance(atan2, rectangle2D.getCenterX(), rectangle2D.getCenterY()).createTransformedShape(awtShape).getBounds2D();
            new Dimension2DDouble().setSize(bounds2D.getWidth(), bounds2D.getHeight());
            affineTransform.translate(bounds2D.getX(), bounds2D.getY());
            AndroidImage androidImage2 = getAndroidImage(drawTexturePaint, androidImage, bounds2D);
            if (fill.getScale() != null) {
                AffineTransform tiledInstance = drawTexturePaint.getTiledInstance(bounds2D, (AffineTransform) affineTransform.clone());
                affineTransform.setToIdentity();
                affineTransform.concatenate(tiledInstance);
            }
            return androidImage2;
        }
        return getAndroidImage(androidImage, rectangle2D, affineTransform, fill.getOffset());
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.trans.android.AndroidImage getAndroidImage(org.apache.poi.sl.draw.DrawTexturePaint r26, com.trans.android.AndroidImage r27, java.awt.geom.Rectangle2D r28) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.services.DrawTexturePaintConvert.getAndroidImage(org.apache.poi.sl.draw.DrawTexturePaint, com.trans.android.AndroidImage, java.awt.geom.Rectangle2D):com.trans.android.AndroidImage");
    }

    public AndroidImage getAndroidImage(AndroidImage androidImage, Rectangle2D rectangle2D, AffineTransform affineTransform, Point2D point2D) {
        Rect rect;
        if (Double.isNaN(rectangle2D.getWidth()) || Double.isNaN(rectangle2D.getHeight())) {
            return null;
        }
        affineTransform.translate(rectangle2D.getX(), rectangle2D.getY());
        if (Math.abs(androidImage.getWidth() - rectangle2D.getWidth()) < 1.0d && Math.abs(androidImage.getHeight() - rectangle2D.getHeight()) < 1.0d && (point2D == null || (Double.compare(point2D.getX(), 0.0d) == 0 && Double.compare(point2D.getY(), 0.0d) == 0))) {
            return androidImage;
        }
        AndroidImage androidImage2 = new AndroidImage(rectangle2D.getWidth(), rectangle2D.getHeight());
        Canvas canvas = androidImage2.getCanvas();
        if (point2D == null) {
            rect = new Rect(0, 0, androidImage.getWidth(), androidImage.getHeight());
        } else {
            double min = Math.min(androidImage.getWidth() / (rectangle2D.getWidth() - point2D.getX()), androidImage.getHeight() / (rectangle2D.getHeight() - point2D.getY()));
            double d = (-point2D.getX()) * min;
            double d2 = (-point2D.getY()) * min;
            rect = new Rect((int) d, (int) d2, (int) ((rectangle2D.getWidth() * min) + d), (int) ((rectangle2D.getHeight() * min) + d2));
        }
        canvas.drawBitmap(androidImage.getAndroidBitmap(), rect, new Rect(0, 0, androidImage2.getWidth(), androidImage2.getHeight()), PaintFactory.createImagePaint());
        CloseUtils.close(androidImage);
        return androidImage2;
    }

    private AndroidImage getAndroidImage(DrawTexturePaint drawTexturePaint) {
        BufferedImage image = drawTexturePaint.getImage();
        if (image instanceof BufferedImageWrapper) {
            return ((BufferedImageWrapper) image).getAndroidImage();
        }
        AndroidImage androidImage = new AndroidImage(image.getWidth(), image.getHeight(), BridgeUtils.getConfigByImageType(image.getType()));
        androidImage.setData(image.getData());
        return androidImage;
    }
}
