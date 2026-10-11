package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.sunia.HTREnginev2.eul;

/* loaded from: classes3.dex */
public abstract class WidgetRun implements Dependency {

    /* renamed from: a */
    public ConstraintWidget f3428a;

    /* renamed from: b */
    public eul f3429b;
    protected ConstraintWidget.DimensionBehaviour dimensionBehavior;
    public int matchConstraintsType;

    /* renamed from: c */
    public C0424a f3430c = new C0424a(this);
    public int orientation = 0;

    /* renamed from: d */
    public boolean f3431d = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    /* loaded from: classes3.dex */
    public enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetRun$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0423a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3432a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f3432a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3432a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3432a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3432a[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3432a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.f3428a = constraintWidget;
    }

    /* renamed from: a */
    public abstract void mo1644a();

    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.f3399g.add(dependencyNode2);
        dependencyNode.f3395c = i;
        dependencyNode2.f3398f.add(dependencyNode);
    }

    public abstract void applyToWidget();

    /* renamed from: b */
    public abstract void mo1645b();

    /* renamed from: c */
    public abstract void mo1646c();

    /* renamed from: d */
    public final void m1678d(int i, int i2) {
        int i3 = this.matchConstraintsType;
        if (i3 == 0) {
            this.f3430c.resolve(getLimitedDimension(i2, i));
            return;
        }
        if (i3 == 1) {
            this.f3430c.resolve(Math.min(getLimitedDimension(this.f3430c.f3433h, i), i2));
            return;
        }
        if (i3 == 2) {
            ConstraintWidget parent = this.f3428a.getParent();
            if (parent != null) {
                if ((i == 0 ? parent.horizontalRun : parent.verticalRun).f3430c.resolved) {
                    ConstraintWidget constraintWidget = this.f3428a;
                    this.f3430c.resolve(getLimitedDimension((int) ((r9.value * (i == 0 ? constraintWidget.mMatchConstraintPercentWidth : constraintWidget.mMatchConstraintPercentHeight)) + 0.5f), i));
                    return;
                }
                return;
            }
            return;
        }
        if (i3 != 3) {
            return;
        }
        ConstraintWidget constraintWidget2 = this.f3428a;
        WidgetRun widgetRun = constraintWidget2.horizontalRun;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun.dimensionBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour == dimensionBehaviour2 && widgetRun.matchConstraintsType == 3) {
            VerticalWidgetRun verticalWidgetRun = constraintWidget2.verticalRun;
            if (verticalWidgetRun.dimensionBehavior == dimensionBehaviour2 && verticalWidgetRun.matchConstraintsType == 3) {
                return;
            }
        }
        if (i == 0) {
            widgetRun = constraintWidget2.verticalRun;
        }
        if (widgetRun.f3430c.resolved) {
            float dimensionRatio = constraintWidget2.getDimensionRatio();
            this.f3430c.resolve(i == 1 ? (int) ((widgetRun.f3430c.value / dimensionRatio) + 0.5f) : (int) ((dimensionRatio * widgetRun.f3430c.value) + 0.5f));
        }
    }

    /* renamed from: e */
    public abstract boolean mo1647e();

    public final int getLimitedDimension(int i, int i2) {
        int max;
        if (i2 == 0) {
            ConstraintWidget constraintWidget = this.f3428a;
            int i3 = constraintWidget.mMatchConstraintMaxWidth;
            max = Math.max(constraintWidget.mMatchConstraintMinWidth, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max == i) {
                return i;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.f3428a;
            int i4 = constraintWidget2.mMatchConstraintMaxHeight;
            max = Math.max(constraintWidget2.mMatchConstraintMinHeight, i);
            if (i4 > 0) {
                max = Math.min(i4, i);
            }
            if (max == i) {
                return i;
            }
        }
        return max;
    }

    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        int i = C0423a.f3432a[constraintAnchor2.mType.ordinal()];
        if (i == 1) {
            return constraintWidget.horizontalRun.start;
        }
        if (i == 2) {
            return constraintWidget.horizontalRun.end;
        }
        if (i == 3) {
            return constraintWidget.verticalRun.start;
        }
        if (i == 4) {
            return constraintWidget.verticalRun.baseline;
        }
        if (i != 5) {
            return null;
        }
        return constraintWidget.verticalRun.end;
    }

    public long getWrapDimension() {
        if (this.f3430c.resolved) {
            return r2.value;
        }
        return 0L;
    }

    public boolean isCenterConnection() {
        int size = this.start.f3399g.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (this.start.f3399g.get(i2).f3393a != this) {
                i++;
            }
        }
        int size2 = this.end.f3399g.size();
        for (int i3 = 0; i3 < size2; i3++) {
            if (this.end.f3399g.get(i3).f3393a != this) {
                i++;
            }
        }
        return i >= 2;
    }

    public boolean isDimensionResolved() {
        return this.f3430c.resolved;
    }

    public boolean isResolved() {
        return this.f3431d;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    public void updateRunCenter(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        DependencyNode target = getTarget(constraintAnchor);
        DependencyNode target2 = getTarget(constraintAnchor2);
        if (target.resolved && target2.resolved) {
            int margin = target.value + constraintAnchor.getMargin();
            int margin2 = target2.value - constraintAnchor2.getMargin();
            int i2 = margin2 - margin;
            if (!this.f3430c.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                m1678d(i, i2);
            }
            C0424a c0424a = this.f3430c;
            if (c0424a.resolved) {
                if (c0424a.value == i2) {
                    this.start.resolve(margin);
                    this.end.resolve(margin2);
                    return;
                }
                ConstraintWidget constraintWidget = this.f3428a;
                float horizontalBiasPercent = i == 0 ? constraintWidget.getHorizontalBiasPercent() : constraintWidget.getVerticalBiasPercent();
                if (target == target2) {
                    margin = target.value;
                    margin2 = target2.value;
                    horizontalBiasPercent = 0.5f;
                }
                this.start.resolve((int) (margin + 0.5f + (((margin2 - margin) - this.f3430c.value) * horizontalBiasPercent)));
                this.end.resolve(this.start.value + this.f3430c.value);
            }
        }
    }

    public void updateRunEnd(Dependency dependency) {
    }

    public void updateRunStart(Dependency dependency) {
    }

    public long wrapSize(int i) {
        long j;
        C0424a c0424a = this.f3430c;
        if (!c0424a.resolved) {
            return 0L;
        }
        long j2 = c0424a.value;
        if (isCenterConnection()) {
            j = this.start.f3395c - this.end.f3395c;
        } else {
            if (i != 0) {
                return j2 - this.end.f3395c;
            }
            j = this.start.f3395c;
        }
        return j2 + j;
    }

    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, C0424a c0424a) {
        dependencyNode.f3399g.add(dependencyNode2);
        dependencyNode.f3399g.add(this.f3430c);
        dependencyNode.f3396d = i;
        dependencyNode.f3397e = c0424a;
        dependencyNode2.f3398f.add(dependencyNode);
        c0424a.f3398f.add(dependencyNode);
    }

    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        WidgetRun widgetRun = i == 0 ? constraintWidget.horizontalRun : constraintWidget.verticalRun;
        int i2 = C0423a.f3432a[constraintAnchor2.mType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.end;
        }
        return widgetRun.start;
    }
}
