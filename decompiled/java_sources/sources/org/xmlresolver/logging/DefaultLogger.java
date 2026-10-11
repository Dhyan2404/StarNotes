package org.xmlresolver.logging;

import androidx.credentials.provider.utils.PrivilegedApp;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.ResolverFeature;

/* loaded from: classes16.dex */
public class DefaultLogger extends AbstractLogger {

    /* renamed from: a */
    public final ResolverConfiguration f116200a;

    /* renamed from: b */
    public int f116201b;

    /* renamed from: c */
    public String f116202c;

    /* renamed from: d */
    public String f116203d;

    public DefaultLogger(ResolverConfiguration resolverConfiguration) {
        this.f116200a = resolverConfiguration;
        setLogLevel((String) resolverConfiguration.getFeature(ResolverFeature.DEFAULT_LOGGER_LOG_LEVEL));
        this.f116202c = this.f116203d;
    }

    /* renamed from: b */
    public final void m72023b() {
        String str = (String) this.f116200a.getFeature(ResolverFeature.DEFAULT_LOGGER_LOG_LEVEL);
        if (str == null || str.equals(this.f116202c)) {
            return;
        }
        setLogLevel(str);
        this.f116202c = this.f116203d;
    }

    @Override // org.xmlresolver.logging.ResolverLogger
    public void debug(String str) {
        m72023b();
        if (this.f116201b <= 1) {
            System.err.println(str);
        }
    }

    public String getLogLevel() {
        m72023b();
        int i = this.f116201b;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "unknown" : "none" : "warn" : PrivilegedApp.f6532i : "debug";
    }

    @Override // org.xmlresolver.logging.ResolverLogger
    public void info(String str) {
        m72023b();
        if (this.f116201b <= 2) {
            System.err.println(str);
        }
    }

    public void setLogLevel(String str) {
        this.f116203d = str;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 3237038:
                if (str.equals(PrivilegedApp.f6532i)) {
                    c = 0;
                    break;
                }
                break;
            case 3387192:
                if (str.equals("none")) {
                    c = 1;
                    break;
                }
                break;
            case 3641990:
                if (str.equals("warn")) {
                    c = 2;
                    break;
                }
                break;
            case 95458899:
                if (str.equals("debug")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f116201b = 2;
                return;
            case 1:
                this.f116201b = 4;
                return;
            case 2:
                this.f116201b = 3;
                return;
            case 3:
                this.f116201b = 1;
                return;
            default:
                System.err.println("Invalid default logger log level: " + str);
                this.f116201b = 3;
                this.f116203d = "warn";
                return;
        }
    }

    @Override // org.xmlresolver.logging.ResolverLogger
    public void warn(String str) {
        m72023b();
        if (this.f116201b <= 3) {
            System.err.println(str);
        }
    }
}
