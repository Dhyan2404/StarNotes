package sun.font;

import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes16.dex */
public class FreetypeFontScaler extends FontScaler {
    private static final int TRUETYPE_FONT = 1;
    private static final int TYPE1_FONT = 2;

    static {
        FontManagerNativeLibrary.load();
        initIDs(FreetypeFontScaler.class);
    }

    public FreetypeFontScaler(Font2D font2D, int i, boolean z, int i2) {
        this.nativeScaler = initNativeScaler(font2D, font2D instanceof Type1Font ? 2 : 1, i, z, i2);
        this.font = new WeakReference<>(font2D);
    }

    private native long createScalerContextNative(long j, double[] dArr, int i, int i2, float f, float f2);

    private native void disposeNativeScaler(Font2D font2D, long j);

    private native StrikeMetrics getFontMetricsNative(Font2D font2D, long j, long j2);

    private native float getGlyphAdvanceNative(Font2D font2D, long j, long j2, int i);

    private native int getGlyphCodeNative(Font2D font2D, long j, char c);

    private native long getGlyphImageNative(Font2D font2D, long j, long j2, int i);

    private native void getGlyphMetricsNative(Font2D font2D, long j, long j2, int i, Point2D.Float r7);

    private native Rectangle2D.Float getGlyphOutlineBoundsNative(Font2D font2D, long j, long j2, int i);

    private native GeneralPath getGlyphOutlineNative(Font2D font2D, long j, long j2, int i, float f, float f2);

    private native Point2D.Float getGlyphPointNative(Font2D font2D, long j, long j2, int i, int i2);

    private native GeneralPath getGlyphVectorOutlineNative(Font2D font2D, long j, long j2, int[] iArr, int i, float f, float f2);

    private native int getMissingGlyphCodeNative(long j);

    private native int getNumGlyphsNative(long j);

    private native long getUnitsPerEMNative(long j);

    private static void initIDs(Class<?> cls) {
    }

    private native long initNativeScaler(Font2D font2D, int i, int i2, boolean z, int i3);

    private void invalidateScaler() throws FontScalerException {
        this.nativeScaler = 0L;
        this.font = null;
        throw new FontScalerException();
    }

    @Override // sun.font.FontScaler
    public synchronized long createScalerContext(double[] dArr, int i, int i2, float f, float f2) {
        long j = this.nativeScaler;
        if (j != 0) {
            return createScalerContextNative(j, dArr, i, i2, f, f2);
        }
        return NullFontScaler.getNullScalerContext();
    }

    @Override // sun.font.FontScaler, sun.java2d.DisposerRecord
    public synchronized void dispose() {
        if (this.nativeScaler != 0) {
            disposeNativeScaler(this.font.get(), this.nativeScaler);
            this.nativeScaler = 0L;
        }
    }

    @Override // sun.font.FontScaler
    public synchronized void disposeScaler() {
        if (this.nativeScaler != 0) {
            new Thread() { // from class: sun.font.FreetypeFontScaler.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    FreetypeFontScaler.this.dispose();
                }
            }.start();
        }
    }

    @Override // sun.font.FontScaler
    public synchronized StrikeMetrics getFontMetrics(long j) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getFontMetricsNative(this.font.get(), j, this.nativeScaler);
        }
        return FontScaler.getNullScaler().getFontMetrics(0L);
    }

    @Override // sun.font.FontScaler
    public synchronized float getGlyphAdvance(long j, int i) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getGlyphAdvanceNative(this.font.get(), j, this.nativeScaler, i);
        }
        return FontScaler.getNullScaler().getGlyphAdvance(0L, i);
    }

    @Override // sun.font.FontScaler
    public synchronized int getGlyphCode(char c) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getGlyphCodeNative(this.font.get(), this.nativeScaler, c);
        }
        return FontScaler.getNullScaler().getGlyphCode(c);
    }

    @Override // sun.font.FontScaler
    public synchronized long getGlyphImage(long j, int i) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getGlyphImageNative(this.font.get(), j, this.nativeScaler, i);
        }
        return FontScaler.getNullScaler().getGlyphImage(0L, i);
    }

    @Override // sun.font.FontScaler
    public synchronized void getGlyphMetrics(long j, int i, Point2D.Float r13) throws FontScalerException {
        if (this.nativeScaler != 0) {
            getGlyphMetricsNative(this.font.get(), j, this.nativeScaler, i, r13);
        } else {
            FontScaler.getNullScaler().getGlyphMetrics(0L, i, r13);
        }
    }

    @Override // sun.font.FontScaler
    public synchronized GeneralPath getGlyphOutline(long j, int i, float f, float f2) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getGlyphOutlineNative(this.font.get(), j, this.nativeScaler, i, f, f2);
        }
        return FontScaler.getNullScaler().getGlyphOutline(0L, i, f, f2);
    }

    @Override // sun.font.FontScaler
    public synchronized Rectangle2D.Float getGlyphOutlineBounds(long j, int i) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getGlyphOutlineBoundsNative(this.font.get(), j, this.nativeScaler, i);
        }
        return FontScaler.getNullScaler().getGlyphOutlineBounds(0L, i);
    }

    @Override // sun.font.FontScaler
    public synchronized Point2D.Float getGlyphPoint(long j, int i, int i2) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getGlyphPointNative(this.font.get(), j, this.nativeScaler, i, i2);
        }
        return FontScaler.getNullScaler().getGlyphPoint(j, i, i2);
    }

    @Override // sun.font.FontScaler
    public synchronized GeneralPath getGlyphVectorOutline(long j, int[] iArr, int i, float f, float f2) throws FontScalerException {
        if (this.nativeScaler != 0) {
            return getGlyphVectorOutlineNative(this.font.get(), j, this.nativeScaler, iArr, i, f, f2);
        }
        return FontScaler.getNullScaler().getGlyphVectorOutline(0L, iArr, i, f, f2);
    }

    @Override // sun.font.FontScaler
    public synchronized int getMissingGlyphCode() throws FontScalerException {
        long j = this.nativeScaler;
        if (j != 0) {
            return getMissingGlyphCodeNative(j);
        }
        return FontScaler.getNullScaler().getMissingGlyphCode();
    }

    @Override // sun.font.FontScaler
    public synchronized int getNumGlyphs() throws FontScalerException {
        long j = this.nativeScaler;
        if (j != 0) {
            return getNumGlyphsNative(j);
        }
        return FontScaler.getNullScaler().getNumGlyphs();
    }

    @Override // sun.font.FontScaler
    public synchronized long getUnitsPerEm() {
        return getUnitsPerEMNative(this.nativeScaler);
    }

    @Override // sun.font.FontScaler
    public void invalidateScalerContext(long j) {
    }
}
