package org.xmlresolver.cache;

import java.util.regex.Pattern;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.ResolverFeature;
import org.xmlresolver.logging.ResolverLogger;

/* loaded from: classes16.dex */
public class CacheParser {

    /* renamed from: a */
    public static final Pattern f116146a = Pattern.compile("^[0-9]+k$", 2);

    /* renamed from: b */
    public static final Pattern f116147b;

    /* renamed from: c */
    public static final Pattern f116148c;

    /* renamed from: d */
    public static final Pattern f116149d;

    /* renamed from: e */
    public static final Pattern f116150e;

    /* renamed from: f */
    public static final Pattern f116151f;

    /* renamed from: g */
    public static final Pattern f116152g;

    /* renamed from: h */
    public static final Pattern f116153h;
    protected final ResolverLogger logger;

    static {
        Pattern compile = Pattern.compile("^[0-9]+m$", 2);
        f116147b = compile;
        f116148c = Pattern.compile("^[0-9]+g$", 2);
        f116149d = Pattern.compile("^[0-9]+s$", 2);
        f116150e = compile;
        f116151f = Pattern.compile("^[0-9]+h$", 2);
        f116152g = Pattern.compile("^[0-9]+d$", 2);
        f116153h = Pattern.compile("^[0-9]+w$", 2);
    }

    public CacheParser(ResolverConfiguration resolverConfiguration) {
        this.logger = (ResolverLogger) resolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
    }

    public long parseLong(String str, long j) {
        if (str == null) {
            return j;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            this.logger.log("error", "Bad numeric value: %s", str);
            return j;
        }
    }

    public long parseSizeLong(String str, long j) {
        long j2;
        if (str == null) {
            return j;
        }
        if (f116146a.matcher(str).matches()) {
            str = str.substring(0, str.length() - 1);
            j2 = 1024;
        } else if (f116147b.matcher(str).matches()) {
            str = str.substring(0, str.length() - 1);
            j2 = 1024000;
        } else if (f116148c.matcher(str).matches()) {
            str = str.substring(0, str.length() - 1);
            j2 = 1024000000;
        } else {
            j2 = 1;
        }
        return parseLong(str, j2, j);
    }

    public long parseTimeLong(String str, long j) {
        if (str == null) {
            return j;
        }
        long j2 = 1;
        if (f116149d.matcher(str).matches()) {
            str = str.substring(0, str.length() - 1);
        } else if (f116150e.matcher(str).matches()) {
            str = str.substring(0, str.length() - 1);
            j2 = 60;
        } else if (f116151f.matcher(str).matches()) {
            str = str.substring(0, str.length() - 1);
            j2 = 3600;
        } else if (f116152g.matcher(str).matches()) {
            str = str.substring(0, str.length() - 1);
            j2 = 86400;
        } else if (f116153h.matcher(str).matches()) {
            str = str.substring(0, str.length() - 1);
            j2 = ResourceCache.deleteWait;
        }
        return parseLong(str, j2, j);
    }

    public long parseLong(String str, long j, long j2) {
        try {
            return Long.parseLong(str) * j;
        } catch (NumberFormatException unused) {
            this.logger.log("error", "Bad numeric value: %s", str);
            return j2;
        }
    }
}
