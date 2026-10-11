package com.squareup.okhttp;

import java.util.concurrent.TimeUnit;

/* loaded from: classes9.dex */
public final class CacheControl {

    /* renamed from: a */
    public final boolean f63451a;

    /* renamed from: b */
    public final boolean f63452b;

    /* renamed from: c */
    public final int f63453c;

    /* renamed from: d */
    public final int f63454d;

    /* renamed from: e */
    public final boolean f63455e;

    /* renamed from: f */
    public final boolean f63456f;

    /* renamed from: g */
    public final boolean f63457g;

    /* renamed from: h */
    public final int f63458h;

    /* renamed from: i */
    public final int f63459i;

    /* renamed from: j */
    public final boolean f63460j;

    /* renamed from: k */
    public final boolean f63461k;

    /* renamed from: l */
    public String f63462l;
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public boolean f63463a;

        /* renamed from: b */
        public boolean f63464b;

        /* renamed from: c */
        public int f63465c = -1;

        /* renamed from: d */
        public int f63466d = -1;

        /* renamed from: e */
        public int f63467e = -1;

        /* renamed from: f */
        public boolean f63468f;

        /* renamed from: g */
        public boolean f63469g;

        public CacheControl build() {
            return new CacheControl(this);
        }

        public Builder maxAge(int i, TimeUnit timeUnit) {
            if (i >= 0) {
                long seconds = timeUnit.toSeconds(i);
                this.f63465c = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxAge < 0: " + i);
        }

        public Builder maxStale(int i, TimeUnit timeUnit) {
            if (i >= 0) {
                long seconds = timeUnit.toSeconds(i);
                this.f63466d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i);
        }

        public Builder minFresh(int i, TimeUnit timeUnit) {
            if (i >= 0) {
                long seconds = timeUnit.toSeconds(i);
                this.f63467e = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("minFresh < 0: " + i);
        }

        public Builder noCache() {
            this.f63463a = true;
            return this;
        }

        public Builder noStore() {
            this.f63464b = true;
            return this;
        }

        public Builder noTransform() {
            this.f63469g = true;
            return this;
        }

        public Builder onlyIfCached() {
            this.f63468f = true;
            return this;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.squareup.okhttp.CacheControl parse(com.squareup.okhttp.Headers r21) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.CacheControl.parse(com.squareup.okhttp.Headers):com.squareup.okhttp.CacheControl");
    }

    /* renamed from: a */
    public final String m52455a() {
        StringBuilder sb = new StringBuilder();
        if (this.f63451a) {
            sb.append("no-cache, ");
        }
        if (this.f63452b) {
            sb.append("no-store, ");
        }
        if (this.f63453c != -1) {
            sb.append("max-age=");
            sb.append(this.f63453c);
            sb.append(", ");
        }
        if (this.f63454d != -1) {
            sb.append("s-maxage=");
            sb.append(this.f63454d);
            sb.append(", ");
        }
        if (this.f63455e) {
            sb.append("private, ");
        }
        if (this.f63456f) {
            sb.append("public, ");
        }
        if (this.f63457g) {
            sb.append("must-revalidate, ");
        }
        if (this.f63458h != -1) {
            sb.append("max-stale=");
            sb.append(this.f63458h);
            sb.append(", ");
        }
        if (this.f63459i != -1) {
            sb.append("min-fresh=");
            sb.append(this.f63459i);
            sb.append(", ");
        }
        if (this.f63460j) {
            sb.append("only-if-cached, ");
        }
        if (this.f63461k) {
            sb.append("no-transform, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public boolean isPrivate() {
        return this.f63455e;
    }

    public boolean isPublic() {
        return this.f63456f;
    }

    public int maxAgeSeconds() {
        return this.f63453c;
    }

    public int maxStaleSeconds() {
        return this.f63458h;
    }

    public int minFreshSeconds() {
        return this.f63459i;
    }

    public boolean mustRevalidate() {
        return this.f63457g;
    }

    public boolean noCache() {
        return this.f63451a;
    }

    public boolean noStore() {
        return this.f63452b;
    }

    public boolean noTransform() {
        return this.f63461k;
    }

    public boolean onlyIfCached() {
        return this.f63460j;
    }

    public int sMaxAgeSeconds() {
        return this.f63454d;
    }

    public String toString() {
        String str = this.f63462l;
        if (str != null) {
            return str;
        }
        String m52455a = m52455a();
        this.f63462l = m52455a;
        return m52455a;
    }

    public CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, String str) {
        this.f63451a = z;
        this.f63452b = z2;
        this.f63453c = i;
        this.f63454d = i2;
        this.f63455e = z3;
        this.f63456f = z4;
        this.f63457g = z5;
        this.f63458h = i3;
        this.f63459i = i4;
        this.f63460j = z6;
        this.f63461k = z7;
        this.f63462l = str;
    }

    public CacheControl(Builder builder) {
        this.f63451a = builder.f63463a;
        this.f63452b = builder.f63464b;
        this.f63453c = builder.f63465c;
        this.f63454d = -1;
        this.f63455e = false;
        this.f63456f = false;
        this.f63457g = false;
        this.f63458h = builder.f63466d;
        this.f63459i = builder.f63467e;
        this.f63460j = builder.f63468f;
        this.f63461k = builder.f63469g;
    }
}
