package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import java.util.Iterator;

/* renamed from: androidx.constraintlayout.core.widgets.analyzer.b */
/* loaded from: classes3.dex */
public class C0425b extends WidgetRun {
    public C0425b(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: a */
    public void mo1644a() {
        ConstraintWidget constraintWidget = this.f3428a;
        if (constraintWidget instanceof Barrier) {
            this.start.delegateToWidgetRun = true;
            Barrier barrier = (Barrier) constraintWidget;
            int barrierType = barrier.getBarrierType();
            boolean allowsGoneWidget = barrier.getAllowsGoneWidget();
            int i = 0;
            if (barrierType == 0) {
                this.start.f3394b = DependencyNode.Type.LEFT;
                while (i < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget2 = barrier.mWidgets[i];
                    if (allowsGoneWidget || constraintWidget2.getVisibility() != 8) {
                        DependencyNode dependencyNode = constraintWidget2.horizontalRun.start;
                        dependencyNode.f3398f.add(this.start);
                        this.start.f3399g.add(dependencyNode);
                    }
                    i++;
                }
                m1679f(this.f3428a.horizontalRun.start);
                m1679f(this.f3428a.horizontalRun.end);
                return;
            }
            if (barrierType == 1) {
                this.start.f3394b = DependencyNode.Type.RIGHT;
                while (i < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget3 = barrier.mWidgets[i];
                    if (allowsGoneWidget || constraintWidget3.getVisibility() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget3.horizontalRun.end;
                        dependencyNode2.f3398f.add(this.start);
                        this.start.f3399g.add(dependencyNode2);
                    }
                    i++;
                }
                m1679f(this.f3428a.horizontalRun.start);
                m1679f(this.f3428a.horizontalRun.end);
                return;
            }
            if (barrierType == 2) {
                this.start.f3394b = DependencyNode.Type.TOP;
                while (i < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget4 = barrier.mWidgets[i];
                    if (allowsGoneWidget || constraintWidget4.getVisibility() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget4.verticalRun.start;
                        dependencyNode3.f3398f.add(this.start);
                        this.start.f3399g.add(dependencyNode3);
                    }
                    i++;
                }
                m1679f(this.f3428a.verticalRun.start);
                m1679f(this.f3428a.verticalRun.end);
                return;
            }
            if (barrierType != 3) {
                return;
            }
            this.start.f3394b = DependencyNode.Type.BOTTOM;
            while (i < barrier.mWidgetsCount) {
                ConstraintWidget constraintWidget5 = barrier.mWidgets[i];
                if (allowsGoneWidget || constraintWidget5.getVisibility() != 8) {
                    DependencyNode dependencyNode4 = constraintWidget5.verticalRun.end;
                    dependencyNode4.f3398f.add(this.start);
                    this.start.f3399g.add(dependencyNode4);
                }
                i++;
            }
            m1679f(this.f3428a.verticalRun.start);
            m1679f(this.f3428a.verticalRun.end);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        ConstraintWidget constraintWidget = this.f3428a;
        if (constraintWidget instanceof Barrier) {
            int barrierType = ((Barrier) constraintWidget).getBarrierType();
            if (barrierType == 0 || barrierType == 1) {
                this.f3428a.setX(this.start.value);
            } else {
                this.f3428a.setY(this.start.value);
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: b */
    public void mo1645b() {
        this.f3429b = null;
        this.start.clear();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: c */
    public void mo1646c() {
        this.start.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public boolean mo1647e() {
        return false;
    }

    /* renamed from: f */
    public final void m1679f(DependencyNode dependencyNode) {
        this.start.f3398f.add(dependencyNode);
        dependencyNode.f3399g.add(this.start);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        Barrier barrier = (Barrier) this.f3428a;
        int barrierType = barrier.getBarrierType();
        Iterator<DependencyNode> it2 = this.start.f3399g.iterator();
        int i = 0;
        int i2 = -1;
        while (it2.hasNext()) {
            int i3 = it2.next().value;
            if (i2 == -1 || i3 < i2) {
                i2 = i3;
            }
            if (i < i3) {
                i = i3;
            }
        }
        if (barrierType == 0 || barrierType == 2) {
            this.start.resolve(i2 + barrier.getMargin());
        } else {
            this.start.resolve(i + barrier.getMargin());
        }
    }
}
