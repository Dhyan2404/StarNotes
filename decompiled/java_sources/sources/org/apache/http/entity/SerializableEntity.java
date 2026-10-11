package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class SerializableEntity extends AbstractHttpEntity {

    /* renamed from: e */
    public byte[] f110361e;

    /* renamed from: f */
    public Serializable f110362f;

    public SerializableEntity(Serializable serializable, boolean z) throws IOException {
        Args.notNull(serializable, "Source object");
        if (z) {
            m68361a(serializable);
        } else {
            this.f110362f = serializable;
        }
    }

    /* renamed from: a */
    public final void m68361a(Serializable serializable) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(serializable);
        objectOutputStream.flush();
        this.f110361e = byteArrayOutputStream.toByteArray();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException, IllegalStateException {
        if (this.f110361e == null) {
            m68361a(this.f110362f);
        }
        return new ByteArrayInputStream(this.f110361e);
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        if (this.f110361e == null) {
            return -1L;
        }
        return r2.length;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.f110361e == null;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        byte[] bArr = this.f110361e;
        if (bArr != null) {
            outputStream.write(bArr);
            outputStream.flush();
        } else {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
            objectOutputStream.writeObject(this.f110362f);
            objectOutputStream.flush();
        }
    }

    public SerializableEntity(Serializable serializable) {
        Args.notNull(serializable, "Source object");
        this.f110362f = serializable;
    }
}
