package com.sunia.HTREnginev2;

import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.text.lookup.StringLookup;

/* loaded from: classes12.dex */
public class mpi extends AbstractC14637x4 {

    /* renamed from: c */
    public static final char f77858c = ':';

    /* renamed from: a */
    public final StringLookup f77859a;

    /* renamed from: b */
    public final Map<String, StringLookup> f77860b;

    public mpi() {
        this((Map) null);
    }

    /* renamed from: a */
    public Map<String, StringLookup> m55669a() {
        return this.f77860b;
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(58);
        if (indexOf >= 0) {
            String lowerCase = str.substring(0, indexOf).toLowerCase(Locale.ROOT);
            int i = indexOf + 1;
            String substring = str.substring(i);
            StringLookup stringLookup = this.f77860b.get(lowerCase);
            String lookup = stringLookup != null ? stringLookup.lookup(substring) : null;
            if (lookup != null) {
                return lookup;
            }
            str = str.substring(i);
        }
        StringLookup stringLookup2 = this.f77859a;
        if (stringLookup2 != null) {
            return stringLookup2.lookup(str);
        }
        return null;
    }

    public String toString() {
        return getClass().getName() + " [stringLookupMap=" + this.f77860b + ", defaultStringLookup=" + this.f77859a + IteratorUtils.f104924b;
    }

    public <V> mpi(Map<String, V> map) {
        this(r8j.m56933b(map == null ? new HashMap<>() : map));
    }

    public mpi(StringLookup stringLookup) {
        this(new HashMap(), stringLookup, true);
    }

    public mpi(Map<String, StringLookup> map, StringLookup stringLookup, boolean z) {
        this.f77859a = stringLookup;
        this.f77860b = new HashMap(map.size());
        for (Map.Entry<String, StringLookup> entry : map.entrySet()) {
            this.f77860b.put(entry.getKey().toLowerCase(Locale.ROOT), entry.getValue());
        }
        if (z) {
            this.f77860b.put(NotificationCompat.CATEGORY_SYSTEM, s6n.f83860a);
            this.f77860b.put("env", zqf.f92089a);
            this.f77860b.put("java", lri.f76810a);
            this.f77860b.put("date", jve.f74741a);
            this.f77860b.put("localhost", n0j.f78187a);
        }
    }
}
