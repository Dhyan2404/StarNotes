package org.apache.poi.xslf.draw;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.material.motion.MotionUtils;
import java.awt.Color;
import java.awt.LinearGradientPaint;
import java.awt.MultipleGradientPaint;
import java.awt.Paint;
import java.awt.RadialGradientPaint;
import java.awt.RenderingHints;
import java.awt.TexturePaint;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import org.apache.batik.svggen.DefaultExtensionHandler;
import org.apache.batik.svggen.SVGColor;
import org.apache.batik.svggen.SVGGeneratorContext;
import org.apache.batik.svggen.SVGGraphics2D;
import org.apache.batik.svggen.SVGPaintDescriptor;
import org.apache.batik.svggen.SVGTexturePaint;
import org.apache.poi.sl.draw.DrawTexturePaint;
import org.apache.poi.sl.draw.Drawable;
import org.apache.poi.sl.draw.PathGradientPaint;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.SimpleShape;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.Internal;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

@Internal
/* loaded from: classes13.dex */
public class SVGRenderExtension extends DefaultExtensionHandler {
    private static final int LINE_LENGTH = 65;
    private static final String XLINK_NS = "http://www.w3.org/1999/xlink";
    private final Map<Long, String> imageMap = new HashMap();
    private WeakReference<SVGGraphics2D> svgGraphics2D = null;

    /* renamed from: org.apache.poi.xslf.draw.SVGRenderExtension$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198871 {
        static final /* synthetic */ int[] $SwitchMap$java$awt$MultipleGradientPaint$CycleMethod;

