package com.sunia.HTREnginev2;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.analyzer.Dependency;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;

/* loaded from: classes3.dex */
public class n6h extends WidgetRun {
    public n6h(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        constraintWidget.horizontalRun.mo1645b();
        constraintWidget.verticalRun.mo1645b();
        this.orientation = ((Guideline) constraintWidget).getOrientation();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: a */
    public void mo1644a() {
        Guideline guideline = (Guideline) this.f3428a;
        int relativeBegin = guideline.getRelativeBegin();
        int relativeEnd = guideline.getRelativeEnd();
        guideline.getRelativePercent();
        if (guideline.getOrientation() == 1) {
            if (relativeBegin != -1) {
                this.start.f3399g.add(this.f3428a.mParent.horizontalRun.start);
                this.f3428a.mParent.horizontalRun.start.f3398f.add(this.start);
                this.start.f3395c = relativeBegin;
            } else if (relativeEnd != -1) {
                this.start.f3399g.add(this.f3428a.mParent.horizontalRun.end);
                this.f3428a.mParent.horizontalRun.end.f3398f.add(this.start);
                this.start.f3395c = -relativeEnd;
            } else {
                DependencyNode dependencyNode = this.start;
                dependencyNode.delegateToWidgetRun = true;
                dependencyNode.f3399g.add(this.f3428a.mParent.horizontalRun.end);
                this.f3428a.mParent.horizontalRun.end.f3398f.add(this.start);
            }
            m55714f(this.f3428a.horizontalRun.start);
            m55714f(this.f3428a.horizontalRun.end);
            return;
        }
        if (relativeBegin != -1) {
            this.start.f3399g.add(this.f3428a.mParent.verticalRun.start);
            this.f3428a.mParent.verticalRun.start.f3398f.add(this.start);
            this.start.f3395c = relativeBegin;
        } else if (relativeEnd != -1) {
            this.start.f3399g.add(this.f3428a.mParent.verticalRun.end);
            this.f3428a.mParent.verticalRun.end.f3398f.add(this.start);
            this.start.f3395c = -relativeEnd;
        } else {
            DependencyNode dependencyNode2 = this.start;
            dependencyNode2.delegateToWidgetRun = true;
            dependencyNode2.f3399g.add(this.f3428a.mParent.verticalRun.end);
            this.f3428a.mParent.verticalRun.end.f3398f.add(this.start);
        }
        m55714f(this.f3428a.verticalRun.start);
        m55714f(this.f3428a.verticalRun.end);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        if (((Guideline) this.f3428a).getOrientation() == 1) {
            this.f3428a.setX(this.start.value);
        } else {
            this.f3428a.setY(this.start.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: b */
    public void mo1645b() {
        this.start.clear();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: c */
    public void mo1646c() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public boolean mo1647e() {
        return false;
    }

    /* renamed from: f */
    public final void m55714f(DependencyNode dependencyNode) {
        this.start.f3398f.add(dependencyNode);
        dependencyNode.f3399g.add(this.start);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.readyToSolve && !dependencyNode.resolved) {
            this.start.resolve((int) ((dependencyNode.f3399g.get(0).value * ((Guideline) this.f3428a).getRelativePercent()) + 0.5f));
        }
    }
}
