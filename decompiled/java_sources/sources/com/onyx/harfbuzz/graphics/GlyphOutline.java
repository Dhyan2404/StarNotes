package com.onyx.harfbuzz.graphics;

import com.onyx.harfbuzz.internal.JniBridge;

/* loaded from: classes9.dex */
final class GlyphOutline {

    /* renamed from: a */
    public long f62766a;

    static {
        JniBridge.loadLibrary();
    }

    public GlyphOutline(long j) {
        this.f62766a = j;
    }

    private static native void nDispose(long j);

    public void finalize() throws Throwable {
        try {
            long j = this.f62766a;
            if (j != 0) {
                nDispose(j);
            }
        } finally {
            super.finalize();
        }
    }
}
