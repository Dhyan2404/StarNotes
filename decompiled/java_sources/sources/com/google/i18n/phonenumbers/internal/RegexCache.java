package com.google.i18n.phonenumbers.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes6.dex */
public class RegexCache {

    /* renamed from: a */
    public LRUCache<String, Pattern> f36488a;

    /* loaded from: classes6.dex */
    public static class LRUCache<K, V> {

        /* renamed from: a */
        public LinkedHashMap<K, V> f36489a;

        /* renamed from: b */
        public int f36490b;

        public LRUCache(int i) {
            this.f36490b = i;
            this.f36489a = new LinkedHashMap<K, V>(((i * 4) / 3) + 1, 0.75f, true) { // from class: com.google.i18n.phonenumbers.internal.RegexCache.LRUCache.1
                @Override // java.util.LinkedHashMap
                public boolean removeEldestEntry(Map.Entry<K, V> entry) {
                    return size() > LRUCache.this.f36490b;
                }
            };
        }

        /* renamed from: b */
        public synchronized boolean m28511b(K k) {
            return this.f36489a.containsKey(k);
        }

        /* renamed from: c */
        public synchronized V m28512c(K k) {
            return this.f36489a.get(k);
        }

        /* renamed from: d */
        public synchronized void m28513d(K k, V v) {
            this.f36489a.put(k, v);
        }
    }

    public RegexCache(int i) {
        this.f36488a = new LRUCache<>(i);
    }

    /* renamed from: a */
    public boolean m28509a(String str) {
        return this.f36488a.m28511b(str);
    }

    public Pattern getPatternForRegex(String str) {
        Pattern m28512c = this.f36488a.m28512c(str);
        if (m28512c != null) {
            return m28512c;
        }
        Pattern compile = Pattern.compile(str);
        this.f36488a.m28513d(str, compile);
        return compile;
    }
}
