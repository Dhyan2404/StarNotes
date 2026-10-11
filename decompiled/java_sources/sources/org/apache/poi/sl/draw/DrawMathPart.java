package org.apache.poi.sl.draw;

import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.font.FontRenderContext;
import java.awt.font.TextLayout;
import java.awt.geom.Rectangle2D;
import java.text.AttributedString;
import java.util.Iterator;
import java.util.ServiceLoader;
import org.apache.poi.common.MathJc;
import org.apache.poi.latex.Latex;
import org.apache.poi.latex.LatexRender;

/* loaded from: classes12.dex */
public class DrawMathPart extends DrawTextPart {
    private Rectangle2D bounds;
    private Latex latex;
    private MathJc mathJc;
    private LatexRender render;

    public DrawMathPart(TextLayout textLayout, AttributedString attributedString, FontRenderContext fontRenderContext, float f, MathJc mathJc) {
        super(textLayout, attributedString, fontRenderContext);
        this.fontSize = f;
        this.mathJc = mathJc;
        LatexRender render = getRender();
        this.render = render;
        if (render != null) {
            Latex latex = new Latex(getString(), new Insets(2, 0, 2, 0), f);
            this.latex = latex;
            this.render.loadImage(latex, (Rectangle2D) null);
            this.bounds = this.render.getBounds();
        }
    }

    private LatexRender getRender() {
        Iterator it2 = ServiceLoader.load(LatexRender.class, LatexRender.class.getClassLoader()).iterator();
        if (it2.hasNext()) {
            return (LatexRender) it2.next();
        }
        return null;
    }

    @Override // org.apache.poi.sl.draw.DrawTextPart, org.apache.poi.sl.draw.Drawable
    public void draw(Graphics2D graphics2D) {
        if (disableDraw(graphics2D) || this.render == null) {
            return;
        }
        graphics2D.translate(this.f111473x, this.f111474y);
        this.render.drawImage(graphics2D, 1.0f);
        graphics2D.translate(-this.f111473x, -this.f111474y);
    }

    @Override // org.apache.poi.sl.draw.DrawTextPart
    public float getAscent() {
        return (float) this.bounds.getHeight();
    }

    @Override // org.apache.poi.sl.draw.DrawTextPart
    public float getDescent() {
        return 0.0f;
    }

    @Override // org.apache.poi.sl.draw.DrawTextPart
    public float getHeight() {
        return (float) this.bounds.getHeight();
    }

    @Override // org.apache.poi.sl.draw.DrawTextPart
    public float getLeading() {
        return 0.0f;
    }

    public MathJc getMathJc() {
        return this.mathJc;
    }

    @Override // org.apache.poi.sl.draw.DrawTextPart
    public float getWidth() {
        return (float) this.bounds.getWidth();
    }
}
