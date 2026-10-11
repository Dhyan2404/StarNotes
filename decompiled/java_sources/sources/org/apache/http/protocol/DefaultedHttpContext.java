package org.apache.http.protocol;

import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.util.Args;

@Deprecated
/* loaded from: classes12.dex */
public final class DefaultedHttpContext implements HttpContext {

    /* renamed from: e */
    public final HttpContext f111116e;

    /* renamed from: f */
    public final HttpContext f111117f;

    public DefaultedHttpContext(HttpContext httpContext, HttpContext httpContext2) {
        this.f111116e = (HttpContext) Args.notNull(httpContext, "HTTP context");
        this.f111117f = httpContext2;
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object getAttribute(String str) {
        Object attribute = this.f111116e.getAttribute(str);
        return attribute == null ? this.f111117f.getAttribute(str) : attribute;
    }

    public HttpContext getDefaults() {
        return this.f111117f;
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object removeAttribute(String str) {
        return this.f111116e.removeAttribute(str);
    }

    @Override // org.apache.http.protocol.HttpContext
    public void setAttribute(String str, Object obj) {
        this.f111116e.setAttribute(str, obj);
    }

    public String toString() {
        return "[local: " + this.f111116e + "defaults: " + this.f111117f + IteratorUtils.f104924b;
    }
}
