package com.sunia.HTREnginev2;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.util.EntityUtils;

@Deprecated
/* loaded from: classes12.dex */
public class ivd implements InvocationHandler {

    /* renamed from: f */
    public static final Constructor<?> f73620f;

    /* renamed from: e */
    public final HttpResponse f73621e;

    static {
        try {
            f73620f = Proxy.getProxyClass(ivd.class.getClassLoader(), CloseableHttpResponse.class).getConstructor(InvocationHandler.class);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException(e);
        }
    }

    public ivd(HttpResponse httpResponse) {
        this.f73621e = httpResponse;
    }

    /* renamed from: b */
    public static CloseableHttpResponse m54794b(HttpResponse httpResponse) {
        try {
            return (CloseableHttpResponse) f73620f.newInstance(new ivd(httpResponse));
        } catch (IllegalAccessException e) {
            throw new IllegalStateException(e);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        } catch (InvocationTargetException e3) {
            throw new IllegalStateException(e3);
        }
    }

    /* renamed from: a */
    public void m54795a() throws IOException {
        EntityUtils.consume(this.f73621e.getEntity());
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (method.getName().equals("close")) {
            m54795a();
            return null;
        }
        try {
            return method.invoke(this.f73621e, objArr);
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                throw cause;
            }
            throw e;
        }
    }
}
