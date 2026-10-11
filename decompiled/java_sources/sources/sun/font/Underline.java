package sun.font;

import java.awt.BasicStroke;
import java.awt.Graphics2D;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.font.TextAttribute;
import java.awt.geom.GeneralPath;
import java.awt.geom.Line2D;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes16.dex */
public abstract class Underline {
    private static final float DEFAULT_THICKNESS = 1.0f;
    private static final boolean IGNORE_THICKNESS = false;
    private static final ConcurrentHashMap<Object, Underline> UNDERLINES;
    private static final Underline[] UNDERLINE_LIST;
    private static final boolean USE_THICKNESS = true;

    /* loaded from: classes16.dex */
    public static class IMGrayUnderline extends Underline {
        private BasicStroke stroke = new BasicStroke(1.0f, 0, 0, 10.0f, new float[]{1.0f, 1.0f}, 0.0f);

        @Override // sun.font.Underline
        public void drawUnderline(Graphics2D graphics2D, float f, float f2, float f3, float f4) {
            Stroke stroke = graphics2D.getStroke();
            graphics2D.setStroke(this.stroke);
            Line2D.Float r0 = new Line2D.Float(f2, f4, f3, f4);
            graphics2D.draw(r0);
            r0.f97773y1 += 1.0f;
            r0.f97774y2 += 1.0f;
            r0.f97771x1 += 1.0f;
            graphics2D.draw(r0);
            graphics2D.setStroke(stroke);
        }

        @Override // sun.font.Underline
        public float getLowerDrawLimit(float f) {
            return 2.0f;
        }

        @Override // sun.font.Underline
        public Shape getUnderlineShape(float f, float f2, float f3, float f4) {
            GeneralPath generalPath = new GeneralPath();
            Line2D.Float r0 = new Line2D.Float(f2, f4, f3, f4);
            generalPath.append(this.stroke.createStrokedShape(r0), false);
            r0.f97773y1 += 1.0f;
            r0.f97774y2 += 1.0f;
            r0.f97771x1 += 1.0f;
            generalPath.append(this.stroke.createStrokedShape(r0), false);
            return generalPath;
        }
    }

    /* loaded from: classes16.dex */
    public static final class StandardUnderline extends Underline {
        private BasicStroke cachedStroke = null;
        private float[] dashPattern;
        private float shift;
        private float thicknessMultiplier;
        private boolean useThickness;

        public StandardUnderline(float f, float f2, float[] fArr, boolean z) {
            this.shift = f;
            this.thicknessMultiplier = f2;
            this.dashPattern = fArr;
            this.useThickness = z;
        }

        private BasicStroke createStroke(float f) {
            float[] fArr = this.dashPattern;
            return fArr == null ? new BasicStroke(f, 0, 0) : new BasicStroke(f, 0, 0, 10.0f, fArr, 0.0f);
        }

        private float getLineThickness(float f) {
            return this.useThickness ? f * this.thicknessMultiplier : this.thicknessMultiplier * 1.0f;
        }

        private Stroke getStroke(float f) {
            float lineThickness = getLineThickness(f);
            BasicStroke basicStroke = this.cachedStroke;
            if (basicStroke != null && basicStroke.getLineWidth() == lineThickness) {
                return basicStroke;
            }
            BasicStroke createStroke = createStroke(lineThickness);
            this.cachedStroke = createStroke;
            return createStroke;
        }

        @Override // sun.font.Underline
        public void drawUnderline(Graphics2D graphics2D, float f, float f2, float f3, float f4) {
            Stroke stroke = graphics2D.getStroke();
            graphics2D.setStroke(getStroke(f));
            float f5 = this.shift;
            graphics2D.draw(new Line2D.Float(f2, f4 + f5, f3, f4 + f5));
            graphics2D.setStroke(stroke);
        }

        @Override // sun.font.Underline
        public float getLowerDrawLimit(float f) {
            return this.shift + getLineThickness(f);
        }

        @Override // sun.font.Underline
        public Shape getUnderlineShape(float f, float f2, float f3, float f4) {
            Stroke stroke = getStroke(f);
            float f5 = this.shift;
            return stroke.createStrokedShape(new Line2D.Float(f2, f4 + f5, f3, f4 + f5));
        }
    }

    static {
        ConcurrentHashMap<Object, Underline> concurrentHashMap = new ConcurrentHashMap<>(6);
        UNDERLINES = concurrentHashMap;
        StandardUnderline standardUnderline = new StandardUnderline(0.0f, 1.0f, null, true);
        concurrentHashMap.put(TextAttribute.UNDERLINE_ON, standardUnderline);
        StandardUnderline standardUnderline2 = new StandardUnderline(1.0f, 1.0f, null, false);
        concurrentHashMap.put(TextAttribute.UNDERLINE_LOW_ONE_PIXEL, standardUnderline2);
        StandardUnderline standardUnderline3 = new StandardUnderline(1.0f, 2.0f, null, false);
        concurrentHashMap.put(TextAttribute.UNDERLINE_LOW_TWO_PIXEL, standardUnderline3);
        StandardUnderline standardUnderline4 = new StandardUnderline(1.0f, 1.0f, new float[]{1.0f, 1.0f}, false);
        concurrentHashMap.put(TextAttribute.UNDERLINE_LOW_DOTTED, standardUnderline4);
        IMGrayUnderline iMGrayUnderline = new IMGrayUnderline();
        concurrentHashMap.put(TextAttribute.UNDERLINE_LOW_GRAY, iMGrayUnderline);
        StandardUnderline standardUnderline5 = new StandardUnderline(1.0f, 1.0f, new float[]{4.0f, 4.0f}, false);
        concurrentHashMap.put(TextAttribute.UNDERLINE_LOW_DASHED, standardUnderline5);
        UNDERLINE_LIST = new Underline[]{standardUnderline, standardUnderline2, standardUnderline3, standardUnderline4, iMGrayUnderline, standardUnderline5};
    }

    public static Underline getUnderline(Object obj) {
        if (obj == null) {
            return null;
        }
        return UNDERLINES.get(obj);
    }

    public abstract void drawUnderline(Graphics2D graphics2D, float f, float f2, float f3, float f4);

    public abstract float getLowerDrawLimit(float f);

    public abstract Shape getUnderlineShape(float f, float f2, float f3, float f4);

    public static Underline getUnderline(int i) {
        if (i < 0) {
            return null;
        }
        return UNDERLINE_LIST[i];
    }
}
