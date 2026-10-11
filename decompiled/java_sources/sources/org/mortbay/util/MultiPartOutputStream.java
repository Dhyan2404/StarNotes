package org.mortbay.util;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes13.dex */
public class MultiPartOutputStream extends FilterOutputStream {
    public static String MULTIPART_MIXED = "multipart/mixed";
    public static String MULTIPART_X_MIXED_REPLACE = "multipart/x-mixed-replace";

    /* renamed from: h */
    public static byte[] f115314h;

    /* renamed from: i */
    public static byte[] f115315i;

    /* renamed from: e */
    public String f115316e;

    /* renamed from: f */
    public byte[] f115317f;

    /* renamed from: g */
    public boolean f115318g;

    static {
        try {
            String str = StringUtil.__ISO_8859_1;
            f115314h = "\r\n".getBytes(str);
            f115315i = MultiPartWriter.f115320h.getBytes(str);
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(1);
        }
    }

    public MultiPartOutputStream(OutputStream outputStream) throws IOException {
        super(outputStream);
        this.f115318g = false;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("jetty");
        stringBuffer.append(System.identityHashCode(this));
        stringBuffer.append(Long.toString(System.currentTimeMillis(), 36));
        String stringBuffer2 = stringBuffer.toString();
        this.f115316e = stringBuffer2;
        this.f115317f = stringBuffer2.getBytes(StringUtil.__ISO_8859_1);
        this.f115318g = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f115318g) {
            ((FilterOutputStream) this).out.write(f115314h);
        }
        ((FilterOutputStream) this).out.write(f115315i);
        ((FilterOutputStream) this).out.write(this.f115317f);
        ((FilterOutputStream) this).out.write(f115315i);
        ((FilterOutputStream) this).out.write(f115314h);
        this.f115318g = false;
        super.close();
    }

    public String getBoundary() {
        return this.f115316e;
    }

    public OutputStream getOut() {
        return ((FilterOutputStream) this).out;
    }

    public void startPart(String str) throws IOException {
        if (this.f115318g) {
            ((FilterOutputStream) this).out.write(f115314h);
        }
        this.f115318g = true;
        ((FilterOutputStream) this).out.write(f115315i);
        ((FilterOutputStream) this).out.write(this.f115317f);
        ((FilterOutputStream) this).out.write(f115314h);
        OutputStream outputStream = ((FilterOutputStream) this).out;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Content-Type: ");
        stringBuffer.append(str);
        outputStream.write(stringBuffer.toString().getBytes(StringUtil.__ISO_8859_1));
        ((FilterOutputStream) this).out.write(f115314h);
        ((FilterOutputStream) this).out.write(f115314h);
    }

    public void startPart(String str, String[] strArr) throws IOException {
        if (this.f115318g) {
            ((FilterOutputStream) this).out.write(f115314h);
        }
        this.f115318g = true;
        ((FilterOutputStream) this).out.write(f115315i);
        ((FilterOutputStream) this).out.write(this.f115317f);
        ((FilterOutputStream) this).out.write(f115314h);
        OutputStream outputStream = ((FilterOutputStream) this).out;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Content-Type: ");
        stringBuffer.append(str);
        outputStream.write(stringBuffer.toString().getBytes(StringUtil.__ISO_8859_1));
        ((FilterOutputStream) this).out.write(f115314h);
        for (int i = 0; strArr != null && i < strArr.length; i++) {
            ((FilterOutputStream) this).out.write(strArr[i].getBytes(StringUtil.__ISO_8859_1));
            ((FilterOutputStream) this).out.write(f115314h);
        }
        ((FilterOutputStream) this).out.write(f115314h);
    }
}
