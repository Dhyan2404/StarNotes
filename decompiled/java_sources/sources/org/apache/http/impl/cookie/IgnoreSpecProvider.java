package org.apache.http.impl.cookie;

import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.protocol.HttpContext;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class IgnoreSpecProvider implements CookieSpecProvider {

    /* renamed from: a */
    public volatile CookieSpec f110851a;

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        if (this.f110851a == null) {
            synchronized (this) {
                if (this.f110851a == null) {
                    this.f110851a = new IgnoreSpec();
                }
            }
        }
        return this.f110851a;
    }
}
