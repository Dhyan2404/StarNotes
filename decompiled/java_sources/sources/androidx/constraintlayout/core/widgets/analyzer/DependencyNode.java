package androidx.constraintlayout.core.widgets.analyzer;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DependencyNode implements Dependency {

    /* renamed from: a */
    public WidgetRun f3393a;

    /* renamed from: c */
    public int f3395c;
    public int value;
    public Dependency updateDelegate = null;
    public boolean delegateToWidgetRun = false;
    public boolean readyToSolve = false;

    /* renamed from: b */
    public Type f3394b = Type.UNKNOWN;

    /* renamed from: d */
    public int f3396d = 1;

    /* renamed from: e */
    public C0424a f3397e = null;
    public boolean resolved = false;

    /* renamed from: f */
    public List<Dependency> f3398f = new ArrayList();

    /* renamed from: g */
    public List<DependencyNode> f3399g = new ArrayList();

    /* loaded from: classes3.dex */
    public enum Type {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.f3393a = widgetRun;
    }

    public void addDependency(Dependency dependency) {
        this.f3398f.add(dependency);
        if (this.resolved) {
            dependency.update(dependency);
        }
    }

    public void clear() {
        this.f3399g.clear();
        this.f3398f.clear();
        this.resolved = false;
        this.value = 0;
        this.readyToSolve = false;
        this.delegateToWidgetRun = false;
    }

    public String name() {
        String str;
        String debugName = this.f3393a.f3428a.getDebugName();
        Type type = this.f3394b;
        if (type == Type.LEFT || type == Type.RIGHT) {
            str = debugName + "_HORIZONTAL";
        } else {
            str = debugName + "_VERTICAL";
        }
        return str + ":" + this.f3394b.name();
    }

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

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3393a.f3428a.getDebugName());
        sb.append(":");
        sb.append(this.f3394b);
        sb.append(MotionUtils.f31761c);
        sb.append(this.resolved ? Integer.valueOf(this.value) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f3399g.size());
        sb.append(":d=");
        sb.append(this.f3398f.size());
        sb.append(">");
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        Iterator<DependencyNode> it2 = this.f3399g.iterator();
        while (it2.hasNext()) {
            if (!it2.next().resolved) {
                return;
            }
        }
        this.readyToSolve = true;
        Dependency dependency2 = this.updateDelegate;
        if (dependency2 != null) {
            dependency2.update(this);
        }
        if (this.delegateToWidgetRun) {
            this.f3393a.update(this);
            return;
        }
        DependencyNode dependencyNode = null;
        int i = 0;
        for (DependencyNode dependencyNode2 : this.f3399g) {
            if (!(dependencyNode2 instanceof C0424a)) {
                i++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i == 1 && dependencyNode.resolved) {
            C0424a c0424a = this.f3397e;
            if (c0424a != null) {
                if (!c0424a.resolved) {
                    return;
                } else {
                    this.f3395c = this.f3396d * c0424a.value;
                }
            }
            resolve(dependencyNode.value + this.f3395c);
        }
        Dependency dependency3 = this.updateDelegate;
        if (dependency3 != null) {
            dependency3.update(this);
        }
    }
}
