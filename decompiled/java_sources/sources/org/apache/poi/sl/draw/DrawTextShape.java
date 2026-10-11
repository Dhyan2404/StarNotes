package org.apache.poi.sl.draw;

import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.util.Iterator;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.PlaceableShape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextRun;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.sl.usermodel.VerticalAlignment;
import org.apache.poi.text.TextUtils;

/* loaded from: classes12.dex */
public class DrawTextShape extends DrawSimpleShape {

    /* renamed from: org.apache.poi.sl.draw.DrawTextShape$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196111 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$VerticalAlignment;

        static {
            int[] iArr = new int[VerticalAlignment.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$VerticalAlignment = iArr;
            try {
                iArr[VerticalAlignment.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$VerticalAlignment[VerticalAlignment.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$VerticalAlignment[VerticalAlignment.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public DrawTextShape(TextShape<?, ?> textShape) {
        super(textShape);
    }

    @Override // org.apache.poi.sl.draw.DrawShape, org.apache.poi.sl.draw.Drawable
    public void drawContent(Graphics2D graphics2D) {
        double d;
        double height;
        double d2;
        double d3;
        double height2;
        double d4;
        double d5;
        TextShape<?, ? extends TextParagraph<?, ?, ? extends TextRun>> shape = getShape();
        Rectangle2D anchor = DrawShape.getAnchor(graphics2D, shape);
        if (anchor == null) {
            return;
        }
        TextUtils.setTextAnchor(graphics2D, anchor);
        Insets2D insets = shape.getInsets();
        double x = anchor.getX() + insets.left;
        double y = anchor.getY();
        AffineTransform transform = graphics2D.getTransform();
        boolean flipVertical = shape.getFlipVertical();
        boolean flipHorizontal = shape.getFlipHorizontal();
        ShapeContainer<?, ? extends TextParagraph<?, ?, ? extends TextRun>> parent = shape.getParent();
        while (parent instanceof PlaceableShape) {
            PlaceableShape placeableShape = (PlaceableShape) parent;
            flipVertical ^= placeableShape.getFlipVertical();
            flipHorizontal ^= placeableShape.getFlipHorizontal();
            parent = placeableShape.getParent();
        }
        if (flipVertical ^ flipHorizontal) {
            double x2 = anchor.getX();
            double y2 = anchor.getY();
            graphics2D.translate(anchor.getWidth() + x2, y2);
            d = x;
            graphics2D.scale(-1.0d, 1.0d);
            graphics2D.translate(-x2, -y2);
        } else {
            d = x;
        }
        Double textRotation = shape.getTextRotation();
        if (textRotation != null && textRotation.doubleValue() != 0.0d) {
            double centerX = anchor.getCenterX();
            double centerY = anchor.getCenterY();
            graphics2D.translate(centerX, centerY);
            graphics2D.rotate(Math.toRadians(textRotation.doubleValue()));
            graphics2D.translate(-centerX, -centerY);
        }
        TextShape.TextDirection textDirection = shape.getTextDirection();
        TextShape.TextDirection textDirection2 = TextShape.TextDirection.VERTICAL;
        boolean z = textDirection == textDirection2 || textDirection == TextShape.TextDirection.VERTICAL_270;
        int i = C196111.$SwitchMap$org$apache$poi$sl$usermodel$VerticalAlignment[shape.getVerticalAlignment().ordinal()];
        if (i != 2) {
            if (i != 3) {
                d5 = insets.top;
            } else {
                double textHeight = getTextHeight(graphics2D);
                if (z) {
                    height2 = (anchor.getWidth() - textHeight) - insets.top;
                    d4 = insets.bottom;
                } else {
                    height2 = (anchor.getHeight() - textHeight) - insets.top;
                    d4 = insets.bottom;
                }
                d5 = insets.top + ((height2 - d4) / 2.0d);
            }
            d3 = y + d5;
        } else {
            double textHeight2 = getTextHeight(graphics2D);
            if (z) {
                height = anchor.getWidth() - textHeight2;
                d2 = insets.bottom;
            } else {
                height = anchor.getHeight() - textHeight2;
                d2 = insets.bottom;
            }
            d3 = y + (height - d2);
        }
        if (z) {
            double d6 = textDirection == textDirection2 ? 90.0d : 270.0d;
            double centerX2 = anchor.getCenterX();
            double centerY2 = anchor.getCenterY();
            graphics2D.translate(centerX2, centerY2);
            graphics2D.rotate(Math.toRadians(d6));
            graphics2D.translate(-centerX2, -centerY2);
            double width = (anchor.getWidth() - anchor.getHeight()) / 2.0d;
            graphics2D.translate(width, -width);
        }
        drawParagraphs(graphics2D, d, d3);
        graphics2D.setTransform(transform);
    }

    public double drawParagraphs(Graphics2D graphics2D, double d, double d2) {
        DrawFactory drawFactory = DrawFactory.getInstance(graphics2D);
        Iterator<P> it2 = getShape().iterator();
        int i = 1;
        double d3 = d2;
        boolean z = true;
        int i2 = 0;
        while (it2.hasNext()) {
            TextParagraph<?, ?, ?> textParagraph = (TextParagraph) it2.next();
            DrawTextParagraph2 drawable2 = drawFactory.getDrawable2(textParagraph);
            TextParagraph.BulletStyle bulletStyle = textParagraph.getBulletStyle();
            if (bulletStyle == null || bulletStyle.getAutoNumberingScheme() == null) {
                i2 = -1;
            } else {
                Integer autoNumberingStartAt = bulletStyle.getAutoNumberingStartAt();
                if (autoNumberingStartAt == null) {
                    autoNumberingStartAt = Integer.valueOf(i);
                }
                if (autoNumberingStartAt.intValue() > i2) {
                    i2 = autoNumberingStartAt.intValue();
                }
            }
            drawable2.setAutoNumberingIdx(i2);
            drawable2.breakText(graphics2D);
            if (!z) {
                Double spaceBefore = textParagraph.getSpaceBefore();
                if (spaceBefore == null) {
                    spaceBefore = Double.valueOf(0.0d);
                }
                d3 = spaceBefore.doubleValue() > 0.0d ? d3 + (spaceBefore.doubleValue() * 0.01d * drawable2.getFirstLineHeight()) : d3 + (-spaceBefore.doubleValue());
            }
            drawable2.setPosition(d, d3);
            drawable2.setFirstParagraph(z);
            drawable2.draw(graphics2D);
            d3 += drawable2.getY();
            if (it2.hasNext()) {
                Double spaceAfter = textParagraph.getSpaceAfter();
                if (spaceAfter == null) {
                    spaceAfter = Double.valueOf(0.0d);
                }
                d3 += spaceAfter.doubleValue() > 0.0d ? spaceAfter.doubleValue() * 0.01d * drawable2.getLastLineHeight() : -spaceAfter.doubleValue();
            }
            i2++;
            z = false;
            i = 1;
        }
        return d3 - d2;
    }

    public double getTextHeight() {
        return getTextHeight(null);
    }

    public double getTextHeight(Graphics2D graphics2D) {
        Graphics2D createGraphics = new BufferedImage(1, 1, 1).createGraphics();
        if (graphics2D != null) {
            createGraphics.addRenderingHints(graphics2D.getRenderingHints());
            createGraphics.setTransform(graphics2D.getTransform());
        }
        return drawParagraphs(createGraphics, 0.0d, 0.0d);
    }

    @Override // org.apache.poi.sl.draw.DrawSimpleShape, org.apache.poi.sl.draw.DrawShape
    public TextShape<?, ? extends TextParagraph<?, ?, ? extends TextRun>> getShape() {
        return (TextShape) this.shape;
    }
}
