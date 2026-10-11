package com.sunia.HTREnginev2;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes12.dex */
public abstract class a0n extends FilterOutputStream {

    /* renamed from: e */
    public InputStream f64187e;

    /* renamed from: f */
    public final Object f64188f;

    public a0n(OutputStream outputStream) {
        super(outputStream);
        this.f64188f = new Object();
    }

    /* renamed from: f */
    public InputStream m52925f() throws IOException {
        synchronized (this.f64188f) {
            if (this.f64187e == null) {
                this.f64187e = mo52926j();
            }
        }
        return this.f64187e;
    }

    /* renamed from: j */
    public abstract InputStream mo52926j() throws IOException;

    /* renamed from: w */
    public void m52927w() throws IOException {
        close();
        synchronized (this.f64188f) {
            InputStream inputStream = this.f64187e;
            if (inputStream != null) {
                inputStream.close();
                this.f64187e = null;
            }
        }
    }

    public a0n() {
        this(null);
    }
}
