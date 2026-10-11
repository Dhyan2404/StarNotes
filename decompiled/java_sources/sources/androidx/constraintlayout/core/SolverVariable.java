package androidx.constraintlayout.core;

import com.couchbase.lite.internal.BaseTLSIdentity;
import java.util.Arrays;
import java.util.HashSet;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class SolverVariable implements Comparable<SolverVariable> {
    public static final int STRENGTH_BARRIER = 6;
    public static final int STRENGTH_CENTERING = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 8;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;

    /* renamed from: p */
    public static final boolean f2632p = false;

    /* renamed from: q */
    public static final boolean f2633q = false;

    /* renamed from: r */
    public static int f2634r = 1;

    /* renamed from: s */
    public static int f2635s = 1;

    /* renamed from: t */
    public static int f2636t = 1;

    /* renamed from: u */
    public static int f2637u = 1;

    /* renamed from: v */
    public static int f2638v = 1;

    /* renamed from: w */
    public static final int f2639w = 9;
    public float computedValue;

    /* renamed from: e */
    public String f2640e;

    /* renamed from: f */
    public int f2641f;

    /* renamed from: g */
    public float[] f2642g;

    /* renamed from: h */
    public float[] f2643h;

    /* renamed from: i */
    public Type f2644i;

    /* renamed from: id */
    public int f2645id;
    public boolean inGoal;
    public boolean isFinalValue;

    /* renamed from: j */
    public ArrayRow[] f2646j;

    /* renamed from: k */
    public int f2647k;

    /* renamed from: l */
    public boolean f2648l;

    /* renamed from: m */
    public int f2649m;

    /* renamed from: n */
    public float f2650n;

    /* renamed from: o */
    public HashSet<ArrayRow> f2651o;
    public int strength;
    public int usageInRowCount;

    /* loaded from: classes3.dex */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    /* renamed from: androidx.constraintlayout.core.SolverVariable$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0388a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2652a;

        static {
            int[] iArr = new int[Type.values().length];
            f2652a = iArr;
            try {
                iArr[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2652a[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2652a[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2652a[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2652a[Type.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public SolverVariable(String str, Type type) {
        this.f2645id = -1;
        this.f2641f = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.f2642g = new float[9];
        this.f2643h = new float[9];
        this.f2646j = new ArrayRow[16];
        this.f2647k = 0;
        this.usageInRowCount = 0;
        this.f2648l = false;
        this.f2649m = -1;
        this.f2650n = 0.0f;
        this.f2651o = null;
        this.f2640e = str;
        this.f2644i = type;
    }

    /* renamed from: b */
    public static String m1403b(Type type, String str) {
        if (str != null) {
            return str + f2635s;
        }
        int i = C0388a.f2652a[type.ordinal()];
        if (i == 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("U");
            int i2 = f2636t + 1;
            f2636t = i2;
            sb.append(i2);
            return sb.toString();
        }
        if (i == 2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY);
            int i3 = f2637u + 1;
            f2637u = i3;
            sb2.append(i3);
            return sb2.toString();
        }
        if (i == 3) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("S");
            int i4 = f2634r + 1;
            f2634r = i4;
            sb3.append(i4);
            return sb3.toString();
        }
        if (i == 4) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("e");
            int i5 = f2635s + 1;
            f2635s = i5;
            sb4.append(i5);
            return sb4.toString();
        }
        if (i != 5) {
            throw new AssertionError(type.name());
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("V");
        int i6 = f2638v + 1;
        f2638v = i6;
        sb5.append(i6);
        return sb5.toString();
    }

    /* renamed from: c */
    public static void m1404c() {
        f2635s++;
    }

    /* renamed from: a */
    public void m1405a() {
        for (int i = 0; i < 9; i++) {
            this.f2642g[i] = 0.0f;
        }
    }

    public final void addToRow(ArrayRow arrayRow) {
        int i = 0;
        while (true) {
            int i2 = this.f2647k;
            if (i >= i2) {
                ArrayRow[] arrayRowArr = this.f2646j;
                if (i2 >= arrayRowArr.length) {
                    this.f2646j = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.f2646j;
                int i3 = this.f2647k;
                arrayRowArr2[i3] = arrayRow;
                this.f2647k = i3 + 1;
                return;
            }
            if (this.f2646j[i] == arrayRow) {
                return;
            } else {
                i++;
            }
        }
    }

    /* renamed from: d */
    public String m1406d() {
        String str = this + IteratorUtils.f104923a;
        boolean z = false;
        boolean z2 = true;
        for (int i = 0; i < this.f2642g.length; i++) {
            String str2 = str + this.f2642g[i];
            float[] fArr = this.f2642g;
            float f = fArr[i];
            if (f > 0.0f) {
                z = false;
            } else if (f < 0.0f) {
                z = true;
            }
            if (f != 0.0f) {
                z2 = false;
            }
            str = i < fArr.length - 1 ? str2 + ", " : str2 + "] ";
        }
        if (z) {
            str = str + " (-)";
        }
        if (!z2) {
            return str;
        }
        return str + " (*)";
    }

    public String getName() {
        return this.f2640e;
    }

    public final void removeFromRow(ArrayRow arrayRow) {
        int i = this.f2647k;
        int i2 = 0;
        while (i2 < i) {
            if (this.f2646j[i2] == arrayRow) {
                while (i2 < i - 1) {
                    ArrayRow[] arrayRowArr = this.f2646j;
                    int i3 = i2 + 1;
                    arrayRowArr[i2] = arrayRowArr[i3];
                    i2 = i3;
                }
                this.f2647k--;
                return;
            }
            i2++;
        }
    }

    public void reset() {
        this.f2640e = null;
        this.f2644i = Type.UNKNOWN;
        this.strength = 0;
        this.f2645id = -1;
        this.f2641f = -1;
        this.computedValue = 0.0f;
        this.isFinalValue = false;
        this.f2648l = false;
        this.f2649m = -1;
        this.f2650n = 0.0f;
        int i = this.f2647k;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2646j[i2] = null;
        }
        this.f2647k = 0;
        this.usageInRowCount = 0;
        this.inGoal = false;
        Arrays.fill(this.f2643h, 0.0f);
    }

    public void setFinalValue(LinearSystem linearSystem, float f) {
        this.computedValue = f;
        this.isFinalValue = true;
        this.f2648l = false;
        this.f2649m = -1;
        this.f2650n = 0.0f;
        int i = this.f2647k;
        this.f2641f = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2646j[i2].updateFromFinalVariable(linearSystem, this, false);
        }
        this.f2647k = 0;
    }

    public void setName(String str) {
        this.f2640e = str;
    }

    public void setSynonym(LinearSystem linearSystem, SolverVariable solverVariable, float f) {
        this.f2648l = true;
        this.f2649m = solverVariable.f2645id;
        this.f2650n = f;
        int i = this.f2647k;
        this.f2641f = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2646j[i2].updateFromSynonymVariable(linearSystem, this, false);
        }
        this.f2647k = 0;
        linearSystem.displayReadableRows();
    }

    public void setType(Type type, String str) {
        this.f2644i = type;
    }

    public String toString() {
        if (this.f2640e != null) {
            return "" + this.f2640e;
        }
        return "" + this.f2645id;
    }

    public final void updateReferencesWithNewDefinition(LinearSystem linearSystem, ArrayRow arrayRow) {
        int i = this.f2647k;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2646j[i2].updateFromRow(linearSystem, arrayRow, false);
        }
        this.f2647k = 0;
    }

    @Override // java.lang.Comparable
    public int compareTo(SolverVariable solverVariable) {
        return this.f2645id - solverVariable.f2645id;
    }

    public SolverVariable(Type type, String str) {
        this.f2645id = -1;
        this.f2641f = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.f2642g = new float[9];
        this.f2643h = new float[9];
        this.f2646j = new ArrayRow[16];
        this.f2647k = 0;
        this.usageInRowCount = 0;
        this.f2648l = false;
        this.f2649m = -1;
        this.f2650n = 0.0f;
        this.f2651o = null;
        this.f2644i = type;
    }
}
