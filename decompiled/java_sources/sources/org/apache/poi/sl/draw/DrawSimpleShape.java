package org.apache.poi.sl.draw;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.geom.AffineTransform;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Path2D;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import org.apache.poi.sl.draw.DrawSimpleShape;
import org.apache.poi.sl.draw.geom.Outline;
import org.apache.poi.sl.draw.geom.OutlineDecoration;
import org.apache.poi.sl.draw.geom.Path;
import org.apache.poi.sl.draw.geom.PathIf;
import org.apache.poi.sl.usermodel.LineDecoration;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.Shadow;
import org.apache.poi.sl.usermodel.SimpleShape;

/* loaded from: classes12.dex */
public class DrawSimpleShape extends DrawShape {
    private static final double DECO_SIZE_POW = 1.5d;

    /* renamed from: org.apache.poi.sl.draw.DrawSimpleShape$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196061 {

        /* renamed from: $SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape */
        static final /* synthetic */ int[] f111466xdbdf26f2;

        static {
            int[] iArr = new int[LineDecoration.DecorationShape.values().length];
            f111466xdbdf26f2 = iArr;
            try {
                iArr[LineDecoration.DecorationShape.OVAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111466xdbdf26f2[LineDecoration.DecorationShape.STEALTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111466xdbdf26f2[LineDecoration.DecorationShape.ARROW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111466xdbdf26f2[LineDecoration.DecorationShape.TRIANGLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public DrawSimpleShape(SimpleShape<?, ?> simpleShape) {
        super(simpleShape);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fillArea, reason: merged with bridge method [inline-methods] */
    public void lambda$draw$0(Graphics2D graphics2D, PaintStyle.PaintModifier paintModifier, Path2D path2D) {
        SimpleShape<?, ?> shape = getShape();
        Paint paint = DrawFactory.getInstance(graphics2D).getPaint(shape).getPaint(graphics2D, shape.getFillStyle().getPaint(), paintModifier);
        if (paint != null) {
            graphics2D.setPaint(paint);
            DrawPaint.fillPaintWorkaround(graphics2D, path2D);
        }
    }

    private Color[] getShadowColors(Color color) {
        int red = color.getRed();
        int green = color.getGreen();
        int blue = color.getBlue();
        int[] iArr = {5, 15, 20, 25, 30, 35, 40, 60, 80, 90};
        Color[] colorArr = new Color[10];
        for (int i = 0; i < 10; i++) {
            colorArr[i] = new Color(red, green, blue, iArr[i]);
        }
        return colorArr;
    }

    private boolean isInvalidDecoration(LineDecoration.DecorationShape decorationShape) {
        return decorationShape == null || decorationShape == LineDecoration.DecorationShape.DIAMOND || decorationShape == LineDecoration.DecorationShape.NONE;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<org.apache.poi.sl.draw.geom.Outline> computeOutlines(java.awt.Graphics2D r29) {
        /*
            r28 = this;
            org.apache.poi.sl.usermodel.SimpleShape r0 = r28.getShape()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            org.apache.poi.sl.draw.geom.CustomGeometry r2 = r0.getGeometry()
            if (r2 != 0) goto L10
            return r1
        L10:
            r3 = r29
            java.awt.geom.Rectangle2D r3 = org.apache.poi.sl.draw.DrawShape.getAnchor(r3, r0)
            if (r3 != 0) goto L19
            return r1
        L19:
            java.util.Iterator r4 = r2.iterator()
        L1d:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto Lc1
            java.lang.Object r5 = r4.next()
            org.apache.poi.sl.draw.geom.PathIf r5 = (org.apache.poi.sl.draw.geom.PathIf) r5
            long r6 = r5.getW()
            double r6 = (double) r6
            long r8 = r5.getH()
            double r8 = (double) r8
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            r13 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r15 = 1
            if (r12 > 0) goto L4f
            double r6 = r3.getWidth()
            int r6 = org.apache.poi.util.Units.toEMU(r6)
            double r6 = (double) r6
            double r17 = org.apache.poi.util.Units.toPoints(r15)
        L4a:
            r24 = r6
            r6 = r17
            goto L62
        L4f:
            double r17 = r3.getWidth()
            int r12 = (r17 > r10 ? 1 : (r17 == r10 ? 0 : -1))
            if (r12 != 0) goto L5b
            r24 = r6
            r6 = r13
            goto L62
        L5b:
            double r17 = r3.getWidth()
            double r17 = r17 / r6
            goto L4a
        L62:
            int r12 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r12 > 0) goto L76
            double r8 = r3.getHeight()
            int r8 = org.apache.poi.util.Units.toEMU(r8)
            double r8 = (double) r8
            double r13 = org.apache.poi.util.Units.toPoints(r15)
        L73:
            r26 = r8
            goto L86
        L76:
            double r15 = r3.getHeight()
            int r10 = (r15 > r10 ? 1 : (r15 == r10 ? 0 : -1))
            if (r10 != 0) goto L7f
            goto L73
        L7f:
            double r10 = r3.getHeight()
            double r13 = r10 / r8
            goto L73
        L86:
            java.awt.geom.Rectangle2D$Double r8 = new java.awt.geom.Rectangle2D$Double
            r20 = 0
            r22 = 0
            r19 = r8
            r19.<init>(r20, r22, r24, r26)
            org.apache.poi.sl.draw.geom.Context r9 = new org.apache.poi.sl.draw.geom.Context
            r9.<init>(r2, r8, r0)
            java.awt.geom.Path2D$Double r8 = r5.getPath(r9)
            java.awt.geom.AffineTransform r9 = new java.awt.geom.AffineTransform
            r9.<init>()
            double r10 = r3.getX()
            r28 = r0
            r12 = r1
            double r0 = r3.getY()
            r9.translate(r10, r0)
            r9.scale(r6, r13)
            java.awt.Shape r0 = r9.createTransformedShape(r8)
            org.apache.poi.sl.draw.geom.Outline r1 = new org.apache.poi.sl.draw.geom.Outline
            r1.<init>(r0, r5)
            r12.add(r1)
            r0 = r28
            r1 = r12
            goto L1d
        Lc1:
            r12 = r1
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.sl.draw.DrawSimpleShape.computeOutlines(java.awt.Graphics2D):java.util.Collection");
    }

    @Override // org.apache.poi.sl.draw.DrawShape, org.apache.poi.sl.draw.Drawable
    public void draw(final Graphics2D graphics2D) {
        if (DrawShape.getAnchor(graphics2D, getShape()) == null) {
            return;
        }
        Paint paint = graphics2D.getPaint();
        Stroke stroke = graphics2D.getStroke();
        Color color = graphics2D.getColor();
        Paint fillPaint = getFillPaint(graphics2D);
        Paint linePaint = getLinePaint(graphics2D);
        BasicStroke stroke2 = getStroke();
        graphics2D.setStroke(stroke2);
        Collection<Outline> computeOutlines = computeOutlines(graphics2D);
        drawShadow(graphics2D, computeOutlines, fillPaint, linePaint);
        if (fillPaint != null) {
            final Path2D.Double r3 = new Path2D.Double();
            graphics2D.setRenderingHint(Drawable.GRADIENT_SHAPE, r3);
            Consumer consumer = new Consumer() { // from class: com.sunia.HTREnginev2.eif
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DrawSimpleShape.this.lambda$draw$0(graphics2D, r3, (PaintStyle.PaintModifier) obj);
                }
            };
            PaintStyle.PaintModifier paintModifier = null;
            for (Outline outline : computeOutlines) {
                PathIf path = outline.getPath();
                if (path.isFilled()) {
                    PaintStyle.PaintModifier fill = path.getFill();
                    if (paintModifier == null || paintModifier == fill) {
                        r3.append(outline.getOutline(), false);
                    } else {
                        consumer.accept(paintModifier);
                        r3.reset();
                    }
                    paintModifier = fill;
                }
            }
            if (r3.getCurrentPoint() != null) {
                consumer.accept(paintModifier);
            }
        }
        drawContent(graphics2D);
        if (linePaint != null) {
            graphics2D.setPaint(linePaint);
            graphics2D.setStroke(stroke2);
            for (Outline outline2 : computeOutlines) {
                if (outline2.getPath().isStroked()) {
                    Shape outline3 = outline2.getOutline();
                    graphics2D.setRenderingHint(Drawable.GRADIENT_SHAPE, outline3);
                    graphics2D.draw(outline3);
                }
            }
        }
        drawDecoration(graphics2D, computeOutlines, linePaint, stroke2);
        graphics2D.setColor(color);
        graphics2D.setPaint(paint);
        graphics2D.setStroke(stroke);
    }

    public void drawDecoration(Graphics2D graphics2D, Collection<Outline> collection, Paint paint, BasicStroke basicStroke) {
        if (paint == null || collection.isEmpty()) {
            return;
        }
        graphics2D.setPaint(paint);
        OutlineDecoration outlineDecoration = new OutlineDecoration(collection.stream().findFirst().get());
        ArrayList<Outline> arrayList = new ArrayList();
        LineDecoration lineDecoration = getShape().getLineDecoration();
        Outline headDecoration = getHeadDecoration(graphics2D, outlineDecoration, lineDecoration, basicStroke);
        if (headDecoration != null) {
            arrayList.add(headDecoration);
        }
        Outline tailDecoration = getTailDecoration(graphics2D, outlineDecoration, lineDecoration, basicStroke);
        if (tailDecoration != null) {
            arrayList.add(tailDecoration);
        }
        for (Outline outline : arrayList) {
            Shape outline2 = outline.getOutline();
            PathIf path = outline.getPath();
            graphics2D.setRenderingHint(Drawable.GRADIENT_SHAPE, outline2);
            if (path.isFilled()) {
                graphics2D.fill(outline2);
            }
            if (path.isStroked()) {
                graphics2D.draw(outline2);
            }
        }
    }

    public void drawShadow(Graphics2D graphics2D, Collection<Outline> collection, Paint paint, Paint paint2) {
        PaintStyle.SolidPaint fillStyle;
        Shadow<?, ?> shadow = getShape().getShadow();
        if (shadow != null) {
            if ((paint == null && paint2 == null) || (fillStyle = shadow.getFillStyle()) == null) {
                return;
            }
            Color applyColorTransform = DrawPaint.applyColorTransform(fillStyle.getSolidColor());
            double rotation = getShape().getRotation();
            if (getShape().getFlipVertical()) {
                rotation += 180.0d;
            }
            double angle = shadow.getAngle() - rotation;
            double distance = shadow.getDistance();
            double cos = Math.cos(Math.toRadians(angle)) * distance;
            double sin = distance * Math.sin(Math.toRadians(angle));
            Iterator<Outline> it2 = collection.iterator();
            while (it2.hasNext()) {
                Outline next = it2.next();
                Shape outline = next.getOutline();
                PathIf path = next.getPath();
                graphics2D.setRenderingHint(Drawable.GRADIENT_SHAPE, outline);
                Paint[] shadowColors = getShadowColors(applyColorTransform);
                int i = 0;
                while (i < shadowColors.length) {
                    double length = ((shadowColors.length - i) * 1.0f) / shadowColors.length;
                    Iterator<Outline> it3 = it2;
                    Color color = applyColorTransform;
                    graphics2D.translate(cos * length, sin * length);
                    graphics2D.setPaint(shadowColors[i]);
                    if (paint != null && path.isFilled()) {
                        DrawPaint.fillPaintWorkaround(graphics2D, outline);
                    } else if (paint2 != null && path.isStroked()) {
                        graphics2D.draw(outline);
                    }
                    graphics2D.translate((-cos) * length, (-sin) * length);
                    i++;
                    it2 = it3;
                    applyColorTransform = color;
                }
            }
        }
    }

    public Paint getFillPaint(Graphics2D graphics2D) {
        if (disableDraw(graphics2D)) {
            return null;
        }
        return DrawFactory.getInstance(graphics2D).getPaint(getShape()).getPaint(graphics2D, getShape().getFillStyle().getPaint());
    }

    public Outline getHeadDecoration(Graphics2D graphics2D, OutlineDecoration outlineDecoration, LineDecoration lineDecoration, BasicStroke basicStroke) {
        double d;
        double d2;
        double d3;
        Path path;
        Shape shape;
        if (lineDecoration == null || basicStroke == null) {
            return null;
        }
        LineDecoration.DecorationShape headShape = lineDecoration.getHeadShape();
        if (isInvalidDecoration(headShape)) {
            return null;
        }
        LineDecoration.DecorationSize headLength = lineDecoration.getHeadLength();
        if (headLength == null) {
            headLength = LineDecoration.DecorationSize.MEDIUM;
        }
        LineDecoration.DecorationSize headWidth = lineDecoration.getHeadWidth();
        if (headWidth == null) {
            headWidth = LineDecoration.DecorationSize.MEDIUM;
        }
        double max = Math.max(2.5d, basicStroke.getLineWidth());
        double[] headDecoration = outlineDecoration.getHeadDecoration();
        if (headDecoration != null) {
            d = headDecoration[0];
            d2 = headDecoration[1];
            d3 = headDecoration[2];
        } else {
            d = 0.0d;
            d2 = 0.0d;
            d3 = 0.0d;
        }
        AffineTransform affineTransform = new AffineTransform();
        double pow = Math.pow(1.5d, headWidth.ordinal() + 1.0d);
        double pow2 = Math.pow(1.5d, headLength.ordinal() + 1.0d);
        int i = C196061.f111466xdbdf26f2[headShape.ordinal()];
        if (i == 1) {
            Path path2 = new Path();
            Ellipse2D.Double r8 = new Ellipse2D.Double(0.0d, 0.0d, max * pow2, max * pow);
            Rectangle2D bounds2D = r8.getBounds2D();
            affineTransform.translate(d - (bounds2D.getWidth() / 2.0d), d2 - (bounds2D.getHeight() / 2.0d));
            affineTransform.rotate(d3, bounds2D.getX() + (bounds2D.getWidth() / 2.0d), bounds2D.getY() + (bounds2D.getHeight() / 2.0d));
            path = path2;
            shape = r8;
        } else if (i == 2 || i == 3) {
            Path path3 = new Path();
            path3.setFill(PaintStyle.PaintModifier.NONE);
            path3.setStroke(true);
            Path2D.Double r7 = new Path2D.Double();
            double d4 = pow2 * max;
            r7.moveTo(d4, ((-max) * pow) / 2.0d);
            r7.lineTo(0.0d, 0.0d);
            r7.lineTo(d4, (max * pow) / 2.0d);
            affineTransform.translate(d, d2);
            affineTransform.rotate(d3);
            path = path3;
            shape = r7;
        } else if (i != 4) {
            path = null;
            shape = null;
        } else {
            Path path4 = new Path();
            Path2D.Double r15 = new Path2D.Double();
            double d5 = pow2 * max;
            r15.moveTo(d5, ((-max) * pow) / 2.0d);
            r15.lineTo(0.0d, 0.0d);
            r15.lineTo(d5, (max * pow) / 2.0d);
            r15.closePath();
            affineTransform.translate(d, d2);
            affineTransform.rotate(d3);
            path = path4;
            shape = r15;
        }
        if (shape != null) {
            shape = affineTransform.createTransformedShape(shape);
        }
        if (shape == null) {
            return null;
        }
        return new Outline(shape, path);
    }

    public Paint getLinePaint(Graphics2D graphics2D) {
        if (disableDraw(graphics2D)) {
            return null;
        }
        return DrawFactory.getInstance(graphics2D).getPaint(getShape()).getPaint(graphics2D, getShape().getStrokeStyle().getPaint());
    }

    public BasicStroke getStroke() {
        return DrawShape.getStroke(getShape().getStrokeStyle());
    }

    public Outline getTailDecoration(Graphics2D graphics2D, OutlineDecoration outlineDecoration, LineDecoration lineDecoration, BasicStroke basicStroke) {
        double d;
        double d2;
        double d3;
        Path path;
        Shape shape;
        if (lineDecoration == null || basicStroke == null) {
            return null;
        }
        LineDecoration.DecorationShape tailShape = lineDecoration.getTailShape();
        if (isInvalidDecoration(tailShape)) {
            return null;
        }
        LineDecoration.DecorationSize tailLength = lineDecoration.getTailLength();
        if (tailLength == null) {
            tailLength = LineDecoration.DecorationSize.MEDIUM;
        }
        LineDecoration.DecorationSize tailWidth = lineDecoration.getTailWidth();
        if (tailWidth == null) {
            tailWidth = LineDecoration.DecorationSize.MEDIUM;
        }
        double max = Math.max(2.5d, basicStroke.getLineWidth());
        double[] tailDecoration = outlineDecoration.getTailDecoration();
        if (tailDecoration != null) {
            d = tailDecoration[0];
            d2 = tailDecoration[1];
            d3 = tailDecoration[2];
        } else {
            d = 0.0d;
            d2 = 0.0d;
            d3 = 0.0d;
        }
        AffineTransform affineTransform = new AffineTransform();
        double pow = Math.pow(1.5d, tailWidth.ordinal() + 1.0d);
        double pow2 = Math.pow(1.5d, tailLength.ordinal() + 1.0d);
        int i = C196061.f111466xdbdf26f2[tailShape.ordinal()];
        if (i == 1) {
            Path path2 = new Path();
            Ellipse2D.Double r8 = new Ellipse2D.Double(0.0d, 0.0d, max * pow2, max * pow);
            Rectangle2D bounds2D = r8.getBounds2D();
            affineTransform.translate(d - (bounds2D.getWidth() / 2.0d), d2 - (bounds2D.getHeight() / 2.0d));
            affineTransform.rotate(d3, bounds2D.getX() + (bounds2D.getWidth() / 2.0d), bounds2D.getY() + (bounds2D.getHeight() / 2.0d));
            path = path2;
            shape = r8;
        } else if (i == 2 || i == 3) {
            Path path3 = new Path();
            path3.setFill(PaintStyle.PaintModifier.NONE);
            path3.setStroke(true);
            Path2D.Double r7 = new Path2D.Double();
            double d4 = -max;
            double d5 = pow2 * d4;
            r7.moveTo(d5, (d4 * pow) / 2.0d);
            r7.lineTo(0.0d, 0.0d);
            r7.lineTo(d5, (max * pow) / 2.0d);
            affineTransform.translate(d, d2);
            affineTransform.rotate(d3);
            path = path3;
            shape = r7;
        } else if (i != 4) {
            path = null;
            shape = null;
        } else {
            Path path4 = new Path();
            Path2D.Double r15 = new Path2D.Double();
            double d6 = -max;
            double d7 = pow2 * d6;
            r15.moveTo(d7, (d6 * pow) / 2.0d);
            r15.lineTo(0.0d, 0.0d);
            r15.lineTo(d7, (max * pow) / 2.0d);
            r15.closePath();
            affineTransform.translate(d, d2);
            affineTransform.rotate(d3);
            path = path4;
            shape = r15;
        }
        if (shape != null) {
            shape = affineTransform.createTransformedShape(shape);
        }
        if (shape == null) {
            return null;
        }
        return new Outline(shape, path);
    }

    @Override // org.apache.poi.sl.draw.DrawShape
    public SimpleShape<?, ?> getShape() {
        return (SimpleShape) this.shape;
    }
}
