package org.apache.poi.util;

import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.geom.RectangularShape;
import org.apache.poi.convert.WordToHtmlUtils;

/* loaded from: classes13.dex */
public class RectUtils {
    public static Rectangle2D getRotateAnchor(Rectangle2D rectangle2D, double d) {
        double d2 = ((d % 360.0d) + 360.0d) % 360.0d;
        int i = ((((int) d2) + 45) / 90) % 4;
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.rotate((d2 / 180.0d) * 3.141592653589793d, rectangle2D.getCenterX(), rectangle2D.getCenterY());
        if (i == 1 || i == 3) {
            Rectangle2D bounds2D = affineTransform.createTransformedShape(rectangle2D).getBounds2D();
            double centerX = bounds2D.getCenterX();
            double centerY = bounds2D.getCenterY();
            AffineTransform affineTransform2 = new AffineTransform();
            affineTransform2.quadrantRotate(1, centerX, centerY);
            affineTransform2.concatenate(affineTransform);
            affineTransform2.quadrantRotate(3, centerX, centerY);
            Rectangle2D bounds2D2 = affineTransform2.createTransformedShape(rectangle2D).getBounds2D();
            double safeScale = safeScale(bounds2D.getWidth(), bounds2D2.getWidth());
            double safeScale2 = safeScale(bounds2D.getHeight(), bounds2D2.getHeight());
            double centerX2 = rectangle2D.getCenterX();
            double centerY2 = rectangle2D.getCenterY();
            AffineTransform affineTransform3 = new AffineTransform();
            affineTransform3.translate(centerX2, centerY2);
            affineTransform3.scale(safeScale2, safeScale);
            affineTransform3.translate(-centerX2, -centerY2);
            rectangle2D = affineTransform3.createTransformedShape(rectangle2D).getBounds2D();
        }
        if (affineTransform.isIdentity()) {
            return rectangle2D;
        }
        Shape createTransformedShape = affineTransform.createTransformedShape(rectangle2D);
        return WordToHtmlUtils.isNull(createTransformedShape) ? rectangle2D : createTransformedShape.getBounds2D();
    }

    public static boolean isEmptyImage(RectangularShape rectangularShape) {
        return rectangularShape == null || rectangularShape.getWidth() < 1.0d || rectangularShape.getHeight() < 1.0d;
    }

    public static boolean isNullOrEmpty(RectangularShape rectangularShape) {
        return rectangularShape == null || rectangularShape.isEmpty();
    }

    public static double safeScale(double d, double d2) {
        if (d == 0.0d || d2 == 0.0d) {
            return 1.0d;
        }
        return d / d2;
    }

    public static boolean isEmptyImage(Dimension2D dimension2D) {
        return dimension2D == null || dimension2D.getWidth() < 1.0d || dimension2D.getHeight() < 1.0d;
    }

    public static boolean isNullOrEmpty(Dimension2D dimension2D) {
        return dimension2D == null || dimension2D.getWidth() <= 0.0d || dimension2D.getHeight() <= 0.0d;
    }
}
