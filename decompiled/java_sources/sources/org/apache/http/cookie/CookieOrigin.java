package org.apache.http.cookie;

import java.util.Locale;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public final class CookieOrigin {

    /* renamed from: a */
    public final String f110345a;

    /* renamed from: b */
    public final int f110346b;

    /* renamed from: c */
    public final String f110347c;

    /* renamed from: d */
    public final boolean f110348d;

    public CookieOrigin(String str, int i, String str2, boolean z) {
        Args.notBlank(str, "Host");
        Args.notNegative(i, "Port");
        Args.notNull(str2, "Path");
        this.f110345a = str.toLowerCase(Locale.ROOT);
        this.f110346b = i;
        if (TextUtils.isBlank(str2)) {
            this.f110347c = "/";
        } else {
            this.f110347c = str2;
        }
        this.f110348d = z;
    }

    public String getHost() {
        return this.f110345a;
    }

    public String getPath() {
        return this.f110347c;
    }

    public int getPort() {
        return this.f110346b;
    }

    public boolean isSecure() {
        return this.f110348d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        if (this.f110348d) {
            sb.append("(secure)");
        }
        sb.append(this.f110345a);
        sb.append(':');
        sb.append(Integer.toString(this.f110346b));
        sb.append(this.f110347c);
        sb.append(']');
        return sb.toString();
    }
}
