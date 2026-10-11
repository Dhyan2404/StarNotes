package com.onyx.common.util;

import android.graphics.RectF;
import java.awt.geom.Dimension2D;
import java.awt.geom.RectangularShape;

/* loaded from: classes8.dex */
public class RectUtils {
    public static void clip(RectF rectF, RectF rectF2) {
        if (rectF.intersect(rectF2)) {
            return;
        }
        rectF.left = Math.max(rectF.left, rectF2.left);
        rectF.right = Math.min(rectF.right, rectF2.right);
        rectF.top = Math.max(rectF.top, rectF2.top);
        rectF.bottom = Math.min(rectF.bottom, rectF2.bottom);
        rectF.right = Math.max(rectF.left, rectF.right);
        rectF.bottom = Math.max(rectF.top, rectF.bottom);
    }

    public static boolean isNullOrEmpty(RectangularShape rectangularShape) {
        return rectangularShape == null || (rectangularShape.getWidth() <= 0.0d && rectangularShape.getHeight() <= 0.0d);
    }

    public static boolean isNullOrEmpty(Dimension2D dimension2D) {
        return dimension2D == null || dimension2D.getWidth() <= 0.0d || dimension2D.getHeight() <= 0.0d;
    }
}
