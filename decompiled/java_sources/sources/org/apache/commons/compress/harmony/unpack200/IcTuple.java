package org.apache.commons.compress.harmony.unpack200;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;

/* loaded from: classes12.dex */
public class IcTuple {
    public static final int NESTED_CLASS_FLAG = 65536;

    /* renamed from: q */
    public static final String[] f106962q = new String[0];

    /* renamed from: r */
    public static final IcTuple[] f106963r = new IcTuple[0];

    /* renamed from: C */
    protected String f106964C;

    /* renamed from: C2 */
    protected String f106965C2;

    /* renamed from: F */
    protected int f106966F;

    /* renamed from: N */
    protected String f106967N;

    /* renamed from: a */
    public final int f106968a;

    /* renamed from: b */
    public final int f106969b;

    /* renamed from: c */
    public final int f106970c;

    /* renamed from: d */
    public final int f106971d;

    /* renamed from: e */
    public boolean f106972e;

    /* renamed from: f */
    public boolean f106973f;

    /* renamed from: g */
    public String f106974g;

    /* renamed from: h */
    public String f106975h;

    /* renamed from: i */
    public boolean f106976i;

    /* renamed from: j */
    public boolean f106977j;

    /* renamed from: k */
    public boolean f106978k;

    /* renamed from: l */
    public boolean f106979l = true;

    /* renamed from: m */
    public int f106980m = -1;

    /* renamed from: n */
    public int f106981n = -1;

    /* renamed from: o */
    public boolean f106982o;

    /* renamed from: p */
    public int f106983p;

    public IcTuple(String str, int i, String str2, String str3, int i2, int i3, int i4, int i5) {
        this.f106964C = str;
        this.f106966F = i;
        this.f106965C2 = str2;
        this.f106967N = str3;
        this.f106968a = i2;
        this.f106969b = i3;
        this.f106970c = i4;
        this.f106971d = i5;
        if (str3 == null) {
            this.f106972e = true;
        }
        if (str2 == null) {
            this.f106973f = true;
        }
        m67060c();
    }

    /* renamed from: a */
    public final boolean m67058a() {
        String[] innerBreakAtDollar = innerBreakAtDollar(this.f106974g);
        if (innerBreakAtDollar.length == 0) {
            throw new Error("Should have an outer before checking if it's anonymous");
        }
        for (String str : innerBreakAtDollar) {
            if (m67061d(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final void m67059b() {
        this.f106982o = true;
        this.f106983p = 17;
        String str = this.f106964C;
        if (str != null) {
            this.f106983p = str.hashCode();
        }
        String str2 = this.f106965C2;
        if (str2 != null) {
            this.f106983p = str2.hashCode();
        }
        String str3 = this.f106967N;
        if (str3 != null) {
            this.f106983p = str3.hashCode();
        }
    }

    /* renamed from: c */
    public final void m67060c() {
        if (this.f106976i) {
            return;
        }
        this.f106976i = true;
        if (!this.f106972e) {
            this.f106975h = this.f106967N;
        }
        if (!this.f106973f) {
            this.f106974g = this.f106965C2;
        }
        String[] innerBreakAtDollar = innerBreakAtDollar(this.f106964C);
        int length = innerBreakAtDollar.length;
        if (innerBreakAtDollar.length < 2) {
            return;
        }
        int length2 = innerBreakAtDollar.length - 1;
        this.f106975h = innerBreakAtDollar[length2];
        this.f106974g = "";
        int i = 0;
        while (i < length2) {
            this.f106974g += innerBreakAtDollar[i];
            if (m67061d(innerBreakAtDollar[i])) {
                this.f106979l = false;
            }
            i++;
            if (i != length2) {
                this.f106974g += '$';
            }
        }
        if (!this.f106972e) {
            this.f106975h = this.f106967N;
            this.f106981n = this.f106970c;
        }
        if (!this.f106973f) {
            this.f106974g = this.f106965C2;
            this.f106980m = this.f106969b;
        }
        if (m67061d(this.f106975h)) {
            this.f106977j = true;
            this.f106979l = false;
            if (nestedExplicitFlagSet()) {
                this.f106979l = true;
            }
        }
        this.f106978k = m67058a();
    }

    /* renamed from: d */
    public final boolean m67061d(String str) {
        if (str == null) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        IcTuple icTuple = (IcTuple) obj;
        return nullSafeEquals(this.f106964C, icTuple.f106964C) && nullSafeEquals(this.f106965C2, icTuple.f106965C2) && nullSafeEquals(this.f106967N, icTuple.f106967N);
    }

    public String getC() {
        return this.f106964C;
    }

    public String getC2() {
        return this.f106965C2;
    }

    public int getF() {
        return this.f106966F;
    }

    public String getN() {
        return this.f106967N;
    }

    public int getTupleIndex() {
        return this.f106971d;
    }

    public int hashCode() {
        if (!this.f106982o) {
            m67059b();
        }
        return this.f106983p;
    }

    public String[] innerBreakAtDollar(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            if (str.charAt(i) <= '$') {
                arrayList.add(str.substring(i2, i));
                i2 = i + 1;
            }
            i++;
            if (i >= str.length()) {
                arrayList.add(str.substring(i2));
            }
        }
        return (String[]) arrayList.toArray(f106962q);
    }

    public boolean isAnonymous() {
        return this.f106977j;
    }

    public boolean isMember() {
        return this.f106979l;
    }

    public boolean nestedExplicitFlagSet() {
        return (this.f106966F & 65536) == 65536;
    }

    public boolean nullSafeEquals(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    public int outerClassIndex() {
        return this.f106980m;
    }

    public String outerClassString() {
        return this.f106974g;
    }

    public boolean outerIsAnonymous() {
        return this.f106978k;
    }

    public boolean predicted() {
        return this.f106973f || this.f106972e;
    }

    public String simpleClassName() {
        return this.f106975h;
    }

    public int simpleClassNameIndex() {
        return this.f106981n;
    }

    public int thisClassIndex() {
        if (predicted()) {
            return this.f106968a;
        }
        return -1;
    }

    public String thisClassString() {
        if (predicted()) {
            return this.f106964C;
        }
        return this.f106965C2 + "$" + this.f106967N;
    }

    public String toString() {
        return "IcTuple (" + simpleClassName() + CloudStorageConstants.OPERATION_IN + outerClassString() + ')';
    }
}
