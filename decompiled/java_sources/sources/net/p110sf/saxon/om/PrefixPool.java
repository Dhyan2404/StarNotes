package net.p110sf.saxon.om;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes11.dex */
public class PrefixPool {

    /* renamed from: a */
    public String[] f100840a;

    /* renamed from: b */
    public int f100841b;

    /* renamed from: c */
    public Map<String, Integer> f100842c = null;

    public PrefixPool() {
        String[] strArr = new String[8];
        this.f100840a = strArr;
        strArr[0] = "";
        this.f100841b = 1;
    }

    /* renamed from: a */
    public final void m63397a() {
        this.f100842c = new HashMap(this.f100841b);
        for (int i = 0; i < this.f100841b; i++) {
            this.f100842c.put(this.f100840a[i], Integer.valueOf(i));
        }
    }

    public void condense() {
        this.f100840a = (String[]) Arrays.copyOf(this.f100840a, this.f100841b);
        this.f100842c = null;
    }

    public String getPrefix(int i) {
        if (i < this.f100841b) {
            return this.f100840a[i];
        }
        throw new IllegalArgumentException("Unknown prefix code " + i);
    }

    public int obtainPrefixCode(String str) {
        if (str.isEmpty()) {
            return 0;
        }
        if (this.f100842c == null && this.f100841b > 8) {
            m63397a();
        }
        Map<String, Integer> map = this.f100842c;
        if (map != null) {
            int intValue = map.getOrDefault(str, -1).intValue();
            if (intValue != -1) {
                return intValue;
            }
        } else {
            for (int i = 0; i < this.f100841b; i++) {
                if (this.f100840a[i].equals(str)) {
                    return i;
                }
            }
        }
        int i2 = this.f100841b;
        int i3 = i2 + 1;
        this.f100841b = i3;
        String[] strArr = this.f100840a;
        if (i3 >= strArr.length) {
            this.f100840a = (String[]) Arrays.copyOf(strArr, i3 * 2);
        }
        this.f100840a[i2] = str;
        Map<String, Integer> map2 = this.f100842c;
        if (map2 != null) {
            map2.put(str, Integer.valueOf(i2));
        }
        return i2;
    }
}
