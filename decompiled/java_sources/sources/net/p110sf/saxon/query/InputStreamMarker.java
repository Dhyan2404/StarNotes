package net.p110sf.saxon.query;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes11.dex */
public class InputStreamMarker {

    /* renamed from: a */
    public final InputStream f100986a;

    public InputStreamMarker(InputStream inputStream) {
        this.f100986a = inputStream;
    }

    /* renamed from: a */
    public static boolean m63481a(InputStream inputStream) {
        return inputStream.markSupported();
    }

    public static InputStream ensureMarkSupported(InputStream inputStream) {
        return m63481a(inputStream) ? inputStream : new BufferedInputStream(inputStream);
    }

    public boolean isMarkSupported() {
        return this.f100986a.markSupported();
    }

    public void mark(int i) {
        this.f100986a.mark(i);
    }

    public void reset() throws IOException {
        this.f100986a.reset();
    }
}
