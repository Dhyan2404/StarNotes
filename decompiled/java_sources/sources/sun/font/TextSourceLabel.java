package sun.font;

import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;

/* loaded from: classes16.dex */
public class TextSourceLabel extends TextLabel {

    /* renamed from: ab */
    Rectangle2D f116370ab;

    /* renamed from: gv */
    GlyphVector f116371gv;

    /* renamed from: ib */
    Rectangle2D f116372ib;

    /* renamed from: lb */
    Rectangle2D f116373lb;
    TextSource source;

    /* renamed from: vb */
    Rectangle2D f116374vb;

    public TextSourceLabel(TextSource textSource) {
        this(textSource, null, null, null);
    }

    private final GlyphVector getGV() {
        if (this.f116371gv == null) {
            this.f116371gv = createGV();
        }
        return this.f116371gv;
    }

    public Rectangle2D createAlignBounds() {
        return createLogicalBounds();
    }

    public GlyphVector createGV() {
        Font font = this.source.getFont();
        FontRenderContext frc = this.source.getFRC();
        int layoutFlags = this.source.getLayoutFlags();
        char[] chars = this.source.getChars();
        int start = this.source.getStart();
        int length = this.source.getLength();
        GlyphLayout glyphLayout = GlyphLayout.get(null);
        AndroidGlyphVector layout = glyphLayout.layout(font, frc, chars, start, length, layoutFlags, null);
        GlyphLayout.done(glyphLayout);
        return layout;
    }

    public Rectangle2D createItalicBounds() {
        return getGV().getLogicalBounds();
    }

    public Rectangle2D createLogicalBounds() {
        return getGV().getLogicalBounds();
    }

    public Rectangle2D createVisualBounds() {
        return getGV().getVisualBounds();
    }

    @Override // sun.font.TextLabel, sun.font.TextLineComponent
    public void draw(Graphics2D graphics2D, float f, float f2) {
        graphics2D.drawGlyphVector(getGV(), f, f2);
    }

    @Override // sun.font.TextLabel
    public final Rectangle2D getAlignBounds(float f, float f2) {
        if (this.f116370ab == null) {
            this.f116370ab = createAlignBounds();
        }
        return new Rectangle2D.Float((float) (this.f116370ab.getX() + f), (float) (this.f116370ab.getY() + f2), (float) this.f116370ab.getWidth(), (float) this.f116370ab.getHeight());
    }

    public AffineTransform getBaselineTransform() {
        Font font = this.source.getFont();
        if (font.hasLayoutAttributes()) {
            return AttributeValues.getBaselineTransform(font.getAttributes());
        }
        return null;
    }

    @Override // sun.font.TextLabel
    public Rectangle2D getItalicBounds(float f, float f2) {
        if (this.f116372ib == null) {
            this.f116372ib = createItalicBounds();
        }
        return new Rectangle2D.Float((float) (this.f116372ib.getX() + f), (float) (this.f116372ib.getY() + f2), (float) this.f116372ib.getWidth(), (float) this.f116372ib.getHeight());
    }

    @Override // sun.font.TextLabel
    public final Rectangle2D getLogicalBounds(float f, float f2) {
        if (this.f116373lb == null) {
            this.f116373lb = createLogicalBounds();
        }
        return new Rectangle2D.Float((float) (this.f116373lb.getX() + f), (float) (this.f116373lb.getY() + f2), (float) this.f116373lb.getWidth(), (float) this.f116373lb.getHeight());
    }

    @Override // sun.font.TextLabel, sun.font.TextLineComponent
    public Shape getOutline(float f, float f2) {
        return getGV().getOutline(f, f2);
    }

    public Rectangle getPixelBounds(FontRenderContext fontRenderContext, float f, float f2) {
        return getGV().getPixelBounds(fontRenderContext, f, f2);
    }

    public TextSource getSource() {
        return this.source;
    }

    @Override // sun.font.TextLabel
    public final Rectangle2D getVisualBounds(float f, float f2) {
        if (this.f116374vb == null) {
            this.f116374vb = createVisualBounds();
        }
        return new Rectangle2D.Float((float) (this.f116374vb.getX() + f), (float) (this.f116374vb.getY() + f2), (float) this.f116374vb.getWidth(), (float) this.f116374vb.getHeight());
    }

    public TextSourceLabel(TextSource textSource, Rectangle2D rectangle2D, Rectangle2D rectangle2D2, GlyphVector glyphVector) {
        this.source = textSource;
        this.f116373lb = rectangle2D;
        this.f116370ab = rectangle2D2;
        this.f116371gv = glyphVector;
    }
}
