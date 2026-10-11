package org.apache.http.params;

import java.util.HashSet;
import java.util.Set;
import org.apache.http.util.Args;

@Deprecated
/* loaded from: classes12.dex */
public final class DefaultedHttpParams extends AbstractHttpParams {

    /* renamed from: e */
    public final HttpParams f111079e;

    /* renamed from: f */
    public final HttpParams f111080f;

    public DefaultedHttpParams(HttpParams httpParams, HttpParams httpParams2) {
        this.f111079e = (HttpParams) Args.notNull(httpParams, "Local HTTP parameters");
        this.f111080f = httpParams2;
    }

    /* renamed from: a */
    public final Set<String> m68592a(HttpParams httpParams) {
        if (httpParams instanceof HttpParamsNames) {
            return ((HttpParamsNames) httpParams).getNames();
        }
        throw new UnsupportedOperationException("HttpParams instance does not implement HttpParamsNames");
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams copy() {
        return new DefaultedHttpParams(this.f111079e.copy(), this.f111080f);
    }

    public Set<String> getDefaultNames() {
        return new HashSet(m68592a(this.f111080f));
    }

    public HttpParams getDefaults() {
        return this.f111080f;
    }

    public Set<String> getLocalNames() {
        return new HashSet(m68592a(this.f111079e));
    }

    @Override // org.apache.http.params.AbstractHttpParams, org.apache.http.params.HttpParamsNames
    public Set<String> getNames() {
        HashSet hashSet = new HashSet(m68592a(this.f111080f));
        hashSet.addAll(m68592a(this.f111079e));
        return hashSet;
    }

    @Override // org.apache.http.params.HttpParams
    public Object getParameter(String str) {
        HttpParams httpParams;
        Object parameter = this.f111079e.getParameter(str);
        return (parameter != null || (httpParams = this.f111080f) == null) ? parameter : httpParams.getParameter(str);
    }

    @Override // org.apache.http.params.HttpParams
    public boolean removeParameter(String str) {
        return this.f111079e.removeParameter(str);
    }

    @Override // org.apache.http.params.HttpParams
    public HttpParams setParameter(String str, Object obj) {
        return this.f111079e.setParameter(str, obj);
    }
}
