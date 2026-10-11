package org.mortbay.jetty;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import org.mortbay.log.Log;

/* renamed from: org.mortbay.jetty.b */
/* loaded from: classes13.dex */
public class C20381b extends PrintWriter {

    /* renamed from: e */
    public final /* synthetic */ HttpConnection f114821e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20381b(HttpConnection httpConnection, Writer writer) {
        super(writer);
        this.f114821e = httpConnection;
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            ((PrintWriter) this).out.close();
        } catch (IOException e) {
            Log.debug(e);
            setError();
        }
    }
}
