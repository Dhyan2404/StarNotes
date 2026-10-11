package org.apache.poi.sl.usermodel;

import java.awt.geom.Dimension2D;
import java.awt.geom.Point2D;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes12.dex */
public interface PaintStyle {

    /* loaded from: classes12.dex */
    public enum FlipMode {
        NONE,
        X,
        Y,
        XY
    }

    /* loaded from: classes12.dex */
    public interface GradientPaint extends PaintStyle {

        /* loaded from: classes12.dex */
        public enum GradientType {
            linear,
            circular,
            rectangular,
            shape
        }

        default Insets2D getFillToInsets() {
            return null;
        }

        double getGradientAngle();

        ColorStyle[] getGradientColors();

        float[] getGradientFractions();

        GradientType getGradientType();

        boolean isRotatedWithShape();
    }

    /* loaded from: classes12.dex */
    public enum PaintModifier {
        NONE,
        NORM,
        LIGHTEN,
        LIGHTEN_LESS,
        DARKEN,
        DARKEN_LESS
    }

    /* loaded from: classes12.dex */
    public interface SolidPaint extends PaintStyle {
        ColorStyle getSolidColor();
    }

    /* loaded from: classes12.dex */
    public enum TextureAlignment {
        BOTTOM("b"),
        BOTTOM_LEFT("bl"),
        BOTTOM_RIGHT("br"),
        CENTER("ctr"),
        LEFT("l"),
        RIGHT("r"),
        TOP("t"),
        TOP_LEFT("tl"),
        TOP_RIGHT("tr");

        private final String ooxmlId;

        TextureAlignment(String str) {
            this.ooxmlId = str;
        }

        public static TextureAlignment fromOoxmlId(String str) {
            for (TextureAlignment textureAlignment : values()) {
                if (textureAlignment.ooxmlId.equals(str)) {
                    return textureAlignment;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public interface TexturePaint extends PaintStyle {
        default TextureAlignment getAlignment() {
            return null;
        }

        int getAlpha();

        String getContentType();

        default List<ColorStyle> getDuoTone() {
            return null;
        }

        default FlipMode getFlipMode() {
            return FlipMode.NONE;
        }

        InputStream getImageData();

        default Insets2D getInsets() {
            return null;
        }

        default Point2D getOffset() {
            return null;
        }

        default Dimension2D getScale() {
            return null;
        }

        Shape getShape();

        default Insets2D getStretch() {
            return null;
        }

        default boolean isRotatedWithShape() {
            return true;
        }
    }
}
