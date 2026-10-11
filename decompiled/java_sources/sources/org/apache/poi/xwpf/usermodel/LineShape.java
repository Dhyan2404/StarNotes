package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTLine;
import com.microsoft.schemas.vml.STStrokeArrowType;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.sl.draw.geom.Path;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.util.ColorUtils;

/* loaded from: classes13.dex */
public class LineShape extends XWPFShape<CTLine> {
    private static final double DECO_SIZE_POW = 1.5d;

    /* renamed from: org.apache.poi.xwpf.usermodel.LineShape$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199891 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xwpf$usermodel$Flip;

        static {
            int[] iArr = new int[Flip.values().length];
            $SwitchMap$org$apache$poi$xwpf$usermodel$Flip = iArr;
            try {
                iArr[Flip.X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Flip[Flip.Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$Flip[Flip.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public LineShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTLine cTLine) {
        super(shapeContainer, cTLine);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.awt.Shape, java.awt.geom.Ellipse2D$Double] */
    private void drawLineArrow(Graphics2D graphics2D, Line2D line2D) {
        STStrokeArrowType.Enum r2;
        AffineTransform affineTransform;
        Path path;
        Path2D.Double r10;
        Graphics2D graphics2D2;
        Path path2;
        ShapeProperties shapeProperties = this.properties;
        if (!shapeProperties.arrowOk || (r2 = shapeProperties.arrow) == null || r2 == STStrokeArrowType.NONE) {
            return;
        }
        double x2 = line2D.getX2();
        double y2 = line2D.getY2();
        double atan2 = Math.atan2(line2D.getY1() - line2D.getY2(), line2D.getX1() - line2D.getX2());
        double pow = Math.pow(1.5d, 2.0d);
        double pow2 = Math.pow(1.5d, 2.0d);
        AffineTransform affineTransform2 = new AffineTransform();
        int intValue = this.properties.arrow.intValue();
        if (intValue == 2) {
            affineTransform = affineTransform2;
            path = new Path();
            r10 = new Path2D.Double();
            double d = pow * 2.0d;
            r10.moveTo(d, ((-2.0d) * pow2) / 2.0d);
            r10.lineTo(0.0d, 0.0d);
            r10.lineTo(d, (pow2 * 2.0d) / 2.0d);
            r10.closePath();
            affineTransform.translate(x2, y2);
            affineTransform.rotate(atan2);
        } else if (intValue != 4) {
            if (intValue != 5) {
                Path path3 = new Path();
                path3.setFill(PaintStyle.PaintModifier.NONE);
                path3.setStroke(true);
                r10 = new Path2D.Double();
                double d2 = pow * 2.0d;
                path2 = path3;
                r10.moveTo(d2, ((-2.0d) * pow2) / 2.0d);
                r10.lineTo(0.0d, 0.0d);
                r10.lineTo(d2, (pow2 * 2.0d) / 2.0d);
                affineTransform2.translate(x2, y2);
                affineTransform2.rotate(atan2);
            } else {
                Path path4 = new Path();
                r10 = new Path2D.Double();
                double d3 = pow * 2.0d;
                path2 = path4;
                r10.moveTo(d3, ((-2.0d) * pow2) / 2.0d);
                r10.lineTo(0.0d, 0.0d);
                r10.lineTo(d3, (pow2 * 2.0d) / 2.0d);
                r10.lineTo(d3 * 2.0d, 0.0d);
                r10.closePath();
                affineTransform2.translate(x2, y2);
                affineTransform2.rotate(atan2);
            }
            path = path2;
            affineTransform = affineTransform2;
        } else {
            Path path5 = new Path();
            ?? r1 = new Ellipse2D.Double(0.0d, 0.0d, pow * 2.0d, pow2 * 2.0d);
            Rectangle2D bounds2D = r1.getBounds2D();
            affineTransform2.translate(x2 - (bounds2D.getWidth() / 2.0d), y2 - (bounds2D.getHeight() / 2.0d));
            affineTransform2.rotate(atan2, bounds2D.getX() + (bounds2D.getWidth() / 2.0d), bounds2D.getY() + (bounds2D.getHeight() / 2.0d));
            r10 = r1;
            path = path5;
            affineTransform = affineTransform2;
        }
        java.awt.Shape createTransformedShape = affineTransform.createTransformedShape(r10);
        if (path.isFilled()) {
            graphics2D2 = graphics2D;
            graphics2D2.fill(createTransformedShape);
        } else {
            graphics2D2 = graphics2D;
        }
        if (path.isStroked()) {
            graphics2D2.draw(createTransformedShape);
        }
    }

