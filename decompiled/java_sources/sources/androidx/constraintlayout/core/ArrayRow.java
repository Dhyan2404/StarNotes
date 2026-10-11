package androidx.constraintlayout.core;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes3.dex */
public class ArrayRow implements LinearSystem.InterfaceC0384a {

    /* renamed from: f */
    public static final boolean f2591f = false;

    /* renamed from: g */
    public static final boolean f2592g = false;

    /* renamed from: a */
    public SolverVariable f2593a = null;

    /* renamed from: b */
    public float f2594b = 0.0f;

    /* renamed from: c */
    public boolean f2595c = false;

    /* renamed from: d */
    public ArrayList<SolverVariable> f2596d = new ArrayList<>();

    /* renamed from: e */
    public boolean f2597e = false;
    public ArrayRowVariables variables;

    /* loaded from: classes3.dex */
    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f, boolean z);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int i);

        float getVariableValue(int i);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f);

        float remove(SolverVariable solverVariable, boolean z);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z);
    }

    public ArrayRow() {
    }

    /* renamed from: a */
    public ArrayRow m1356a(SolverVariable solverVariable, int i) {
        this.variables.put(solverVariable, i);
        return this;
    }

    public ArrayRow addError(LinearSystem linearSystem, int i) {
        this.variables.put(linearSystem.createErrorVariable(i, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i, ExtUnits.UNIT_EM), -1.0f);
        return this;
    }

    /* renamed from: b */
    public boolean m1357b(LinearSystem linearSystem) {
        boolean z;
        SolverVariable m1358c = m1358c(linearSystem);
        if (m1358c == null) {
            z = true;
        } else {
            m1367l(m1358c);
            z = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.f2597e = true;
        }
        return z;
    }

    /* renamed from: c */
    public SolverVariable m1358c(LinearSystem linearSystem) {
        boolean m1365j;
        boolean m1365j2;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        SolverVariable solverVariable2 = null;
        for (int i = 0; i < currentSize; i++) {
            float variableValue = this.variables.getVariableValue(i);
            SolverVariable variable = this.variables.getVariable(i);
            if (variable.f2644i == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null) {
                    m1365j2 = m1365j(variable, linearSystem);
                } else if (f > variableValue) {
                    m1365j2 = m1365j(variable, linearSystem);
                } else if (!z && m1365j(variable, linearSystem)) {
                    f = variableValue;
                    solverVariable = variable;
                    z = true;
                }
                z = m1365j2;
                f = variableValue;
                solverVariable = variable;
            } else if (solverVariable == null && variableValue < 0.0f) {
                if (solverVariable2 == null) {
                    m1365j = m1365j(variable, linearSystem);
                } else if (f2 > variableValue) {
                    m1365j = m1365j(variable, linearSystem);
                } else if (!z2 && m1365j(variable, linearSystem)) {
                    f2 = variableValue;
                    solverVariable2 = variable;
                    z2 = true;
                }
                z2 = m1365j;
                f2 = variableValue;
                solverVariable2 = variable;
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public void clear() {
        this.variables.clear();
        this.f2593a = null;
        this.f2594b = 0.0f;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f);
        this.variables.put(solverVariable4, -f);
        return this;
    }

    public ArrayRow createRowEqualDimension(float f, float f2, float f3, SolverVariable solverVariable, int i, SolverVariable solverVariable2, int i2, SolverVariable solverVariable3, int i3, SolverVariable solverVariable4, int i4) {
        if (f2 == 0.0f || f == f3) {
            this.f2594b = ((-i) - i2) + i3 + i4;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.f2594b = ((-i) - i2) + (i3 * f4) + (i4 * f4);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f4);
            this.variables.put(solverVariable3, -f4);
        }
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f, float f2, float f3, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.f2594b = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else if (f == 0.0f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else if (f3 == 0.0f) {
            this.variables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f4);
            this.variables.put(solverVariable3, -f4);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i) {
        if (i < 0) {
            this.f2594b = i * (-1);
            this.variables.put(solverVariable, 1.0f);
        } else {
            this.f2594b = i;
            this.variables.put(solverVariable, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f2594b = i;
        }
        if (!z) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f2594b = i;
        }
        if (z) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.f2594b = -f;
        return this;
    }

    /* renamed from: d */
    public ArrayRow m1359d(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2) {
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.f2594b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.f2594b = i;
        } else if (f >= 1.0f) {
            this.variables.put(solverVariable4, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            this.f2594b = -i2;
        } else {
            float f2 = 1.0f - f;
            this.variables.put(solverVariable, f2 * 1.0f);
            this.variables.put(solverVariable2, f2 * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f);
            this.variables.put(solverVariable4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.f2594b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    /* renamed from: e */
    public ArrayRow m1360e(SolverVariable solverVariable, int i) {
        this.f2593a = solverVariable;
        float f = i;
        solverVariable.computedValue = f;
        this.f2594b = f;
        this.f2597e = true;
        return this;
    }

    /* renamed from: f */
    public ArrayRow m1361f(SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f);
        return this;
    }

    /* renamed from: g */
    public void m1362g() {
        float f = this.f2594b;
        if (f < 0.0f) {
            this.f2594b = f * (-1.0f);
            this.variables.invert();
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public SolverVariable getKey() {
        return this.f2593a;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return m1366k(zArr, null);
    }

    /* renamed from: h */
    public boolean m1363h() {
        SolverVariable solverVariable = this.f2593a;
        return solverVariable != null && (solverVariable.f2644i == SolverVariable.Type.UNRESTRICTED || this.f2594b >= 0.0f);
    }

    /* renamed from: i */
    public boolean m1364i(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public void initFromRow(LinearSystem.InterfaceC0384a interfaceC0384a) {
        if (interfaceC0384a instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) interfaceC0384a;
            this.f2593a = null;
            this.variables.clear();
            for (int i = 0; i < arrayRow.variables.getCurrentSize(); i++) {
                this.variables.add(arrayRow.variables.getVariable(i), arrayRow.variables.getVariableValue(i), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public boolean isEmpty() {
        return this.f2593a == null && this.f2594b == 0.0f && this.variables.getCurrentSize() == 0;
    }

    /* renamed from: j */
    public final boolean m1365j(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    /* renamed from: k */
    public final SolverVariable m1366k(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i = 0; i < currentSize; i++) {
            float variableValue = this.variables.getVariableValue(i);
            if (variableValue < 0.0f) {
                SolverVariable variable = this.variables.getVariable(i);
                if ((zArr == null || !zArr[variable.f2645id]) && variable != solverVariable && (((type = variable.f2644i) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && variableValue < f)) {
                    f = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    /* renamed from: l */
    public void m1367l(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f2593a;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.f2593a.f2641f = -1;
            this.f2593a = null;
        }
        float remove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.f2593a = solverVariable;
        if (remove == 1.0f) {
            return;
        }
        this.f2594b /= remove;
        this.variables.divideByAmount(remove);
    }

    /* renamed from: m */
    public int m1368m() {
        return (this.f2593a != null ? 4 : 0) + 4 + 4 + this.variables.sizeInBytes();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cf  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m1369n() {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayRow.m1369n():java.lang.String");
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return m1366k(null, solverVariable);
    }

    public void reset() {
        this.f2593a = null;
        this.variables.clear();
        this.f2594b = 0.0f;
        this.f2597e = false;
    }

    public String toString() {
        return m1369n();
    }

    @Override // androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable == null || !solverVariable.isFinalValue) {
            return;
        }
        this.f2594b += solverVariable.computedValue * this.variables.get(solverVariable);
        this.variables.remove(solverVariable, z);
        if (z) {
            solverVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.f2597e = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        this.f2594b += arrayRow.f2594b * this.variables.use(arrayRow, z);
        if (z) {
            arrayRow.f2593a.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.f2593a != null && this.variables.getCurrentSize() == 0) {
            this.f2597e = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void updateFromSynonymVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable == null || !solverVariable.f2648l) {
            return;
        }
        float f = this.variables.get(solverVariable);
        this.f2594b += solverVariable.f2650n * f;
        this.variables.remove(solverVariable, z);
        if (z) {
            solverVariable.removeFromRow(this);
        }
        this.variables.add(linearSystem.f2614k.f2601d[solverVariable.f2649m], f, z);
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.f2597e = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public void updateFromSystem(LinearSystem linearSystem) {
        if (linearSystem.f2609f.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int currentSize = this.variables.getCurrentSize();
            for (int i = 0; i < currentSize; i++) {
                SolverVariable variable = this.variables.getVariable(i);
                if (variable.f2641f != -1 || variable.isFinalValue || variable.f2648l) {
                    this.f2596d.add(variable);
                }
            }
            int size = this.f2596d.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    SolverVariable solverVariable = this.f2596d.get(i2);
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else if (solverVariable.f2648l) {
                        updateFromSynonymVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem, linearSystem.f2609f[solverVariable.f2641f], true);
                    }
                }
                this.f2596d.clear();
            } else {
                z = true;
            }
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.f2593a != null && this.variables.getCurrentSize() == 0) {
            this.f2597e = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.InterfaceC0384a
    public void addError(SolverVariable solverVariable) {
        int i = solverVariable.strength;
        float f = 1.0f;
        if (i != 1) {
            if (i == 2) {
                f = 1000.0f;
            } else if (i == 3) {
                f = 1000000.0f;
            } else if (i == 4) {
                f = 1.0E9f;
            } else if (i == 5) {
                f = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f);
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f2594b = i;
        }
        if (!z) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        }
        return this;
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i, SolverVariable solverVariable2) {
        this.f2594b = i;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }
}
