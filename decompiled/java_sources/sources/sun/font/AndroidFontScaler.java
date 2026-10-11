package sun.font;

import android.graphics.Matrix;
import android.graphics.Path;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.trans.android.p107hb.HBUtils;
import com.trans.android.util.PathUtils;
import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.lang.ref.WeakReference;

/* loaded from: classes16.dex */
class AndroidFontScaler extends FontScaler {
    public static final int FONT_SCALE = 10000;
    private String fontPath;

    public AndroidFontScaler(PhysicalFont physicalFont, int i, boolean z, int i2) {
        if (physicalFont instanceof Type1Font) {
            throw new IllegalArgumentException("Unsupported font type: Type1Font");
        }
        this.font = new WeakReference<>(physicalFont);
        this.fontPath = physicalFont.platName;
        this.nativeScaler = physicalFont.hashCode();
    }

    private HBTypeface getHBTypeface() {
        return com.trans.android.font.FontManager.getHBTypeface(this.fontPath);
    }

    @Override // sun.font.FontScaler
    public synchronized long createScalerContext(double[] dArr, int i, int i2, float f, float f2) {
        for (double d : dArr) {
            if (d != 0.0d) {
                return (long) (Math.abs(d) * 10000.0d);
            }
        }
        return dArr.hashCode();
    }

    @Override // sun.font.FontScaler, sun.java2d.DisposerRecord
    public synchronized void dispose() {
        this.nativeScaler = 0L;
    }

    @Override // sun.font.FontScaler
    public synchronized StrikeMetrics getFontMetrics(long j) throws FontScalerException {
        if (this.nativeScaler == 0) {
            return FontScaler.getNullScaler().getFontMetrics(0L);
        }
        HBTypeface hBTypeface = getHBTypeface();
        float f = ((float) j) / 10000.0f;
        StrikeMetrics strikeMetrics = new StrikeMetrics();
        strikeMetrics.ascentX = 0.0f;
        strikeMetrics.descentX = 0.0f;
        strikeMetrics.ascentY = -HBUtils.getAscent(hBTypeface, f);
        strikeMetrics.descentY = HBUtils.getDescent(hBTypeface, f);
        strikeMetrics.leadingX = 0.0f;
        strikeMetrics.leadingY = HBUtils.getLeading(hBTypeface, f);
        strikeMetrics.maxAdvanceX = 0.0f;
        strikeMetrics.maxAdvanceY = strikeMetrics.descentY - strikeMetrics.ascentY;
        return strikeMetrics;
    }

    @Override // sun.font.FontScaler
    public synchronized float getGlyphAdvance(long j, int i) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getHBTypeface().getGlyphAdvance(i, ((float) j) / 10000.0f, false);
        }
        return FontScaler.getNullScaler().getGlyphAdvance(0L, i);
    }

    @Override // sun.font.FontScaler
    public synchronized int getGlyphCode(char c) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getHBTypeface().getGlyphId(c);
        }
        return FontScaler.getNullScaler().getGlyphCode(c);
    }

    @Override // sun.font.FontScaler
    public synchronized long getGlyphImage(long j, int i) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return i;
        }
        return FontScaler.getNullScaler().getGlyphImage(0L, i);
    }

    @Override // sun.font.FontScaler
    public synchronized void getGlyphMetrics(long j, int i, Point2D.Float r8) throws FontScalerException {
        if (this.nativeScaler != 0) {
            r8.setLocation(getHBTypeface().getGlyphAdvance(i, ((float) j) / 10000.0f, false), r8.f97778y);
        } else {
            FontScaler.getNullScaler().getGlyphMetrics(0L, i, r8);
        }
    }

    @Override // sun.font.FontScaler
    public synchronized GeneralPath getGlyphOutline(long j, int i, float f, float f2) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return PathUtils.toJavePath(getHBTypeface().getGlyphPath(i, ((float) j) / 10000.0f, new Matrix()), f, f2);
        }
        return FontScaler.getNullScaler().getGlyphOutline(0L, i, f, f2);
    }

    @Override // sun.font.FontScaler
    public synchronized Rectangle2D.Float getGlyphOutlineBounds(long j, int i) throws FontScalerException {
        if (this.nativeScaler == 0) {
            return FontScaler.getNullScaler().getGlyphOutlineBounds(0L, i);
        }
        HBTypeface hBTypeface = getHBTypeface();
        float f = ((float) j) / 10000.0f;
        return new Rectangle2D.Float(0.0f, 0.0f, hBTypeface.getGlyphAdvance(i, f, false), HBUtils.getHeight(hBTypeface, f));
    }

    @Override // sun.font.FontScaler
    public synchronized Point2D.Float getGlyphPoint(long j, int i, int i2) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return new Point2D.Float(getHBTypeface().getGlyphAdvance(i, ((float) j) / 10000.0f, false), 0.0f);
        }
        return FontScaler.getNullScaler().getGlyphPoint(j, i, i2);
    }

    @Override // sun.font.FontScaler
    public synchronized GeneralPath getGlyphVectorOutline(long j, int[] iArr, int i, float f, float f2) throws FontScalerException {
        if (this.nativeScaler == 0) {
            return FontScaler.getNullScaler().getGlyphVectorOutline(0L, iArr, i, f, f2);
        }
        HBTypeface hBTypeface = getHBTypeface();
        Matrix matrix = new Matrix();
        float f3 = ((float) j) / 10000.0f;
        int min = Math.min(iArr.length, i);
        Path path = null;
        for (int i2 = 0; i2 < min; i2++) {
            if (path == null) {
                path = hBTypeface.getGlyphPath(hBTypeface.getGlyphId(i2), f3, matrix);
            } else {
                path.addPath(hBTypeface.getGlyphPath(hBTypeface.getGlyphId(i2), f3, matrix));
            }
        }
        return PathUtils.toJavePath(path, f, f2);
    }

    @Override // sun.font.FontScaler
    public synchronized int getMissingGlyphCode() throws FontScalerException {
        if (this.nativeScaler != 0) {
            return 0;
        }
        return FontScaler.getNullScaler().getMissingGlyphCode();
    }

    @Override // sun.font.FontScaler
    public synchronized int getNumGlyphs() throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getHBTypeface().getGlyphCount();
        }
        return FontScaler.getNullScaler().getNumGlyphs();
    }

    @Override // sun.font.FontScaler
    public synchronized long getUnitsPerEm() {
        return getHBTypeface().getUnitsPerEm();
    }

    @Override // sun.font.FontScaler
    public void invalidateScalerContext(long j) {
    }
}
