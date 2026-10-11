package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Arrays;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes3.dex */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {

    /* renamed from: k */
    public static final boolean f2577k = false;

    /* renamed from: l */
    public static final int f2578l = -1;

    /* renamed from: m */
    public static final boolean f2579m = false;

    /* renamed from: n */
    public static float f2580n = 0.001f;

    /* renamed from: b */
    public final ArrayRow f2582b;
    protected final Cache mCache;

    /* renamed from: a */
    public int f2581a = 0;

    /* renamed from: c */
    public int f2583c = 8;

    /* renamed from: d */
    public SolverVariable f2584d = null;

    /* renamed from: e */
    public int[] f2585e = new int[8];

    /* renamed from: f */
    public int[] f2586f = new int[8];

    /* renamed from: g */
    public float[] f2587g = new float[8];

    /* renamed from: h */
    public int f2588h = -1;

    /* renamed from: i */
    public int f2589i = -1;

    /* renamed from: j */
    public boolean f2590j = false;

    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.f2582b = arrayRow;
        this.mCache = cache;
    }

    /* renamed from: a */
    public SolverVariable m1354a() {
        SolverVariable solverVariable = this.f2584d;
        if (solverVariable != null) {
            return solverVariable;
        }
        int i = this.f2588h;
        SolverVariable solverVariable2 = null;
        for (int i2 = 0; i != -1 && i2 < this.f2581a; i2++) {
            if (this.f2587g[i] < 0.0f) {
                SolverVariable solverVariable3 = this.mCache.f2601d[this.f2585e[i]];
                if (solverVariable2 == null || solverVariable2.strength < solverVariable3.strength) {
                    solverVariable2 = solverVariable3;
                }
            }
            i = this.f2586f[i];
        }
        return solverVariable2;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f, boolean z) {
        float f2 = f2580n;
        if (f <= (-f2) || f >= f2) {
            int i = this.f2588h;
            if (i == -1) {
                this.f2588h = 0;
                this.f2587g[0] = f;
                this.f2585e[0] = solverVariable.f2645id;
                this.f2586f[0] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.addToRow(this.f2582b);
                this.f2581a++;
                if (this.f2590j) {
                    return;
                }
                int i2 = this.f2589i + 1;
                this.f2589i = i2;
                int[] iArr = this.f2585e;
                if (i2 >= iArr.length) {
                    this.f2590j = true;
                    this.f2589i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f2581a; i4++) {
                int i5 = this.f2585e[i];
                int i6 = solverVariable.f2645id;
                if (i5 == i6) {
                    float[] fArr = this.f2587g;
                    float f3 = fArr[i] + f;
                    float f4 = f2580n;
                    if (f3 > (-f4) && f3 < f4) {
                        f3 = 0.0f;
                    }
                    fArr[i] = f3;
                    if (f3 == 0.0f) {
                        if (i == this.f2588h) {
                            this.f2588h = this.f2586f[i];
                        } else {
                            int[] iArr2 = this.f2586f;
                            iArr2[i3] = iArr2[i];
                        }
                        if (z) {
                            solverVariable.removeFromRow(this.f2582b);
                        }
                        if (this.f2590j) {
                            this.f2589i = i;
                        }
                        solverVariable.usageInRowCount--;
                        this.f2581a--;
                        return;
                    }
                    return;
                }
                if (i5 < i6) {
                    i3 = i;
                }
                i = this.f2586f[i];
            }
            int i7 = this.f2589i;
            int i8 = i7 + 1;
            if (this.f2590j) {
                int[] iArr3 = this.f2585e;
                if (iArr3[i7] != -1) {
                    i7 = iArr3.length;
                }
            } else {
                i7 = i8;
            }
            int[] iArr4 = this.f2585e;
            if (i7 >= iArr4.length && this.f2581a < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.f2585e;
                    if (i9 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i9] == -1) {
                        i7 = i9;
                        break;
                    }
                    i9++;
                }
            }
            int[] iArr6 = this.f2585e;
            if (i7 >= iArr6.length) {
                i7 = iArr6.length;
                int i10 = this.f2583c * 2;
                this.f2583c = i10;
                this.f2590j = false;
                this.f2589i = i7 - 1;
                this.f2587g = Arrays.copyOf(this.f2587g, i10);
                this.f2585e = Arrays.copyOf(this.f2585e, this.f2583c);
                this.f2586f = Arrays.copyOf(this.f2586f, this.f2583c);
            }
            this.f2585e[i7] = solverVariable.f2645id;
            this.f2587g[i7] = f;
            if (i3 != -1) {
                int[] iArr7 = this.f2586f;
                iArr7[i7] = iArr7[i3];
                iArr7[i3] = i7;
            } else {
                this.f2586f[i7] = this.f2588h;
                this.f2588h = i7;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.f2582b);
            this.f2581a++;
            if (!this.f2590j) {
                this.f2589i++;
            }
            int i11 = this.f2589i;
            int[] iArr8 = this.f2585e;
            if (i11 >= iArr8.length) {
                this.f2590j = true;
                this.f2589i = iArr8.length - 1;
            }
        }
    }

    /* renamed from: b */
    public boolean m1355b() {
        int i = this.f2588h;
        for (int i2 = 0; i != -1 && i2 < this.f2581a; i2++) {
            if (this.f2587g[i] > 0.0f) {
                return true;
            }
            i = this.f2586f[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i = this.f2588h;
        for (int i2 = 0; i != -1 && i2 < this.f2581a; i2++) {
            SolverVariable solverVariable = this.mCache.f2601d[this.f2585e[i]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.f2582b);
            }
            i = this.f2586f[i];
        }
        this.f2588h = -1;
        this.f2589i = -1;
        this.f2590j = false;
        this.f2581a = 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        int i = this.f2588h;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f2581a; i2++) {
            if (this.f2585e[i] == solverVariable.f2645id) {
                return true;
            }
            i = this.f2586f[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int i = this.f2581a;
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
        int i = this.f2588h;
        for (int i2 = 0; i != -1 && i2 < this.f2581a; i2++) {
            float[] fArr = this.f2587g;
            fArr[i] = fArr[i] / f;
            i = this.f2586f[i];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float get(SolverVariable solverVariable) {
        int i = this.f2588h;
        for (int i2 = 0; i != -1 && i2 < this.f2581a; i2++) {
            if (this.f2585e[i] == solverVariable.f2645id) {
                return this.f2587g[i];
            }
            i = this.f2586f[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.f2581a;
    }

    public int getHead() {
        return this.f2588h;
    }

    public final int getId(int i) {
        return this.f2585e[i];
    }

    public final int getNextIndice(int i) {
        return this.f2586f[i];
    }

    public final float getValue(int i) {
        return this.f2587g[i];
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i) {
        int i2 = this.f2588h;
        for (int i3 = 0; i2 != -1 && i3 < this.f2581a; i3++) {
            if (i3 == i) {
                return this.mCache.f2601d[this.f2585e[i2]];
            }
            i2 = this.f2586f[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i) {
        int i2 = this.f2588h;
        for (int i3 = 0; i2 != -1 && i3 < this.f2581a; i3++) {
            if (i3 == i) {
                return this.f2587g[i2];
            }
            i2 = this.f2586f[i2];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        int i = this.f2588h;
        if (i == -1) {
            return -1;
        }
        for (int i2 = 0; i != -1 && i2 < this.f2581a; i2++) {
            if (this.f2585e[i] == solverVariable.f2645id) {
                return i;
            }
            i = this.f2586f[i];
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int i = this.f2588h;
        for (int i2 = 0; i != -1 && i2 < this.f2581a; i2++) {
            float[] fArr = this.f2587g;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f2586f[i];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void put(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            remove(solverVariable, true);
            return;
        }
        int i = this.f2588h;
        if (i == -1) {
            this.f2588h = 0;
            this.f2587g[0] = f;
            this.f2585e[0] = solverVariable.f2645id;
            this.f2586f[0] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.f2582b);
            this.f2581a++;
            if (this.f2590j) {
                return;
            }
            int i2 = this.f2589i + 1;
            this.f2589i = i2;
            int[] iArr = this.f2585e;
            if (i2 >= iArr.length) {
                this.f2590j = true;
                this.f2589i = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f2581a; i4++) {
            int i5 = this.f2585e[i];
            int i6 = solverVariable.f2645id;
            if (i5 == i6) {
                this.f2587g[i] = f;
                return;
            }
            if (i5 < i6) {
                i3 = i;
            }
            i = this.f2586f[i];
        }
        int i7 = this.f2589i;
        int i8 = i7 + 1;
        if (this.f2590j) {
            int[] iArr2 = this.f2585e;
            if (iArr2[i7] != -1) {
                i7 = iArr2.length;
            }
        } else {
            i7 = i8;
        }
        int[] iArr3 = this.f2585e;
        if (i7 >= iArr3.length && this.f2581a < iArr3.length) {
            int i9 = 0;
            while (true) {
                int[] iArr4 = this.f2585e;
                if (i9 >= iArr4.length) {
                    break;
                }
                if (iArr4[i9] == -1) {
                    i7 = i9;
                    break;
                }
                i9++;
            }
        }
        int[] iArr5 = this.f2585e;
        if (i7 >= iArr5.length) {
            i7 = iArr5.length;
            int i10 = this.f2583c * 2;
            this.f2583c = i10;
            this.f2590j = false;
            this.f2589i = i7 - 1;
            this.f2587g = Arrays.copyOf(this.f2587g, i10);
            this.f2585e = Arrays.copyOf(this.f2585e, this.f2583c);
            this.f2586f = Arrays.copyOf(this.f2586f, this.f2583c);
        }
        this.f2585e[i7] = solverVariable.f2645id;
        this.f2587g[i7] = f;
        if (i3 != -1) {
            int[] iArr6 = this.f2586f;
            iArr6[i7] = iArr6[i3];
            iArr6[i3] = i7;
        } else {
            this.f2586f[i7] = this.f2588h;
            this.f2588h = i7;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.f2582b);
        int i11 = this.f2581a + 1;
        this.f2581a = i11;
        if (!this.f2590j) {
            this.f2589i++;
        }
        int[] iArr7 = this.f2585e;
        if (i11 >= iArr7.length) {
            this.f2590j = true;
        }
        if (this.f2589i >= iArr7.length) {
            this.f2590j = true;
            this.f2589i = iArr7.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float remove(SolverVariable solverVariable, boolean z) {
        if (this.f2584d == solverVariable) {
            this.f2584d = null;
        }
        int i = this.f2588h;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f2581a) {
            if (this.f2585e[i] == solverVariable.f2645id) {
                if (i == this.f2588h) {
                    this.f2588h = this.f2586f[i];
                } else {
                    int[] iArr = this.f2586f;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    solverVariable.removeFromRow(this.f2582b);
                }
                solverVariable.usageInRowCount--;
                this.f2581a--;
                this.f2585e[i] = -1;
                if (this.f2590j) {
                    this.f2589i = i;
                }
                return this.f2587g[i];
            }
            i2++;
            i3 = i;
            i = this.f2586f[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return (this.f2585e.length * 4 * 3) + 0 + 36;
    }

    public String toString() {
        int i = this.f2588h;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f2581a; i2++) {
            str = ((str + AlphabetConverter.f109940d) + this.f2587g[i] + " : ") + this.mCache.f2601d[this.f2585e[i]];
            i = this.f2586f[i];
        }
        return str;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z) {
        float f = get(arrayRow.f2593a);
        remove(arrayRow.f2593a, z);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayRowVariables.getVariable(i);
            add(variable, arrayRowVariables.get(variable) * f, z);
        }
        return f;
    }
}
