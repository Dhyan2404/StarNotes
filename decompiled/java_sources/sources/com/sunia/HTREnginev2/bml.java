package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.conn.EofSensorInputStream;
import org.apache.http.conn.EofSensorWatcher;
import org.apache.http.entity.HttpEntityWrapper;

/* loaded from: classes12.dex */
public class bml extends HttpEntityWrapper implements EofSensorWatcher {

    /* renamed from: e */
    public final n9e f65903e;

    public bml(HttpEntity httpEntity, n9e n9eVar) {
        super(httpEntity);
        this.f65903e = n9eVar;
    }

    /* renamed from: b */
    public static void m53282b(HttpResponse httpResponse, n9e n9eVar) {
        HttpEntity entity = httpResponse.getEntity();
        if (entity == null || !entity.isStreaming() || n9eVar == null) {
            return;
        }
        httpResponse.setEntity(new bml(entity, n9eVar));
    }

    /* renamed from: a */
    public final void m53283a() throws IOException {
        n9e n9eVar = this.f65903e;
        if (n9eVar != null) {
            n9eVar.close();
        }
    }

    public final void abortConnection() {
        n9e n9eVar = this.f65903e;
        if (n9eVar != null) {
            n9eVar.abortConnection();
        }
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        releaseConnection();
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean eofDetected(InputStream inputStream) throws IOException {
        try {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    abortConnection();
                    throw e;
                } catch (RuntimeException e2) {
                    abortConnection();
                    throw e2;
                }
            }
            releaseConnection();
            m53283a();
            return false;
        } catch (Throwable th) {
            m53283a();
            throw th;
        }
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        return new EofSensorInputStream(this.wrappedEntity.getContent(), this);
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return false;
    }

    public void releaseConnection() {
        n9e n9eVar = this.f65903e;
        if (n9eVar != null) {
            n9eVar.releaseConnection();
        }
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamAbort(InputStream inputStream) throws IOException {
        m53283a();
        return false;
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamClosed(InputStream inputStream) throws IOException {
        try {
            try {
                n9e n9eVar = this.f65903e;
                boolean z = (n9eVar == null || n9eVar.m55722f()) ? false : true;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (SocketException e) {
                        if (z) {
                            throw e;
                        }
                    }
                }
                releaseConnection();
                return false;
            } catch (IOException e2) {
                abortConnection();
                throw e2;
            } catch (RuntimeException e3) {
                abortConnection();
                throw e3;
            }
        } finally {
            m53283a();
        }
    }

    public String toString() {
        return "ResponseEntityProxy{" + this.wrappedEntity + '}';
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        try {
            if (outputStream != null) {
                try {
                    this.wrappedEntity.writeTo(outputStream);
                } catch (IOException e) {
                    abortConnection();
                    throw e;
                } catch (RuntimeException e2) {
                    abortConnection();
                    throw e2;
                }
            }
            releaseConnection();
        } finally {
            m53283a();
        }
    }
}
