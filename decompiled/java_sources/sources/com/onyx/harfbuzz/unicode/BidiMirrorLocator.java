package com.onyx.harfbuzz.unicode;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.Disposable;
import com.onyx.harfbuzz.internal.JniBridge;

/* loaded from: classes9.dex */
class BidiMirrorLocator implements Disposable {

    /* renamed from: a */
    public long f62896a = nCreate();

    /* renamed from: b */
    public long f62897b;

    static {
        JniBridge.loadLibrary();
    }

    private native long nCreate();

    private native void nDispose(long j);

    private native BidiPair nGetNextPair(long j);

    private native void nLoadLine(long j, long j2, long j3);

    /* renamed from: a */
    public void m52108a(@NonNull BidiLine bidiLine) {
        long j = bidiLine.f62888a;
        this.f62897b = j;
        nLoadLine(this.f62896a, bidiLine.f62889b, j);
    }

    @NonNull
    /* renamed from: b */
    public BidiPair m52109b() {
        return nGetNextPair(this.f62896a);
    }

    @Override // com.onyx.harfbuzz.Disposable
    public void dispose() {
        nDispose(this.f62896a);
    }
}
