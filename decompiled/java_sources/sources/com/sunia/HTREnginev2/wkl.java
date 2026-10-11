package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;

/* loaded from: classes12.dex */
public class wkl implements HttpEntity {

    /* renamed from: e */
    public final HttpEntity f88710e;

    /* renamed from: f */
    public boolean f88711f = false;

    public wkl(HttpEntity httpEntity) {
        this.f88710e = httpEntity;
    }

    /* renamed from: a */
    public static void m58081a(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        HttpEntity entity = httpEntityEnclosingRequest.getEntity();
        if (entity == null || entity.isRepeatable() || m58082d(entity)) {
            return;
        }
        httpEntityEnclosingRequest.setEntity(new wkl(entity));
    }

    /* renamed from: d */
    public static boolean m58082d(HttpEntity httpEntity) {
        return httpEntity instanceof wkl;
    }

    /* renamed from: e */
    public static boolean m58083e(HttpRequest httpRequest) {
        HttpEntity entity;
        if (!(httpRequest instanceof HttpEntityEnclosingRequest) || (entity = ((HttpEntityEnclosingRequest) httpRequest).getEntity()) == null) {
            return true;
        }
        if (!m58082d(entity) || ((wkl) entity).m58085c()) {
            return entity.isRepeatable();
        }
        return true;
    }

    /* renamed from: b */
    public HttpEntity m58084b() {
        return this.f88710e;
    }

    /* renamed from: c */
    public boolean m58085c() {
        return this.f88711f;
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        this.f88711f = true;
        this.f88710e.consumeContent();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException, IllegalStateException {
        return this.f88710e.getContent();
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return this.f88710e.getContentEncoding();
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.f88710e.getContentLength();
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        return this.f88710e.getContentType();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.f88710e.isChunked();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return this.f88710e.isRepeatable();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.f88710e.isStreaming();
    }

    public String toString() {
        return "RequestEntityProxy{" + this.f88710e + '}';
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        this.f88711f = true;
        this.f88710e.writeTo(outputStream);
    }
}
