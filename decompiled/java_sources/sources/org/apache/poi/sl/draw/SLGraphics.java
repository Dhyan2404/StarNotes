package org.apache.poi.sl.draw;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.GraphicsEnvironment;
import java.awt.Image;
import java.awt.Paint;
import java.awt.Polygon;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.Toolkit;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.Arc2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.GeneralPath;
import java.awt.geom.Line2D;
import java.awt.geom.Path2D;
import java.awt.geom.RoundRectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ImageObserver;
import java.awt.image.RenderedImage;
import java.awt.image.renderable.RenderableImage;
import java.text.AttributedCharacterIterator;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.sl.usermodel.FreeformShape;
import org.apache.poi.sl.usermodel.GroupShape;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.SimpleShape;
import org.apache.poi.sl.usermodel.StrokeStyle;
import org.apache.poi.sl.usermodel.TextBox;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextRun;
import org.apache.poi.sl.usermodel.VerticalAlignment;
import org.apache.poi.util.NotImplemented;
import org.apache.poi.util.SuppressForbidden;

/* loaded from: classes12.dex */
public class SLGraphics extends Graphics2D implements Cloneable {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SLGraphics.class);
    private Color _background;
    private Font _font;
    private Color _foreground;
    private GroupShape<?, ?> _group;
    private RenderingHints _hints;
    private Paint _paint;
    private AffineTransform _transform = new AffineTransform();
    private Stroke _stroke = new BasicStroke();

    public SLGraphics(GroupShape<?, ?> groupShape) {
        this._group = groupShape;
        Color color = Color.black;
        this._paint = color;
        this._font = new Font(HSSFFont.FONT_ARIAL, 0, 12);
        this._background = color;
        this._foreground = Color.white;
        this._hints = new RenderingHints(null);
    }

    private void logNotImplemented() {
        LOG.atWarn().log("Not implemented");
    }

    @Override // java.awt.Graphics2D
    public void addRenderingHints(Map<?, ?> map) {
        this._hints.putAll(map);
    }

    public void applyPaint(SimpleShape<?, ?> simpleShape) {
        Paint paint = this._paint;
        if (paint instanceof Color) {
            simpleShape.setFillColor((Color) paint);
        }
    }

    public void applyStroke(SimpleShape<?, ?> simpleShape) {
        Stroke stroke = this._stroke;
        if (stroke instanceof BasicStroke) {
            BasicStroke basicStroke = (BasicStroke) stroke;
            simpleShape.setStrokeStyle(Double.valueOf(basicStroke.getLineWidth()));
            if (basicStroke.getDashArray() != null) {
                simpleShape.setStrokeStyle(StrokeStyle.LineDash.DASH);
            }
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void clearRect(int i, int i2, int i3, int i4) {
        Paint paint = getPaint();
        setColor(getBackground());
        fillRect(i, i2, i3, i4);
        setPaint(paint);
    }

    @Override // java.awt.Graphics2D
    @NotImplemented
    public void clip(Shape shape) {
        logNotImplemented();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void clipRect(int i, int i2, int i3, int i4) {
        clip(new Rectangle(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void copyArea(int i, int i2, int i3, int i4, int i5, int i6) {
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Graphics create() {
        try {
            return (Graphics) clone();
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void dispose() {
    }

    @Override // java.awt.Graphics2D
    public void draw(Shape shape) {
        Path2D.Double r0 = new Path2D.Double(this._transform.createTransformedShape(shape));
        FreeformShape<?, ?> createFreeform = this._group.createFreeform();
        createFreeform.setPath(r0);
        createFreeform.setFillColor(null);
        applyStroke(createFreeform);
        Paint paint = this._paint;
        if (paint instanceof Color) {
            createFreeform.setStrokeStyle((Color) paint);
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawArc(int i, int i2, int i3, int i4, int i5, int i6) {
        draw(new Arc2D.Double(i, i2, i3, i4, i5, i6, 0));
    }

    @Override // java.awt.Graphics2D
    public void drawGlyphVector(GlyphVector glyphVector, float f, float f2) {
        fill(glyphVector.getOutline(f, f2));
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public boolean drawImage(Image image, int i, int i2, Color color, ImageObserver imageObserver) {
        logNotImplemented();
        return false;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawLine(int i, int i2, int i3, int i4) {
        draw(new Line2D.Double(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawOval(int i, int i2, int i3, int i4) {
        draw(new Ellipse2D.Double(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawPolygon(int[] iArr, int[] iArr2, int i) {
        draw(new Polygon(iArr, iArr2, i));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawPolyline(int[] iArr, int[] iArr2, int i) {
        if (i > 0) {
            GeneralPath generalPath = new GeneralPath();
            generalPath.moveTo(iArr[0], iArr2[0]);
            for (int i2 = 1; i2 < i; i2++) {
                generalPath.lineTo(iArr[i2], iArr2[i2]);
            }
            draw(generalPath);
        }
    }

    @Override // java.awt.Graphics
    public void drawRect(int i, int i2, int i3, int i4) {
        draw(new Rectangle(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D
    @NotImplemented
    public void drawRenderableImage(RenderableImage renderableImage, AffineTransform affineTransform) {
        logNotImplemented();
    }

    @Override // java.awt.Graphics2D
    @NotImplemented
    public void drawRenderedImage(RenderedImage renderedImage, AffineTransform affineTransform) {
        logNotImplemented();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        draw(new RoundRectangle2D.Double(i, i2, i3, i4, i5, i6));
    }

    @Override // java.awt.Graphics2D
    public void drawString(String str, float f, float f2) {
        TextBox<?, ?> createTextBox = this._group.createTextBox();
        TextRun textRun = (TextRun) ((TextParagraph) createTextBox.getTextParagraphs().get(0)).getTextRuns().get(0);
        textRun.setFontSize(Double.valueOf(this._font.getSize()));
        textRun.setFontFamily(this._font.getFamily());
        if (getColor() != null) {
            textRun.setFontColor(DrawPaint.createSolidPaint(getColor()));
        }
        if (this._font.isBold()) {
            textRun.setBold(true);
        }
        if (this._font.isItalic()) {
            textRun.setItalic(true);
        }
        createTextBox.setText(str);
        createTextBox.setInsets(new Insets2D(0.0d, 0.0d, 0.0d, 0.0d));
        createTextBox.setWordWrap(false);
        createTextBox.setHorizontalCentered(Boolean.FALSE);
        createTextBox.setVerticalAlignment(VerticalAlignment.MIDDLE);
        float ascent = new TextLayout(str, this._font, getFontRenderContext()).getAscent();
        float f3 = ascent * 2.0f;
        createTextBox.setAnchor(new Rectangle((int) f, (int) (f2 - ((f3 / 2.0f) + (ascent / 2.0f))), (int) Math.floor(r3.getAdvance()), (int) f3));
    }

    @Override // java.awt.Graphics2D
    public void fill(Shape shape) {
        Path2D.Double r0 = new Path2D.Double(this._transform.createTransformedShape(shape));
        FreeformShape<?, ?> createFreeform = this._group.createFreeform();
        createFreeform.setPath(r0);
        applyPaint(createFreeform);
        createFreeform.setStrokeStyle(new Object[0]);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillArc(int i, int i2, int i3, int i4, int i5, int i6) {
        fill(new Arc2D.Double(i, i2, i3, i4, i5, i6, 2));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillOval(int i, int i2, int i3, int i4) {
        fill(new Ellipse2D.Double(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillPolygon(int[] iArr, int[] iArr2, int i) {
        fill(new Polygon(iArr, iArr2, i));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillRect(int i, int i2, int i3, int i4) {
        fill(new Rectangle(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        fill(new RoundRectangle2D.Double(i, i2, i3, i4, i5, i6));
    }

    @Override // java.awt.Graphics2D
    public Color getBackground() {
        return this._background;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    @NotImplemented
    public Shape getClip() {
        logNotImplemented();
        return null;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Rectangle getClipBounds() {
        logNotImplemented();
        return null;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Color getColor() {
        return this._foreground;
    }

    @Override // java.awt.Graphics2D
    @NotImplemented
    public Composite getComposite() {
        logNotImplemented();
        return null;
    }

    @Override // java.awt.Graphics2D
    public GraphicsConfiguration getDeviceConfiguration() {
        return GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice().getDefaultConfiguration();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Font getFont() {
        return this._font;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    @SuppressForbidden
    public FontMetrics getFontMetrics(Font font) {
        return Toolkit.getDefaultToolkit().getFontMetrics(font);
    }

    @Override // java.awt.Graphics2D
    public FontRenderContext getFontRenderContext() {
        return new FontRenderContext(new AffineTransform(), RenderingHints.VALUE_TEXT_ANTIALIAS_ON.equals(getRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING)), RenderingHints.VALUE_FRACTIONALMETRICS_ON.equals(getRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS)));
    }

    @Override // java.awt.Graphics2D
    public Paint getPaint() {
        return this._paint;
    }

    @Override // java.awt.Graphics2D
    public Object getRenderingHint(RenderingHints.Key key) {
        return this._hints.get(key);
    }

    @Override // java.awt.Graphics2D
    public RenderingHints getRenderingHints() {
        return this._hints;
    }

    public GroupShape<?, ?> getShapeGroup() {
        return this._group;
    }

    @Override // java.awt.Graphics2D
    public Stroke getStroke() {
        return this._stroke;
    }

    @Override // java.awt.Graphics2D
    public AffineTransform getTransform() {
        return new AffineTransform(this._transform);
    }

    @Override // java.awt.Graphics2D
    public boolean hit(Rectangle rectangle, Shape shape, boolean z) {
        if (z) {
            shape = getStroke().createStrokedShape(shape);
        }
        return getTransform().createTransformedShape(shape).intersects(rectangle);
    }

    @Override // java.awt.Graphics2D
    public void rotate(double d) {
        this._transform.rotate(d);
    }

    @Override // java.awt.Graphics2D
    public void scale(double d, double d2) {
        this._transform.scale(d, d2);
    }

    @Override // java.awt.Graphics2D
    public void setBackground(Color color) {
        if (color == null) {
            return;
        }
        this._background = color;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    @NotImplemented
    public void setClip(Shape shape) {
        logNotImplemented();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setColor(Color color) {
        setPaint(color);
    }

    @Override // java.awt.Graphics2D
    @NotImplemented
    public void setComposite(Composite composite) {
        logNotImplemented();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setFont(Font font) {
        this._font = font;
    }

    @Override // java.awt.Graphics2D
    public void setPaint(Paint paint) {
        if (paint == null) {
            return;
        }
        this._paint = paint;
        if (paint instanceof Color) {
            this._foreground = (Color) paint;
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    @NotImplemented
    public void setPaintMode() {
        logNotImplemented();
    }

    @Override // java.awt.Graphics2D
    public void setRenderingHint(RenderingHints.Key key, Object obj) {
        this._hints.put(key, obj);
    }

    @Override // java.awt.Graphics2D
    public void setRenderingHints(Map<?, ?> map) {
        RenderingHints renderingHints = new RenderingHints(null);
        this._hints = renderingHints;
        renderingHints.putAll(map);
    }

    @Override // java.awt.Graphics2D
    public void setStroke(Stroke stroke) {
        this._stroke = stroke;
    }

    @Override // java.awt.Graphics2D
    public void setTransform(AffineTransform affineTransform) {
        this._transform = new AffineTransform(affineTransform);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    @NotImplemented
    public void setXORMode(Color color) {
        logNotImplemented();
    }

    @Override // java.awt.Graphics2D
    public void shear(double d, double d2) {
        this._transform.shear(d, d2);
    }

    @Override // java.awt.Graphics2D
    public void transform(AffineTransform affineTransform) {
        this._transform.concatenate(affineTransform);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void translate(int i, int i2) {
        this._transform.translate(i, i2);
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, Color color, ImageObserver imageObserver) {
        logNotImplemented();
        return false;
    }

    @Override // java.awt.Graphics2D
    public void rotate(double d, double d2, double d3) {
        this._transform.rotate(d, d2, d3);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setClip(int i, int i2, int i3, int i4) {
        setClip(new Rectangle(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D
    public void translate(double d, double d2) {
        this._transform.translate(d, d2);
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ImageObserver imageObserver) {
        logNotImplemented();
        return false;
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Color color, ImageObserver imageObserver) {
        logNotImplemented();
        return false;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    @NotImplemented
    public boolean drawImage(Image image, int i, int i2, ImageObserver imageObserver) {
        logNotImplemented();
        return false;
    }

    @Override // java.awt.Graphics2D
    public void drawImage(BufferedImage bufferedImage, BufferedImageOp bufferedImageOp, int i, int i2) {
        drawImage(bufferedImageOp.filter(bufferedImage, null), i, i2, (ImageObserver) null);
    }

    @Override // java.awt.Graphics2D
    @NotImplemented
    public boolean drawImage(Image image, AffineTransform affineTransform, ImageObserver imageObserver) {
        logNotImplemented();
        return false;
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, ImageObserver imageObserver) {
        logNotImplemented();
        return false;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawString(String str, int i, int i2) {
        drawString(str, i, i2);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawString(AttributedCharacterIterator attributedCharacterIterator, int i, int i2) {
        drawString(attributedCharacterIterator, i, i2);
    }

    @Override // java.awt.Graphics2D
    @NotImplemented
    public void drawString(AttributedCharacterIterator attributedCharacterIterator, float f, float f2) {
        logNotImplemented();
    }
}
