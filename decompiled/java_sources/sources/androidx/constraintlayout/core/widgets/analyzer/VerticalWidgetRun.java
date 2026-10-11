package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import com.sunia.HTREnginev2.C14055lo;

/* loaded from: classes3.dex */
public class VerticalWidgetRun extends WidgetRun {
    public DependencyNode baseline;

    /* renamed from: e */
    public C0424a f3410e;

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0421a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3411a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f3411a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3411a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3411a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.baseline = dependencyNode;
        this.f3410e = null;
        this.start.f3394b = DependencyNode.Type.TOP;
        this.end.f3394b = DependencyNode.Type.BOTTOM;
        dependencyNode.f3394b = DependencyNode.Type.BASELINE;
        this.orientation = 1;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: a */
    public void mo1644a() {
        ConstraintWidget parent;
        ConstraintWidget parent2;
        ConstraintWidget constraintWidget = this.f3428a;
        if (constraintWidget.measured) {
            this.f3430c.resolve(constraintWidget.getHeight());
        }
        if (!this.f3430c.resolved) {
            this.dimensionBehavior = this.f3428a.getVerticalDimensionBehaviour();
            if (this.f3428a.hasBaseline()) {
                this.f3410e = new C14055lo(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.dimensionBehavior;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent2 = this.f3428a.getParent()) != null && parent2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int height = (parent2.getHeight() - this.f3428a.mTop.getMargin()) - this.f3428a.mBottom.getMargin();
                    addTarget(this.start, parent2.verticalRun.start, this.f3428a.mTop.getMargin());
                    addTarget(this.end, parent2.verticalRun.end, -this.f3428a.mBottom.getMargin());
                    this.f3430c.resolve(height);
                    return;
                }
                if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f3430c.resolve(this.f3428a.getHeight());
                }
            }
        } else if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent = this.f3428a.getParent()) != null && parent.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
            addTarget(this.start, parent.verticalRun.start, this.f3428a.mTop.getMargin());
            addTarget(this.end, parent.verticalRun.end, -this.f3428a.mBottom.getMargin());
            return;
        }
        C0424a c0424a = this.f3430c;
        boolean z = c0424a.resolved;
        if (z) {
            ConstraintWidget constraintWidget2 = this.f3428a;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[2];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                if (constraintAnchor2 != null && constraintAnchorArr[3].mTarget != null) {
                    if (constraintWidget2.isInVerticalChain()) {
                        this.start.f3395c = this.f3428a.mListAnchors[2].getMargin();
                        this.end.f3395c = -this.f3428a.mListAnchors[3].getMargin();
                    } else {
                        DependencyNode target = getTarget(this.f3428a.mListAnchors[2]);
                        if (target != null) {
                            addTarget(this.start, target, this.f3428a.mListAnchors[2].getMargin());
                        }
                        DependencyNode target2 = getTarget(this.f3428a.mListAnchors[3]);
                        if (target2 != null) {
                            addTarget(this.end, target2, -this.f3428a.mListAnchors[3].getMargin());
                        }
                        this.start.delegateToWidgetRun = true;
                        this.end.delegateToWidgetRun = true;
                    }
                    if (this.f3428a.hasBaseline()) {
                        addTarget(this.baseline, this.start, this.f3428a.getBaselineDistance());
                        return;
                    }
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode target3 = getTarget(constraintAnchor);
                    if (target3 != null) {
                        addTarget(this.start, target3, this.f3428a.mListAnchors[2].getMargin());
                        addTarget(this.end, this.start, this.f3430c.value);
                        if (this.f3428a.hasBaseline()) {
                            addTarget(this.baseline, this.start, this.f3428a.getBaselineDistance());
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[3];
                if (constraintAnchor3.mTarget != null) {
                    DependencyNode target4 = getTarget(constraintAnchor3);
                    if (target4 != null) {
                        addTarget(this.end, target4, -this.f3428a.mListAnchors[3].getMargin());
                        addTarget(this.start, this.end, -this.f3430c.value);
                    }
                    if (this.f3428a.hasBaseline()) {
                        addTarget(this.baseline, this.start, this.f3428a.getBaselineDistance());
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor4 = constraintAnchorArr[4];
                if (constraintAnchor4.mTarget != null) {
                    DependencyNode target5 = getTarget(constraintAnchor4);
                    if (target5 != null) {
                        addTarget(this.baseline, target5, 0);
                        addTarget(this.start, this.baseline, -this.f3428a.getBaselineDistance());
                        addTarget(this.end, this.start, this.f3430c.value);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof Helper) || constraintWidget2.getParent() == null || this.f3428a.getAnchor(ConstraintAnchor.Type.CENTER).mTarget != null) {
                    return;
                }
                addTarget(this.start, this.f3428a.getParent().verticalRun.start, this.f3428a.getY());
                addTarget(this.end, this.start, this.f3430c.value);
                if (this.f3428a.hasBaseline()) {
                    addTarget(this.baseline, this.start, this.f3428a.getBaselineDistance());
                    return;
                }
                return;
            }
        }
        if (z || this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            c0424a.addDependency(this);
        } else {
            ConstraintWidget constraintWidget3 = this.f3428a;
            int i = constraintWidget3.mMatchConstraintDefaultHeight;
            if (i == 2) {
                ConstraintWidget parent3 = constraintWidget3.getParent();
                if (parent3 != null) {
                    C0424a c0424a2 = parent3.verticalRun.f3430c;
                    this.f3430c.f3399g.add(c0424a2);
                    c0424a2.f3398f.add(this.f3430c);
                    C0424a c0424a3 = this.f3430c;
                    c0424a3.delegateToWidgetRun = true;
                    c0424a3.f3398f.add(this.start);
                    this.f3430c.f3398f.add(this.end);
                }
            } else if (i == 3 && !constraintWidget3.isInVerticalChain()) {
                ConstraintWidget constraintWidget4 = this.f3428a;
                if (constraintWidget4.mMatchConstraintDefaultWidth != 3) {
                    C0424a c0424a4 = constraintWidget4.horizontalRun.f3430c;
                    this.f3430c.f3399g.add(c0424a4);
                    c0424a4.f3398f.add(this.f3430c);
                    C0424a c0424a5 = this.f3430c;
                    c0424a5.delegateToWidgetRun = true;
                    c0424a5.f3398f.add(this.start);
                    this.f3430c.f3398f.add(this.end);
                }
            }
        }
        ConstraintWidget constraintWidget5 = this.f3428a;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget5.mListAnchors;
        ConstraintAnchor constraintAnchor5 = constraintAnchorArr2[2];
        ConstraintAnchor constraintAnchor6 = constraintAnchor5.mTarget;
        if (constraintAnchor6 != null && constraintAnchorArr2[3].mTarget != null) {
            if (constraintWidget5.isInVerticalChain()) {
                this.start.f3395c = this.f3428a.mListAnchors[2].getMargin();
                this.end.f3395c = -this.f3428a.mListAnchors[3].getMargin();
            } else {
                DependencyNode target6 = getTarget(this.f3428a.mListAnchors[2]);
                DependencyNode target7 = getTarget(this.f3428a.mListAnchors[3]);
                if (target6 != null) {
                    target6.addDependency(this);
                }
                if (target7 != null) {
                    target7.addDependency(this);
                }
                this.mRunType = WidgetRun.RunType.CENTER;
            }
            if (this.f3428a.hasBaseline()) {
                addTarget(this.baseline, this.start, 1, this.f3410e);
            }
        } else if (constraintAnchor6 != null) {
            DependencyNode target8 = getTarget(constraintAnchor5);
            if (target8 != null) {
                addTarget(this.start, target8, this.f3428a.mListAnchors[2].getMargin());
                addTarget(this.end, this.start, 1, this.f3430c);
                if (this.f3428a.hasBaseline()) {
                    addTarget(this.baseline, this.start, 1, this.f3410e);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.dimensionBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3 && this.f3428a.getDimensionRatio() > 0.0f) {
                    HorizontalWidgetRun horizontalWidgetRun = this.f3428a.horizontalRun;
                    if (horizontalWidgetRun.dimensionBehavior == dimensionBehaviour3) {
                        horizontalWidgetRun.f3430c.f3398f.add(this.f3430c);
                        this.f3430c.f3399g.add(this.f3428a.horizontalRun.f3430c);
                        this.f3430c.updateDelegate = this;
                    }
                }
            }
        } else {
            ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[3];
            if (constraintAnchor7.mTarget != null) {
                DependencyNode target9 = getTarget(constraintAnchor7);
                if (target9 != null) {
                    addTarget(this.end, target9, -this.f3428a.mListAnchors[3].getMargin());
                    addTarget(this.start, this.end, -1, this.f3430c);
                    if (this.f3428a.hasBaseline()) {
                        addTarget(this.baseline, this.start, 1, this.f3410e);
                    }
                }
            } else {
                ConstraintAnchor constraintAnchor8 = constraintAnchorArr2[4];
                if (constraintAnchor8.mTarget != null) {
                    DependencyNode target10 = getTarget(constraintAnchor8);
                    if (target10 != null) {
                        addTarget(this.baseline, target10, 0);
                        addTarget(this.start, this.baseline, -1, this.f3410e);
                        addTarget(this.end, this.start, 1, this.f3430c);
                    }
                } else if (!(constraintWidget5 instanceof Helper) && constraintWidget5.getParent() != null) {
                    addTarget(this.start, this.f3428a.getParent().verticalRun.start, this.f3428a.getY());
                    addTarget(this.end, this.start, 1, this.f3430c);
                    if (this.f3428a.hasBaseline()) {
                        addTarget(this.baseline, this.start, 1, this.f3410e);
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.dimensionBehavior;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour4 == dimensionBehaviour5 && this.f3428a.getDimensionRatio() > 0.0f) {
                        HorizontalWidgetRun horizontalWidgetRun2 = this.f3428a.horizontalRun;
                        if (horizontalWidgetRun2.dimensionBehavior == dimensionBehaviour5) {
                            horizontalWidgetRun2.f3430c.f3398f.add(this.f3430c);
                            this.f3430c.f3399g.add(this.f3428a.horizontalRun.f3430c);
                            this.f3430c.updateDelegate = this;
                        }
                    }
                }
            }
        }
        if (this.f3430c.f3399g.size() == 0) {
            this.f3430c.readyToSolve = true;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.f3428a.setY(dependencyNode.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: b */
    public void mo1645b() {
        this.f3429b = null;
        this.start.clear();
        this.end.clear();
        this.baseline.clear();
        this.f3430c.clear();
        this.f3431d = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: c */
    public void mo1646c() {
        this.f3431d = false;
        this.start.clear();
        this.start.resolved = false;
        this.end.clear();
        this.end.resolved = false;
        this.baseline.clear();
        this.baseline.resolved = false;
        this.f3430c.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public boolean mo1647e() {
        return this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f3428a.mMatchConstraintDefaultHeight == 0;
    }

    public String toString() {
        return "VerticalRun " + this.f3428a.getDebugName();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        float f;
        float dimensionRatio;
        float f2;
        int i;
        int i2 = C0421a.f3411a[this.mRunType.ordinal()];
        if (i2 == 1) {
            updateRunStart(dependency);
        } else if (i2 == 2) {
            updateRunEnd(dependency);
        } else if (i2 == 3) {
            ConstraintWidget constraintWidget = this.f3428a;
            updateRunCenter(dependency, constraintWidget.mTop, constraintWidget.mBottom, 1);
            return;
        }
        C0424a c0424a = this.f3430c;
        if (c0424a.readyToSolve && !c0424a.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.f3428a;
            int i3 = constraintWidget2.mMatchConstraintDefaultHeight;
            if (i3 == 2) {
                ConstraintWidget parent = constraintWidget2.getParent();
                if (parent != null) {
                    if (parent.verticalRun.f3430c.resolved) {
                        this.f3430c.resolve((int) ((r7.value * this.f3428a.mMatchConstraintPercentHeight) + 0.5f));
                    }
                }
            } else if (i3 == 3 && constraintWidget2.horizontalRun.f3430c.resolved) {
                int dimensionRatioSide = constraintWidget2.getDimensionRatioSide();
                if (dimensionRatioSide == -1) {
                    ConstraintWidget constraintWidget3 = this.f3428a;
                    f = constraintWidget3.horizontalRun.f3430c.value;
                    dimensionRatio = constraintWidget3.getDimensionRatio();
                } else if (dimensionRatioSide == 0) {
                    f2 = r7.horizontalRun.f3430c.value * this.f3428a.getDimensionRatio();
                    i = (int) (f2 + 0.5f);
                    this.f3430c.resolve(i);
                } else if (dimensionRatioSide != 1) {
                    i = 0;
                    this.f3430c.resolve(i);
                } else {
                    ConstraintWidget constraintWidget4 = this.f3428a;
                    f = constraintWidget4.horizontalRun.f3430c.value;
                    dimensionRatio = constraintWidget4.getDimensionRatio();
                }
                f2 = f / dimensionRatio;
                i = (int) (f2 + 0.5f);
                this.f3430c.resolve(i);
            }
        }
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.readyToSolve) {
            DependencyNode dependencyNode2 = this.end;
            if (dependencyNode2.readyToSolve) {
                if (dependencyNode.resolved && dependencyNode2.resolved && this.f3430c.resolved) {
                    return;
                }
                if (!this.f3430c.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget5 = this.f3428a;
                    if (constraintWidget5.mMatchConstraintDefaultWidth == 0 && !constraintWidget5.isInVerticalChain()) {
                        DependencyNode dependencyNode3 = this.start.f3399g.get(0);
                        DependencyNode dependencyNode4 = this.end.f3399g.get(0);
                        int i4 = dependencyNode3.value;
                        DependencyNode dependencyNode5 = this.start;
                        int i5 = i4 + dependencyNode5.f3395c;
                        int i6 = dependencyNode4.value + this.end.f3395c;
                        dependencyNode5.resolve(i5);
                        this.end.resolve(i6);
                        this.f3430c.resolve(i6 - i5);
                        return;
                    }
                }
                if (!this.f3430c.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.matchConstraintsType == 1 && this.start.f3399g.size() > 0 && this.end.f3399g.size() > 0) {
                    DependencyNode dependencyNode6 = this.start.f3399g.get(0);
                    int i7 = (this.end.f3399g.get(0).value + this.end.f3395c) - (dependencyNode6.value + this.start.f3395c);
                    C0424a c0424a2 = this.f3430c;
                    int i8 = c0424a2.f3433h;
                    if (i7 < i8) {
                        c0424a2.resolve(i7);
                    } else {
                        c0424a2.resolve(i8);
                    }
                }
                if (this.f3430c.resolved && this.start.f3399g.size() > 0 && this.end.f3399g.size() > 0) {
                    DependencyNode dependencyNode7 = this.start.f3399g.get(0);
                    DependencyNode dependencyNode8 = this.end.f3399g.get(0);
                    int i9 = dependencyNode7.value + this.start.f3395c;
                    int i10 = dependencyNode8.value + this.end.f3395c;
                    float verticalBiasPercent = this.f3428a.getVerticalBiasPercent();
                    if (dependencyNode7 == dependencyNode8) {
                        i9 = dependencyNode7.value;
                        i10 = dependencyNode8.value;
                        verticalBiasPercent = 0.5f;
                    }
                    this.start.resolve((int) (i9 + 0.5f + (((i10 - i9) - this.f3430c.value) * verticalBiasPercent)));
                    this.end.resolve(this.start.value + this.f3430c.value);
                }
            }
        }
    }
}
