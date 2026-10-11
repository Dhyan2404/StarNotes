package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes3.dex */
public class PriorityGoalRow extends ArrayRow {

    /* renamed from: n */
    public static final float f2619n = 1.0E-4f;

    /* renamed from: o */
    public static final boolean f2620o = false;

    /* renamed from: p */
    public static final int f2621p = -1;

    /* renamed from: h */
    public int f2622h;

    /* renamed from: i */
    public SolverVariable[] f2623i;

    /* renamed from: j */
    public SolverVariable[] f2624j;

    /* renamed from: k */
    public int f2625k;

    /* renamed from: l */
    public C0387b f2626l;

    /* renamed from: m */
    public Cache f2627m;

    /* renamed from: androidx.constraintlayout.core.PriorityGoalRow$a */
    /* loaded from: classes3.dex */
    public class C0386a implements Comparator<SolverVariable> {
        public C0386a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(SolverVariable solverVariable, SolverVariable solverVariable2) {
            return solverVariable.f2645id - solverVariable2.f2645id;
        }
    }

    /* renamed from: androidx.constraintlayout.core.PriorityGoalRow$b */
    /* loaded from: classes3.dex */
    public class C0387b {

        /* renamed from: a */
        public SolverVariable f2629a;

        /* renamed from: b */
        public PriorityGoalRow f2630b;

        public C0387b(PriorityGoalRow priorityGoalRow) {
            this.f2630b = priorityGoalRow;
        }

        /* renamed from: a */
        public void m1396a(SolverVariable solverVariable) {
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f2629a.f2643h;
                float f = fArr[i] + solverVariable.f2643h[i];
                fArr[i] = f;
                if (Math.abs(f) < 1.0E-4f) {
                    this.f2629a.f2643h[i] = 0.0f;
                }
            }
        }

        /* renamed from: b */
        public boolean m1397b(SolverVariable solverVariable, float f) {
            boolean z = true;
            if (!this.f2629a.inGoal) {
                for (int i = 0; i < 9; i++) {
                    float f2 = solverVariable.f2643h[i];
                    if (f2 != 0.0f) {
                        float f3 = f2 * f;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        this.f2629a.f2643h[i] = f3;
                    } else {
                        this.f2629a.f2643h[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.f2629a.f2643h;
                float f4 = fArr[i2] + (solverVariable.f2643h[i2] * f);
                fArr[i2] = f4;
                if (Math.abs(f4) < 1.0E-4f) {
                    this.f2629a.f2643h[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (z) {
                PriorityGoalRow.this.m1394q(this.f2629a);
            }
            return false;
        }

        /* renamed from: c */
        public void m1398c(SolverVariable solverVariable) {
            this.f2629a = solverVariable;
        }

        /* renamed from: d */
        public final boolean m1399d() {
            for (int i = 8; i >= 0; i--) {
                float f = this.f2629a.f2643h[i];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: e */
        public final boolean m1400e() {
            for (int i = 0; i < 9; i++) {
                if (this.f2629a.f2643h[i] != 0.0f) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: f */
        public final boolean m1401f(SolverVariable solverVariable) {
            int i = 8;
            while (true) {
                if (i < 0) {
                    break;
                }
                float f = solverVariable.f2643h[i];
                float f2 = this.f2629a.f2643h[i];
                if (f2 == f) {
                    i--;
                } else if (f2 < f) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: g */
        public void m1402g() {
            Arrays.fill(this.f2629a.f2643h, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.f2629a != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.f2629a.f2643h[i] + " ";
                }
            }
            return str + "] " + this.f2629a;
        }
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.f2622h = 128;
        this.f2623i = new SolverVariable[128];
        this.f2624j = new SolverVariable[128];
        this.f2625k = 0;
        this.f2626l = new C0387b(this);
        this.f2627m = cache;
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public void addError(SolverVariable solverVariable) {
        this.f2626l.m1398c(solverVariable);
        this.f2626l.m1402g();
        solverVariable.f2643h[solverVariable.strength] = 1.0f;
        m1393p(solverVariable);
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public void clear() {
        this.f2625k = 0;
        this.f2594b = 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.f2625k; i2++) {
            SolverVariable solverVariable = this.f2623i[i2];
            if (!zArr[solverVariable.f2645id]) {
                this.f2626l.m1398c(solverVariable);
                if (i == -1) {
                    if (!this.f2626l.m1399d()) {
                    }
                    i = i2;
                } else {
                    if (!this.f2626l.m1401f(this.f2623i[i])) {
                    }
                    i = i2;
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f2623i[i];
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public boolean isEmpty() {
        return this.f2625k == 0;
    }

    /* renamed from: p */
    public final void m1393p(SolverVariable solverVariable) {
        int i;
        int i2 = this.f2625k + 1;
        SolverVariable[] solverVariableArr = this.f2623i;
        if (i2 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.f2623i = solverVariableArr2;
            this.f2624j = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.f2623i;
        int i3 = this.f2625k;
        solverVariableArr3[i3] = solverVariable;
        int i4 = i3 + 1;
        this.f2625k = i4;
        if (i4 > 1 && solverVariableArr3[i4 - 1].f2645id > solverVariable.f2645id) {
            int i5 = 0;
            while (true) {
                i = this.f2625k;
                if (i5 >= i) {
                    break;
                }
                this.f2624j[i5] = this.f2623i[i5];
                i5++;
            }
            Arrays.sort(this.f2624j, 0, i, new C0386a());
            for (int i6 = 0; i6 < this.f2625k; i6++) {
                this.f2623i[i6] = this.f2624j[i6];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    /* renamed from: q */
    public final void m1394q(SolverVariable solverVariable) {
        int i = 0;
        while (i < this.f2625k) {
            if (this.f2623i[i] == solverVariable) {
                while (true) {
                    int i2 = this.f2625k;
                    if (i >= i2 - 1) {
                        this.f2625k = i2 - 1;
                        solverVariable.inGoal = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.f2623i;
                        int i3 = i + 1;
                        solverVariableArr[i] = solverVariableArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public String toString() {
        String str = " goal -> (" + this.f2594b + ") : ";
        for (int i = 0; i < this.f2625k; i++) {
            this.f2626l.m1398c(this.f2623i[i]);
            str = str + this.f2626l + " ";
        }
        return str;
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.f2593a;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayRowVariables.getVariable(i);
            float variableValue = arrayRowVariables.getVariableValue(i);
            this.f2626l.m1398c(variable);
            if (this.f2626l.m1397b(solverVariable, variableValue)) {
                m1393p(variable);
            }
            this.f2594b += arrayRow.f2594b * variableValue;
        }
        m1394q(solverVariable);
    }
}