        static {
            int[] iArr = new int[MultipleGradientPaint.CycleMethod.values().length];
            $SwitchMap$java$awt$MultipleGradientPaint$CycleMethod = iArr;
            try {
                iArr[MultipleGradientPaint.CycleMethod.REFLECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$awt$MultipleGradientPaint$CycleMethod[MultipleGradientPaint.CycleMethod.REPEAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$awt$MultipleGradientPaint$CycleMethod[MultipleGradientPaint.CycleMethod.NO_CYCLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void addMgpAttributes(Element element, SVGGeneratorContext sVGGeneratorContext, MultipleGradientPaint multipleGradientPaint) {
        element.setAttribute("gradientUnits", "userSpaceOnUse");
        int i = C198871.$SwitchMap$java$awt$MultipleGradientPaint$CycleMethod[multipleGradientPaint.getCycleMethod().ordinal()];
        element.setAttribute("spreadMethod", i != 1 ? i != 2 ? "pad" : "repeat" : "reflect");
        element.setAttribute("color-interpolation", multipleGradientPaint.getColorSpace() == MultipleGradientPaint.ColorSpaceType.LINEAR_RGB ? "linearRGB" : "sRGB");
        AffineTransform transform = multipleGradientPaint.getTransform();
        if (!transform.isIdentity()) {
            element.setAttribute("gradientTransform", "matrix(" + transform.getScaleX() + " " + transform.getShearY() + " " + transform.getShearX() + " " + transform.getScaleY() + " " + transform.getTranslateX() + " " + transform.getTranslateY() + MotionUtils.f31762d);
        }
        Color[] colors = multipleGradientPaint.getColors();
        float[] fractions = multipleGradientPaint.getFractions();
        for (int i2 = 0; i2 < colors.length; i2++) {
            Element createElementNS = sVGGeneratorContext.getDOMFactory().createElementNS("http://www.w3.org/2000/svg", "stop");
            SVGPaintDescriptor svg = SVGColor.toSVG(colors[i2], sVGGeneratorContext);
            createElementNS.setAttribute(TypedValues.CycleType.S_WAVE_OFFSET, ((int) (fractions[i2] * 100.0f)) + "%");
            createElementNS.setAttribute("stop-color", svg.getPaintValue());
            if (colors[i2].getAlpha() != 255) {
                createElementNS.setAttribute("stop-opacity", svg.getOpacityValue());
            }
            element.appendChild(createElementNS);
        }
    }

    private SVGPaintDescriptor getDtpDescriptor(DrawTexturePaint drawTexturePaint, SVGGeneratorContext sVGGeneratorContext) {
        String imageID = getImageID(drawTexturePaint, sVGGeneratorContext);
        Document dOMFactory = sVGGeneratorContext.getDOMFactory();
        Element createElementNS = dOMFactory.createElementNS("http://www.w3.org/2000/svg", "pattern");
        String generateID = sVGGeneratorContext.getIDGenerator().generateID("pattern");
        PaintStyle.TexturePaint fill = drawTexturePaint.getFill();
        Insets2D stretch = fill.getStretch();
        if (stretch == null) {
            stretch = new Insets2D(0.0d, 0.0d, 0.0d, 0.0d);
        }
        Rectangle2D anchorRect = drawTexturePaint.getAnchorRect();
        String doubleString = sVGGeneratorContext.doubleString(((-stretch.left) / 100000.0d) * anchorRect.getWidth());
        String doubleString2 = sVGGeneratorContext.doubleString(((-stretch.top) / 100000.0d) * anchorRect.getHeight());
        String doubleString3 = sVGGeneratorContext.doubleString((((stretch.left + 100000.0d) + stretch.right) / 100000.0d) * anchorRect.getWidth());
        String doubleString4 = sVGGeneratorContext.doubleString((((stretch.top + 100000.0d) + stretch.bottom) / 100000.0d) * anchorRect.getHeight());
        Dimension2D scale = fill.getScale();
        if (scale == null) {
            scale = new Dimension2DDouble(1.0d, 1.0d);
        }
        Dimension2D dimension2D = scale;
        Point2D offset = fill.getOffset();
        if (offset == null) {
            offset = new Point2D.Double(0.0d, 0.0d);
        }
        Point2D point2D = offset;
        if (fill.getFlipMode() == null) {
            PaintStyle.FlipMode flipMode = PaintStyle.FlipMode.NONE;
        }
        setAttribute(sVGGeneratorContext, createElementNS, null, "patternUnits", "objectBoundingBox", null, "id", generateID, null, "x", Double.valueOf(point2D.getX()), null, "y", Double.valueOf(point2D.getY()), null, "width", sVGGeneratorContext.doubleString(dimension2D.getWidth() * 100.0d) + "%", null, "height", sVGGeneratorContext.doubleString(dimension2D.getHeight() * 100.0d) + "%", null, "preserveAspectRatio", "none", null, "viewBox", doubleString + " " + doubleString2 + " " + doubleString3 + " " + doubleString4);
        Shape shape = fill.getShape();
        if (!fill.isRotatedWithShape() && (shape instanceof SimpleShape)) {
            double rotation = ((SimpleShape) shape).getRotation();
            if (rotation != 0.0d) {
                setAttribute(sVGGeneratorContext, createElementNS, null, "patternTransform", "rotate(" + sVGGeneratorContext.doubleString(-rotation) + MotionUtils.f31762d);
            }
        }
        Element createElementNS2 = dOMFactory.createElementNS("http://www.w3.org/2000/svg", "use");
        createElementNS2.setAttributeNS(null, "href", "#" + imageID);
        createElementNS.appendChild(createElementNS2);
        return new SVGPaintDescriptor("url(#" + generateID + MotionUtils.f31762d, "1", createElementNS);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getImageID(org.apache.poi.sl.draw.DrawTexturePaint r30, org.apache.batik.svggen.SVGGeneratorContext r31) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xslf.draw.SVGRenderExtension.getImageID(org.apache.poi.sl.draw.DrawTexturePaint, org.apache.batik.svggen.SVGGeneratorContext):java.lang.String");
    }

    private SVGPaintDescriptor getLgpDescriptor(LinearGradientPaint linearGradientPaint, SVGGeneratorContext sVGGeneratorContext) {
        Element createElementNS = sVGGeneratorContext.getDOMFactory().createElementNS("http://www.w3.org/2000/svg", "linearGradient");
        String generateID = sVGGeneratorContext.getIDGenerator().generateID("gradient");
        createElementNS.setAttribute("id", generateID);
        setPoint(createElementNS, linearGradientPaint.getStartPoint(), "x1", "y1");
        setPoint(createElementNS, linearGradientPaint.getEndPoint(), "x2", "y2");
        addMgpAttributes(createElementNS, sVGGeneratorContext, linearGradientPaint);
        return new SVGPaintDescriptor("url(#" + generateID + MotionUtils.f31762d, "1", createElementNS);
    }

    private SVGPaintDescriptor getPathDescriptor(PathGradientPaint pathGradientPaint, SVGGeneratorContext sVGGeneratorContext) {
        RenderingHints renderingHints = sVGGeneratorContext.getGraphicContextDefaults().getRenderingHints();
        java.awt.Shape shape = (java.awt.Shape) renderingHints.get(Drawable.GRADIENT_SHAPE);
        if (shape == null) {
            return null;
        }
        PathGradientPaint.PathGradientContext createContext = pathGradientPaint.createContext(ColorModel.getRGBdefault(), shape.getBounds(), shape.getBounds2D(), new AffineTransform(), renderingHints);
        return new SVGTexturePaint(sVGGeneratorContext).toSVG(new TexturePaint(new BufferedImage(createContext.getColorModel(), createContext.createRaster(), false, (Hashtable<?, ?>) null), shape.getBounds2D()));
    }

    private SVGPaintDescriptor getRgpDescriptor(RadialGradientPaint radialGradientPaint, SVGGeneratorContext sVGGeneratorContext) {
        Element createElementNS = sVGGeneratorContext.getDOMFactory().createElementNS("http://www.w3.org/2000/svg", "radialGradient");
        String generateID = sVGGeneratorContext.getIDGenerator().generateID("gradient");
        createElementNS.setAttribute("id", generateID);
        setPoint(createElementNS, radialGradientPaint.getCenterPoint(), "cx", "cy");
        setPoint(createElementNS, radialGradientPaint.getFocusPoint(), "fx", "fy");
        createElementNS.setAttribute("r", String.valueOf(radialGradientPaint.getRadius()));
        addMgpAttributes(createElementNS, sVGGeneratorContext, radialGradientPaint);
        return new SVGPaintDescriptor("url(#" + generateID + MotionUtils.f31762d, "1", createElementNS);
    }

    private static void setAttribute(SVGGeneratorContext sVGGeneratorContext, Element element, Object... objArr) {
        for (int i = 0; i < objArr.length; i += 3) {
            String str = (String) objArr[i];
            String str2 = (String) objArr[i + 1];
            Object obj = objArr[i + 2];
            element.setAttributeNS(str, str2, obj instanceof String ? (String) obj : obj instanceof Number ? sVGGeneratorContext.doubleString(((Number) obj).doubleValue()) : obj == 0 ? "" : obj.toString());
        }
    }

    private static void setPoint(Element element, Point2D point2D, String str, String str2) {
        element.setAttribute(str, Double.toString(point2D.getX()));
        element.setAttribute(str2, Double.toString(point2D.getY()));
    }

    public SVGGraphics2D getSvgGraphics2D() {
        WeakReference<SVGGraphics2D> weakReference = this.svgGraphics2D;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public SVGPaintDescriptor handlePaint(Paint paint, SVGGeneratorContext sVGGeneratorContext) {
        return paint instanceof LinearGradientPaint ? getLgpDescriptor((LinearGradientPaint) paint, sVGGeneratorContext) : paint instanceof RadialGradientPaint ? getRgpDescriptor((RadialGradientPaint) paint, sVGGeneratorContext) : paint instanceof PathGradientPaint ? getPathDescriptor((PathGradientPaint) paint, sVGGeneratorContext) : paint instanceof DrawTexturePaint ? getDtpDescriptor((DrawTexturePaint) paint, sVGGeneratorContext) : super.handlePaint(paint, sVGGeneratorContext);
    }

    public void setSvgGraphics2D(SVGGraphics2D sVGGraphics2D) {
        this.svgGraphics2D = new WeakReference<>(sVGGraphics2D);
    }
}
