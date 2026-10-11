package com.sunia.HTREnginev2;

import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.LocaleListCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;

/* loaded from: classes3.dex */
public final class k1j implements l1j {

    /* renamed from: c */
    public static final Locale[] f74914c = new Locale[0];

    /* renamed from: d */
    public static final Locale f74915d = new Locale("en", "XA");

    /* renamed from: e */
    public static final Locale f74916e = new Locale(ArchiveStreamFactory.f105352AR, "XB");

    /* renamed from: f */
    public static final Locale f74917f = LocaleListCompat.m3118a("en-Latn");

    /* renamed from: a */
    public final Locale[] f74918a;

    /* renamed from: b */
    @NonNull
    public final String f74919b;

    @RequiresApi(21)
    /* renamed from: com.sunia.HTREnginev2.k1j$a */
    /* loaded from: classes3.dex */
    public static class C13964a {
        @DoNotInline
        /* renamed from: a */
        public static String m55113a(Locale locale) {
            return locale.getScript();
        }
    }

    public k1j(@NonNull Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f74918a = f74914c;
            this.f74919b = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException("list[" + i + "] is null");
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                m55105k(sb, locale2);
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f74918a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f74919b = sb.toString();
    }

    /* renamed from: h */
    public static String m55102h(Locale locale) {
        String m55113a = C13964a.m55113a(locale);
        return !m55113a.isEmpty() ? m55113a : "";
    }

    /* renamed from: i */
    public static boolean m55103i(Locale locale) {
        return f74915d.equals(locale) || f74916e.equals(locale);
    }

    @IntRange(from = 0, m281to = 1)
    /* renamed from: j */
    public static int m55104j(Locale locale, Locale locale2) {
        if (locale.equals(locale2)) {
            return 1;
        }
        if (!locale.getLanguage().equals(locale2.getLanguage()) || m55103i(locale) || m55103i(locale2)) {
            return 0;
        }
        String m55102h = m55102h(locale);
        if (!m55102h.isEmpty()) {
            return m55102h.equals(m55102h(locale2)) ? 1 : 0;
        }
        String country = locale.getCountry();
        return (country.isEmpty() || country.equals(locale2.getCountry())) ? 1 : 0;
    }

    @VisibleForTesting
    /* renamed from: k */
    public static void m55105k(StringBuilder sb, Locale locale) {
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country == null || country.isEmpty()) {
            return;
        }
        sb.append('-');
        sb.append(locale.getCountry());
    }

    @Override // com.sunia.HTREnginev2.l1j
    @Nullable
    /* renamed from: a */
    public Object mo55106a() {
        return null;
    }

    @Override // com.sunia.HTREnginev2.l1j
    /* renamed from: b */
    public Locale mo55107b(@NonNull String[] strArr) {
        return m55110e(Arrays.asList(strArr), false);
    }

    @Override // com.sunia.HTREnginev2.l1j
    /* renamed from: c */
    public int mo55108c(Locale locale) {
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f74918a;
            if (i >= localeArr.length) {
                return -1;
            }
            if (localeArr[i].equals(locale)) {
                return i;
            }
            i++;
        }
    }

    @Override // com.sunia.HTREnginev2.l1j
    /* renamed from: d */
    public String mo55109d() {
        return this.f74919b;
    }

    /* renamed from: e */
    public final Locale m55110e(Collection<String> collection, boolean z) {
        int m55111f = m55111f(collection, z);
        if (m55111f == -1) {
            return null;
        }
        return this.f74918a[m55111f];
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k1j)) {
            return false;
        }
        Locale[] localeArr = ((k1j) obj).f74918a;
        if (this.f74918a.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.f74918a;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
    
        if (r6 < Integer.MAX_VALUE) goto L17;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m55111f(java.util.Collection<java.lang.String> r5, boolean r6) {
        /*
            r4 = this;
            java.util.Locale[] r0 = r4.f74918a
            int r1 = r0.length
            r2 = 1
            r3 = 0
            if (r1 != r2) goto L8
            return r3
        L8:
            int r0 = r0.length
            if (r0 != 0) goto Ld
            r4 = -1
            return r4
        Ld:
            r0 = 2147483647(0x7fffffff, float:NaN)
            if (r6 == 0) goto L1e
            java.util.Locale r6 = com.sunia.HTREnginev2.k1j.f74917f
            int r6 = r4.m55112g(r6)
            if (r6 != 0) goto L1b
            return r3
        L1b:
            if (r6 >= r0) goto L1e
            goto L1f
        L1e:
            r6 = r0
        L1f:
            java.util.Iterator r5 = r5.iterator()
        L23:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L3e
            java.lang.Object r1 = r5.next()
            java.lang.String r1 = (java.lang.String) r1
            java.util.Locale r1 = androidx.core.os.LocaleListCompat.m3118a(r1)
            int r1 = r4.m55112g(r1)
            if (r1 != 0) goto L3a
            return r3
        L3a:
            if (r1 >= r6) goto L23
            r6 = r1
            goto L23
        L3e:
            if (r6 != r0) goto L41
            return r3
        L41:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.k1j.m55111f(java.util.Collection, boolean):int");
    }

    /* renamed from: g */
    public final int m55112g(Locale locale) {
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f74918a;
            if (i >= localeArr.length) {
                return Integer.MAX_VALUE;
            }
            if (m55104j(locale, localeArr[i]) > 0) {
                return i;
            }
            i++;
        }
    }

    @Override // com.sunia.HTREnginev2.l1j
    public Locale get(int i) {
        if (i >= 0) {
            Locale[] localeArr = this.f74918a;
            if (i < localeArr.length) {
                return localeArr[i];
            }
        }
        return null;
    }

    public int hashCode() {
        int i = 1;
        for (Locale locale : this.f74918a) {
            i = (i * 31) + locale.hashCode();
        }
        return i;
    }

    @Override // com.sunia.HTREnginev2.l1j
    public boolean isEmpty() {
        return this.f74918a.length == 0;
    }

    @Override // com.sunia.HTREnginev2.l1j
    public int size() {
        return this.f74918a.length;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(IteratorUtils.f104923a);
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f74918a;
            if (i >= localeArr.length) {
                sb.append(IteratorUtils.f104924b);
                return sb.toString();
            }
            sb.append(localeArr[i]);
            if (i < this.f74918a.length - 1) {
                sb.append(',');
            }
            i++;
        }
    }
}
