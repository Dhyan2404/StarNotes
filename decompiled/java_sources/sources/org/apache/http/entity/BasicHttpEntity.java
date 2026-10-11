package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.impl.io.EmptyInputStream;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

/* loaded from: classes12.dex */
public class BasicHttpEntity extends AbstractHttpEntity {

    /* renamed from: e */
    public InputStream f110352e;

    /* renamed from: f */
    public long f110353f = -1;

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IllegalStateException {
        Asserts.check(this.f110352e != null, "Content has not been provided");
        return this.f110352e;
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.f110353f;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        InputStream inputStream = this.f110352e;
        return (inputStream == null || inputStream == EmptyInputStream.INSTANCE) ? false : true;
    }

    public void setContent(InputStream inputStream) {
        this.f110352e = inputStream;
    }

    public void setContentLength(long j) {
        this.f110353f = j;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        InputStream content = getContent();
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int read = content.read(bArr);
                if (read == -1) {
                    return;
                } else {
                    outputStream.write(bArr, 0, read);
                }
            }
        } finally {
            content.close();
        }
    }
}
