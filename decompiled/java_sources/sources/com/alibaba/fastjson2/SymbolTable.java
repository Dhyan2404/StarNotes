package com.alibaba.fastjson2;

import com.alibaba.fastjson2.util.Fnv;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeSet;

/* loaded from: classes3.dex */
public final class SymbolTable {

    /* renamed from: a */
    public final String[] f12348a;

    /* renamed from: b */
    public final long f12349b;

    /* renamed from: c */
    public final short[] f12350c;

    /* renamed from: d */
    public final long[] f12351d;

    /* renamed from: e */
    public final long[] f12352e;

    public SymbolTable(String... strArr) {
        String[] strArr2;
        TreeSet treeSet = new TreeSet();
        for (String str : strArr) {
            treeSet.add(str);
        }
        this.f12348a = new String[treeSet.size()];
        Iterator it2 = treeSet.iterator();
        int i = 0;
        while (true) {
            strArr2 = this.f12348a;
            if (i >= strArr2.length) {
                break;
            }
            if (it2.hasNext()) {
                this.f12348a[i] = (String) it2.next();
            }
            i++;
        }
        int length = strArr2.length;
        long[] jArr = new long[length];
        int i2 = 0;
        while (true) {
            String[] strArr3 = this.f12348a;
            if (i2 >= strArr3.length) {
                break;
            }
            jArr[i2] = Fnv.hashCode64(strArr3[i2]);
            i2++;
        }
        this.f12352e = jArr;
        long[] copyOf = Arrays.copyOf(jArr, length);
        this.f12351d = copyOf;
        Arrays.sort(copyOf);
        this.f12350c = new short[copyOf.length];
        for (int i3 = 0; i3 < length; i3++) {
            this.f12350c[Arrays.binarySearch(this.f12351d, jArr[i3])] = (short) i3;
        }
        long j = Fnv.MAGIC_HASH_CODE;
        for (int i4 = 0; i4 < length; i4++) {
            j = (j ^ jArr[i4]) * Fnv.MAGIC_PRIME;
        }
        this.f12349b = j;
    }

    public long getHashCode(int i) {
        return this.f12352e[i - 1];
    }

    public String getName(int i) {
        return this.f12348a[i - 1];
    }

    public String getNameByHashCode(long j) {
        int binarySearch = Arrays.binarySearch(this.f12351d, j);
        if (binarySearch < 0) {
            return null;
        }
        return this.f12348a[this.f12350c[binarySearch]];
    }

    public int getOrdinal(String str) {
        int binarySearch = Arrays.binarySearch(this.f12351d, Fnv.hashCode64(str));
        if (binarySearch < 0) {
            return -1;
        }
        return this.f12350c[binarySearch] + 1;
    }

    public int getOrdinalByHashCode(long j) {
        int binarySearch = Arrays.binarySearch(this.f12351d, j);
        if (binarySearch < 0) {
            return -1;
        }
        return this.f12350c[binarySearch] + 1;
    }

    public long hashCode64() {
        return this.f12349b;
    }

    public int size() {
        return this.f12348a.length;
    }
}
