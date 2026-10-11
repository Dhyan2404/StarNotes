package sun.font;

import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.awt.geom.AffineTransform;
import sun.awt.SunHints;

/* loaded from: classes16.dex */
public class FontStrikeDesc {
    static final int AA_LCD_H = 32;
    static final int AA_LCD_V = 64;
    static final int AA_ON = 16;
    static final int FRAC_METRICS_ON = 256;
    static final int FRAC_METRICS_SP = 512;
    int aaHint;
    AffineTransform devTx;
    int fmHint;
    AffineTransform glyphTx;
    private int hashCode;
    int style;
    private int valuemask;

    public FontStrikeDesc() {
    }

    public static int getAAHintIntVal(Object obj, Font2D font2D, int i) {
        if (obj == SunHints.VALUE_TEXT_ANTIALIAS_OFF || obj == SunHints.VALUE_TEXT_ANTIALIAS_DEFAULT) {
            return 1;
        }
        if (obj == SunHints.VALUE_TEXT_ANTIALIAS_ON) {
            return 2;
        }
        if (obj == SunHints.VALUE_TEXT_ANTIALIAS_GASP) {
            return font2D.useAAForPtSize(i) ? 2 : 1;
        }
        if (obj == SunHints.VALUE_TEXT_ANTIALIAS_LCD_HRGB || obj == SunHints.VALUE_TEXT_ANTIALIAS_LCD_HBGR) {
            return 4;
        }
        return (obj == SunHints.VALUE_TEXT_ANTIALIAS_LCD_VRGB || obj == SunHints.VALUE_TEXT_ANTIALIAS_LCD_VBGR) ? 6 : 1;
    }

    public static int getFMHintIntVal(Object obj) {
        return (obj == SunHints.VALUE_FRACTIONALMETRICS_OFF || obj == SunHints.VALUE_FRACTIONALMETRICS_DEFAULT) ? 1 : 2;
    }

    public boolean equals(Object obj) {
        try {
            FontStrikeDesc fontStrikeDesc = (FontStrikeDesc) obj;
            if (fontStrikeDesc.valuemask == this.valuemask && fontStrikeDesc.glyphTx.equals(this.glyphTx)) {
                return fontStrikeDesc.devTx.equals(this.devTx);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = this.glyphTx.hashCode() + this.devTx.hashCode() + this.valuemask;
        }
        return this.hashCode;
    }

    public String toString() {
        return "FontStrikeDesc: Style=" + this.style + " AA=" + this.aaHint + " FM=" + this.fmHint + " devTx=" + this.devTx + " devTx.FontTx.ptSize=" + this.glyphTx;
    }

    public FontStrikeDesc(AffineTransform affineTransform, AffineTransform affineTransform2, int i, int i2, int i3) {
        this.devTx = affineTransform;
        this.glyphTx = affineTransform2;
        this.style = i;
        this.aaHint = i2;
        this.fmHint = i3;
        this.valuemask = i;
        if (i2 == 2) {
            this.valuemask = i | 16;
        } else if (i2 == 4 || i2 == 5) {
            this.valuemask = i | 32;
        } else if (i2 == 6 || i2 == 7) {
            this.valuemask = i | 64;
        }
        if (i3 == 2) {
            this.valuemask |= 256;
        }
    }

    public static int getAAHintIntVal(Font2D font2D, Font font, FontRenderContext fontRenderContext) {
        int abs;
        Object antiAliasingHint = fontRenderContext.getAntiAliasingHint();
        if (antiAliasingHint == SunHints.VALUE_TEXT_ANTIALIAS_OFF || antiAliasingHint == SunHints.VALUE_TEXT_ANTIALIAS_DEFAULT) {
            return 1;
        }
        if (antiAliasingHint == SunHints.VALUE_TEXT_ANTIALIAS_ON) {
            return 2;
        }
        if (antiAliasingHint == SunHints.VALUE_TEXT_ANTIALIAS_GASP) {
            AffineTransform transform = fontRenderContext.getTransform();
            if (transform.isIdentity() && !font.isTransformed()) {
                abs = font.getSize();
            } else {
                float size2D = font.getSize2D();
                if (transform.isIdentity()) {
                    transform = font.getTransform();
                    double d = size2D;
                    transform.scale(d, d);
                } else {
                    double d2 = size2D;
                    transform.scale(d2, d2);
                    if (font.isTransformed()) {
                        transform.concatenate(font.getTransform());
                    }
                }
                double shearX = transform.getShearX();
                double scaleY = transform.getScaleY();
                if (shearX != 0.0d) {
                    scaleY = Math.sqrt((shearX * shearX) + (scaleY * scaleY));
                }
                abs = (int) (Math.abs(scaleY) + 0.5d);
            }
            return font2D.useAAForPtSize(abs) ? 2 : 1;
        }
        if (antiAliasingHint == SunHints.VALUE_TEXT_ANTIALIAS_LCD_HRGB || antiAliasingHint == SunHints.VALUE_TEXT_ANTIALIAS_LCD_HBGR) {
            return 4;
        }
        return (antiAliasingHint == SunHints.VALUE_TEXT_ANTIALIAS_LCD_VRGB || antiAliasingHint == SunHints.VALUE_TEXT_ANTIALIAS_LCD_VBGR) ? 6 : 1;
    }

    public FontStrikeDesc(FontStrikeDesc fontStrikeDesc) {
        this.devTx = fontStrikeDesc.devTx;
        this.glyphTx = (AffineTransform) fontStrikeDesc.glyphTx.clone();
        this.style = fontStrikeDesc.style;
        this.aaHint = fontStrikeDesc.aaHint;
        this.fmHint = fontStrikeDesc.fmHint;
        this.hashCode = fontStrikeDesc.hashCode;
        this.valuemask = fontStrikeDesc.valuemask;
    }
}
