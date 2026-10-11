package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class ByteArrayEntity extends AbstractHttpEntity implements Cloneable {

    @Deprecated
    protected final byte[] content;

    /* renamed from: e */
    public final byte[] f110355e;

    /* renamed from: f */
    public final int f110356f;

    /* renamed from: g */
    public final int f110357g;

    public ByteArrayEntity(byte[] bArr, ContentType contentType) {
        Args.notNull(bArr, "Source byte array");
        this.content = bArr;
        this.f110355e = bArr;
        this.f110356f = 0;
        this.f110357g = bArr.length;
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() {
        return new ByteArrayInputStream(this.f110355e, this.f110356f, this.f110357g);
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.f110357g;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        outputStream.write(this.f110355e, this.f110356f, this.f110357g);
        outputStream.flush();
    }

    public ByteArrayEntity(byte[] bArr, int i, int i2, ContentType contentType) {
        int i3;
        Args.notNull(bArr, "Source byte array");
        if (i >= 0 && i <= bArr.length && i2 >= 0 && (i3 = i + i2) >= 0 && i3 <= bArr.length) {
            this.content = bArr;
            this.f110355e = bArr;
            this.f110356f = i;
            this.f110357g = i2;
            if (contentType != null) {
                setContentType(contentType.toString());
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException("off: " + i + " len: " + i2 + " b.length: " + bArr.length);
    }

    public ByteArrayEntity(byte[] bArr) {
        this(bArr, null);
    }

    public ByteArrayEntity(byte[] bArr, int i, int i2) {
        this(bArr, i, i2, null);
    }
}
