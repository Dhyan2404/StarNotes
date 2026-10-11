package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Arrays;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {

    /* renamed from: m */
    public static final boolean f2653m = false;

    /* renamed from: n */
    public static final boolean f2654n = true;

    /* renamed from: o */
    public static float f2655o = 0.001f;

    /* renamed from: a */
    public final int f2656a = -1;

    /* renamed from: b */
    public int f2657b = 16;

    /* renamed from: c */
    public int f2658c = 16;

    /* renamed from: d */
    public int[] f2659d = new int[16];

    /* renamed from: e */
    public int[] f2660e = new int[16];

    /* renamed from: f */
    public int[] f2661f = new int[16];

    /* renamed from: g */
    public float[] f2662g = new float[16];

    /* renamed from: h */
    public int[] f2663h = new int[16];

    /* renamed from: i */
    public int[] f2664i = new int[16];

    /* renamed from: j */
    public int f2665j = 0;

    /* renamed from: k */
    public int f2666k = -1;

    /* renamed from: l */
    public final ArrayRow f2667l;
    protected final Cache mCache;

    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.f2667l = arrayRow;
        this.mCache = cache;
        clear();
    }

    /* renamed from: a */
    public final void m1407a(SolverVariable solverVariable, int i) {
        int[] iArr;
        int i2 = solverVariable.f2645id % this.f2658c;
        int[] iArr2 = this.f2659d;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.f2660e;
                int i4 = iArr[i3];
                if (i4 == -1) {
                    break;
                } else {
                    i3 = i4;
                }
            }
            iArr[i3] = i;
        }
        this.f2660e[i] = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f, boolean z) {
        float f2 = f2655o;
        if (f <= (-f2) || f >= f2) {
            int indexOf = indexOf(solverVariable);
            if (indexOf == -1) {
                put(solverVariable, f);
                return;
            }
            float[] fArr = this.f2662g;
            float f3 = fArr[indexOf] + f;
            fArr[indexOf] = f3;
            float f4 = f2655o;
            if (f3 <= (-f4) || f3 >= f4) {
                return;
            }
            fArr[indexOf] = 0.0f;
            remove(solverVariable, z);
        }
    }

    /* renamed from: b */
    public final void m1408b(int i, SolverVariable solverVariable, float f) {
        this.f2661f[i] = solverVariable.f2645id;
        this.f2662g[i] = f;
        this.f2663h[i] = -1;
        this.f2664i[i] = -1;
        solverVariable.addToRow(this.f2667l);
        solverVariable.usageInRowCount++;
        this.f2665j++;
    }

    /* renamed from: c */
    public final void m1409c() {
        for (int i = 0; i < this.f2658c; i++) {
            if (this.f2659d[i] != -1) {
                String str = hashCode() + " hash [" + i + "] => ";
                int i2 = this.f2659d[i];
                boolean z = false;
                while (!z) {
                    str = str + " " + this.f2661f[i2];
                    int i3 = this.f2660e[i2];
                    if (i3 != -1) {
                        i2 = i3;
                    } else {
                        z = true;
                    }
                }
                System.out.println(str);
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void clear() {
        int i = this.f2665j;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                variable.removeFromRow(this.f2667l);
            }
        }
        for (int i3 = 0; i3 < this.f2657b; i3++) {
            this.f2661f[i3] = -1;
            this.f2660e[i3] = -1;
        }
        for (int i4 = 0; i4 < this.f2658c; i4++) {
            this.f2659d[i4] = -1;
        }
        this.f2665j = 0;
        this.f2666k = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        return indexOf(solverVariable) != -1;
    }

    /* renamed from: d */
    public final int m1410d() {
        for (int i = 0; i < this.f2657b; i++) {
            if (this.f2661f[i] == -1) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int i = this.f2665j;
        System.out.print("{ ");
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                System.out.print(variable + CloudStorageConstants.OPERATION_EQUAL + getVariableValue(i2) + " ");
            }
        }
        System.out.println(" }");
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f) {
        int i = this.f2665j;
        int i2 = this.f2666k;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f2662g;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f2664i[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    /* renamed from: e */
    public final void m1411e() {
        int i = this.f2657b * 2;
        this.f2661f = Arrays.copyOf(this.f2661f, i);
        this.f2662g = Arrays.copyOf(this.f2662g, i);
        this.f2663h = Arrays.copyOf(this.f2663h, i);
        this.f2664i = Arrays.copyOf(this.f2664i, i);
        this.f2660e = Arrays.copyOf(this.f2660e, i);
        for (int i2 = this.f2657b; i2 < i; i2++) {
            this.f2661f[i2] = -1;
            this.f2660e[i2] = -1;
        }
        this.f2657b = i;
    }

    /* renamed from: f */
    public final void m1412f(int i, SolverVariable solverVariable, float f) {
        int m1410d = m1410d();
        m1408b(m1410d, solverVariable, f);
        if (i != -1) {
            this.f2663h[m1410d] = i;
            int[] iArr = this.f2664i;
            iArr[m1410d] = iArr[i];
            iArr[i] = m1410d;
        } else {
            this.f2663h[m1410d] = -1;
            if (this.f2665j > 0) {
                this.f2664i[m1410d] = this.f2666k;
                this.f2666k = m1410d;
            } else {
                this.f2664i[m1410d] = -1;
            }
        }
        int i2 = this.f2664i[m1410d];
        if (i2 != -1) {
            this.f2663h[i2] = m1410d;
        }
        m1407a(solverVariable, m1410d);
    }

    /* renamed from: g */
    public final void m1413g(SolverVariable solverVariable) {
        int[] iArr;
        int i;
        int i2 = solverVariable.f2645id;
        int i3 = i2 % this.f2658c;
        int[] iArr2 = this.f2659d;
        int i4 = iArr2[i3];
        if (i4 == -1) {
            return;
        }
        if (this.f2661f[i4] == i2) {
            int[] iArr3 = this.f2660e;
            iArr2[i3] = iArr3[i4];
            iArr3[i4] = -1;
            return;
        }
        while (true) {
            iArr = this.f2660e;
            i = iArr[i4];
            if (i == -1 || this.f2661f[i] == i2) {
                break;
            } else {
                i4 = i;
            }
        }
        if (i == -1 || this.f2661f[i] != i2) {
            return;
        }
        iArr[i4] = iArr[i];
        iArr[i] = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float get(SolverVariable solverVariable) {
        int indexOf = indexOf(solverVariable);
        if (indexOf != -1) {
            return this.f2662g[indexOf];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.f2665j;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i) {
        int i2 = this.f2665j;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.f2666k;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.mCache.f2601d[this.f2661f[i3]];
            }
            i3 = this.f2664i[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i) {
        int i2 = this.f2665j;
        int i3 = this.f2666k;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.f2662g[i3];
            }
            i3 = this.f2664i[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        if (this.f2665j != 0 && solverVariable != null) {
            int i = solverVariable.f2645id;
            int i2 = this.f2659d[i % this.f2658c];
            if (i2 == -1) {
                return -1;
            }
            if (this.f2661f[i2] == i) {
                return i2;
            }
            do {
                i2 = this.f2660e[i2];
                if (i2 == -1) {
                    break;
                }
            } while (this.f2661f[i2] != i);
            if (i2 != -1 && this.f2661f[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int i = this.f2665j;
        int i2 = this.f2666k;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f2662g;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f2664i[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void put(SolverVariable solverVariable, float f) {
        float f2 = f2655o;
        if (f > (-f2) && f < f2) {
            remove(solverVariable, true);
            return;
        }
        if (this.f2665j == 0) {
            m1408b(0, solverVariable, f);
            m1407a(solverVariable, 0);
            this.f2666k = 0;
            return;
        }
        int indexOf = indexOf(solverVariable);
        if (indexOf != -1) {
            this.f2662g[indexOf] = f;
            return;
        }
        if (this.f2665j + 1 >= this.f2657b) {
            m1411e();
        }
        int i = this.f2665j;
        int i2 = this.f2666k;
        int i3 = -1;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = this.f2661f[i2];
            int i6 = solverVariable.f2645id;
            if (i5 == i6) {
                this.f2662g[i2] = f;
                return;
            }
            if (i5 < i6) {
                i3 = i2;
            }
            i2 = this.f2664i[i2];
            if (i2 == -1) {
                break;
            }
        }
        m1412f(i3, solverVariable, f);
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float remove(SolverVariable solverVariable, boolean z) {
        int indexOf = indexOf(solverVariable);
        if (indexOf == -1) {
            return 0.0f;
        }
        m1413g(solverVariable);
        float f = this.f2662g[indexOf];
        if (this.f2666k == indexOf) {
            this.f2666k = this.f2664i[indexOf];
        }
        this.f2661f[indexOf] = -1;
        int[] iArr = this.f2663h;
        int i = iArr[indexOf];
        if (i != -1) {
            int[] iArr2 = this.f2664i;
            iArr2[i] = iArr2[indexOf];
        }
        int i2 = this.f2664i[indexOf];
        if (i2 != -1) {
            iArr[i2] = iArr[indexOf];
        }
        this.f2665j--;
        solverVariable.usageInRowCount--;
        if (z) {
            solverVariable.removeFromRow(this.f2667l);
        }
        return f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return 0;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i = this.f2665j;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                String str2 = str + variable + CloudStorageConstants.OPERATION_EQUAL + getVariableValue(i2) + " ";
                int indexOf = indexOf(variable);
                String str3 = str2 + "[p: ";
                String str4 = (this.f2663h[indexOf] != -1 ? str3 + this.mCache.f2601d[this.f2661f[this.f2663h[indexOf]]] : str3 + "none") + ", n: ";
                str = (this.f2664i[indexOf] != -1 ? str4 + this.mCache.f2601d[this.f2661f[this.f2664i[indexOf]]] : str4 + "none") + IteratorUtils.f104924b;
            }
        }
        return str + " }";
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z) {
        float f = get(arrayRow.f2593a);
        remove(arrayRow.f2593a, z);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int i = 0;
        int i2 = 0;
        while (i < currentSize) {
            int i3 = solverVariableValues.f2661f[i2];
            if (i3 != -1) {
                add(this.mCache.f2601d[i3], solverVariableValues.f2662g[i2] * f, z);
                i++;
            }
            i2++;
        }
        return f;
    }
}
