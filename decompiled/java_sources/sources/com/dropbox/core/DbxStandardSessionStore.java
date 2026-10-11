package com.dropbox.core;

import javax.servlet.http.HttpSession;

/* loaded from: classes4.dex */
public final class DbxStandardSessionStore implements DbxSessionStore {

    /* renamed from: a */
    public final HttpSession f16425a;

    /* renamed from: b */
    public final String f16426b;

    public DbxStandardSessionStore(HttpSession httpSession, String str) {
        this.f16425a = httpSession;
        this.f16426b = str;
    }

    @Override // com.dropbox.core.DbxSessionStore
    public void clear() {
        this.f16425a.removeAttribute(this.f16426b);
    }

    @Override // com.dropbox.core.DbxSessionStore
    public String get() {
        Object attribute = this.f16425a.getAttribute(this.f16426b);
        if (attribute instanceof String) {
            return (String) attribute;
        }
        return null;
    }

    public String getKey() {
        return this.f16426b;
    }

    public HttpSession getSession() {
        return this.f16425a;
    }

    @Override // com.dropbox.core.DbxSessionStore
    public void set(String str) {
        this.f16425a.setAttribute(this.f16426b, str);
    }
}
