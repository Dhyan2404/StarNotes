package javax.imageio.plugins.jpeg;

import java.util.Arrays;

/* loaded from: classes5.dex */
public class JPEGQTable {
    public static final JPEGQTable K1Div2Luminance;
    public static final JPEGQTable K1Luminance;
    public static final JPEGQTable K2Chrominance;
    public static final JPEGQTable K2Div2Chrominance;

    /* renamed from: b */
    public static final int[] f97917b;

    /* renamed from: c */
    public static final int[] f97918c;

    /* renamed from: d */
    public static final int[] f97919d;

    /* renamed from: e */
    public static final int[] f97920e;

    /* renamed from: a */
    public int[] f97921a;

    static {
        int[] iArr = {16, 11, 10, 16, 24, 40, 51, 61, 12, 12, 14, 19, 26, 58, 60, 55, 14, 13, 16, 24, 40, 57, 69, 56, 14, 17, 22, 29, 51, 87, 80, 62, 18, 22, 37, 56, 68, 109, 103, 77, 24, 35, 55, 64, 81, 104, 113, 92, 49, 64, 78, 87, 103, 121, 120, 101, 72, 92, 95, 98, 112, 100, 103, 99};
        f97917b = iArr;
        int[] iArr2 = {8, 6, 5, 8, 12, 20, 26, 31, 6, 6, 7, 10, 13, 29, 30, 28, 7, 7, 8, 12, 20, 29, 35, 28, 7, 9, 11, 15, 26, 44, 40, 31, 9, 11, 19, 28, 34, 55, 52, 39, 12, 18, 28, 32, 41, 52, 57, 46, 25, 32, 39, 44, 52, 61, 60, 51, 36, 46, 48, 49, 56, 50, 52, 50};
        f97918c = iArr2;
        int[] iArr3 = {17, 18, 24, 47, 99, 99, 99, 99, 18, 21, 26, 66, 99, 99, 99, 99, 24, 26, 56, 99, 99, 99, 99, 99, 47, 66, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99};
        f97919d = iArr3;
        int[] iArr4 = {9, 9, 12, 24, 50, 50, 50, 50, 9, 11, 13, 33, 50, 50, 50, 50, 12, 13, 28, 50, 50, 50, 50, 50, 24, 33, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50};
        f97920e = iArr4;
        K1Luminance = new JPEGQTable(iArr, false);
        K1Div2Luminance = new JPEGQTable(iArr2, false);
        K2Chrominance = new JPEGQTable(iArr3, false);
        K2Div2Chrominance = new JPEGQTable(iArr4, false);
    }

    public JPEGQTable(int[] iArr, boolean z) {
        this.f97921a = z ? Arrays.copyOf(iArr, iArr.length) : iArr;
    }

    public JPEGQTable getScaledInstance(float f, boolean z) {
        int i = z ? 255 : 32767;
        int[] iArr = new int[this.f97921a.length];
        int i2 = 0;
        while (true) {
            if (i2 >= this.f97921a.length) {
                return new JPEGQTable(iArr);
            }
            int i3 = (int) ((r2[i2] * f) + 0.5f);
            if (i3 < 1) {
                i3 = 1;
            }
            if (i3 > i) {
                i3 = i;
            }
            iArr[i2] = i3;
            i2++;
        }
    }

    public int[] getTable() {
        int[] iArr = this.f97921a;
        return Arrays.copyOf(iArr, iArr.length);
    }

    public String toString() {
        String property = System.getProperty("line.separator", "\n");
        StringBuilder sb = new StringBuilder("JPEGQTable:" + property);
        for (int i = 0; i < this.f97921a.length; i++) {
            int i2 = i % 8;
            if (i2 == 0) {
                sb.append('\t');
            }
            sb.append(this.f97921a[i]);
            sb.append(i2 == 7 ? property : ' ');
        }
        return sb.toString();
    }

    public JPEGQTable(int[] iArr) {
        if (iArr != null) {
            if (iArr.length == 64) {
                this.f97921a = Arrays.copyOf(iArr, iArr.length);
                return;
            }
            throw new IllegalArgumentException("table.length != 64");
        }
        throw new IllegalArgumentException("table must not be null.");
    }
}
