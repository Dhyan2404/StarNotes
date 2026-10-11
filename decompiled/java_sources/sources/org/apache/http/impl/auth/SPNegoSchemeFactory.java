package org.apache.http.impl.auth;

import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class SPNegoSchemeFactory implements AuthSchemeFactory, AuthSchemeProvider {

    /* renamed from: a */
    public final boolean f110516a;

    /* renamed from: b */
    public final boolean f110517b;

    public SPNegoSchemeFactory(boolean z, boolean z2) {
        this.f110516a = z;
        this.f110517b = z2;
    }

    @Override // org.apache.http.auth.AuthSchemeProvider
    public AuthScheme create(HttpContext httpContext) {
        return new SPNegoScheme(this.f110516a, this.f110517b);
    }

    public boolean isStripPort() {
        return this.f110516a;
    }

    public boolean isUseCanonicalHostname() {
        return this.f110517b;
    }

    @Override // org.apache.http.auth.AuthSchemeFactory
    public AuthScheme newInstance(HttpParams httpParams) {
        return new SPNegoScheme(this.f110516a, this.f110517b);
    }

    public SPNegoSchemeFactory(boolean z) {
        this.f110516a = z;
        this.f110517b = true;
    }

    public SPNegoSchemeFactory() {
        this(true, true);
    }
}
