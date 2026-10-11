package org.apache.poi.sl.draw;

import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.text.AttributedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.MathJc;

/* loaded from: classes12.dex */
public class DrawTextFragment2 implements Drawable {
    private Rectangle2D anchor;
    private float height;
    private List<DrawTextPart> list = new ArrayList();
    private DrawTextPart maxPart;

    /* renamed from: x */
    private double f111469x;

    /* renamed from: y */
    private double f111470y;

    /* renamed from: org.apache.poi.sl.draw.DrawTextFragment2$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196081 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$MathJc;

        static {
            int[] iArr = new int[MathJc.values().length];
            $SwitchMap$org$apache$poi$common$MathJc = iArr;
            try {
                iArr[MathJc.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$common$MathJc[MathJc.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$common$MathJc[MathJc.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$common$MathJc[MathJc.CENTER_GROUP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void calculateLineData() {
        if (this.maxPart != null || this.list.isEmpty()) {
            return;
        }
        for (DrawTextPart drawTextPart : this.list) {
            if (drawTextPart.getHeight() > this.height) {
                this.height = drawTextPart.getHeight();
                this.maxPart = drawTextPart;
            }
        }
    }

    private void setMathPartPosition(DrawMathPart drawMathPart, double d) {
        int i = C196081.$SwitchMap$org$apache$poi$common$MathJc[drawMathPart.getMathJc().ordinal()];
        if (i == 1) {
            drawMathPart.setPosition(d, this.f111470y + ((this.maxPart.getHeight() - drawMathPart.getHeight()) * 0.5d));
            return;
        }
        if (i == 2) {
            drawMathPart.setPosition(this.anchor.getMaxX() - drawMathPart.getWidth(), this.f111470y + ((this.maxPart.getHeight() - drawMathPart.getHeight()) * 0.5d));
        } else if (i == 3 || i == 4) {
            drawMathPart.setPosition(this.anchor.getCenterX() - (drawMathPart.getWidth() * 0.5d), this.anchor.getCenterY() - (drawMathPart.getHeight() * 0.5d));
        }
    }

    public void addPart(DrawTextPart drawTextPart) {
        this.list.add(drawTextPart);
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void applyTransform(Graphics2D graphics2D) {
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void draw(Graphics2D graphics2D) {
        calculateLineData();
        double d = this.f111469x;
        for (DrawTextPart drawTextPart : this.list) {
            if (drawTextPart instanceof DrawMathPart) {
                setMathPartPosition((DrawMathPart) drawTextPart, d);
            } else {
                drawTextPart.setPosition(d, this.f111470y);
            }
            drawTextPart.draw(graphics2D);
            d += drawTextPart.getWidth();
        }
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void drawContent(Graphics2D graphics2D) {
    }

    public float getAscent() {
        calculateLineData();
        DrawTextPart drawTextPart = this.maxPart;
        if (drawTextPart == null) {
            return 0.0f;
        }
        return drawTextPart.getAscent();
    }

    public AttributedString getAttributedString() {
        calculateLineData();
        DrawTextPart drawTextPart = this.maxPart;
        if (drawTextPart == null) {
            return null;
        }
        return drawTextPart.getAttributedString();
    }

    public float getDescent() {
        calculateLineData();
        DrawTextPart drawTextPart = this.maxPart;
        if (drawTextPart == null) {
            return 0.0f;
        }
        return drawTextPart.getDescent();
    }

    public float getHeight() {
        calculateLineData();
        return this.height;
    }

    public float getLeading() {
        calculateLineData();
        DrawTextPart drawTextPart = this.maxPart;
        if (drawTextPart == null) {
            return 0.0f;
        }
        return drawTextPart.getLeading();
    }

    public List<DrawTextPart> getPartList() {
        return this.list;
    }

    public float getWidth() {
        Iterator<DrawTextPart> it2 = this.list.iterator();
        float f = 0.0f;
        while (it2.hasNext()) {
            f += it2.next().getWidth();
        }
        return f;
    }

    public void setAnchor(Rectangle2D rectangle2D) {
        this.anchor = rectangle2D;
    }

    public void setPosition(double d, double d2) {
        this.f111469x = d;
        this.f111470y = d2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (DrawTextPart drawTextPart : this.list) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(drawTextPart.toString());
        }
        return sb.toString();
    }
}
