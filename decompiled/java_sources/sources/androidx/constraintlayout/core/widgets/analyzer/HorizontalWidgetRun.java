package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;

/* loaded from: classes3.dex */
public class HorizontalWidgetRun extends WidgetRun {

    /* renamed from: e */
    public static int[] f3408e = new int[2];

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0420a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3409a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f3409a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3409a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3409a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.start.f3394b = DependencyNode.Type.LEFT;
        this.end.f3394b = DependencyNode.Type.RIGHT;
        this.orientation = 0;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: a */
    public void mo1644a() {
        ConstraintWidget parent;
        ConstraintWidget parent2;
        ConstraintWidget constraintWidget = this.f3428a;
        if (constraintWidget.measured) {
            this.f3430c.resolve(constraintWidget.getWidth());
        }
        if (this.f3430c.resolved) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.dimensionBehavior;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour == dimensionBehaviour2 && (parent = this.f3428a.getParent()) != null && (parent.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED || parent.getHorizontalDimensionBehaviour() == dimensionBehaviour2)) {
                addTarget(this.start, parent.horizontalRun.start, this.f3428a.mLeft.getMargin());
                addTarget(this.end, parent.horizontalRun.end, -this.f3428a.mRight.getMargin());
                return;
            }
        } else {
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = this.f3428a.getHorizontalDimensionBehaviour();
            this.dimensionBehavior = horizontalDimensionBehaviour;
            if (horizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (horizontalDimensionBehaviour == dimensionBehaviour3 && (parent2 = this.f3428a.getParent()) != null && (parent2.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED || parent2.getHorizontalDimensionBehaviour() == dimensionBehaviour3)) {
                    int width = (parent2.getWidth() - this.f3428a.mLeft.getMargin()) - this.f3428a.mRight.getMargin();
                    addTarget(this.start, parent2.horizontalRun.start, this.f3428a.mLeft.getMargin());
                    addTarget(this.end, parent2.horizontalRun.end, -this.f3428a.mRight.getMargin());
                    this.f3430c.resolve(width);
                    return;
                }
                if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f3430c.resolve(this.f3428a.getWidth());
                }
            }
        }
        C0424a c0424a = this.f3430c;
        if (c0424a.resolved) {
            ConstraintWidget constraintWidget2 = this.f3428a;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                if (constraintAnchor2 != null && constraintAnchorArr[1].mTarget != null) {
                    if (constraintWidget2.isInHorizontalChain()) {
                        this.start.f3395c = this.f3428a.mListAnchors[0].getMargin();
                        this.end.f3395c = -this.f3428a.mListAnchors[1].getMargin();
                        return;
                    }
                    DependencyNode target = getTarget(this.f3428a.mListAnchors[0]);
                    if (target != null) {
                        addTarget(this.start, target, this.f3428a.mListAnchors[0].getMargin());
                    }
                    DependencyNode target2 = getTarget(this.f3428a.mListAnchors[1]);
                    if (target2 != null) {
                        addTarget(this.end, target2, -this.f3428a.mListAnchors[1].getMargin());
                    }
                    this.start.delegateToWidgetRun = true;
                    this.end.delegateToWidgetRun = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode target3 = getTarget(constraintAnchor);
                    if (target3 != null) {
                        addTarget(this.start, target3, this.f3428a.mListAnchors[0].getMargin());
                        addTarget(this.end, this.start, this.f3430c.value);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.mTarget != null) {
                    DependencyNode target4 = getTarget(constraintAnchor3);
                    if (target4 != null) {
                        addTarget(this.end, target4, -this.f3428a.mListAnchors[1].getMargin());
                        addTarget(this.start, this.end, -this.f3430c.value);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof Helper) || constraintWidget2.getParent() == null || this.f3428a.getAnchor(ConstraintAnchor.Type.CENTER).mTarget != null) {
                    return;
                }
                addTarget(this.start, this.f3428a.getParent().horizontalRun.start, this.f3428a.getX());
                addTarget(this.end, this.start, this.f3430c.value);
                return;
            }
        }
        if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f3428a;
            int i = constraintWidget3.mMatchConstraintDefaultWidth;
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
            } else if (i == 3) {
                if (constraintWidget3.mMatchConstraintDefaultHeight == 3) {
                    this.start.updateDelegate = this;
                    this.end.updateDelegate = this;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget3.verticalRun;
                    verticalWidgetRun.start.updateDelegate = this;
                    verticalWidgetRun.end.updateDelegate = this;
                    c0424a.updateDelegate = this;
                    if (constraintWidget3.isInVerticalChain()) {
                        this.f3430c.f3399g.add(this.f3428a.verticalRun.f3430c);
                        this.f3428a.verticalRun.f3430c.f3398f.add(this.f3430c);
                        VerticalWidgetRun verticalWidgetRun2 = this.f3428a.verticalRun;
                        verticalWidgetRun2.f3430c.updateDelegate = this;
                        this.f3430c.f3399g.add(verticalWidgetRun2.start);
                        this.f3430c.f3399g.add(this.f3428a.verticalRun.end);
                        this.f3428a.verticalRun.start.f3398f.add(this.f3430c);
                        this.f3428a.verticalRun.end.f3398f.add(this.f3430c);
                    } else if (this.f3428a.isInHorizontalChain()) {
                        this.f3428a.verticalRun.f3430c.f3399g.add(this.f3430c);
                        this.f3430c.f3398f.add(this.f3428a.verticalRun.f3430c);
                    } else {
                        this.f3428a.verticalRun.f3430c.f3399g.add(this.f3430c);
                    }
                } else {
                    C0424a c0424a4 = constraintWidget3.verticalRun.f3430c;
                    c0424a.f3399g.add(c0424a4);
                    c0424a4.f3398f.add(this.f3430c);
                    this.f3428a.verticalRun.start.f3398f.add(this.f3430c);
                    this.f3428a.verticalRun.end.f3398f.add(this.f3430c);
                    C0424a c0424a5 = this.f3430c;
                    c0424a5.delegateToWidgetRun = true;
                    c0424a5.f3398f.add(this.start);
                    this.f3430c.f3398f.add(this.end);
                    this.start.f3399g.add(this.f3430c);
                    this.end.f3399g.add(this.f3430c);
                }
            }
        }
        ConstraintWidget constraintWidget4 = this.f3428a;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget4.mListAnchors;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.mTarget;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].mTarget != null) {
            if (constraintWidget4.isInHorizontalChain()) {
                this.start.f3395c = this.f3428a.mListAnchors[0].getMargin();
                this.end.f3395c = -this.f3428a.mListAnchors[1].getMargin();
                return;
            }
            DependencyNode target5 = getTarget(this.f3428a.mListAnchors[0]);
            DependencyNode target6 = getTarget(this.f3428a.mListAnchors[1]);
            if (target5 != null) {
                target5.addDependency(this);
            }
            if (target6 != null) {
                target6.addDependency(this);
            }
            this.mRunType = WidgetRun.RunType.CENTER;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode target7 = getTarget(constraintAnchor4);
            if (target7 != null) {
                addTarget(this.start, target7, this.f3428a.mListAnchors[0].getMargin());
                addTarget(this.end, this.start, 1, this.f3430c);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.mTarget != null) {
            DependencyNode target8 = getTarget(constraintAnchor6);
            if (target8 != null) {
                addTarget(this.end, target8, -this.f3428a.mListAnchors[1].getMargin());
                addTarget(this.start, this.end, -1, this.f3430c);
                return;
            }
            return;
        }
        if ((constraintWidget4 instanceof Helper) || constraintWidget4.getParent() == null) {
            return;
        }
        addTarget(this.start, this.f3428a.getParent().horizontalRun.start, this.f3428a.getX());
        addTarget(this.end, this.start, 1, this.f3430c);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.f3428a.setX(dependencyNode.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: b */
    public void mo1645b() {
        this.f3429b = null;
        this.start.clear();
        this.end.clear();
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
        this.f3430c.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public boolean mo1647e() {
        return this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f3428a.mMatchConstraintDefaultWidth == 0;
    }

    /* renamed from: f */
    public final void m1672f(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    public String toString() {
        return "HorizontalRun " + this.f3428a.getDebugName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x02b9, code lost:
    
        if (r14 != 1) goto L135;
     */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(androidx.constraintlayout.core.widgets.analyzer.Dependency r17) {
        /*
            Method dump skipped, instructions count: 1087
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun.update(androidx.constraintlayout.core.widgets.analyzer.Dependency):void");
    }
}
