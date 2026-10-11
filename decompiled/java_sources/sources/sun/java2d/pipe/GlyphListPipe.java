package sun.java2d.pipe;

import java.awt.font.GlyphVector;
import java.awt.font.TextLayout;
import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.loops.FontInfo;

/* loaded from: classes16.dex */
public abstract class GlyphListPipe implements TextPipe {
    @Override // sun.java2d.pipe.TextPipe
    public void drawChars(SunGraphics2D sunGraphics2D, char[] cArr, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        FontInfo fontInfo = sunGraphics2D.getFontInfo();
        if (fontInfo.pixelHeight > 100) {
            SurfaceData.outlineTextRenderer.drawChars(sunGraphics2D, cArr, i, i2, i3, i4);
            return;
        }
        if (sunGraphics2D.transformState >= 3) {
            double[] dArr = {i3 + fontInfo.originX, i4 + fontInfo.originY};
            sunGraphics2D.transform.transform(dArr, 0, dArr, 0, 1);
            float f3 = (float) dArr[0];
            f2 = (float) dArr[1];
            f = f3;
        } else {
            f = i3 + fontInfo.originX + sunGraphics2D.transX;
            f2 = i4 + fontInfo.originY + sunGraphics2D.transY;
        }
        GlyphList glyphList = GlyphList.getInstance();
        if (glyphList.setFromChars(fontInfo, cArr, i, i2, f, f2)) {
            drawGlyphList(sunGraphics2D, glyphList);
            glyphList.dispose();
        } else {
            glyphList.dispose();
            new TextLayout(new String(cArr, i, i2), sunGraphics2D.getFont(), sunGraphics2D.getFontRenderContext()).draw(sunGraphics2D, i3, i4);
        }
    }

    public abstract void drawGlyphList(SunGraphics2D sunGraphics2D, GlyphList glyphList);

    public void drawGlyphList(SunGraphics2D sunGraphics2D, GlyphList glyphList, int i) {
        drawGlyphList(sunGraphics2D, glyphList);
    }

    @Override // sun.java2d.pipe.TextPipe
    public void drawGlyphVector(SunGraphics2D sunGraphics2D, GlyphVector glyphVector, float f, float f2) {
        float f3;
        float f4;
        FontInfo gVFontInfo = sunGraphics2D.getGVFontInfo(glyphVector.getFont(), glyphVector.getFontRenderContext());
        if (gVFontInfo.pixelHeight > 100) {
            SurfaceData.outlineTextRenderer.drawGlyphVector(sunGraphics2D, glyphVector, f, f2);
            return;
        }
        if (sunGraphics2D.transformState >= 3) {
            double[] dArr = {f, f2};
            sunGraphics2D.transform.transform(dArr, 0, dArr, 0, 1);
            f3 = (float) dArr[0];
            f4 = (float) dArr[1];
        } else {
            f3 = f + sunGraphics2D.transX;
            f4 = f2 + sunGraphics2D.transY;
        }
        GlyphList glyphList = GlyphList.getInstance();
        glyphList.setFromGlyphVector(gVFontInfo, glyphVector, f3, f4);
        drawGlyphList(sunGraphics2D, glyphList, gVFontInfo.aaHint);
        glyphList.dispose();
    }

    @Override // sun.java2d.pipe.TextPipe
    public void drawString(SunGraphics2D sunGraphics2D, String str, double d, double d2) {
        float f;
        double d3;
        FontInfo fontInfo = sunGraphics2D.getFontInfo();
        if (fontInfo.pixelHeight > 100) {
            SurfaceData.outlineTextRenderer.drawString(sunGraphics2D, str, d, d2);
            return;
        }
        if (sunGraphics2D.transformState >= 3) {
            double[] dArr = {fontInfo.originX + d, fontInfo.originY + d2};
            sunGraphics2D.transform.transform(dArr, 0, dArr, 0, 1);
            f = (float) dArr[0];
            d3 = dArr[1];
        } else {
            f = (float) (fontInfo.originX + d + sunGraphics2D.transX);
            d3 = fontInfo.originY + d2 + sunGraphics2D.transY;
        }
        float f2 = (float) d3;
        GlyphList glyphList = GlyphList.getInstance();
        if (glyphList.setFromString(fontInfo, str, f, f2)) {
            drawGlyphList(sunGraphics2D, glyphList);
            glyphList.dispose();
        } else {
            glyphList.dispose();
            new TextLayout(str, sunGraphics2D.getFont(), sunGraphics2D.getFontRenderContext()).draw(sunGraphics2D, (float) d, (float) d2);
        }
    }
}
