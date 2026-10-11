package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.heartbeatinfo.HeartBeatResult;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes6.dex */
public class wfh {

    /* renamed from: b */
    public static wfh f88580b = null;

    /* renamed from: c */
    public static final String f88581c = "fire-global";

    /* renamed from: d */
    public static final String f88582d = "FirebaseAppHeartBeat";

    /* renamed from: e */
    public static final String f88583e = "FirebaseHeartBeat";

    /* renamed from: f */
    public static final String f88584f = "fire-count";

    /* renamed from: g */
    public static final String f88585g = "last-used-date";

    /* renamed from: h */
    public static final int f88586h = 30;

    /* renamed from: a */
    public final SharedPreferences f88587a;

    public wfh(Context context, String str) {
        this.f88587a = context.getSharedPreferences(f88583e + str, 0);
    }

    /* renamed from: a */
    public final synchronized void m58057a() {
        long j = this.f88587a.getLong(f88584f, 0L);
        String str = "";
        String str2 = null;
        for (Map.Entry<String, ?> entry : this.f88587a.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                for (String str3 : (Set) entry.getValue()) {
                    if (str2 == null || str2.compareTo(str3) > 0) {
                        str = entry.getKey();
                        str2 = str3;
                    }
                }
            }
        }
        HashSet hashSet = new HashSet(this.f88587a.getStringSet(str, new HashSet()));
        hashSet.remove(str2);
        this.f88587a.edit().putStringSet(str, hashSet).putLong(f88584f, j - 1).commit();
    }

    /* renamed from: b */
    public synchronized void m58058b() {
        SharedPreferences.Editor edit = this.f88587a.edit();
        int i = 0;
        for (Map.Entry<String, ?> entry : this.f88587a.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Set set = (Set) entry.getValue();
                String m58060d = m58060d(System.currentTimeMillis());
                String key = entry.getKey();
                if (set.contains(m58060d)) {
                    HashSet hashSet = new HashSet();
                    hashSet.add(m58060d);
                    i++;
                    edit.putStringSet(key, hashSet);
                } else {
                    edit.remove(key);
                }
            }
        }
        if (i == 0) {
            edit.remove(f88584f);
        } else {
            edit.putLong(f88584f, i);
        }
        edit.commit();
    }

    /* renamed from: c */
    public synchronized List<HeartBeatResult> m58059c() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (Map.Entry<String, ?> entry : this.f88587a.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                HashSet hashSet = new HashSet((Set) entry.getValue());
                hashSet.remove(m58060d(System.currentTimeMillis()));
                if (!hashSet.isEmpty()) {
                    arrayList.add(HeartBeatResult.create(entry.getKey(), new ArrayList(hashSet)));
                }
            }
        }
        m58070n(System.currentTimeMillis());
        return arrayList;
    }

    /* renamed from: d */
    public final synchronized String m58060d(long j) {
        return new Date(j).toInstant().atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    /* renamed from: e */
    public int m58061e() {
        return (int) this.f88587a.getLong(f88584f, 0L);
    }

    /* renamed from: f */
    public synchronized long m58062f() {
        return this.f88587a.getLong(f88581c, -1L);
    }

    /* renamed from: g */
    public final synchronized String m58063g(String str) {
        for (Map.Entry<String, ?> entry : this.f88587a.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it2 = ((Set) entry.getValue()).iterator();
                while (it2.hasNext()) {
                    if (str.equals((String) it2.next())) {
                        return entry.getKey();
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: h */
    public synchronized boolean m58064h(long j, long j2) {
        return m58060d(j).equals(m58060d(j2));
    }

    /* renamed from: i */
    public synchronized void m58065i() {
        String m58060d = m58060d(System.currentTimeMillis());
        this.f88587a.edit().putString(f88585g, m58060d).commit();
        m58066j(m58060d);
    }

    /* renamed from: j */
    public final synchronized void m58066j(String str) {
        String m58063g = m58063g(str);
        if (m58063g == null) {
            return;
        }
        HashSet hashSet = new HashSet(this.f88587a.getStringSet(m58063g, new HashSet()));
        hashSet.remove(str);
        if (hashSet.isEmpty()) {
            this.f88587a.edit().remove(m58063g).commit();
        } else {
            this.f88587a.edit().putStringSet(m58063g, hashSet).commit();
        }
    }

    /* renamed from: k */
    public synchronized boolean m58067k(long j) {
        return m58068l(f88581c, j);
    }

    /* renamed from: l */
    public synchronized boolean m58068l(String str, long j) {
        if (!this.f88587a.contains(str)) {
            this.f88587a.edit().putLong(str, j).commit();
            return true;
        }
        if (m58064h(this.f88587a.getLong(str, -1L), j)) {
            return false;
        }
        this.f88587a.edit().putLong(str, j).commit();
        return true;
    }

    /* renamed from: m */
    public synchronized void m58069m(long j, String str) {
        String m58060d = m58060d(j);
        if (this.f88587a.getString(f88585g, "").equals(m58060d)) {
            String m58063g = m58063g(m58060d);
            if (m58063g == null) {
                return;
            }
            if (m58063g.equals(str)) {
                return;
            }
            m58071o(str, m58060d);
            return;
        }
        long j2 = this.f88587a.getLong(f88584f, 0L);
        if (j2 + 1 == 30) {
            m58057a();
            j2 = this.f88587a.getLong(f88584f, 0L);
        }
        HashSet hashSet = new HashSet(this.f88587a.getStringSet(str, new HashSet()));
        hashSet.add(m58060d);
        this.f88587a.edit().putStringSet(str, hashSet).putLong(f88584f, j2 + 1).putString(f88585g, m58060d).commit();
    }

    /* renamed from: n */
    public synchronized void m58070n(long j) {
        this.f88587a.edit().putLong(f88581c, j).commit();
    }

    /* renamed from: o */
    public final synchronized void m58071o(String str, String str2) {
        m58066j(str2);
        HashSet hashSet = new HashSet(this.f88587a.getStringSet(str, new HashSet()));
        hashSet.add(str2);
        this.f88587a.edit().putStringSet(str, hashSet).commit();
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public wfh(SharedPreferences sharedPreferences) {
        this.f88587a = sharedPreferences;
    }
}
