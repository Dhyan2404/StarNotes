package org.apache.http.conn.scheme;

import com.sunia.HTREnginev2.fvm;
import com.sunia.HTREnginev2.nwi;
import com.sunia.HTREnginev2.w5m;
import com.sunia.HTREnginev2.x5m;
import com.sunia.HTREnginev2.y5m;
import java.util.Locale;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes12.dex */
public final class Scheme {

    /* renamed from: a */
    public final String f110301a;

    /* renamed from: b */
    public final SchemeSocketFactory f110302b;

    /* renamed from: c */
    public final int f110303c;

    /* renamed from: d */
    public final boolean f110304d;

    /* renamed from: e */
    public String f110305e;

    public Scheme(String str, int i, SchemeSocketFactory schemeSocketFactory) {
        Args.notNull(str, "Scheme name");
        Args.check(i > 0 && i <= 65535, "Port is invalid");
        Args.notNull(schemeSocketFactory, "Socket factory");
        this.f110301a = str.toLowerCase(Locale.ENGLISH);
        this.f110303c = i;
        if (schemeSocketFactory instanceof SchemeLayeredSocketFactory) {
            this.f110304d = true;
            this.f110302b = schemeSocketFactory;
        } else if (schemeSocketFactory instanceof LayeredSchemeSocketFactory) {
            this.f110304d = true;
            this.f110302b = new w5m((LayeredSchemeSocketFactory) schemeSocketFactory);
        } else {
            this.f110304d = false;
            this.f110302b = schemeSocketFactory;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scheme)) {
            return false;
        }
        Scheme scheme = (Scheme) obj;
        return this.f110301a.equals(scheme.f110301a) && this.f110303c == scheme.f110303c && this.f110304d == scheme.f110304d;
    }

    public final int getDefaultPort() {
        return this.f110303c;
    }

    public final String getName() {
        return this.f110301a;
    }

    public final SchemeSocketFactory getSchemeSocketFactory() {
        return this.f110302b;
    }

    @Deprecated
    public final SocketFactory getSocketFactory() {
        SchemeSocketFactory schemeSocketFactory = this.f110302b;
        return schemeSocketFactory instanceof y5m ? ((y5m) schemeSocketFactory).m58384a() : this.f110304d ? new nwi((LayeredSchemeSocketFactory) schemeSocketFactory) : new fvm(schemeSocketFactory);
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.f110303c), this.f110301a), this.f110304d);
    }

    public final boolean isLayered() {
        return this.f110304d;
    }

    public final int resolvePort(int i) {
        return i <= 0 ? this.f110303c : i;
    }

    public final String toString() {
        if (this.f110305e == null) {
            this.f110305e = this.f110301a + ':' + Integer.toString(this.f110303c);
        }
        return this.f110305e;
    }

    @Deprecated
    public Scheme(String str, SocketFactory socketFactory, int i) {
        Args.notNull(str, "Scheme name");
        Args.notNull(socketFactory, "Socket factory");
        Args.check(i > 0 && i <= 65535, "Port is invalid");
        this.f110301a = str.toLowerCase(Locale.ENGLISH);
        if (socketFactory instanceof LayeredSocketFactory) {
            this.f110302b = new x5m((LayeredSocketFactory) socketFactory);
            this.f110304d = true;
        } else {
            this.f110302b = new y5m(socketFactory);
            this.f110304d = false;
        }
        this.f110303c = i;
    }
}
