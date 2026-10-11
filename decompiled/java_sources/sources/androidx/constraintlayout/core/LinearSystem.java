package androidx.constraintlayout.core;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class LinearSystem {
    public static long ARRAY_ROW_CREATION = 0;
    public static final boolean DEBUG = false;
    public static final boolean FULL_DEBUG = false;
    public static final boolean MEASURE = false;
    public static long OPTIMIZED_ARRAY_ROW_CREATION = 0;
    public static boolean OPTIMIZED_ENGINE = false;
    public static boolean SIMPLIFY_SYNONYMS = true;
    public static boolean SKIP_COLUMNS = true;
    public static boolean USE_BASIC_SYNONYMS = true;
    public static boolean USE_DEPENDENCY_ORDERING = false;
    public static boolean USE_SYNONYMS = true;

    /* renamed from: o */
    public static final boolean f2602o = false;

    /* renamed from: p */
    public static int f2603p = 1000;
    public static Metrics sMetrics;

    /* renamed from: c */
    public InterfaceC0384a f2606c;

    /* renamed from: f */
    public ArrayRow[] f2609f;

    /* renamed from: k */
    public final Cache f2614k;

    /* renamed from: n */
    public InterfaceC0384a f2617n;
    public boolean hasSimpleDefinition = false;

    /* renamed from: a */
    public int f2604a = 0;

    /* renamed from: b */
    public HashMap<String, SolverVariable> f2605b = null;

    /* renamed from: d */
    public int f2607d = 32;

    /* renamed from: e */
    public int f2608e = 32;
    public boolean graphOptimizer = false;
    public boolean newgraphOptimizer = false;

    /* renamed from: g */
    public boolean[] f2610g = new boolean[32];

    /* renamed from: h */
    public int f2611h = 1;

    /* renamed from: i */
    public int f2612i = 0;

    /* renamed from: j */
    public int f2613j = 32;

    /* renamed from: l */
    public SolverVariable[] f2615l = new SolverVariable[f2603p];

    /* renamed from: m */
    public int f2616m = 0;

    /* renamed from: androidx.constraintlayout.core.LinearSystem$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC0384a {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

        void initFromRow(InterfaceC0384a interfaceC0384a);

        boolean isEmpty();

        void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z);

        void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z);

        void updateFromSystem(LinearSystem linearSystem);
    }

    /* renamed from: androidx.constraintlayout.core.LinearSystem$b */
    /* loaded from: classes3.dex */
    public class C0385b extends ArrayRow {
        public C0385b(Cache cache) {
            this.variables = new SolverVariableValues(this, cache);
        }
    }

    public LinearSystem() {
        this.f2609f = null;
        this.f2609f = new ArrayRow[32];
        m1391v();
        Cache cache = new Cache();
        this.f2614k = cache;
        this.f2606c = new PriorityGoalRow(cache);
        if (OPTIMIZED_ENGINE) {
            this.f2617n = new C0385b(cache);
        } else {
            this.f2617n = new ArrayRow(cache);
        }
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        return linearSystem.createRow().m1361f(solverVariable, solverVariable2, f);
    }

    public static Metrics getMetrics() {
        return sMetrics;
    }

    /* renamed from: a */
    public final SolverVariable m1370a(SolverVariable.Type type, String str) {
        SolverVariable acquire = this.f2614k.f2600c.acquire();
        if (acquire == null) {
            acquire = new SolverVariable(type, str);
            acquire.setType(type, str);
        } else {
            acquire.reset();
            acquire.setType(type, str);
        }
        int i = this.f2616m;
        int i2 = f2603p;
        if (i >= i2) {
            int i3 = i2 * 2;
            f2603p = i3;
            this.f2615l = (SolverVariable[]) Arrays.copyOf(this.f2615l, i3);
        }
        SolverVariable[] solverVariableArr = this.f2615l;
        int i4 = this.f2616m;
        this.f2616m = i4 + 1;
        solverVariableArr[i4] = acquire;
        return acquire;
    }

    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable createObjectVariable = createObjectVariable(constraintWidget.getAnchor(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable createObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable createObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable createObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(type4));
        SolverVariable createObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(type));
        SolverVariable createObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(type2));
        SolverVariable createObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(type3));
        SolverVariable createObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(type4));
        ArrayRow createRow = createRow();
        double d = f;
        double d2 = i;
        createRow.createRowWithAngle(createObjectVariable2, createObjectVariable4, createObjectVariable6, createObjectVariable8, (float) (Math.sin(d) * d2));
        addConstraint(createRow);
        ArrayRow createRow2 = createRow();
        createRow2.createRowWithAngle(createObjectVariable, createObjectVariable3, createObjectVariable5, createObjectVariable7, (float) (Math.cos(d) * d2));
        addConstraint(createRow2);
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow createRow = createRow();
        createRow.m1359d(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (i3 != 8) {
            createRow.addError(this, i3);
        }
        addConstraint(createRow);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addConstraint(androidx.constraintlayout.core.ArrayRow r8) {
        /*
            r7 = this;
            if (r8 != 0) goto L3
            return
        L3:
            androidx.constraintlayout.core.Metrics r0 = androidx.constraintlayout.core.LinearSystem.sMetrics
            r1 = 1
            if (r0 == 0) goto L17
            long r3 = r0.constraints
            long r3 = r3 + r1
            r0.constraints = r3
            boolean r3 = r8.f2597e
            if (r3 == 0) goto L17
            long r3 = r0.simpleconstraints
            long r3 = r3 + r1
            r0.simpleconstraints = r3
        L17:
            int r0 = r7.f2612i
            r3 = 1
            int r0 = r0 + r3
            int r4 = r7.f2613j
            if (r0 >= r4) goto L26
            int r0 = r7.f2611h
            int r0 = r0 + r3
            int r4 = r7.f2608e
            if (r0 < r4) goto L29
        L26:
            r7.m1388s()
        L29:
            boolean r0 = r8.f2597e
            r4 = 0
            if (r0 != 0) goto La1
            r8.updateFromSystem(r7)
            boolean r0 = r8.isEmpty()
            if (r0 == 0) goto L38
            return
        L38:
            r8.m1362g()
            boolean r0 = r8.m1357b(r7)
            if (r0 == 0) goto L98
            androidx.constraintlayout.core.SolverVariable r0 = r7.createExtraVariable()
            r8.f2593a = r0
            int r5 = r7.f2612i
            r7.m1372c(r8)
            int r6 = r7.f2612i
            int r5 = r5 + r3
            if (r6 != r5) goto L98
            androidx.constraintlayout.core.LinearSystem$a r4 = r7.f2617n
            r4.initFromRow(r8)
            androidx.constraintlayout.core.LinearSystem$a r4 = r7.f2617n
            r7.m1390u(r4, r3)
            int r4 = r0.f2641f
            r5 = -1
            if (r4 != r5) goto L99
            androidx.constraintlayout.core.SolverVariable r4 = r8.f2593a
            if (r4 != r0) goto L76
            androidx.constraintlayout.core.SolverVariable r0 = r8.pickPivot(r0)
            if (r0 == 0) goto L76
            androidx.constraintlayout.core.Metrics r4 = androidx.constraintlayout.core.LinearSystem.sMetrics
            if (r4 == 0) goto L73
            long r5 = r4.pivots
            long r5 = r5 + r1
            r4.pivots = r5
        L73:
            r8.m1367l(r0)
        L76:
            boolean r0 = r8.f2597e
            if (r0 != 0) goto L7f
            androidx.constraintlayout.core.SolverVariable r0 = r8.f2593a
            r0.updateReferencesWithNewDefinition(r7, r8)
        L7f:
            boolean r0 = androidx.constraintlayout.core.LinearSystem.OPTIMIZED_ENGINE
            if (r0 == 0) goto L8b
            androidx.constraintlayout.core.Cache r0 = r7.f2614k
            androidx.constraintlayout.core.a$a<androidx.constraintlayout.core.ArrayRow> r0 = r0.f2598a
            r0.release(r8)
            goto L92
        L8b:
            androidx.constraintlayout.core.Cache r0 = r7.f2614k
            androidx.constraintlayout.core.a$a<androidx.constraintlayout.core.ArrayRow> r0 = r0.f2599b
            r0.release(r8)
        L92:
            int r0 = r7.f2612i
            int r0 = r0 - r3
            r7.f2612i = r0
            goto L99
        L98:
            r3 = r4
        L99:
            boolean r0 = r8.m1363h()
            if (r0 != 0) goto La0
            return
        La0:
            r4 = r3
        La1:
            if (r4 != 0) goto La6
            r7.m1372c(r8)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.LinearSystem.addConstraint(androidx.constraintlayout.core.ArrayRow):void");
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        if (USE_BASIC_SYNONYMS && i2 == 8 && solverVariable2.isFinalValue && solverVariable.f2641f == -1) {
            solverVariable.setFinalValue(this, solverVariable2.computedValue + i);
            return null;
        }
        ArrayRow createRow = createRow();
        createRow.createRowEquals(solverVariable, solverVariable2, i);
        if (i2 != 8) {
            createRow.addError(this, i2);
        }
        addConstraint(createRow);
        return createRow;
    }

    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i);
        addConstraint(createRow);
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i);
        if (i2 != 8) {
            m1374e(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), i2);
        }
        addConstraint(createRow);
    }

    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i);
        addConstraint(createRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i);
        if (i2 != 8) {
            m1374e(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), i2);
        }
        addConstraint(createRow);
    }

    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i) {
        ArrayRow createRow = createRow();
        createRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i != 8) {
            createRow.addError(this, i);
        }
        addConstraint(createRow);
    }

    public void addSynonym(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        if (solverVariable.f2641f != -1 || i != 0) {
            addEquality(solverVariable, solverVariable2, i, 8);
            return;
        }
        if (solverVariable2.f2648l) {
            solverVariable2 = this.f2614k.f2601d[solverVariable2.f2649m];
        }
        if (solverVariable.f2648l) {
            SolverVariable solverVariable3 = this.f2614k.f2601d[solverVariable.f2649m];
        } else {
            solverVariable.setSynonym(this, solverVariable2, 0.0f);
        }
    }

    /* renamed from: b */
    public final void m1371b(ArrayRow arrayRow) {
        arrayRow.addError(this, 0);
    }

    /* renamed from: c */
    public final void m1372c(ArrayRow arrayRow) {
        int i;
        if (SIMPLIFY_SYNONYMS && arrayRow.f2597e) {
            arrayRow.f2593a.setFinalValue(this, arrayRow.f2594b);
        } else {
            ArrayRow[] arrayRowArr = this.f2609f;
            int i2 = this.f2612i;
            arrayRowArr[i2] = arrayRow;
            SolverVariable solverVariable = arrayRow.f2593a;
            solverVariable.f2641f = i2;
            this.f2612i = i2 + 1;
            solverVariable.updateReferencesWithNewDefinition(this, arrayRow);
        }
        if (SIMPLIFY_SYNONYMS && this.hasSimpleDefinition) {
            int i3 = 0;
            while (i3 < this.f2612i) {
                if (this.f2609f[i3] == null) {
                    System.out.println("WTF");
                }
                ArrayRow arrayRow2 = this.f2609f[i3];
                if (arrayRow2 != null && arrayRow2.f2597e) {
                    arrayRow2.f2593a.setFinalValue(this, arrayRow2.f2594b);
                    if (OPTIMIZED_ENGINE) {
                        this.f2614k.f2598a.release(arrayRow2);
                    } else {
                        this.f2614k.f2599b.release(arrayRow2);
                    }
                    this.f2609f[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.f2612i;
                        if (i4 >= i) {
                            break;
                        }
                        ArrayRow[] arrayRowArr2 = this.f2609f;
                        int i6 = i4 - 1;
                        ArrayRow arrayRow3 = arrayRowArr2[i4];
                        arrayRowArr2[i6] = arrayRow3;
                        SolverVariable solverVariable2 = arrayRow3.f2593a;
                        if (solverVariable2.f2641f == i4) {
                            solverVariable2.f2641f = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.f2609f[i5] = null;
                    }
                    this.f2612i = i - 1;
                    i3--;
                }
                i3++;
            }
            this.hasSimpleDefinition = false;
        }
    }

    public SolverVariable createErrorVariable(int i, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.f2611h + 1 >= this.f2608e) {
            m1388s();
        }
        SolverVariable m1370a = m1370a(SolverVariable.Type.ERROR, str);
        int i2 = this.f2604a + 1;
        this.f2604a = i2;
        this.f2611h++;
        m1370a.f2645id = i2;
        m1370a.strength = i;
        this.f2614k.f2601d[i2] = m1370a;
        this.f2606c.addError(m1370a);
        return m1370a;
    }

    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.f2611h + 1 >= this.f2608e) {
            m1388s();
        }
        SolverVariable m1370a = m1370a(SolverVariable.Type.SLACK, null);
        int i = this.f2604a + 1;
        this.f2604a = i;
        this.f2611h++;
        m1370a.f2645id = i;
        this.f2614k.f2601d[i] = m1370a;
        return m1370a;
    }

    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.f2611h + 1 >= this.f2608e) {
            m1388s();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable(this.f2614k);
                solverVariable = constraintAnchor.getSolverVariable();
            }
            int i = solverVariable.f2645id;
            if (i == -1 || i > this.f2604a || this.f2614k.f2601d[i] == null) {
                if (i != -1) {
                    solverVariable.reset();
                }
                int i2 = this.f2604a + 1;
                this.f2604a = i2;
                this.f2611h++;
                solverVariable.f2645id = i2;
                solverVariable.f2644i = SolverVariable.Type.UNRESTRICTED;
                this.f2614k.f2601d[i2] = solverVariable;
            }
        }
        return solverVariable;
    }

    public ArrayRow createRow() {
        ArrayRow acquire;
        if (OPTIMIZED_ENGINE) {
            acquire = this.f2614k.f2598a.acquire();
            if (acquire == null) {
                acquire = new C0385b(this.f2614k);
                OPTIMIZED_ARRAY_ROW_CREATION++;
            } else {
                acquire.reset();
            }
        } else {
            acquire = this.f2614k.f2599b.acquire();
            if (acquire == null) {
                acquire = new ArrayRow(this.f2614k);
                ARRAY_ROW_CREATION++;
            } else {
                acquire.reset();
            }
        }
        SolverVariable.m1404c();
        return acquire;
    }

    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.f2611h + 1 >= this.f2608e) {
            m1388s();
        }
        SolverVariable m1370a = m1370a(SolverVariable.Type.SLACK, null);
        int i = this.f2604a + 1;
        this.f2604a = i;
        this.f2611h++;
        m1370a.f2645id = i;
        this.f2614k.f2601d[i] = m1370a;
        return m1370a;
    }

    /* renamed from: d */
    public final void m1373d(ArrayRow arrayRow, int i) {
        m1374e(arrayRow, i, 0);
    }

    public void displayReadableRows() {
        m1379j();
        String str = " num vars " + this.f2604a + "\n";
        for (int i = 0; i < this.f2604a + 1; i++) {
            SolverVariable solverVariable = this.f2614k.f2601d[i];
            if (solverVariable != null && solverVariable.isFinalValue) {
                str = str + " $[" + i + "] => " + solverVariable + CloudStorageConstants.OPERATION_EQUAL + solverVariable.computedValue + "\n";
            }
        }
        String str2 = str + "\n";
        for (int i2 = 0; i2 < this.f2604a + 1; i2++) {
            SolverVariable[] solverVariableArr = this.f2614k.f2601d;
            SolverVariable solverVariable2 = solverVariableArr[i2];
            if (solverVariable2 != null && solverVariable2.f2648l) {
                str2 = str2 + " ~[" + i2 + "] => " + solverVariable2 + CloudStorageConstants.OPERATION_EQUAL + solverVariableArr[solverVariable2.f2649m] + " + " + solverVariable2.f2650n + "\n";
            }
        }
        String str3 = str2 + "\n\n #  ";
        for (int i3 = 0; i3 < this.f2612i; i3++) {
            str3 = (str3 + this.f2609f[i3].m1369n()) + "\n #  ";
        }
        if (this.f2606c != null) {
            str3 = str3 + "Goal: " + this.f2606c + "\n";
        }
        System.out.println(str3);
    }

    public void displayVariablesReadableRows() {
        m1379j();
        String str = "";
        for (int i = 0; i < this.f2612i; i++) {
            if (this.f2609f[i].f2593a.f2644i == SolverVariable.Type.UNRESTRICTED) {
                str = (str + this.f2609f[i].m1369n()) + "\n";
            }
        }
        System.out.println(str + this.f2606c + "\n");
    }

    /* renamed from: e */
    public void m1374e(ArrayRow arrayRow, int i, int i2) {
        arrayRow.m1356a(createErrorVariable(i2, null), i);
    }

    /* renamed from: f */
    public final void m1375f() {
        int i;
        int i2 = 0;
        while (i2 < this.f2612i) {
            ArrayRow arrayRow = this.f2609f[i2];
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.f2597e = true;
            }
            if (arrayRow.f2597e) {
                SolverVariable solverVariable = arrayRow.f2593a;
                solverVariable.computedValue = arrayRow.f2594b;
                solverVariable.removeFromRow(arrayRow);
                int i3 = i2;
                while (true) {
                    i = this.f2612i;
                    if (i3 >= i - 1) {
                        break;
                    }
                    ArrayRow[] arrayRowArr = this.f2609f;
                    int i4 = i3 + 1;
                    arrayRowArr[i3] = arrayRowArr[i4];
                    i3 = i4;
                }
                this.f2609f[i - 1] = null;
                this.f2612i = i - 1;
                i2--;
                if (OPTIMIZED_ENGINE) {
                    this.f2614k.f2598a.release(arrayRow);
                } else {
                    this.f2614k.f2599b.release(arrayRow);
                }
            }
            i2++;
        }
    }

    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    /* renamed from: g */
    public final void m1376g() {
        for (int i = 0; i < this.f2612i; i++) {
            ArrayRow arrayRow = this.f2609f[i];
            arrayRow.f2593a.computedValue = arrayRow.f2594b;
        }
    }

    public Cache getCache() {
        return this.f2614k;
    }

    public int getMemoryUsed() {
        int i = 0;
        for (int i2 = 0; i2 < this.f2612i; i2++) {
            ArrayRow arrayRow = this.f2609f[i2];
            if (arrayRow != null) {
                i += arrayRow.m1368m();
            }
        }
        return i;
    }

    public int getNumEquations() {
        return this.f2612i;
    }

    public int getNumVariables() {
        return this.f2604a;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    /* renamed from: h */
    public final SolverVariable m1377h(String str, SolverVariable.Type type) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.variables++;
        }
        if (this.f2611h + 1 >= this.f2608e) {
            m1388s();
        }
        SolverVariable m1370a = m1370a(type, null);
        m1370a.setName(str);
        int i = this.f2604a + 1;
        this.f2604a = i;
        this.f2611h++;
        m1370a.f2645id = i;
        if (this.f2605b == null) {
            this.f2605b = new HashMap<>();
        }
        this.f2605b.put(str, m1370a);
        this.f2614k.f2601d[this.f2604a] = m1370a;
        return m1370a;
    }

    /* renamed from: i */
    public final void m1378i() {
        m1379j();
        String str = "";
        for (int i = 0; i < this.f2612i; i++) {
            str = (str + this.f2609f[i]) + "\n";
        }
        System.out.println(str + this.f2606c + "\n");
    }

    /* renamed from: j */
    public final void m1379j() {
        System.out.println("Display Rows (" + this.f2612i + "x" + this.f2611h + ")\n");
    }

    /* renamed from: k */
    public void m1380k() {
        int i = 0;
        for (int i2 = 0; i2 < this.f2607d; i2++) {
            ArrayRow arrayRow = this.f2609f[i2];
            if (arrayRow != null) {
                i += arrayRow.m1368m();
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f2612i; i4++) {
            ArrayRow arrayRow2 = this.f2609f[i4];
            if (arrayRow2 != null) {
                i3 += arrayRow2.m1368m();
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("Linear System -> Table size: ");
        sb.append(this.f2607d);
        sb.append(" (");
        int i5 = this.f2607d;
        sb.append(m1382m(i5 * i5));
        sb.append(") -- row sizes: ");
        sb.append(m1382m(i));
        sb.append(", actual size: ");
        sb.append(m1382m(i3));
        sb.append(" rows: ");
        sb.append(this.f2612i);
        sb.append("/");
        sb.append(this.f2613j);
        sb.append(" cols: ");
        sb.append(this.f2611h);
        sb.append("/");
        sb.append(this.f2608e);
        sb.append(" ");
        sb.append(0);
        sb.append(" occupied cells, ");
        sb.append(m1382m(0));
        printStream.println(sb.toString());
    }

    /* renamed from: l */
    public final int m1381l(InterfaceC0384a interfaceC0384a) throws Exception {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= this.f2612i) {
                z = false;
                break;
            }
            ArrayRow arrayRow = this.f2609f[i];
            if (arrayRow.f2593a.f2644i != SolverVariable.Type.UNRESTRICTED && arrayRow.f2594b < 0.0f) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            return 0;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            Metrics metrics = sMetrics;
            if (metrics != null) {
                metrics.bfs++;
            }
            i2++;
            float f = Float.MAX_VALUE;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            for (int i6 = 0; i6 < this.f2612i; i6++) {
                ArrayRow arrayRow2 = this.f2609f[i6];
                if (arrayRow2.f2593a.f2644i != SolverVariable.Type.UNRESTRICTED && !arrayRow2.f2597e && arrayRow2.f2594b < 0.0f) {
                    int i7 = 9;
                    if (SKIP_COLUMNS) {
                        int currentSize = arrayRow2.variables.getCurrentSize();
                        int i8 = 0;
                        while (i8 < currentSize) {
                            SolverVariable variable = arrayRow2.variables.getVariable(i8);
                            float f2 = arrayRow2.variables.get(variable);
                            if (f2 > 0.0f) {
                                int i9 = 0;
                                while (i9 < i7) {
                                    float f3 = variable.f2642g[i9] / f2;
                                    if ((f3 < f && i9 == i5) || i9 > i5) {
                                        i4 = variable.f2645id;
                                        i5 = i9;
                                        i3 = i6;
                                        f = f3;
                                    }
                                    i9++;
                                    i7 = 9;
                                }
                            }
                            i8++;
                            i7 = 9;
                        }
                    } else {
                        for (int i10 = 1; i10 < this.f2611h; i10++) {
                            SolverVariable solverVariable = this.f2614k.f2601d[i10];
                            float f4 = arrayRow2.variables.get(solverVariable);
                            if (f4 > 0.0f) {
                                for (int i11 = 0; i11 < 9; i11++) {
                                    float f5 = solverVariable.f2642g[i11] / f4;
                                    if ((f5 < f && i11 == i5) || i11 > i5) {
                                        i4 = i10;
                                        i5 = i11;
                                        i3 = i6;
                                        f = f5;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (i3 != -1) {
                ArrayRow arrayRow3 = this.f2609f[i3];
                arrayRow3.f2593a.f2641f = -1;
                Metrics metrics2 = sMetrics;
                if (metrics2 != null) {
                    metrics2.pivots++;
                }
                arrayRow3.m1367l(this.f2614k.f2601d[i4]);
                SolverVariable solverVariable2 = arrayRow3.f2593a;
                solverVariable2.f2641f = i3;
                solverVariable2.updateReferencesWithNewDefinition(this, arrayRow3);
            } else {
                z2 = true;
            }
            if (i2 > this.f2611h / 2) {
                z2 = true;
            }
        }
        return i2;
    }

    /* renamed from: m */
    public final String m1382m(int i) {
        int i2 = i * 4;
        int i3 = i2 / 1024;
        int i4 = i3 / 1024;
        if (i4 > 0) {
            return "" + i4 + " Mb";
        }
        if (i3 > 0) {
            return "" + i3 + " Kb";
        }
        return "" + i2 + " bytes";
    }

    public void minimize() throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (this.f2606c.isEmpty()) {
            m1376g();
            return;
        }
        if (!this.graphOptimizer && !this.newgraphOptimizer) {
            m1389t(this.f2606c);
            return;
        }
        Metrics metrics2 = sMetrics;
        if (metrics2 != null) {
            metrics2.graphOptimizer++;
        }
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= this.f2612i) {
                z = true;
                break;
            } else if (!this.f2609f[i].f2597e) {
                break;
            } else {
                i++;
            }
        }
        if (!z) {
            m1389t(this.f2606c);
            return;
        }
        Metrics metrics3 = sMetrics;
        if (metrics3 != null) {
            metrics3.fullySolved++;
        }
        m1376g();
    }

    /* renamed from: n */
    public final String m1383n(int i) {
        return i == 1 ? "LOW" : i == 2 ? "MEDIUM" : i == 3 ? "HIGH" : i == 4 ? "HIGHEST" : i == 5 ? "EQUALITY" : i == 8 ? "FIXED" : i == 6 ? "BARRIER" : "NONE";
    }

    /* renamed from: o */
    public InterfaceC0384a m1384o() {
        return this.f2606c;
    }

    /* renamed from: p */
    public ArrayRow m1385p(int i) {
        return this.f2609f[i];
    }

    /* renamed from: q */
    public float m1386q(String str) {
        SolverVariable m1387r = m1387r(str, SolverVariable.Type.UNRESTRICTED);
        if (m1387r == null) {
            return 0.0f;
        }
        return m1387r.computedValue;
    }

    /* renamed from: r */
    public SolverVariable m1387r(String str, SolverVariable.Type type) {
        if (this.f2605b == null) {
            this.f2605b = new HashMap<>();
        }
        SolverVariable solverVariable = this.f2605b.get(str);
        return solverVariable == null ? m1377h(str, type) : solverVariable;
    }

    public void removeRow(ArrayRow arrayRow) {
        SolverVariable solverVariable;
        int i;
        if (!arrayRow.f2597e || (solverVariable = arrayRow.f2593a) == null) {
            return;
        }
        int i2 = solverVariable.f2641f;
        if (i2 != -1) {
            while (true) {
                i = this.f2612i;
                if (i2 >= i - 1) {
                    break;
                }
                ArrayRow[] arrayRowArr = this.f2609f;
                int i3 = i2 + 1;
                ArrayRow arrayRow2 = arrayRowArr[i3];
                SolverVariable solverVariable2 = arrayRow2.f2593a;
                if (solverVariable2.f2641f == i3) {
                    solverVariable2.f2641f = i2;
                }
                arrayRowArr[i2] = arrayRow2;
                i2 = i3;
            }
            this.f2612i = i - 1;
        }
        SolverVariable solverVariable3 = arrayRow.f2593a;
        if (!solverVariable3.isFinalValue) {
            solverVariable3.setFinalValue(this, arrayRow.f2594b);
        }
        if (OPTIMIZED_ENGINE) {
            this.f2614k.f2598a.release(arrayRow);
        } else {
            this.f2614k.f2599b.release(arrayRow);
        }
    }

    public void reset() {
        Cache cache;
        int i = 0;
        while (true) {
            cache = this.f2614k;
            SolverVariable[] solverVariableArr = cache.f2601d;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.reset();
            }
            i++;
        }
        cache.f2600c.mo1414a(this.f2615l, this.f2616m);
        this.f2616m = 0;
        Arrays.fill(this.f2614k.f2601d, (Object) null);
        HashMap<String, SolverVariable> hashMap = this.f2605b;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f2604a = 0;
        this.f2606c.clear();
        this.f2611h = 1;
        for (int i2 = 0; i2 < this.f2612i; i2++) {
            ArrayRow arrayRow = this.f2609f[i2];
            if (arrayRow != null) {
                arrayRow.f2595c = false;
            }
        }
        m1391v();
        this.f2612i = 0;
        if (OPTIMIZED_ENGINE) {
            this.f2617n = new C0385b(this.f2614k);
        } else {
            this.f2617n = new ArrayRow(this.f2614k);
        }
    }

    /* renamed from: s */
    public final void m1388s() {
        int i = this.f2607d * 2;
        this.f2607d = i;
        this.f2609f = (ArrayRow[]) Arrays.copyOf(this.f2609f, i);
        Cache cache = this.f2614k;
        cache.f2601d = (SolverVariable[]) Arrays.copyOf(cache.f2601d, this.f2607d);
        int i2 = this.f2607d;
        this.f2610g = new boolean[i2];
        this.f2608e = i2;
        this.f2613j = i2;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            metrics.maxTableSize = Math.max(metrics.maxTableSize, i2);
            Metrics metrics2 = sMetrics;
            metrics2.lastTableSize = metrics2.maxTableSize;
        }
    }

    /* renamed from: t */
    public void m1389t(InterfaceC0384a interfaceC0384a) throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            metrics.maxVariables = Math.max(metrics.maxVariables, this.f2611h);
            Metrics metrics2 = sMetrics;
            metrics2.maxRows = Math.max(metrics2.maxRows, this.f2612i);
        }
        m1381l(interfaceC0384a);
        m1390u(interfaceC0384a, false);
        m1376g();
    }

    /* renamed from: u */
    public final int m1390u(InterfaceC0384a interfaceC0384a, boolean z) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int i = 0; i < this.f2611h; i++) {
            this.f2610g[i] = false;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            i2++;
            if (i2 >= this.f2611h * 2) {
                return i2;
            }
            if (interfaceC0384a.getKey() != null) {
                this.f2610g[interfaceC0384a.getKey().f2645id] = true;
            }
            SolverVariable pivotCandidate = interfaceC0384a.getPivotCandidate(this, this.f2610g);
            if (pivotCandidate != null) {
                boolean[] zArr = this.f2610g;
                int i3 = pivotCandidate.f2645id;
                if (zArr[i3]) {
                    return i2;
                }
                zArr[i3] = true;
            }
            if (pivotCandidate != null) {
                float f = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.f2612i; i5++) {
                    ArrayRow arrayRow = this.f2609f[i5];
                    if (arrayRow.f2593a.f2644i != SolverVariable.Type.UNRESTRICTED && !arrayRow.f2597e && arrayRow.m1364i(pivotCandidate)) {
                        float f2 = arrayRow.variables.get(pivotCandidate);
                        if (f2 < 0.0f) {
                            float f3 = (-arrayRow.f2594b) / f2;
                            if (f3 < f) {
                                i4 = i5;
                                f = f3;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    ArrayRow arrayRow2 = this.f2609f[i4];
                    arrayRow2.f2593a.f2641f = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow2.m1367l(pivotCandidate);
                    SolverVariable solverVariable = arrayRow2.f2593a;
                    solverVariable.f2641f = i4;
                    solverVariable.updateReferencesWithNewDefinition(this, arrayRow2);
                }
            } else {
                z2 = true;
            }
        }
        return i2;
    }

    /* renamed from: v */
    public final void m1391v() {
        int i = 0;
        if (OPTIMIZED_ENGINE) {
            while (i < this.f2612i) {
                ArrayRow arrayRow = this.f2609f[i];
                if (arrayRow != null) {
                    this.f2614k.f2598a.release(arrayRow);
                }
                this.f2609f[i] = null;
                i++;
            }
            return;
        }
        while (i < this.f2612i) {
            ArrayRow arrayRow2 = this.f2609f[i];
            if (arrayRow2 != null) {
                this.f2614k.f2599b.release(arrayRow2);
            }
            this.f2609f[i] = null;
            i++;
        }
    }

    public void addEquality(SolverVariable solverVariable, int i) {
        if (USE_BASIC_SYNONYMS && solverVariable.f2641f == -1) {
            float f = i;
            solverVariable.setFinalValue(this, f);
            for (int i2 = 0; i2 < this.f2604a + 1; i2++) {
                SolverVariable solverVariable2 = this.f2614k.f2601d[i2];
                if (solverVariable2 != null && solverVariable2.f2648l && solverVariable2.f2649m == solverVariable.f2645id) {
                    solverVariable2.setFinalValue(this, solverVariable2.f2650n + f);
                }
            }
            return;
        }
        int i3 = solverVariable.f2641f;
        if (i3 != -1) {
            ArrayRow arrayRow = this.f2609f[i3];
            if (arrayRow.f2597e) {
                arrayRow.f2594b = i;
                return;
            }
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.f2597e = true;
                arrayRow.f2594b = i;
                return;
            } else {
                ArrayRow createRow = createRow();
                createRow.createRowEquals(solverVariable, i);
                addConstraint(createRow);
                return;
            }
        }
        ArrayRow createRow2 = createRow();
        createRow2.m1360e(solverVariable, i);
        addConstraint(createRow2);
    }
}
