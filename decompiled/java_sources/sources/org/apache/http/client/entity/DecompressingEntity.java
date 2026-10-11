package org.apache.http.client.entity;

import com.sunia.HTREnginev2.swi;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class DecompressingEntity extends HttpEntityWrapper {

    /* renamed from: g */
    public static final int f110148g = 2048;

    /* renamed from: e */
    public final InputStreamFactory f110149e;

    /* renamed from: f */
    public InputStream f110150f;

    public DecompressingEntity(HttpEntity httpEntity, InputStreamFactory inputStreamFactory) {
        super(httpEntity);
        this.f110149e = inputStreamFactory;
    }

    /* renamed from: a */
    public final InputStream m68290a() throws IOException {
        return new swi(this.wrappedEntity.getContent(), this.f110149e);
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        if (!this.wrappedEntity.isStreaming()) {
            return m68290a();
        }
        if (this.f110150f == null) {
            this.f110150f = m68290a();
        }
        return this.f110150f;
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return null;
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public long getContentLength() {
        return -1L;
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        InputStream content = getContent();
        try {
            byte[] bArr = new byte[2048];
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
