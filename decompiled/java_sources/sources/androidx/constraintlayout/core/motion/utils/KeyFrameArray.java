package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import java.io.PrintStream;
import java.util.Arrays;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class KeyFrameArray {

    /* loaded from: classes3.dex */
    public static class CustomArray {

        /* renamed from: d */
        public static final int f2966d = 999;

        /* renamed from: a */
        public int[] f2967a = new int[101];

        /* renamed from: b */
        public CustomAttribute[] f2968b = new CustomAttribute[101];

        /* renamed from: c */
        public int f2969c;

        public CustomArray() {
            clear();
        }

        public void append(int i, CustomAttribute customAttribute) {
            if (this.f2968b[i] != null) {
                remove(i);
            }
            this.f2968b[i] = customAttribute;
            int[] iArr = this.f2967a;
            int i2 = this.f2969c;
            this.f2969c = i2 + 1;
            iArr[i2] = i;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.f2967a, 999);
            Arrays.fill(this.f2968b, (Object) null);
            this.f2969c = 0;
        }

        public void dump() {
            System.out.println("V: " + Arrays.toString(Arrays.copyOf(this.f2967a, this.f2969c)));
            System.out.print("K: [");
            int i = 0;
            while (i < this.f2969c) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(i == 0 ? "" : ", ");
                sb.append(valueAt(i));
                printStream.print(sb.toString());
                i++;
            }
            System.out.println(IteratorUtils.f104924b);
        }

        public int keyAt(int i) {
            return this.f2967a[i];
        }

        public void remove(int i) {
            this.f2968b[i] = null;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = this.f2969c;
                if (i2 >= i4) {
                    this.f2969c = i4 - 1;
                    return;
                }
                int[] iArr = this.f2967a;
                if (i == iArr[i2]) {
                    iArr[i2] = 999;
                    i3++;
                }
                if (i2 != i3) {
                    iArr[i2] = iArr[i3];
                }
                i3++;
                i2++;
            }
        }

        public int size() {
            return this.f2969c;
        }

        public CustomAttribute valueAt(int i) {
            return this.f2968b[this.f2967a[i]];
        }
    }

    /* loaded from: classes3.dex */
    public static class CustomVar {

        /* renamed from: d */
        public static final int f2970d = 999;

        /* renamed from: a */
        public int[] f2971a = new int[101];

        /* renamed from: b */
        public CustomVariable[] f2972b = new CustomVariable[101];

        /* renamed from: c */
        public int f2973c;

        public CustomVar() {
            clear();
        }

        public void append(int i, CustomVariable customVariable) {
            if (this.f2972b[i] != null) {
                remove(i);
            }
            this.f2972b[i] = customVariable;
            int[] iArr = this.f2971a;
            int i2 = this.f2973c;
            this.f2973c = i2 + 1;
            iArr[i2] = i;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.f2971a, 999);
            Arrays.fill(this.f2972b, (Object) null);
            this.f2973c = 0;
        }

        public void dump() {
            System.out.println("V: " + Arrays.toString(Arrays.copyOf(this.f2971a, this.f2973c)));
            System.out.print("K: [");
            int i = 0;
            while (i < this.f2973c) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(i == 0 ? "" : ", ");
                sb.append(valueAt(i));
                printStream.print(sb.toString());
                i++;
            }
            System.out.println(IteratorUtils.f104924b);
        }

        public int keyAt(int i) {
            return this.f2971a[i];
        }

        public void remove(int i) {
            this.f2972b[i] = null;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = this.f2973c;
                if (i2 >= i4) {
                    this.f2973c = i4 - 1;
                    return;
                }
                int[] iArr = this.f2971a;
                if (i == iArr[i2]) {
                    iArr[i2] = 999;
                    i3++;
                }
                if (i2 != i3) {
                    iArr[i2] = iArr[i3];
                }
                i3++;
                i2++;
            }
        }

        public int size() {
            return this.f2973c;
        }

        public CustomVariable valueAt(int i) {
            return this.f2972b[this.f2971a[i]];
        }
    }

    /* renamed from: androidx.constraintlayout.core.motion.utils.KeyFrameArray$a */
    /* loaded from: classes3.dex */
    public static class C0403a {

        /* renamed from: d */
        public static final int f2974d = 999;

        /* renamed from: a */
        public int[] f2975a = new int[101];

        /* renamed from: b */
        public float[][] f2976b = new float[101];

        /* renamed from: c */
        public int f2977c;

        public C0403a() {
            m1504b();
        }

        /* renamed from: a */
        public void m1503a(int i, float[] fArr) {
            if (this.f2976b[i] != null) {
                m1507e(i);
            }
            this.f2976b[i] = fArr;
            int[] iArr = this.f2975a;
            int i2 = this.f2977c;
            this.f2977c = i2 + 1;
            iArr[i2] = i;
            Arrays.sort(iArr);
        }

        /* renamed from: b */
        public void m1504b() {
            Arrays.fill(this.f2975a, 999);
            Arrays.fill(this.f2976b, (Object) null);
            this.f2977c = 0;
        }

        /* renamed from: c */
        public void m1505c() {
            System.out.println("V: " + Arrays.toString(Arrays.copyOf(this.f2975a, this.f2977c)));
            System.out.print("K: [");
            int i = 0;
            while (i < this.f2977c) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(i == 0 ? "" : ", ");
                sb.append(Arrays.toString(m1509g(i)));
                printStream.print(sb.toString());
                i++;
            }
            System.out.println(IteratorUtils.f104924b);
        }

        /* renamed from: d */
        public int m1506d(int i) {
            return this.f2975a[i];
        }

        /* renamed from: e */
        public void m1507e(int i) {
            this.f2976b[i] = null;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = this.f2977c;
                if (i2 >= i4) {
                    this.f2977c = i4 - 1;
                    return;
                }
                int[] iArr = this.f2975a;
                if (i == iArr[i2]) {
                    iArr[i2] = 999;
                    i3++;
                }
                if (i2 != i3) {
                    iArr[i2] = iArr[i3];
                }
                i3++;
                i2++;
            }
        }

        /* renamed from: f */
        public int m1508f() {
            return this.f2977c;
        }

        /* renamed from: g */
        public float[] m1509g(int i) {
            return this.f2976b[this.f2975a[i]];
        }
    }
}
