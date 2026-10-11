package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class ChainRun extends WidgetRun {

    /* renamed from: e */
    public ArrayList<WidgetRun> f3381e;

    /* renamed from: f */
    public int f3382f;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.f3381e = new ArrayList<>();
        this.orientation = i;
        m1648f();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: a */
    public void mo1644a() {
        Iterator<WidgetRun> it2 = this.f3381e.iterator();
        while (it2.hasNext()) {
            it2.next().mo1644a();
        }
        int size = this.f3381e.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.f3381e.get(0).f3428a;
        ConstraintWidget constraintWidget2 = this.f3381e.get(size - 1).f3428a;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget m1649g = m1649g();
            if (m1649g != null) {
                margin = m1649g.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget m1650h = m1650h();
            if (m1650h != null) {
                margin2 = m1650h.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget m1649g2 = m1649g();
            if (m1649g2 != null) {
                margin3 = m1649g2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget m1650h2 = m1650h();
            if (m1650h2 != null) {
                margin4 = m1650h2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i = 0; i < this.f3381e.size(); i++) {
            this.f3381e.get(i).applyToWidget();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    /* renamed from: b */
    public void mo1645b() {
        this.f3429b = null;
        Iterator<WidgetRun> it2 = this.f3381e.iterator();
        while (it2.hasNext()) {
            it2.next().mo1645b();
        }
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
        int size = this.f3381e.size();
        for (int i = 0; i < size; i++) {
            if (!this.f3381e.get(i).mo1647e()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final void m1648f() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.f3428a;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.f3428a = constraintWidget;
        this.f3381e.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.f3381e.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        Iterator<WidgetRun> it2 = this.f3381e.iterator();
        while (it2.hasNext()) {
            WidgetRun next = it2.next();
            int i = this.orientation;
            if (i == 0) {
                next.f3428a.horizontalChainRun = this;
            } else if (i == 1) {
                next.f3428a.verticalChainRun = this;
            }
        }
        if ((this.orientation == 0 && ((ConstraintWidgetContainer) this.f3428a.getParent()).isRtl()) && this.f3381e.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.f3381e;
            this.f3428a = arrayList.get(arrayList.size() - 1).f3428a;
        }
        this.f3382f = this.orientation == 0 ? this.f3428a.getHorizontalChainStyle() : this.f3428a.getVerticalChainStyle();
    }

    /* renamed from: g */
    public final ConstraintWidget m1649g() {
        for (int i = 0; i < this.f3381e.size(); i++) {
            WidgetRun widgetRun = this.f3381e.get(i);
            if (widgetRun.f3428a.getVisibility() != 8) {
                return widgetRun.f3428a;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.f3381e.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = j + r4.start.f3395c + this.f3381e.get(i).getWrapDimension() + r4.end.f3395c;
        }
        return j;
    }

    /* renamed from: h */
    public final ConstraintWidget m1650h() {
        for (int size = this.f3381e.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.f3381e.get(size);
            if (widgetRun.f3428a.getVisibility() != 8) {
                return widgetRun.f3428a;
            }
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        Iterator<WidgetRun> it2 = this.f3381e.iterator();
        while (it2.hasNext()) {
            WidgetRun next = it2.next();
            sb.append("<");
            sb.append(next);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:288:0x0400, code lost:
    
        r7 = r7 - r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e9  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(androidx.constraintlayout.core.widgets.analyzer.Dependency r27) {
        /*
            Method dump skipped, instructions count: 1064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.ChainRun.update(androidx.constraintlayout.core.widgets.analyzer.Dependency):void");
    }
}
