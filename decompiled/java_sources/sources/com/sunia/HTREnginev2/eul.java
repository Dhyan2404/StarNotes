package com.sunia.HTREnginev2;

import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.analyzer.C0425b;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.Dependency;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class eul {

    /* renamed from: h */
    public static final int f69348h = 0;

    /* renamed from: i */
    public static final int f69349i = 1;

    /* renamed from: j */
    public static final int f69350j = 2;

    /* renamed from: k */
    public static int f69351k;

    /* renamed from: c */
    public WidgetRun f69354c;

    /* renamed from: d */
    public WidgetRun f69355d;

    /* renamed from: f */
    public int f69357f;

    /* renamed from: g */
    public int f69358g;

    /* renamed from: a */
    public int f69352a = 0;

    /* renamed from: b */
    public boolean f69353b = false;

    /* renamed from: e */
    public ArrayList<WidgetRun> f69356e = new ArrayList<>();

    public eul(WidgetRun widgetRun, int i) {
        this.f69354c = null;
        this.f69355d = null;
        int i2 = f69351k;
        this.f69357f = i2;
        f69351k = i2 + 1;
        this.f69354c = widgetRun;
        this.f69355d = widgetRun;
        this.f69358g = i;
    }

    /* renamed from: a */
    public void m54034a(WidgetRun widgetRun) {
        this.f69356e.add(widgetRun);
        this.f69355d = widgetRun;
    }

    /* renamed from: b */
    public long m54035b(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        WidgetRun widgetRun = this.f69354c;
        if (widgetRun instanceof ChainRun) {
            if (((ChainRun) widgetRun).orientation != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(widgetRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = (i == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).start;
        DependencyNode dependencyNode2 = (i == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).end;
        boolean contains = widgetRun.start.f3399g.contains(dependencyNode);
        boolean contains2 = this.f69354c.end.f3399g.contains(dependencyNode2);
        long wrapDimension = this.f69354c.getWrapDimension();
        if (!contains || !contains2) {
            if (contains) {
                return Math.max(m54039f(this.f69354c.start, r12.f3395c), this.f69354c.start.f3395c + wrapDimension);
            }
            if (!contains2) {
                return (r12.start.f3395c + this.f69354c.getWrapDimension()) - this.f69354c.end.f3395c;
            }
            return Math.max(-m54038e(this.f69354c.end, r12.f3395c), (-this.f69354c.end.f3395c) + wrapDimension);
        }
        long m54039f = m54039f(this.f69354c.start, 0L);
        long m54038e = m54038e(this.f69354c.end, 0L);
        long j = m54039f - wrapDimension;
        WidgetRun widgetRun2 = this.f69354c;
        int i2 = widgetRun2.end.f3395c;
        if (j >= (-i2)) {
            j += i2;
        }
        int i3 = widgetRun2.start.f3395c;
        long j2 = ((-m54038e) - wrapDimension) - i3;
        if (j2 >= i3) {
            j2 -= i3;
        }
        float f = (float) (widgetRun2.f3428a.getBiasPercent(i) > 0.0f ? (((float) j2) / r12) + (((float) j) / (1.0f - r12)) : 0L);
        long j3 = (f * r12) + 0.5f + wrapDimension + (f * (1.0f - r12)) + 0.5f;
        WidgetRun widgetRun3 = this.f69354c;
        return (widgetRun3.start.f3395c + j3) - widgetRun3.end.f3395c;
    }

    /* renamed from: c */
    public final boolean m54036c(WidgetRun widgetRun, int i) {
        DependencyNode dependencyNode;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun3;
        if (!widgetRun.f3428a.isTerminalWidget[i]) {
            return false;
        }
        for (Dependency dependency : widgetRun.start.f3398f) {
            if ((dependency instanceof DependencyNode) && (widgetRun3 = (dependencyNode2 = (DependencyNode) dependency).f3393a) != widgetRun && dependencyNode2 == widgetRun3.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).f3381e.iterator();
                    while (it2.hasNext()) {
                        m54036c(it2.next(), i);
                    }
                } else if (!(widgetRun instanceof C0425b)) {
                    widgetRun.f3428a.isTerminalWidget[i] = false;
                }
                m54036c(dependencyNode2.f3393a, i);
            }
        }
        for (Dependency dependency2 : widgetRun.end.f3398f) {
            if ((dependency2 instanceof DependencyNode) && (widgetRun2 = (dependencyNode = (DependencyNode) dependency2).f3393a) != widgetRun && dependencyNode == widgetRun2.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it3 = ((ChainRun) widgetRun).f3381e.iterator();
                    while (it3.hasNext()) {
                        m54036c(it3.next(), i);
                    }
                } else if (!(widgetRun instanceof C0425b)) {
                    widgetRun.f3428a.isTerminalWidget[i] = false;
                }
                m54036c(dependencyNode.f3393a, i);
            }
        }
        return false;
    }

    /* renamed from: d */
    public void m54037d(boolean z, boolean z2) {
        if (z) {
            WidgetRun widgetRun = this.f69354c;
            if (widgetRun instanceof HorizontalWidgetRun) {
                m54036c(widgetRun, 0);
            }
        }
        if (z2) {
            WidgetRun widgetRun2 = this.f69354c;
            if (widgetRun2 instanceof VerticalWidgetRun) {
                m54036c(widgetRun2, 1);
            }
        }
    }

    /* renamed from: e */
    public final long m54038e(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.f3393a;
        if (widgetRun instanceof C0425b) {
            return j;
        }
        int size = dependencyNode.f3398f.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            Dependency dependency = dependencyNode.f3398f.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.f3393a != widgetRun) {
                    j2 = Math.min(j2, m54038e(dependencyNode2, dependencyNode2.f3395c + j));
                }
            }
        }
        if (dependencyNode != widgetRun.end) {
            return j2;
        }
        long wrapDimension = j - widgetRun.getWrapDimension();
        return Math.min(Math.min(j2, m54038e(widgetRun.start, wrapDimension)), wrapDimension - widgetRun.start.f3395c);
    }

    /* renamed from: f */
    public final long m54039f(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.f3393a;
        if (widgetRun instanceof C0425b) {
            return j;
        }
        int size = dependencyNode.f3398f.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            Dependency dependency = dependencyNode.f3398f.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.f3393a != widgetRun) {
                    j2 = Math.max(j2, m54039f(dependencyNode2, dependencyNode2.f3395c + j));
                }
            }
        }
        if (dependencyNode != widgetRun.start) {
            return j2;
        }
        long wrapDimension = j + widgetRun.getWrapDimension();
        return Math.max(Math.max(j2, m54039f(widgetRun.end, wrapDimension)), wrapDimension - widgetRun.end.f3395c);
    }
}
