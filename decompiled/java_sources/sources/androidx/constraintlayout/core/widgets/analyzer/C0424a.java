package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;

/* renamed from: androidx.constraintlayout.core.widgets.analyzer.a */
/* loaded from: classes3.dex */
public class C0424a extends DependencyNode {

    /* renamed from: h */
    public int f3433h;

    public C0424a(WidgetRun widgetRun) {
        super(widgetRun);
        if (widgetRun instanceof HorizontalWidgetRun) {
            this.f3394b = DependencyNode.Type.HORIZONTAL_DIMENSION;
        } else {
            this.f3394b = DependencyNode.Type.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.DependencyNode
    public void resolve(int i) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        this.value = i;
        for (Dependency dependency : this.f3398f) {
            dependency.update(dependency);
        }
    }
}
