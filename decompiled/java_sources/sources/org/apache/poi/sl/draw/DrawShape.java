package org.apache.poi.sl.draw;

import java.awt.BasicStroke;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.util.Locale;
import org.apache.poi.sl.usermodel.PlaceableShape;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.StrokeStyle;

/* loaded from: classes12.dex */
public class DrawShape implements Drawable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected final Shape<?, ?> shape;

    /* renamed from: org.apache.poi.sl.draw.DrawShape$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196051 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCap;

        static {
            int[] iArr = new int[StrokeStyle.LineCap.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCap = iArr;
            try {
                iArr[StrokeStyle.LineCap.ROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCap[StrokeStyle.LineCap.SQUARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCap[StrokeStyle.LineCap.FLAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public DrawShape(Shape<?, ?> shape) {
        this.shape = shape;
    }

    private void flipHorizontal(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        if (((PlaceableShape) this.shape).getFlipHorizontal()) {
            graphics2D.translate(rectangle2D.getX() + rectangle2D.getWidth(), rectangle2D.getY());
            graphics2D.scale(-1.0d, 1.0d);
            graphics2D.translate(-rectangle2D.getX(), -rectangle2D.getY());
        }
    }

    private void flipVertical(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        if (((PlaceableShape) this.shape).getFlipVertical()) {
            graphics2D.translate(rectangle2D.getX(), rectangle2D.getY() + rectangle2D.getHeight());
            graphics2D.scale(1.0d, -1.0d);
            graphics2D.translate(-rectangle2D.getX(), -rectangle2D.getY());
        }
    }

    public static Rectangle2D getAnchor(Graphics2D graphics2D, PlaceableShape<?, ?> placeableShape) {
        java.awt.Shape createTransformedShape;
        Rectangle2D anchor = placeableShape.getAnchor();
        if (anchor == null) {
            return null;
        }
        boolean isHSLF = isHSLF(placeableShape);
        AffineTransform affineTransform = graphics2D != null ? (AffineTransform) graphics2D.getRenderingHint(Drawable.GROUP_TRANSFORM) : null;
        if (affineTransform == null) {
            affineTransform = new AffineTransform();
        }
        int rotation = ((((int) (((placeableShape.getRotation() % 360.0d) + 360.0d) % 360.0d)) + 45) / 90) % 4;
        if (rotation == 1 || rotation == 3) {
            Rectangle2D bounds2D = affineTransform.createTransformedShape(anchor).getBounds2D();
            double centerX = bounds2D.getCenterX();
            double centerY = bounds2D.getCenterY();
            AffineTransform affineTransform2 = new AffineTransform();
            if (!isHSLF) {
                affineTransform2.quadrantRotate(1, centerX, centerY);
                affineTransform2.concatenate(affineTransform);
            }
            affineTransform2.quadrantRotate(3, centerX, centerY);
            if (isHSLF) {
                affineTransform2.concatenate(affineTransform);
            }
            Rectangle2D bounds2D2 = affineTransform2.createTransformedShape(anchor).getBounds2D();
            double safeScale = safeScale(bounds2D.getWidth(), bounds2D2.getWidth());
            double safeScale2 = safeScale(bounds2D.getHeight(), bounds2D2.getHeight());
            double centerX2 = anchor.getCenterX();
            double centerY2 = anchor.getCenterY();
            AffineTransform affineTransform3 = new AffineTransform();
            affineTransform3.translate(centerX2, centerY2);
            affineTransform3.scale(safeScale2, safeScale);
            affineTransform3.translate(-centerX2, -centerY2);
            anchor = affineTransform3.createTransformedShape(anchor).getBounds2D();
        }
        return (affineTransform.isIdentity() || (createTransformedShape = affineTransform.createTransformedShape(anchor)) == null) ? anchor : createTransformedShape.getBounds2D();
    }

    public static BasicStroke getStroke(StrokeStyle strokeStyle) {
        float[] fArr;
        int i;
        float lineWidth = (float) strokeStyle.getLineWidth();
        if (lineWidth == 0.0f) {
            lineWidth = 0.25f;
        }
        float f = lineWidth;
        StrokeStyle.LineDash lineDash = strokeStyle.getLineDash();
        if (lineDash == null) {
            lineDash = StrokeStyle.LineDash.SOLID;
        }
        int[] iArr = lineDash.pattern;
        if (iArr != null) {
            float[] fArr2 = new float[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                fArr2[i2] = iArr[i2] * Math.max(1.0f, f);
            }
            fArr = fArr2;
        } else {
            fArr = null;
        }
        StrokeStyle.LineCap lineCap = strokeStyle.getLineCap();
        if (lineCap == null) {
            lineCap = StrokeStyle.LineCap.FLAT;
        }
        int i3 = C196051.$SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCap[lineCap.ordinal()];
        int i4 = 1;
        if (i3 != 1) {
            i4 = 2;
            if (i3 != 2) {
                i = 0;
                return new BasicStroke(f, i, 1, 10.0f, fArr, 0.0f);
            }
        }
        i = i4;
        return new BasicStroke(f, i, 1, 10.0f, fArr, 0.0f);
    }

    public static boolean isHSLF(Object obj) {
        return obj.getClass().getName().toLowerCase(Locale.ROOT).contains("hslf");
    }

    private void rotate(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        double rotation = ((PlaceableShape) this.shape).getRotation();
        if (rotation != 0.0d) {
            graphics2D.rotate(Math.toRadians(rotation), rectangle2D.getCenterX(), rectangle2D.getCenterY());
        }
    }

    private static double safeScale(double d, double d2) {
        if (d == 0.0d || d2 == 0.0d) {
            return 1.0d;
        }
        return d / d2;
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void applyTransform(Graphics2D graphics2D) {
        Rectangle2D anchor;
        Shape<?, ?> shape = this.shape;
        if (!(shape instanceof PlaceableShape) || graphics2D == null || (anchor = getAnchor(graphics2D, (PlaceableShape<?, ?>) shape)) == null) {
            return;
        }
        if (isHSLF(this.shape)) {
            flipHorizontal(graphics2D, anchor);
            flipVertical(graphics2D, anchor);
            rotate(graphics2D, anchor);
        } else {
            rotate(graphics2D, anchor);
            flipHorizontal(graphics2D, anchor);
            flipVertical(graphics2D, anchor);
        }
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void draw(Graphics2D graphics2D) {
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void drawContent(Graphics2D graphics2D) {
    }

    public Shape<?, ?> getShape() {
        return this.shape;
    }

    public static Rectangle2D getAnchor(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        AffineTransform affineTransform;
        return (graphics2D == null || (affineTransform = (AffineTransform) graphics2D.getRenderingHint(Drawable.GROUP_TRANSFORM)) == null || affineTransform.isIdentity() || affineTransform.createTransformedShape(rectangle2D) == null) ? rectangle2D : affineTransform.createTransformedShape(rectangle2D).getBounds2D();
    }
}
