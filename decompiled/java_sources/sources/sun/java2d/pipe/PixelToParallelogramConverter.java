package sun.java2d.pipe;

import java.awt.BasicStroke;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Line2D;
import java.awt.geom.Rectangle2D;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public class PixelToParallelogramConverter extends PixelToShapeConverter implements ShapeDrawPipe {
    boolean adjustfill;
    double minPenSize;
    double normPosition;
    double normRoundingBias;
    ParallelogramPipe outrenderer;

    public PixelToParallelogramConverter(ShapeDrawPipe shapeDrawPipe, ParallelogramPipe parallelogramPipe, double d, double d2, boolean z) {
        super(shapeDrawPipe);
        this.outrenderer = parallelogramPipe;
        this.minPenSize = d;
        this.normPosition = d2;
        this.normRoundingBias = 0.5d - d2;
        this.adjustfill = z;
    }

    public static double len(double d, double d2) {
        return d == 0.0d ? Math.abs(d2) : d2 == 0.0d ? Math.abs(d) : Math.sqrt((d * d) + (d2 * d2));
    }

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void draw(SunGraphics2D sunGraphics2D, Shape shape) {
        if (sunGraphics2D.strokeState < 3) {
            BasicStroke basicStroke = (BasicStroke) sunGraphics2D.stroke;
            if (shape instanceof Rectangle2D) {
                if (basicStroke.getLineJoin() == 0 && basicStroke.getDashArray() == null) {
                    Rectangle2D rectangle2D = (Rectangle2D) shape;
                    double width = rectangle2D.getWidth();
                    double height = rectangle2D.getHeight();
                    double x = rectangle2D.getX();
                    double y = rectangle2D.getY();
                    if (width < 0.0d || height < 0.0d) {
                        return;
                    }
                    drawRectangle(sunGraphics2D, x, y, width, height, basicStroke.getLineWidth());
                    return;
                }
            } else if (shape instanceof Line2D) {
                Line2D line2D = (Line2D) shape;
                if (drawGeneralLine(sunGraphics2D, line2D.getX1(), line2D.getY1(), line2D.getX2(), line2D.getY2())) {
                    return;
                }
            }
        }
        this.outpipe.draw(sunGraphics2D, shape);
    }

    public boolean drawGeneralLine(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4) {
        double d5;
        double d6;
        double d7;
        double d8;
        int i;
        double d9;
        double d10;
        double d11;
        boolean z;
        double d12;
        int i2 = sunGraphics2D.strokeState;
        if (i2 == 3 || i2 == 1) {
            return false;
        }
        BasicStroke basicStroke = (BasicStroke) sunGraphics2D.stroke;
        int endCap = basicStroke.getEndCap();
        if (endCap == 1 || basicStroke.getDashArray() != null) {
            return false;
        }
        double lineWidth = basicStroke.getLineWidth();
        double d13 = d3 - d;
        double d14 = d4 - d2;
        int i3 = sunGraphics2D.transformState;
        if (i3 == 0) {
            d5 = d;
            d6 = d2;
            d7 = d3;
            d8 = d4;
        } else if (i3 == 1 || i3 == 2) {
            double translateX = sunGraphics2D.transform.getTranslateX();
            double translateY = sunGraphics2D.transform.getTranslateY();
            d7 = d3 + translateX;
            d8 = d4 + translateY;
            d5 = d + translateX;
            d6 = d2 + translateY;
        } else {
            if (i3 != 3 && i3 != 4) {
                throw new InternalError("unknown TRANSFORM state...");
            }
            double[] dArr = {d, d2, d3, d4};
            sunGraphics2D.transform.transform(dArr, 0, dArr, 0, 2);
            d5 = dArr[0];
            d6 = dArr[1];
            d7 = dArr[2];
            d8 = dArr[3];
        }
        if (sunGraphics2D.strokeHint == 2) {
            i = endCap;
            d9 = d7;
            d10 = lineWidth;
        } else {
            if (sunGraphics2D.strokeState == 0 && (this.outrenderer instanceof PixelDrawPipe)) {
                ((PixelDrawPipe) this.outrenderer).drawLine(sunGraphics2D, (int) Math.floor(d5 - sunGraphics2D.transX), (int) Math.floor(d6 - sunGraphics2D.transY), (int) Math.floor(d7 - sunGraphics2D.transX), (int) Math.floor(d8 - sunGraphics2D.transY));
                return true;
            }
            i = endCap;
            d10 = lineWidth;
            d5 = normalize(d5);
            d6 = normalize(d6);
            d9 = normalize(d7);
            d8 = normalize(d8);
        }
        double d15 = 0.0d;
        if (sunGraphics2D.transformState >= 3) {
            double len = len(d13, d14);
            if (len == 0.0d) {
                d13 = 1.0d;
                len = 1.0d;
            }
            double[] dArr2 = {d14 / len, (-d13) / len};
            sunGraphics2D.transform.deltaTransform(dArr2, 0, dArr2, 0, 1);
            d11 = len(dArr2[0], dArr2[1]) * d10;
        } else {
            d11 = d10;
        }
        double max = Math.max(d11, this.minPenSize);
        double d16 = d9 - d5;
        double d17 = d8 - d6;
        double len2 = len(d16, d17);
        if (len2 != 0.0d) {
            z = true;
            double d18 = (max * d16) / len2;
            double d19 = (max * d17) / len2;
            d12 = d18;
            d15 = d19;
        } else {
            if (i == 0) {
                return true;
            }
            z = true;
            d12 = max;
        }
        double d20 = d15 / 2.0d;
        double d21 = d5 + d20;
        double d22 = d12 / 2.0d;
        double d23 = d6 - d22;
        if (i == 2) {
            d21 -= d22;
            d23 -= d20;
            d16 += d12;
            d17 += d15;
        }
        boolean z2 = z;
        this.outrenderer.fillParallelogram(sunGraphics2D, d, d2, d3, d4, d21, d23, -d15, d12, d16, d17);
        return z2;
    }

    @Override // sun.java2d.pipe.PixelToShapeConverter, sun.java2d.pipe.PixelDrawPipe
    public void drawLine(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        if (drawGeneralLine(sunGraphics2D, i, i2, i3, i4)) {
            return;
        }
        super.drawLine(sunGraphics2D, i, i2, i3, i4);
    }

    @Override // sun.java2d.pipe.PixelToShapeConverter, sun.java2d.pipe.PixelDrawPipe
    public void drawRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        if (i3 < 0 || i4 < 0) {
            return;
        }
        if (sunGraphics2D.strokeState < 3) {
            BasicStroke basicStroke = (BasicStroke) sunGraphics2D.stroke;
            if (i3 <= 0 || i4 <= 0) {
                drawLine(sunGraphics2D, i, i2, i + i3, i2 + i4);
                return;
            } else if (basicStroke.getLineJoin() == 0 && basicStroke.getDashArray() == null) {
                drawRectangle(sunGraphics2D, i, i2, i3, i4, basicStroke.getLineWidth());
                return;
            }
        }
        super.drawRect(sunGraphics2D, i, i2, i3, i4);
    }

    public void drawRectangle(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5) {
        double d6;
        double d7;
        double d8;
        double d9;
        double d10;
        double d11;
        AffineTransform affineTransform = sunGraphics2D.transform;
        double scaleX = affineTransform.getScaleX();
        double shearY = affineTransform.getShearY();
        double shearX = affineTransform.getShearX();
        double scaleY = affineTransform.getScaleY();
        double translateX = (d * scaleX) + (d2 * shearX) + affineTransform.getTranslateX();
        double translateY = (d * shearY) + (d2 * scaleY) + affineTransform.getTranslateY();
        double len = len(scaleX, shearY) * d5;
        double len2 = len(shearX, scaleY) * d5;
        double d12 = scaleX * d3;
        double d13 = shearY * d3;
        double d14 = shearX * d4;
        double d15 = scaleY * d4;
        if (sunGraphics2D.strokeState >= 3 || sunGraphics2D.strokeHint == 2) {
            d6 = translateY;
            d7 = translateX;
            d8 = d15;
            d9 = d12;
            d10 = d13;
            d11 = d14;
        } else {
            double normalize = normalize(translateX);
            d6 = normalize(translateY);
            double normalize2 = normalize(d12 + translateX) - normalize;
            double normalize3 = normalize(d13 + translateY) - d6;
            d11 = normalize(translateX + d14) - normalize;
            d7 = normalize;
            d10 = normalize3;
            d8 = normalize(translateY + d15) - d6;
            d9 = normalize2;
        }
        double d16 = d8;
        double max = Math.max(len, this.minPenSize);
        double max2 = Math.max(len2, this.minPenSize);
        double len3 = len(d9, d10);
        double len4 = len(d11, d16);
        if (max < len3 && max2 < len4) {
            double d17 = d9;
            double d18 = d7;
            double d19 = d6;
            this.outrenderer.drawParallelogram(sunGraphics2D, d, d2, d + d3, d2 + d4, d18, d19, d17, d10, d11, d16, max / len3, max2 / len4);
            return;
        }
        double d20 = d11;
        double d21 = d + d3;
        double d22 = d2 + d4;
        double d23 = d7;
        double d24 = d6;
        fillOuterParallelogram(sunGraphics2D, d, d2, d21, d22, d23, d24, d9, d10, d20, d16, len3, len4, max, max2);
    }

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void fill(SunGraphics2D sunGraphics2D, Shape shape) {
        if (!(shape instanceof Rectangle2D)) {
            this.outpipe.fill(sunGraphics2D, shape);
            return;
        }
        Rectangle2D rectangle2D = (Rectangle2D) shape;
        double width = rectangle2D.getWidth();
        double height = rectangle2D.getHeight();
        if (width <= 0.0d || height <= 0.0d) {
            return;
        }
        fillRectangle(sunGraphics2D, rectangle2D.getX(), rectangle2D.getY(), width, height);
    }

    public void fillOuterParallelogram(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12, double d13, double d14) {
        double d15;
        double d16 = d7 / d11;
        double d17 = d8 / d11;
        double d18 = d9 / d12;
        double d19 = d10 / d12;
        if (d11 == 0.0d) {
            if (d12 == 0.0d) {
                d16 = 1.0d;
                d15 = 0.0d;
            } else {
                d15 = d18;
                d16 = d19;
            }
            d19 = d16;
            double d20 = d15;
            d17 = -d15;
            d18 = d20;
        } else if (d12 == 0.0d) {
            d19 = -d16;
            d18 = d17;
        }
        double d21 = d16 * d13;
        double d22 = d17 * d13;
        double d23 = d18 * d14;
        double d24 = d19 * d14;
        this.outrenderer.fillParallelogram(sunGraphics2D, d, d2, d3, d4, d5 - ((d21 + d23) / 2.0d), d6 - ((d22 + d24) / 2.0d), d7 + d21, d8 + d22, d9 + d23, d10 + d24);
    }

    @Override // sun.java2d.pipe.PixelToShapeConverter, sun.java2d.pipe.PixelFillPipe
    public void fillRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        if (i3 <= 0 || i4 <= 0) {
            return;
        }
        fillRectangle(sunGraphics2D, i, i2, i3, i4);
    }

    public void fillRectangle(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4) {
        double d5;
        double d6;
        double d7;
        double d8;
        double d9;
        double d10;
        AffineTransform affineTransform = sunGraphics2D.transform;
        double scaleX = affineTransform.getScaleX();
        double shearY = affineTransform.getShearY();
        double shearX = affineTransform.getShearX();
        double scaleY = affineTransform.getScaleY();
        double translateX = (d * scaleX) + (d2 * shearX) + affineTransform.getTranslateX();
        double translateY = (d * shearY) + (d2 * scaleY) + affineTransform.getTranslateY();
        double d11 = scaleX * d3;
        double d12 = shearY * d3;
        double d13 = shearX * d4;
        double d14 = scaleY * d4;
        if (!this.adjustfill || sunGraphics2D.strokeState >= 3 || sunGraphics2D.strokeHint == 2) {
            d5 = d12;
            d6 = d13;
            d7 = d14;
            d8 = translateX;
            d9 = translateY;
            d10 = d11;
        } else {
            double normalize = normalize(translateX);
            double normalize2 = normalize(translateY);
            double normalize3 = normalize(d11 + translateX) - normalize;
            double normalize4 = normalize(d12 + translateY) - normalize2;
            double normalize5 = normalize(translateX + d13) - normalize;
            d7 = normalize(translateY + d14) - normalize2;
            d8 = normalize;
            d9 = normalize2;
            d10 = normalize3;
            d5 = normalize4;
            d6 = normalize5;
        }
        this.outrenderer.fillParallelogram(sunGraphics2D, d, d2, d + d3, d2 + d4, d8, d9, d10, d5, d6, d7);
    }

    public double normalize(double d) {
        return Math.floor(d + this.normRoundingBias) + this.normPosition;
    }
}
