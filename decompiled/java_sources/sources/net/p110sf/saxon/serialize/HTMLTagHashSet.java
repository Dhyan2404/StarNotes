package net.p110sf.saxon.serialize;

/* loaded from: classes11.dex */
public class HTMLTagHashSet {

    /* renamed from: a */
    public String[] f101541a;

    /* renamed from: b */
    public int f101542b;

    public HTMLTagHashSet(int i) {
        this.f101541a = new String[i];
        this.f101542b = i;
    }

    /* renamed from: a */
    public final int m63825a(String str) {
        int length = str.length();
        if (length > 24) {
            length = 24;
        }
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i << 1) + (str.charAt(i2) & 223);
        }
        return i;
    }

    public void add(String str) {
        int m63825a = m63825a(str) & Integer.MAX_VALUE;
        int i = this.f101542b;
        while (true) {
            int i2 = m63825a % i;
            String[] strArr = this.f101541a;
            String str2 = strArr[i2];
            if (str2 == null) {
                strArr[i2] = str;
                return;
            } else {
                if (str2.equalsIgnoreCase(str)) {
                    return;
                }
                m63825a = i2 + 1;
                i = this.f101542b;
            }
        }
    }

    public boolean contains(String str) {
        int m63825a = m63825a(str) & Integer.MAX_VALUE;
        int i = this.f101542b;
        while (true) {
            int i2 = m63825a % i;
            String str2 = this.f101541a[i2];
            if (str2 == null) {
                return false;
            }
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
            m63825a = i2 + 1;
            i = this.f101542b;
        }
    }
}
