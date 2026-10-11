package org.apache.poi.hssf.usermodel;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.Image;
import java.awt.Paint;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.Arc2D;
import java.awt.geom.Area;
import java.awt.geom.GeneralPath;
import java.awt.geom.Line2D;
import java.awt.geom.RoundRectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ImageObserver;
import java.awt.image.RenderedImage;
import java.awt.image.renderable.RenderableImage;
import java.text.AttributedCharacterIterator;
import java.util.Hashtable;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/* loaded from: classes12.dex */
public final class EscherGraphics2d extends Graphics2D {
    private static final Logger LOG = LogManager.getLogger((Class<?>) EscherGraphics2d.class);
    private Shape _deviceclip;
    private final EscherGraphics _escherGraphics;
    private BufferedImage _img;
    private Paint _paint;
    private Stroke _stroke;
    private AffineTransform _trans;

    public EscherGraphics2d(EscherGraphics escherGraphics) {
        this._escherGraphics = escherGraphics;
        setImg(new BufferedImage(1, 1, 2));
        setColor(Color.black);
    }

    private Shape getDeviceclip() {
        return this._deviceclip;
    }

    private EscherGraphics getEscherGraphics() {
        return this._escherGraphics;
    }

    private Graphics2D getG2D() {
        return (Graphics2D) this._img.getGraphics();
    }

    private BufferedImage getImg() {
        return this._img;
    }

    private AffineTransform getTrans() {
        return this._trans;
    }

    private void setDeviceclip(Shape shape) {
        this._deviceclip = shape;
    }

    private void setImg(BufferedImage bufferedImage) {
        this._img = bufferedImage;
    }

    private void setTrans(AffineTransform affineTransform) {
        this._trans = affineTransform;
    }

