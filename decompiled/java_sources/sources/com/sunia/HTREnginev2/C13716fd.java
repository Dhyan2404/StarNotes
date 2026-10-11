package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import javax.annotation.CheckForNull;

@GwtIncompatible
@ynf
/* renamed from: com.sunia.HTREnginev2.fd */
/* loaded from: classes6.dex */
public class C13716fd extends Writer {

    /* renamed from: e */
    public final Appendable f69889e;

    /* renamed from: f */
    public boolean f69890f;

    public C13716fd(Appendable appendable) {
        this.f69889e = (Appendable) Preconditions.checkNotNull(appendable);
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f69890f = true;
        Appendable appendable = this.f69889e;
        if (appendable instanceof Closeable) {
            ((Closeable) appendable).close();
        }
    }

    /* renamed from: f */
    public final void m54080f() throws IOException {
        if (this.f69890f) {
            throw new IOException("Cannot write to a closed writer.");
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        m54080f();
        Appendable appendable = this.f69889e;
        if (appendable instanceof Flushable) {
            ((Flushable) appendable).flush();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        m54080f();
        this.f69889e.append(new String(cArr, i, i2));
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        m54080f();
        this.f69889e.append((char) i);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        m54080f();
        this.f69889e.append(c);
        return this;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        Preconditions.checkNotNull(str);
        m54080f();
        this.f69889e.append(str);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@CheckForNull CharSequence charSequence) throws IOException {
        m54080f();
        this.f69889e.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@CheckForNull CharSequence charSequence, int i, int i2) throws IOException {
        m54080f();
        this.f69889e.append(charSequence, i, i2);
        return this;
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        Preconditions.checkNotNull(str);
        m54080f();
        this.f69889e.append(str, i, i2 + i);
    }
}
