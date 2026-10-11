package org.apache.http.impl.client;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.auth.AuthScheme;
import org.apache.http.client.AuthCache;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.UnsupportedSchemeException;
import org.apache.http.impl.conn.DefaultSchemePortResolver;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public class BasicAuthCache implements AuthCache {

    /* renamed from: a */
    public final Log f110564a;

    /* renamed from: b */
    public final Map<HttpHost, byte[]> f110565b;

    /* renamed from: c */
    public final SchemePortResolver f110566c;

    public BasicAuthCache(SchemePortResolver schemePortResolver) {
        this.f110564a = LogFactory.getLog(getClass());
        this.f110565b = new ConcurrentHashMap();
        this.f110566c = schemePortResolver == null ? DefaultSchemePortResolver.INSTANCE : schemePortResolver;
    }

    @Override // org.apache.http.client.AuthCache
    public void clear() {
        this.f110565b.clear();
    }

    @Override // org.apache.http.client.AuthCache
    public AuthScheme get(HttpHost httpHost) {
        Args.notNull(httpHost, "HTTP host");
        byte[] bArr = this.f110565b.get(getKey(httpHost));
        if (bArr != null) {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(bArr));
                AuthScheme authScheme = (AuthScheme) objectInputStream.readObject();
                objectInputStream.close();
                return authScheme;
            } catch (IOException e) {
                if (this.f110564a.isWarnEnabled()) {
                    this.f110564a.warn("Unexpected I/O error while de-serializing auth scheme", e);
                }
            } catch (ClassNotFoundException e2) {
                if (this.f110564a.isWarnEnabled()) {
                    this.f110564a.warn("Unexpected error while de-serializing auth scheme", e2);
                }
                return null;
            }
        }
        return null;
    }

    public HttpHost getKey(HttpHost httpHost) {
        if (httpHost.getPort() <= 0) {
            try {
                return new HttpHost(httpHost.getHostName(), this.f110566c.resolve(httpHost), httpHost.getSchemeName());
            } catch (UnsupportedSchemeException unused) {
            }
        }
        return httpHost;
    }

    @Override // org.apache.http.client.AuthCache
    public void put(HttpHost httpHost, AuthScheme authScheme) {
        Args.notNull(httpHost, "HTTP host");
        if (authScheme == null) {
            return;
        }
        if (!(authScheme instanceof Serializable)) {
            if (this.f110564a.isDebugEnabled()) {
                this.f110564a.debug("Auth scheme " + authScheme.getClass() + " is not serializable");
                return;
            }
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(authScheme);
            objectOutputStream.close();
            this.f110565b.put(getKey(httpHost), byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            if (this.f110564a.isWarnEnabled()) {
                this.f110564a.warn("Unexpected I/O error while serializing auth scheme", e);
            }
        }
    }

    @Override // org.apache.http.client.AuthCache
    public void remove(HttpHost httpHost) {
        Args.notNull(httpHost, "HTTP host");
        this.f110565b.remove(getKey(httpHost));
    }

    public String toString() {
        return this.f110565b.toString();
    }

    public BasicAuthCache() {
        this(null);
    }
}
