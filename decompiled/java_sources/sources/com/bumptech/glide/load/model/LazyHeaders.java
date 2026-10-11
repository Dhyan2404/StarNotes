package com.bumptech.glide.load.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes3.dex */
public final class LazyHeaders implements Headers {

    /* renamed from: a */
    public final Map<String, List<LazyHeaderFactory>> f14882a;

    /* renamed from: b */
    public volatile Map<String, String> f14883b;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: d */
        public static final String f14884d = "User-Agent";

        /* renamed from: e */
        public static final String f14885e;

        /* renamed from: f */
        public static final Map<String, List<LazyHeaderFactory>> f14886f;

        /* renamed from: a */
        public boolean f14887a = true;

        /* renamed from: b */
        public Map<String, List<LazyHeaderFactory>> f14888b = f14886f;

        /* renamed from: c */
        public boolean f14889c = true;

        static {
            String m8888d = m8888d();
            f14885e = m8888d;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(m8888d)) {
                hashMap.put("User-Agent", Collections.singletonList(new C1975a(m8888d)));
            }
            f14886f = Collections.unmodifiableMap(hashMap);
        }

        @VisibleForTesting
        /* renamed from: d */
        public static String m8888d() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                    sb.append(charAt);
                } else {
                    sb.append('?');
                }
            }
            return sb.toString();
        }

        /* renamed from: a */
        public final Map<String, List<LazyHeaderFactory>> m8889a() {
            HashMap hashMap = new HashMap(this.f14888b.size());
            for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.f14888b.entrySet()) {
                hashMap.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            return hashMap;
        }

        public Builder addHeader(@NonNull String str, @NonNull String str2) {
            return addHeader(str, new C1975a(str2));
        }

        /* renamed from: b */
        public final void m8890b() {
            if (this.f14887a) {
                this.f14887a = false;
                this.f14888b = m8889a();
            }
        }

        public LazyHeaders build() {
            this.f14887a = true;
            return new LazyHeaders(this.f14888b);
        }

        /* renamed from: c */
        public final List<LazyHeaderFactory> m8891c(String str) {
            List<LazyHeaderFactory> list = this.f14888b.get(str);
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            this.f14888b.put(str, arrayList);
            return arrayList;
        }

        public Builder setHeader(@NonNull String str, @Nullable String str2) {
            return setHeader(str, str2 == null ? null : new C1975a(str2));
        }

        public Builder addHeader(@NonNull String str, @NonNull LazyHeaderFactory lazyHeaderFactory) {
            if (this.f14889c && "User-Agent".equalsIgnoreCase(str)) {
                return setHeader(str, lazyHeaderFactory);
            }
            m8890b();
            m8891c(str).add(lazyHeaderFactory);
            return this;
        }

        public Builder setHeader(@NonNull String str, @Nullable LazyHeaderFactory lazyHeaderFactory) {
            m8890b();
            if (lazyHeaderFactory == null) {
                this.f14888b.remove(str);
            } else {
                List<LazyHeaderFactory> m8891c = m8891c(str);
                m8891c.clear();
                m8891c.add(lazyHeaderFactory);
            }
            if (this.f14889c && "User-Agent".equalsIgnoreCase(str)) {
                this.f14889c = false;
            }
            return this;
        }
    }

    /* renamed from: com.bumptech.glide.load.model.LazyHeaders$a */
    /* loaded from: classes3.dex */
    public static final class C1975a implements LazyHeaderFactory {

        /* renamed from: a */
        @NonNull
        public final String f14890a;

        public C1975a(@NonNull String str) {
            this.f14890a = str;
        }

        @Override // com.bumptech.glide.load.model.LazyHeaderFactory
        public String buildHeader() {
            return this.f14890a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C1975a) {
                return this.f14890a.equals(((C1975a) obj).f14890a);
            }
            return false;
        }

        public int hashCode() {
            return this.f14890a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f14890a + Chars.QUOTE + '}';
        }
    }

    public LazyHeaders(Map<String, List<LazyHeaderFactory>> map) {
        this.f14882a = Collections.unmodifiableMap(map);
    }

    @NonNull
    /* renamed from: a */
    public final String m8886a(@NonNull List<LazyHeaderFactory> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            String buildHeader = list.get(i).buildHeader();
            if (!TextUtils.isEmpty(buildHeader)) {
                sb.append(buildHeader);
                if (i != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public final Map<String, String> m8887b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.f14882a.entrySet()) {
            String m8886a = m8886a(entry.getValue());
            if (!TextUtils.isEmpty(m8886a)) {
                hashMap.put(entry.getKey(), m8886a);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof LazyHeaders) {
            return this.f14882a.equals(((LazyHeaders) obj).f14882a);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.Headers
    public Map<String, String> getHeaders() {
        if (this.f14883b == null) {
            synchronized (this) {
                if (this.f14883b == null) {
                    this.f14883b = Collections.unmodifiableMap(m8887b());
                }
            }
        }
        return this.f14883b;
    }

    public int hashCode() {
        return this.f14882a.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f14882a + '}';
    }
}