    private Line2D getLineShape() {
        ShapeProperties shapeProperties = this.properties;
        Rectangle2D rectangle2D = shapeProperties.anchor;
        int i = C199891.$SwitchMap$org$apache$poi$xwpf$usermodel$Flip[shapeProperties.flip.ordinal()];
        return i != 1 ? i != 2 ? new Line2D.Double(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getMaxX(), rectangle2D.getMaxY()) : new Line2D.Double(rectangle2D.getX(), rectangle2D.getMaxY(), rectangle2D.getMaxX(), rectangle2D.getY()) : new Line2D.Double(rectangle2D.getMaxX(), rectangle2D.getY(), rectangle2D.getX(), rectangle2D.getY());
    }

    private void parseFromTo(ShapeProperties shapeProperties, CTLine cTLine) {
        String from = cTLine.getFrom();
        String to = cTLine.getTo();
        if (from == null || to == null) {
            return;
        }
        Point2D parsePoint = XWPFWordToHtmlUtils.parsePoint(from);
        Point2D parsePoint2 = XWPFWordToHtmlUtils.parsePoint(to);
        if (WordToHtmlUtils.isNull(parsePoint) || WordToHtmlUtils.isNull(parsePoint2)) {
            return;
        }
        shapeProperties.anchor.setRect(parsePoint.getX(), parsePoint.getY(), parsePoint2.getX() - parsePoint.getX(), parsePoint2.getY() - parsePoint.getY());
    }

    private void parseLineProperties(ShapeProperties shapeProperties, CTLine cTLine) {
        shapeProperties.shapeId = cTLine.getId();
        if (cTLine.isSetAllowincell()) {
            shapeProperties.allowInCell = XWPFWordToHtmlUtils.parseSTTrueFalse(cTLine.getAllowincell());
        }
        if (cTLine.isSetSpt()) {
            shapeProperties.spt = cTLine.getSpt();
        }
        if (shapeProperties.anchor.isEmpty()) {
            if (cTLine.isSetCoordorigin()) {
                Point2D parsePoint = XWPFWordToHtmlUtils.parsePoint(cTLine.getCoordorigin());
                if (!WordToHtmlUtils.isNull(parsePoint)) {
                    shapeProperties.anchor.setFrame(parsePoint.getX(), parsePoint.getY(), shapeProperties.anchor.getWidth(), shapeProperties.anchor.getHeight());
                }
            }
            if (cTLine.isSetCoordsize()) {
                Point2D parsePoint2 = XWPFWordToHtmlUtils.parsePoint(cTLine.getCoordsize());
                if (!WordToHtmlUtils.isNull(parsePoint2)) {
                    Rectangle2D rectangle2D = shapeProperties.anchor;
                    rectangle2D.setFrame(rectangle2D.getX(), shapeProperties.anchor.getY(), parsePoint2.getX(), parsePoint2.getY());
                }
            }
        }
        if (cTLine.isSetFilled()) {
            shapeProperties.filled = XWPFWordToHtmlUtils.parseSTTrueFalse(cTLine.getFilled());
            if (cTLine.isSetFillcolor()) {
                shapeProperties.fillColor = ColorUtils.decode(cTLine.getFillcolor());
            }
        } else if (cTLine.sizeOfFillArray() > 0) {
            shapeProperties.filled = XWPFWordToHtmlUtils.parseSTTrueFalse(cTLine.getFillArray(0).getOn());
        }
        if (cTLine.isSetStroked()) {
            shapeProperties.stroked = XWPFWordToHtmlUtils.parseSTTrueFalse(cTLine.getStroked());
        } else {
            shapeProperties.stroked = true;
        }
        if (shapeProperties.stroked && cTLine.isSetStrokecolor()) {
            shapeProperties.strokedColor = ColorUtils.decode(cTLine.getStrokecolor());
        }
        if (cTLine.sizeOfPathArray() > 0) {
            shapeProperties.arrowOk = XWPFWordToHtmlUtils.parseSTTrueFalse(cTLine.getPathArray(0).getArrowok());
        }
        if (cTLine.sizeOfStrokeArray() > 0) {
            parseStroke(shapeProperties, cTLine.getStrokeArray(0));
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        if (this.properties.stroked) {
            Line2D lineShape = getLineShape();
            Color color = graphics2D.getColor();
            graphics2D.setColor(this.properties.strokedColor);
            graphics2D.draw(lineShape);
            drawLineArrow(graphics2D, lineShape);
            graphics2D.setColor(color);
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTLine cTLine) {
        parseStyleProperties(cTLine.getStyle());
        ShapeProperties shapeProperties = this.properties;
        shapeProperties.stroked = true;
        parseLineProperties(shapeProperties, cTLine);
        parseFromTo(this.properties, cTLine);
    }
}
