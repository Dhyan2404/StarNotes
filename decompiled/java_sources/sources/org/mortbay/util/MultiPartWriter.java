package org.mortbay.util;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes13.dex */
public class MultiPartWriter extends FilterWriter {
    public static String MULTIPART_MIXED = MultiPartOutputStream.MULTIPART_MIXED;
    public static String MULTIPART_X_MIXED_REPLACE = MultiPartOutputStream.MULTIPART_X_MIXED_REPLACE;

    /* renamed from: g */
    public static final String f115319g = "\r\n";

    /* renamed from: h */
    public static final String f115320h = "--";

    /* renamed from: e */
    public String f115321e;

    /* renamed from: f */
    public boolean f115322f;

    public MultiPartWriter(Writer writer) throws IOException {
        super(writer);
        this.f115322f = false;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("jetty");
        stringBuffer.append(System.identityHashCode(this));
        stringBuffer.append(Long.toString(System.currentTimeMillis(), 36));
        this.f115321e = stringBuffer.toString();
        this.f115322f = false;
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f115322f) {
            ((FilterWriter) this).out.write("\r\n");
        }
        ((FilterWriter) this).out.write(f115320h);
        ((FilterWriter) this).out.write(this.f115321e);
        ((FilterWriter) this).out.write(f115320h);
        ((FilterWriter) this).out.write("\r\n");
        this.f115322f = false;
        super.close();
    }

    public void endPart() throws IOException {
        if (this.f115322f) {
            ((FilterWriter) this).out.write("\r\n");
        }
        this.f115322f = false;
    }

    public String getBoundary() {
        return this.f115321e;
    }

    public void startPart(String str) throws IOException {
        if (this.f115322f) {
            ((FilterWriter) this).out.write("\r\n");
        }
        ((FilterWriter) this).out.write(f115320h);
        ((FilterWriter) this).out.write(this.f115321e);
        ((FilterWriter) this).out.write("\r\n");
        ((FilterWriter) this).out.write("Content-Type: ");
        ((FilterWriter) this).out.write(str);
        ((FilterWriter) this).out.write("\r\n");
        ((FilterWriter) this).out.write("\r\n");
        this.f115322f = true;
    }

    public void startPart(String str, String[] strArr) throws IOException {
        if (this.f115322f) {
            ((FilterWriter) this).out.write("\r\n");
        }
        ((FilterWriter) this).out.write(f115320h);
        ((FilterWriter) this).out.write(this.f115321e);
        ((FilterWriter) this).out.write("\r\n");
        ((FilterWriter) this).out.write("Content-Type: ");
        ((FilterWriter) this).out.write(str);
        ((FilterWriter) this).out.write("\r\n");
        for (int i = 0; strArr != null && i < strArr.length; i++) {
            ((FilterWriter) this).out.write(strArr[i]);
            ((FilterWriter) this).out.write("\r\n");
        }
        ((FilterWriter) this).out.write("\r\n");
        this.f115322f = true;
    }
}
