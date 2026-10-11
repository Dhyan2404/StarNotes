package org.apache.http.impl.auth;

import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.params.HttpParams;

@Deprecated
/* loaded from: classes12.dex */
public class NegotiateSchemeFactory implements AuthSchemeFactory {

    /* renamed from: a */
    public final SpnegoTokenGenerator f110513a;

    /* renamed from: b */
    public final boolean f110514b;

    public NegotiateSchemeFactory(SpnegoTokenGenerator spnegoTokenGenerator, boolean z) {
        this.f110513a = spnegoTokenGenerator;
        this.f110514b = z;
    }

    public SpnegoTokenGenerator getSpengoGenerator() {
        return this.f110513a;
    }

    public boolean isStripPort() {
        return this.f110514b;
    }

    @Override // org.apache.http.auth.AuthSchemeFactory
    public AuthScheme newInstance(HttpParams httpParams) {
        return new NegotiateScheme(this.f110513a, this.f110514b);
    }

    public NegotiateSchemeFactory(SpnegoTokenGenerator spnegoTokenGenerator) {
        this(spnegoTokenGenerator, false);
    }

    public NegotiateSchemeFactory() {
        this(null, false);
    }
}
