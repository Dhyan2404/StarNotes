package com.onyx.harfbuzz.graphics;

import android.graphics.Path;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.Disposable;
import com.onyx.harfbuzz.internal.JniBridge;

/* loaded from: classes9.dex */
final class GlyphRasterizer implements Disposable {

    /* renamed from: a */
    public long f62767a;

    static {
        JniBridge.loadLibrary();
    }

    public GlyphRasterizer(@NonNull GlyphKey glyphKey) {
        this.f62767a = nCreate(glyphKey.typeface.nativeTypeface, glyphKey.pixelWidth, glyphKey.pixelHeight, 65536, -glyphKey.skewX, 0, 65536);
    }

    private static native long nCreate(long j, int i, int i2, int i3, int i4, int i5, int i6);

    private static native void nDispose(long j);

    private static native GlyphImage nGetGlyphImage(long j, int i, int i2, long j2, boolean z, int[] iArr, int i3);

    private static native long nGetGlyphOutline(long j, int i);

    private static native Path nGetGlyphPath(long j, int i);

    private static native int nGetGlyphType(long j, int i);

    private static native GlyphImage nGetStrokeImage(long j, long j2, int i, int i2, int i3, int i4);

    @Nullable
    /* renamed from: a */
    public GlyphImage m52055a(int i, @ColorInt int i2, long j, boolean z, int[] iArr, int i3) {
        return nGetGlyphImage(this.f62767a, i, i2, j, z, iArr, i3);
    }

    @Nullable
    /* renamed from: b */
    public GlyphImage m52056b(int i, long j, boolean z, int[] iArr, int i2) {
        return m52055a(i, 0, j, z, iArr, i2);
    }

    @Nullable
    /* renamed from: c */
    public GlyphOutline m52057c(int i) {
        long nGetGlyphOutline = nGetGlyphOutline(this.f62767a, i);
        if (nGetGlyphOutline != 0) {
            return new GlyphOutline(nGetGlyphOutline);
        }
        return null;
    }

    @NonNull
    /* renamed from: d */
    public Path m52058d(int i) {
        return nGetGlyphPath(this.f62767a, i);
    }

    @Override // com.onyx.harfbuzz.Disposable
    public void dispose() {
        nDispose(this.f62767a);
    }

    /* renamed from: e */
    public int m52059e(int i) {
        return nGetGlyphType(this.f62767a, i);
    }

    @Nullable
    /* renamed from: f */
    public GlyphImage m52060f(@NonNull GlyphOutline glyphOutline, int i, int i2, int i3, int i4) {
        return nGetStrokeImage(this.f62767a, glyphOutline.f62766a, i, i2, i3, i4);
    }
}
