package org.mortbay.jetty;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import javax.servlet.ServletInputStream;

/* renamed from: org.mortbay.jetty.h */
/* loaded from: classes13.dex */
public class C20388h extends BufferedReader {

    /* renamed from: e */
    public final /* synthetic */ ServletInputStream f114868e;

    /* renamed from: f */
    public final /* synthetic */ Request f114869f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20388h(Request request, Reader reader, ServletInputStream servletInputStream) {
        super(reader);
        this.f114869f = request;
        this.f114868e = servletInputStream;
    }

    @Override // java.io.BufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f114868e.close();
    }
}
