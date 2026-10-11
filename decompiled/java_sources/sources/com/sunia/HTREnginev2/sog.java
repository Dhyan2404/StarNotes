package com.sunia.HTREnginev2;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;

/* loaded from: classes12.dex */
public class sog {

    /* renamed from: j */
    public static final sog[] f84390j = new sog[0];

    /* renamed from: a */
    public rwd[] f84391a;

    /* renamed from: b */
    public long f84392b;

    /* renamed from: c */
    public long f84393c;

    /* renamed from: d */
    public C13535br[] f84394d;

    /* renamed from: e */
    public long[] f84395e;

    /* renamed from: f */
    public long[] f84396f;

    /* renamed from: g */
    public boolean f84397g;

    /* renamed from: h */
    public long f84398h;

    /* renamed from: i */
    public int f84399i;

    /* renamed from: a */
    public int m57209a(int i) {
        if (this.f84394d == null) {
            return -1;
        }
        int i2 = 0;
        while (true) {
            C13535br[] c13535brArr = this.f84394d;
            if (i2 >= c13535brArr.length) {
                return -1;
            }
            if (c13535brArr[i2].f66042a == i) {
                return i2;
            }
            i2++;
        }
    }

    /* renamed from: b */
    public int m57210b(int i) {
        if (this.f84394d == null) {
            return -1;
        }
        int i2 = 0;
        while (true) {
            C13535br[] c13535brArr = this.f84394d;
            if (i2 >= c13535brArr.length) {
                return -1;
            }
            if (c13535brArr[i2].f66043b == i) {
                return i2;
            }
            i2++;
        }
    }

    /* renamed from: c */
    public Iterable<rwd> m57211c() throws IOException {
        rwd[] rwdVarArr;
        int m57210b;
        long[] jArr = this.f84395e;
        if (jArr == null || (rwdVarArr = this.f84391a) == null || jArr.length == 0 || rwdVarArr.length == 0) {
            return Collections.emptyList();
        }
        LinkedList linkedList = new LinkedList();
        long j = this.f84395e[0];
        loop0: while (true) {
            for (int i = (int) j; i >= 0; i = -1) {
                rwd[] rwdVarArr2 = this.f84391a;
                if (i >= rwdVarArr2.length) {
                    break loop0;
                }
                if (linkedList.contains(rwdVarArr2[i])) {
                    throw new IOException("folder uses the same coder more than once in coder chain");
                }
                linkedList.addLast(this.f84391a[i]);
                m57210b = m57210b(i);
                if (m57210b != -1) {
                    break;
                }
            }
            j = this.f84394d[m57210b].f66042a;
        }
        return linkedList;
    }

    /* renamed from: d */
    public long m57212d() {
        long j = this.f84393c;
        if (j == 0) {
            return 0L;
        }
        for (int i = ((int) j) - 1; i >= 0; i--) {
            if (m57210b(i) < 0) {
                return this.f84396f[i];
            }
        }
        return 0L;
    }

    /* renamed from: e */
    public long m57213e(rwd rwdVar) {
        if (this.f84391a == null) {
            return 0L;
        }
        int i = 0;
        while (true) {
            rwd[] rwdVarArr = this.f84391a;
            if (i >= rwdVarArr.length) {
                return 0L;
            }
            if (rwdVarArr[i] == rwdVar) {
                return this.f84396f[i];
            }
            i++;
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Folder with ");
        sb.append(this.f84391a.length);
        sb.append(" coders, ");
        sb.append(this.f84392b);
        sb.append(" input streams, ");
        sb.append(this.f84393c);
        sb.append(" output streams, ");
        sb.append(this.f84394d.length);
        sb.append(" bind pairs, ");
        sb.append(this.f84395e.length);
        sb.append(" packed streams, ");
        sb.append(this.f84396f.length);
        sb.append(" unpack sizes, ");
        if (this.f84397g) {
            str = "with CRC " + this.f84398h;
        } else {
            str = "without CRC";
        }
        sb.append(str);
        sb.append(CloudStorageConstants.OPERATION_AND);
        sb.append(this.f84399i);
        sb.append(" unpack streams");
        return sb.toString();
    }
}