    @Override // java.awt.Graphics2D
    public void addRenderingHints(Map<?, ?> map) {
        getG2D().addRenderingHints(map);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void clearRect(int i, int i2, int i3, int i4) {
        Paint paint = getPaint();
        setColor(getBackground());
        fillRect(i, i2, i3, i4);
        setPaint(paint);
    }

    @Override // java.awt.Graphics2D
    public void clip(Shape shape) {
        if (getDeviceclip() != null) {
            Area area = new Area(getClip());
            if (shape != null) {
                area.intersect(new Area(shape));
            }
            shape = area;
        }
        setClip(shape);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void clipRect(int i, int i2, int i3, int i4) {
        clip(new Rectangle(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void copyArea(int i, int i2, int i3, int i4, int i5, int i6) {
        getG2D().copyArea(i, i2, i3, i4, i5, i6);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Graphics create() {
        return new EscherGraphics2d(this._escherGraphics);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void dispose() {
        getEscherGraphics().dispose();
        getG2D().dispose();
        getImg().flush();
    }

    @Override // java.awt.Graphics2D
    public void draw(Shape shape) {
        if (!(shape instanceof Line2D)) {
            LOG.atWarn().log("draw not fully supported");
            return;
        }
        Line2D line2D = (Line2D) shape;
        Stroke stroke = this._stroke;
        drawLine((int) line2D.getX1(), (int) line2D.getY1(), (int) line2D.getX2(), (int) line2D.getY2(), (stroke == null || !(stroke instanceof BasicStroke)) ? 0 : ((int) ((BasicStroke) stroke).getLineWidth()) * 12700);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawArc(int i, int i2, int i3, int i4, int i5, int i6) {
        draw(new Arc2D.Float(i, i2, i3, i4, i5, i6, 0));
    }

    @Override // java.awt.Graphics2D
    public void drawGlyphVector(GlyphVector glyphVector, float f, float f2) {
        fill(glyphVector.getOutline(f, f2));
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Color color, ImageObserver imageObserver) {
        LOG.atWarn().log("drawImage() not supported");
        return true;
    }

    public void drawLine(int i, int i2, int i3, int i4, int i5) {
        getEscherGraphics().drawLine(i, i2, i3, i4, i5);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawOval(int i, int i2, int i3, int i4) {
        getEscherGraphics().drawOval(i, i2, i3, i4);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawPolygon(int[] iArr, int[] iArr2, int i) {
        getEscherGraphics().drawPolygon(iArr, iArr2, i);
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
        this._escherGraphics.drawRect(i, i2, i3, i4);
    }

    @Override // java.awt.Graphics2D
    public void drawRenderableImage(RenderableImage renderableImage, AffineTransform affineTransform) {
        drawRenderedImage(renderableImage.createDefaultRendering(), affineTransform);
    }

    @Override // java.awt.Graphics2D
    public void drawRenderedImage(RenderedImage renderedImage, AffineTransform affineTransform) {
        BufferedImage bufferedImage = new BufferedImage(renderedImage.getColorModel(), renderedImage.getData().createCompatibleWritableRaster(), false, (Hashtable<?, ?>) null);
        bufferedImage.setData(renderedImage.getData());
        drawImage(bufferedImage, affineTransform, null);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        draw(new RoundRectangle2D.Float(i, i2, i3, i4, i5, i6));
    }

    @Override // java.awt.Graphics2D
    public void drawString(String str, float f, float f2) {
        getEscherGraphics().drawString(str, (int) f, (int) f2);
    }

    @Override // java.awt.Graphics2D
    public void fill(Shape shape) {
        LOG.atWarn().log("fill(Shape) not supported");
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillArc(int i, int i2, int i3, int i4, int i5, int i6) {
        fill(new Arc2D.Float(i, i2, i3, i4, i5, i6, 2));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillOval(int i, int i2, int i3, int i4) {
        this._escherGraphics.fillOval(i, i2, i3, i4);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillPolygon(int[] iArr, int[] iArr2, int i) {
        this._escherGraphics.fillPolygon(iArr, iArr2, i);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillRect(int i, int i2, int i3, int i4) {
        getEscherGraphics().fillRect(i, i2, i3, i4);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        fill(new RoundRectangle2D.Float(i, i2, i3, i4, i5, i6));
    }

    @Override // java.awt.Graphics2D
    public Color getBackground() {
        return getEscherGraphics().getBackground();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Shape getClip() {
        try {
            return getTrans().createInverse().createTransformedShape(getDeviceclip());
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Rectangle getClipBounds() {
        Shape clip;
        if (getDeviceclip() == null || (clip = getClip()) == null) {
            return null;
        }
        return clip.getBounds();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Color getColor() {
        return this._escherGraphics.getColor();
    }

    @Override // java.awt.Graphics2D
    public Composite getComposite() {
        return getG2D().getComposite();
    }

    @Override // java.awt.Graphics2D
    public GraphicsConfiguration getDeviceConfiguration() {
        return getG2D().getDeviceConfiguration();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Font getFont() {
        return getEscherGraphics().getFont();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public FontMetrics getFontMetrics(Font font) {
        return getEscherGraphics().getFontMetrics(font);
    }

    @Override // java.awt.Graphics2D
    public FontRenderContext getFontRenderContext() {
        getG2D().setTransform(getTrans());
        return getG2D().getFontRenderContext();
    }

    @Override // java.awt.Graphics2D
    public Paint getPaint() {
        return this._paint;
    }

    @Override // java.awt.Graphics2D
    public Object getRenderingHint(RenderingHints.Key key) {
        return getG2D().getRenderingHint(key);
    }

    @Override // java.awt.Graphics2D
    public RenderingHints getRenderingHints() {
        return getG2D().getRenderingHints();
    }

    @Override // java.awt.Graphics2D
    public Stroke getStroke() {
        return this._stroke;
    }

    @Override // java.awt.Graphics2D
    public AffineTransform getTransform() {
        return (AffineTransform) getTrans().clone();
    }

    @Override // java.awt.Graphics2D
    public boolean hit(Rectangle rectangle, Shape shape, boolean z) {
        getG2D().setTransform(getTrans());
        getG2D().setStroke(getStroke());
        getG2D().setClip(getClip());
        return getG2D().hit(rectangle, shape, z);
    }

    @Override // java.awt.Graphics2D
    public void rotate(double d) {
        getTrans().rotate(d);
    }

    @Override // java.awt.Graphics2D
    public void scale(double d, double d2) {
        getTrans().scale(d, d2);
    }

    @Override // java.awt.Graphics2D
    public void setBackground(Color color) {
        getEscherGraphics().setBackground(color);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setClip(int i, int i2, int i3, int i4) {
        setClip(new Rectangle(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setColor(Color color) {
        this._escherGraphics.setColor(color);
    }

    @Override // java.awt.Graphics2D
    public void setComposite(Composite composite) {
        getG2D().setComposite(composite);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setFont(Font font) {
        getEscherGraphics().setFont(font);
    }

    @Override // java.awt.Graphics2D
    public void setPaint(Paint paint) {
        if (paint != null) {
            this._paint = paint;
            if (paint instanceof Color) {
                setColor((Color) paint);
            }
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setPaintMode() {
        getEscherGraphics().setPaintMode();
    }

    @Override // java.awt.Graphics2D
    public void setRenderingHint(RenderingHints.Key key, Object obj) {
        getG2D().setRenderingHint(key, obj);
    }

    @Override // java.awt.Graphics2D
    public void setRenderingHints(Map<?, ?> map) {
        getG2D().setRenderingHints(map);
    }

    @Override // java.awt.Graphics2D
    public void setStroke(Stroke stroke) {
        this._stroke = stroke;
    }

    @Override // java.awt.Graphics2D
    public void setTransform(AffineTransform affineTransform) {
        setTrans((AffineTransform) affineTransform.clone());
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setXORMode(Color color) {
        getEscherGraphics().setXORMode(color);
    }

    @Override // java.awt.Graphics2D
    public void shear(double d, double d2) {
        getTrans().shear(d, d2);
    }

    @Override // java.awt.Graphics2D
    public void transform(AffineTransform affineTransform) {
        getTrans().concatenate(affineTransform);
    }

    @Override // java.awt.Graphics2D
    public void translate(double d, double d2) {
        getTrans().translate(d, d2);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ImageObserver imageObserver) {
        LOG.atWarn().log("drawImage() not supported");
        return drawImage(image, i, i2, i3, i4, i5, i6, i7, i8, null, imageObserver);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawLine(int i, int i2, int i3, int i4) {
        Stroke stroke = this._stroke;
        getEscherGraphics().drawLine(i, i2, i3, i4, (stroke == null || !(stroke instanceof BasicStroke)) ? 0 : ((int) ((BasicStroke) stroke).getLineWidth()) * 12700);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawString(String str, int i, int i2) {
        getEscherGraphics().drawString(str, i, i2);
    }

    @Override // java.awt.Graphics2D
    public void rotate(double d, double d2, double d3) {
        getTrans().rotate(d, d2, d3);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setClip(Shape shape) {
        setDeviceclip(getTrans().createTransformedShape(shape));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void translate(int i, int i2) {
        getTrans().translate(i, i2);
    }

    @Override // java.awt.Graphics2D
    public void drawString(AttributedCharacterIterator attributedCharacterIterator, float f, float f2) {
        TextLayout textLayout = new TextLayout(attributedCharacterIterator, getFontRenderContext());
        Paint paint = getPaint();
        setColor(getColor());
        fill(textLayout.getOutline(AffineTransform.getTranslateInstance(f, f2)));
        setPaint(paint);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, Color color, ImageObserver imageObserver) {
        LOG.atWarn().log("drawImage() not supported");
        return true;
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, ImageObserver imageObserver) {
        return drawImage(image, i, i2, i3, i4, null, imageObserver);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, Color color, ImageObserver imageObserver) {
        return drawImage(image, i, i2, image.getWidth(imageObserver), image.getHeight(imageObserver), color, imageObserver);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, ImageObserver imageObserver) {
        return drawImage(image, i, i2, image.getWidth(imageObserver), image.getHeight(imageObserver), imageObserver);
    }

    @Override // java.awt.Graphics2D
    public boolean drawImage(Image image, AffineTransform affineTransform, ImageObserver imageObserver) {
        AffineTransform affineTransform2 = (AffineTransform) getTrans().clone();
        getTrans().concatenate(affineTransform);
        drawImage(image, 0, 0, imageObserver);
        setTrans(affineTransform2);
        return true;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawString(AttributedCharacterIterator attributedCharacterIterator, int i, int i2) {
        getEscherGraphics().drawString(attributedCharacterIterator, i, i2);
    }

    @Override // java.awt.Graphics2D
    public void drawImage(BufferedImage bufferedImage, BufferedImageOp bufferedImageOp, int i, int i2) {
        drawImage(bufferedImageOp.filter(bufferedImage, null), new AffineTransform(1.0f, 0.0f, 0.0f, 1.0f, i, i2), null);
    }
}
