package org.apache.poi.xdgf.usermodel;

import com.microsoft.schemas.office.visio.x2012.main.TextType;
import com.microsoft.schemas.office.visio.x2012.main.impl.TextTypeImpl;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import org.apache.poi.util.Internal;

/* loaded from: classes13.dex */
public class XDGFText {
    XDGFShape _parent;
    TextType _text;

    public XDGFText(TextType textType, XDGFShape xDGFShape) {
        this._text = textType;
        this._parent = xDGFShape;
    }

    public void draw(Graphics2D graphics2D) {
        FontRenderContext fontRenderContext;
        Font font;
        double d;
        Font font2;
        String textContent = getTextContent();
        if (textContent.length() == 0) {
            return;
        }
        Rectangle2D.Double textBounds = getTextBounds();
        String[] split = textContent.trim().split("\n");
        FontRenderContext fontRenderContext2 = graphics2D.getFontRenderContext();
        Font font3 = graphics2D.getFont();
        AffineTransform transform = graphics2D.getTransform();
        Boolean flipX = this._parent.getFlipX();
        if (this._parent.getFlipY() == null || !this._parent.getFlipY().booleanValue()) {
            fontRenderContext = fontRenderContext2;
            font = font3;
            graphics2D.translate(textBounds.f97791x, textBounds.f97792y);
            graphics2D.scale(1.0d, -1.0d);
            d = 0.0d;
            graphics2D.translate(0.0d, (-textBounds.height) + graphics2D.getFontMetrics().getMaxCharBounds(graphics2D).getHeight());
        } else {
            fontRenderContext = fontRenderContext2;
            font = font3;
            d = 0.0d;
        }
        if (flipX != null && this._parent.getFlipX().booleanValue()) {
            graphics2D.scale(-1.0d, 1.0d);
            graphics2D.translate(-textBounds.width, d);
        }
        Double txtAngle = this._parent.getTxtAngle();
        if (txtAngle != null && Math.abs(txtAngle.doubleValue()) > 0.01d) {
            graphics2D.rotate(txtAngle.doubleValue());
        }
        int length = split.length;
        int i = 0;
        float f = 0.0f;
        while (i < length) {
            String str = split[i];
            if (str.length() == 0) {
                font2 = font;
            } else {
                font2 = font;
                TextLayout textLayout = new TextLayout(str, font2, fontRenderContext);
                if (textLayout.isLeftToRight()) {
                    textLayout.draw(graphics2D, 0.0f, f);
                } else {
                    textLayout.draw(graphics2D, (float) (textBounds.width - textLayout.getAdvance()), f);
                }
                f += textLayout.getAscent() + textLayout.getDescent() + textLayout.getLeading();
            }
            i++;
            font = font2;
        }
        graphics2D.setTransform(transform);
    }

    public Path2D.Double getBoundsAsPath() {
        Rectangle2D.Double textBounds = getTextBounds();
        double width = textBounds.getWidth();
        double height = textBounds.getHeight();
        Path2D.Double r6 = new Path2D.Double();
        r6.moveTo(0.0d, 0.0d);
        r6.lineTo(width, 0.0d);
        r6.lineTo(width, height);
        r6.lineTo(0.0d, height);
        r6.lineTo(0.0d, 0.0d);
        return r6;
    }

    public Rectangle2D.Double getTextBounds() {
        double doubleValue = this._parent.getTxtPinX().doubleValue();
        double doubleValue2 = this._parent.getTxtPinY().doubleValue();
        double doubleValue3 = this._parent.getTxtLocPinX().doubleValue();
        return new Rectangle2D.Double(doubleValue - doubleValue3, doubleValue2 - this._parent.getTxtLocPinY().doubleValue(), this._parent.getTxtWidth().doubleValue(), this._parent.getTxtHeight().doubleValue());
    }

    public Point2D.Double getTextCenter() {
        return new Point2D.Double(this._parent.getTxtLocPinX().doubleValue(), this._parent.getTxtLocPinY().doubleValue());
    }

    public String getTextContent() {
        return ((TextTypeImpl) this._text).getStringValue();
    }

    @Internal
    public TextType getXmlObject() {
        return this._text;
    }
}
