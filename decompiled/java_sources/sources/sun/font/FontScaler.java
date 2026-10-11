package sun.font;

import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.lang.ref.WeakReference;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes16.dex */
public abstract class FontScaler implements DisposerRecord {
    private static FontScaler nullScaler;
    protected WeakReference<Font2D> font = null;
    protected long nativeScaler = 0;
    protected boolean disposed = false;

    public static synchronized FontScaler getNullScaler() {
        FontScaler fontScaler;
        synchronized (FontScaler.class) {
            if (nullScaler == null) {
                nullScaler = new NullFontScaler();
            }
            fontScaler = nullScaler;
        }
        return fontScaler;
    }

    public static FontScaler getScaler(Font2D font2D, int i, boolean z, int i2) {
        try {
            FreetypeFontScaler freetypeFontScaler = new FreetypeFontScaler(font2D, i, z, i2);
            Disposer.addObjectRecord(font2D, freetypeFontScaler);
            return freetypeFontScaler;
        } catch (Throwable unused) {
            FontScaler nullScaler2 = getNullScaler();
            FontManagerFactory.getInstance().deRegisterBadFont(font2D);
            return nullScaler2;
        }
    }

    public abstract long createScalerContext(double[] dArr, int i, int i2, float f, float f2);

    @Override // sun.java2d.DisposerRecord
    public void dispose() {
    }

    public void disposeScaler() {
    }

    public abstract StrikeMetrics getFontMetrics(long j) throws FontScalerException;

    public abstract float getGlyphAdvance(long j, int i) throws FontScalerException;

    public abstract int getGlyphCode(char c) throws FontScalerException;

    public abstract long getGlyphImage(long j, int i) throws FontScalerException;

    public abstract void getGlyphMetrics(long j, int i, Point2D.Float r4) throws FontScalerException;

    public abstract GeneralPath getGlyphOutline(long j, int i, float f, float f2) throws FontScalerException;

    public abstract Rectangle2D.Float getGlyphOutlineBounds(long j, int i) throws FontScalerException;

    public abstract Point2D.Float getGlyphPoint(long j, int i, int i2) throws FontScalerException;

    public abstract GeneralPath getGlyphVectorOutline(long j, int[] iArr, int i, float f, float f2) throws FontScalerException;

    public abstract int getMissingGlyphCode() throws FontScalerException;

    public abstract int getNumGlyphs() throws FontScalerException;

    public abstract long getUnitsPerEm();

    public abstract void invalidateScalerContext(long j);
}
