package com.dropbox.core;

import com.couchbase.lite.internal.core.C4Replicator;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.http.StandardHttpRequestor;
import java.util.Locale;

/* loaded from: classes4.dex */
public class DbxRequestConfig {

    /* renamed from: a */
    public final String f16401a;

    /* renamed from: b */
    public final String f16402b;

    /* renamed from: c */
    public final HttpRequestor f16403c;

    /* renamed from: d */
    public final int f16404d;

    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a */
        public final String f16405a;

        /* renamed from: b */
        public String f16406b;

        /* renamed from: c */
        public HttpRequestor f16407c;

        /* renamed from: d */
        public int f16408d;

        public DbxRequestConfig build() {
            return new DbxRequestConfig(this.f16405a, this.f16406b, this.f16407c, this.f16408d);
        }

        public Builder withAutoRetryDisabled() {
            this.f16408d = 0;
            return this;
        }

        public Builder withAutoRetryEnabled() {
            return withAutoRetryEnabled(3);
        }

        public Builder withHttpRequestor(HttpRequestor httpRequestor) {
            if (httpRequestor == null) {
                throw new NullPointerException("httpRequestor");
            }
            this.f16407c = httpRequestor;
            return this;
        }

        public Builder withUserLocale(String str) {
            this.f16406b = str;
            return this;
        }

        public Builder withUserLocaleFrom(Locale locale) {
            this.f16406b = DbxRequestConfig.m9969c(locale);
            return this;
        }

        public Builder withUserLocaleFromPreferences() {
            this.f16406b = null;
            return this;
        }

        public Builder withAutoRetryEnabled(int i) {
            if (i > 0) {
                this.f16408d = i;
                return this;
            }
            throw new IllegalArgumentException("maxRetries must be positive");
        }

        public Builder(String str, String str2, HttpRequestor httpRequestor, int i) {
            this.f16405a = str;
            this.f16406b = str2;
            this.f16407c = httpRequestor;
            this.f16408d = i;
        }

        public Builder(String str) {
            this.f16405a = str;
            this.f16406b = null;
            this.f16407c = StandardHttpRequestor.INSTANCE;
            this.f16408d = 0;
        }
    }

    /* renamed from: b */
    public static String m9968b(String str) {
        if (str == null) {
            return null;
        }
        if (!str.contains("_") || str.startsWith("_")) {
            return str;
        }
        String[] split = str.split("_", 3);
        return m9969c(new Locale(split[0], split[1], split.length == 3 ? split[2] : ""));
    }

    /* renamed from: c */
    public static String m9969c(Locale locale) {
        if (locale == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(locale.getLanguage().toLowerCase());
        if (!locale.getCountry().isEmpty()) {
            sb.append("-");
            sb.append(locale.getCountry().toUpperCase());
        }
        return sb.toString();
    }

    public static Builder newBuilder(String str) {
        if (str != null) {
            return new Builder(str);
        }
        throw new NullPointerException("clientIdentifier");
    }

    public Builder copy() {
        return new Builder(this.f16401a, this.f16402b, this.f16403c, this.f16404d);
    }

    public String getClientIdentifier() {
        return this.f16401a;
    }

    public HttpRequestor getHttpRequestor() {
        return this.f16403c;
    }

    public int getMaxRetries() {
        return this.f16404d;
    }

    public String getUserLocale() {
        return this.f16402b;
    }

    public boolean isAutoRetryEnabled() {
        return this.f16404d > 0;
    }

    public DbxRequestConfig(String str, String str2, HttpRequestor httpRequestor, int i) {
        if (str == null) {
            throw new NullPointerException("clientIdentifier");
        }
        if (httpRequestor == null) {
            throw new NullPointerException("httpRequestor");
        }
        if (i >= 0) {
            this.f16401a = str;
            this.f16402b = m9968b(str2);
            this.f16403c = httpRequestor;
            this.f16404d = i;
            return;
        }
        throw new IllegalArgumentException(C4Replicator.REPLICATOR_OPTION_MAX_RETRIES);
    }

    public DbxRequestConfig(String str) {
        this(str, null);
    }

    @Deprecated
    public DbxRequestConfig(String str, String str2) {
        this(str, str2, StandardHttpRequestor.INSTANCE);
    }

    @Deprecated
    public DbxRequestConfig(String str, String str2, HttpRequestor httpRequestor) {
        this(str, str2, httpRequestor, 0);
    }
}
