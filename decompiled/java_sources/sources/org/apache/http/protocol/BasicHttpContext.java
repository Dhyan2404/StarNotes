package org.apache.http.protocol;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;
import org.apache.poi.openxml4j.opc.PackageRelationship;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
/* loaded from: classes12.dex */
public class BasicHttpContext implements HttpContext {

    /* renamed from: e */
    public final HttpContext f111114e;

    /* renamed from: f */
    public final Map<String, Object> f111115f;

    public BasicHttpContext() {
        this(null);
    }

    public void clear() {
        this.f111115f.clear();
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object getAttribute(String str) {
        HttpContext httpContext;
        Args.notNull(str, PackageRelationship.ID_ATTRIBUTE_NAME);
        Object obj = this.f111115f.get(str);
        return (obj != null || (httpContext = this.f111114e) == null) ? obj : httpContext.getAttribute(str);
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object removeAttribute(String str) {
        Args.notNull(str, PackageRelationship.ID_ATTRIBUTE_NAME);
        return this.f111115f.remove(str);
    }

    @Override // org.apache.http.protocol.HttpContext
    public void setAttribute(String str, Object obj) {
        Args.notNull(str, PackageRelationship.ID_ATTRIBUTE_NAME);
        if (obj != null) {
            this.f111115f.put(str, obj);
        } else {
            this.f111115f.remove(str);
        }
    }

    public String toString() {
        return this.f111115f.toString();
    }

    public BasicHttpContext(HttpContext httpContext) {
        this.f111115f = new ConcurrentHashMap();
        this.f111114e = httpContext;
    }
}
