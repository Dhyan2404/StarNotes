package org.apache.http.impl.cookie;

import org.apache.http.annotation.Contract;
import org.apache.http.annotation.Obsolete;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.protocol.HttpContext;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Obsolete
/* loaded from: classes12.dex */
public class NetscapeDraftSpecProvider implements CookieSpecProvider {

    /* renamed from: a */
    public final String[] f110865a;

    /* renamed from: b */
    public volatile CookieSpec f110866b;

    public NetscapeDraftSpecProvider(String[] strArr) {
        this.f110865a = strArr;
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        if (this.f110866b == null) {
            synchronized (this) {
                if (this.f110866b == null) {
                    this.f110866b = new NetscapeDraftSpec(this.f110865a);
                }
            }
        }
        return this.f110866b;
    }

    public NetscapeDraftSpecProvider() {
        this(null);
    }
}
