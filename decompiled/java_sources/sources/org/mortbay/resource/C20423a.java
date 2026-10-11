package org.mortbay.resource;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.mortbay.util.C20429IO;

/* renamed from: org.mortbay.resource.a */
/* loaded from: classes13.dex */
public class C20423a extends FilterInputStream {

    /* renamed from: e */
    public final /* synthetic */ JarResource f115233e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20423a(JarResource jarResource, InputStream inputStream) {
        super(inputStream);
        this.f115233e = jarResource;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterInputStream) this).in = C20429IO.getClosedStream();
    }
}
