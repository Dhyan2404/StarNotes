package com.sunia.HTREnginev2;

import android.util.Log;
import java.io.Writer;

/* loaded from: classes3.dex */
public final class j3j extends Writer {

    /* renamed from: e */
    public final String f73894e;

    /* renamed from: f */
    public StringBuilder f73895f = new StringBuilder(128);

    public j3j(String str) {
        this.f73894e = str;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m54868f();
    }

    /* renamed from: f */
    public final void m54868f() {
        if (this.f73895f.length() > 0) {
            Log.d(this.f73894e, this.f73895f.toString());
            StringBuilder sb = this.f73895f;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m54868f();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m54868f();
            } else {
                this.f73895f.append(c);
            }
        }
    }
}
