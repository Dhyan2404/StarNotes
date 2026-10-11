package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.sunia.HTREnginev2.eul;
import com.sunia.HTREnginev2.n6h;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes3.dex */
public class DependencyGraph {

    /* renamed from: j */
    public static final boolean f3383j = true;

    /* renamed from: a */
    public ConstraintWidgetContainer f3384a;

    /* renamed from: d */
    public ConstraintWidgetContainer f3387d;

    /* renamed from: b */
    public boolean f3385b = true;

    /* renamed from: c */
    public boolean f3386c = true;

    /* renamed from: e */
    public ArrayList<WidgetRun> f3388e = new ArrayList<>();

    /* renamed from: f */
    public ArrayList<eul> f3389f = new ArrayList<>();

    /* renamed from: g */
    public BasicMeasure.Measurer f3390g = null;

    /* renamed from: h */
    public BasicMeasure.Measure f3391h = new BasicMeasure.Measure();

    /* renamed from: i */
    public ArrayList<eul> f3392i = new ArrayList<>();

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        this.f3384a = constraintWidgetContainer;
        this.f3387d = constraintWidgetContainer;
    }

    /* renamed from: a */
    public final void m1651a(DependencyNode dependencyNode, int i, int i2, DependencyNode dependencyNode2, ArrayList<eul> arrayList, eul eulVar) {
        WidgetRun widgetRun = dependencyNode.f3393a;
        if (widgetRun.f3429b == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.f3384a;
            if (widgetRun == constraintWidgetContainer.horizontalRun || widgetRun == constraintWidgetContainer.verticalRun) {
                return;
            }
            if (eulVar == null) {
                eulVar = new eul(widgetRun, i2);
                arrayList.add(eulVar);
            }
            widgetRun.f3429b = eulVar;
            eulVar.m54034a(widgetRun);
            for (Dependency dependency : widgetRun.start.f3398f) {
                if (dependency instanceof DependencyNode) {
                    m1651a((DependencyNode) dependency, i, 0, dependencyNode2, arrayList, eulVar);
                }
            }
            for (Dependency dependency2 : widgetRun.end.f3398f) {
                if (dependency2 instanceof DependencyNode) {
                    m1651a((DependencyNode) dependency2, i, 1, dependencyNode2, arrayList, eulVar);
                }
            }
            if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.f3398f) {
                    if (dependency3 instanceof DependencyNode) {
                        m1651a((DependencyNode) dependency3, i, 2, dependencyNode2, arrayList, eulVar);
                    }
                }
            }
            for (DependencyNode dependencyNode3 : widgetRun.start.f3399g) {
                if (dependencyNode3 == dependencyNode2) {
                    eulVar.f69353b = true;
                }
                m1651a(dependencyNode3, i, 0, dependencyNode2, arrayList, eulVar);
            }
            for (DependencyNode dependencyNode4 : widgetRun.end.f3399g) {
                if (dependencyNode4 == dependencyNode2) {
                    eulVar.f69353b = true;
                }
                m1651a(dependencyNode4, i, 1, dependencyNode2, arrayList, eulVar);
            }
            if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator<DependencyNode> it2 = ((VerticalWidgetRun) widgetRun).baseline.f3399g.iterator();
                while (it2.hasNext()) {
                    m1651a(it2.next(), i, 2, dependencyNode2, arrayList, eulVar);
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m1652b(ConstraintWidgetContainer constraintWidgetContainer) {
        int i;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int i2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        Iterator<ConstraintWidget> it2 = constraintWidgetContainer.mChildren.iterator();
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = next.mListDimensionBehaviors;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[1];
            if (next.getVisibility() == 8) {
                next.measured = true;
            } else {
                if (next.mMatchConstraintPercentWidth < 1.0f && dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    next.mMatchConstraintDefaultWidth = 2;
                }
                if (next.mMatchConstraintPercentHeight < 1.0f && dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    next.mMatchConstraintDefaultHeight = 2;
                }
                if (next.getDimensionRatio() > 0.0f) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour5 == dimensionBehaviour7 && (dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        next.mMatchConstraintDefaultWidth = 3;
                    } else if (dimensionBehaviour6 == dimensionBehaviour7 && (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        next.mMatchConstraintDefaultHeight = 3;
                    } else if (dimensionBehaviour5 == dimensionBehaviour7 && dimensionBehaviour6 == dimensionBehaviour7) {
                        if (next.mMatchConstraintDefaultWidth == 0) {
                            next.mMatchConstraintDefaultWidth = 3;
                        }
                        if (next.mMatchConstraintDefaultHeight == 0) {
                            next.mMatchConstraintDefaultHeight = 3;
                        }
                    }
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour5 == dimensionBehaviour8 && next.mMatchConstraintDefaultWidth == 1 && (next.mLeft.mTarget == null || next.mRight.mTarget == null)) {
                    dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = dimensionBehaviour5;
                if (dimensionBehaviour6 == dimensionBehaviour8 && next.mMatchConstraintDefaultHeight == 1 && (next.mTop.mTarget == null || next.mBottom.mTarget == null)) {
                    dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = dimensionBehaviour6;
                HorizontalWidgetRun horizontalWidgetRun = next.horizontalRun;
                horizontalWidgetRun.dimensionBehavior = dimensionBehaviour9;
                int i3 = next.mMatchConstraintDefaultWidth;
                horizontalWidgetRun.matchConstraintsType = i3;
                VerticalWidgetRun verticalWidgetRun = next.verticalRun;
                verticalWidgetRun.dimensionBehavior = dimensionBehaviour10;
                int i4 = next.mMatchConstraintDefaultHeight;
                verticalWidgetRun.matchConstraintsType = i4;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if ((dimensionBehaviour9 == dimensionBehaviour11 || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (dimensionBehaviour10 == dimensionBehaviour11 || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
                    int width = next.getWidth();
                    if (dimensionBehaviour9 == dimensionBehaviour11) {
                        i = (constraintWidgetContainer.getWidth() - next.mLeft.mMargin) - next.mRight.mMargin;
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        i = width;
                        dimensionBehaviour = dimensionBehaviour9;
                    }
                    int height = next.getHeight();
                    if (dimensionBehaviour10 == dimensionBehaviour11) {
                        i2 = (constraintWidgetContainer.getHeight() - next.mTop.mMargin) - next.mBottom.mMargin;
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        i2 = height;
                        dimensionBehaviour2 = dimensionBehaviour10;
                    }
                    m1660j(next, dimensionBehaviour, i, dimensionBehaviour2, i2);
                    next.horizontalRun.f3430c.resolve(next.getWidth());
                    next.verticalRun.f3430c.resolve(next.getHeight());
                    next.measured = true;
                } else {
                    if (dimensionBehaviour9 == dimensionBehaviour8 && (dimensionBehaviour10 == (dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i3 == 3) {
                            if (dimensionBehaviour10 == dimensionBehaviour4) {
                                m1660j(next, dimensionBehaviour4, 0, dimensionBehaviour4, 0);
                            }
                            int height2 = next.getHeight();
                            int i5 = (int) ((height2 * next.mDimensionRatio) + 0.5f);
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = ConstraintWidget.DimensionBehaviour.FIXED;
                            m1660j(next, dimensionBehaviour12, i5, dimensionBehaviour12, height2);
                            next.horizontalRun.f3430c.resolve(next.getWidth());
                            next.verticalRun.f3430c.resolve(next.getHeight());
                            next.measured = true;
                        } else if (i3 == 1) {
                            m1660j(next, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                            next.horizontalRun.f3430c.f3433h = next.getWidth();
                        } else if (i3 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = constraintWidgetContainer.mListDimensionBehaviors[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour13 == dimensionBehaviour14 || dimensionBehaviour13 == dimensionBehaviour11) {
                                m1660j(next, dimensionBehaviour14, (int) ((next.mMatchConstraintPercentWidth * constraintWidgetContainer.getWidth()) + 0.5f), dimensionBehaviour10, next.getHeight());
                                next.horizontalRun.f3430c.resolve(next.getWidth());
                                next.verticalRun.f3430c.resolve(next.getHeight());
                                next.measured = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr = next.mListAnchors;
                            if (constraintAnchorArr[0].mTarget == null || constraintAnchorArr[1].mTarget == null) {
                                m1660j(next, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                                next.horizontalRun.f3430c.resolve(next.getWidth());
                                next.verticalRun.f3430c.resolve(next.getHeight());
                                next.measured = true;
                            }
                        }
                    }
                    if (dimensionBehaviour10 == dimensionBehaviour8 && (dimensionBehaviour9 == (dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i4 == 3) {
                            if (dimensionBehaviour9 == dimensionBehaviour3) {
                                m1660j(next, dimensionBehaviour3, 0, dimensionBehaviour3, 0);
                            }
                            int width2 = next.getWidth();
                            float f = next.mDimensionRatio;
                            if (next.getDimensionRatioSide() == -1) {
                                f = 1.0f / f;
                            }
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.FIXED;
                            m1660j(next, dimensionBehaviour15, width2, dimensionBehaviour15, (int) ((width2 * f) + 0.5f));
                            next.horizontalRun.f3430c.resolve(next.getWidth());
                            next.verticalRun.f3430c.resolve(next.getHeight());
                            next.measured = true;
                        } else if (i4 == 1) {
                            m1660j(next, dimensionBehaviour9, 0, dimensionBehaviour3, 0);
                            next.verticalRun.f3430c.f3433h = next.getHeight();
                        } else if (i4 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = constraintWidgetContainer.mListDimensionBehaviors[1];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour16 == dimensionBehaviour17 || dimensionBehaviour16 == dimensionBehaviour11) {
                                m1660j(next, dimensionBehaviour9, next.getWidth(), dimensionBehaviour17, (int) ((next.mMatchConstraintPercentHeight * constraintWidgetContainer.getHeight()) + 0.5f));
                                next.horizontalRun.f3430c.resolve(next.getWidth());
                                next.verticalRun.f3430c.resolve(next.getHeight());
                                next.measured = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr2 = next.mListAnchors;
                            if (constraintAnchorArr2[2].mTarget == null || constraintAnchorArr2[3].mTarget == null) {
                                m1660j(next, dimensionBehaviour3, 0, dimensionBehaviour10, 0);
                                next.horizontalRun.f3430c.resolve(next.getWidth());
                                next.verticalRun.f3430c.resolve(next.getHeight());
                                next.measured = true;
                            }
                        }
                    }
                    if (dimensionBehaviour9 == dimensionBehaviour8 && dimensionBehaviour10 == dimensionBehaviour8) {
                        if (i3 == 1 || i4 == 1) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            m1660j(next, dimensionBehaviour18, 0, dimensionBehaviour18, 0);
                            next.horizontalRun.f3430c.f3433h = next.getWidth();
                            next.verticalRun.f3430c.f3433h = next.getHeight();
                        } else if (i4 == 2 && i3 == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer.mListDimensionBehaviors;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour19 = dimensionBehaviourArr2[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour20 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour19 == dimensionBehaviour20 && dimensionBehaviourArr2[1] == dimensionBehaviour20) {
                                m1660j(next, dimensionBehaviour20, (int) ((next.mMatchConstraintPercentWidth * constraintWidgetContainer.getWidth()) + 0.5f), dimensionBehaviour20, (int) ((next.mMatchConstraintPercentHeight * constraintWidgetContainer.getHeight()) + 0.5f));
                                next.horizontalRun.f3430c.resolve(next.getWidth());
                                next.verticalRun.f3430c.resolve(next.getHeight());
                                next.measured = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public void buildGraph() {
        buildGraph(this.f3388e);
        this.f3392i.clear();
        eul.f69351k = 0;
        m1655e(this.f3384a.horizontalRun, 0, this.f3392i);
        m1655e(this.f3384a.verticalRun, 1, this.f3392i);
        this.f3385b = false;
    }

    /* renamed from: c */
    public final int m1653c(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        int size = this.f3392i.size();
        long j = 0;
        for (int i2 = 0; i2 < size; i2++) {
            j = Math.max(j, this.f3392i.get(i2).m54035b(constraintWidgetContainer, i));
        }
        return (int) j;
    }

    /* renamed from: d */
    public final void m1654d() {
        Iterator<WidgetRun> it2 = this.f3388e.iterator();
        String str = "digraph {\n";
        while (it2.hasNext()) {
            str = m1657g(it2.next(), str);
        }
        PrintStream printStream = System.out;
        printStream.println("content:<<\n" + (str + "\n}\n") + "\n>>");
    }

    public void defineTerminalWidgets(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2) {
        if (this.f3385b) {
            buildGraph();
            Iterator<ConstraintWidget> it2 = this.f3384a.mChildren.iterator();
            boolean z = false;
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                boolean[] zArr = next.isTerminalWidget;
                zArr[0] = true;
                zArr[1] = true;
                if (next instanceof Barrier) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            Iterator<eul> it3 = this.f3392i.iterator();
            while (it3.hasNext()) {
                eul next2 = it3.next();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                next2.m54037d(dimensionBehaviour == dimensionBehaviour3, dimensionBehaviour2 == dimensionBehaviour3);
            }
        }
    }

    public boolean directMeasure(boolean z) {
        boolean z2;
        boolean z3 = true;
        boolean z4 = z & true;
        if (this.f3385b || this.f3386c) {
            Iterator<ConstraintWidget> it2 = this.f3384a.mChildren.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                next.ensureWidgetRuns();
                next.measured = false;
                next.horizontalRun.mo1646c();
                next.verticalRun.mo1646c();
            }
            this.f3384a.ensureWidgetRuns();
            ConstraintWidgetContainer constraintWidgetContainer = this.f3384a;
            constraintWidgetContainer.measured = false;
            constraintWidgetContainer.horizontalRun.mo1646c();
            this.f3384a.verticalRun.mo1646c();
            this.f3386c = false;
        }
        if (m1652b(this.f3387d)) {
            return false;
        }
        this.f3384a.setX(0);
        this.f3384a.setY(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f3384a.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f3384a.getDimensionBehaviour(1);
        if (this.f3385b) {
            buildGraph();
        }
        int x = this.f3384a.getX();
        int y = this.f3384a.getY();
        this.f3384a.horizontalRun.start.resolve(x);
        this.f3384a.verticalRun.start.resolve(y);
        measureWidgets();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour == dimensionBehaviour3 || dimensionBehaviour2 == dimensionBehaviour3) {
            if (z4) {
                Iterator<WidgetRun> it3 = this.f3388e.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    if (!it3.next().mo1647e()) {
                        z4 = false;
                        break;
                    }
                }
            }
            if (z4 && dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f3384a.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer2 = this.f3384a;
                constraintWidgetContainer2.setWidth(m1653c(constraintWidgetContainer2, 0));
                ConstraintWidgetContainer constraintWidgetContainer3 = this.f3384a;
                constraintWidgetContainer3.horizontalRun.f3430c.resolve(constraintWidgetContainer3.getWidth());
            }
            if (z4 && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f3384a.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer4 = this.f3384a;
                constraintWidgetContainer4.setHeight(m1653c(constraintWidgetContainer4, 1));
                ConstraintWidgetContainer constraintWidgetContainer5 = this.f3384a;
                constraintWidgetContainer5.verticalRun.f3430c.resolve(constraintWidgetContainer5.getHeight());
            }
        }
        ConstraintWidgetContainer constraintWidgetContainer6 = this.f3384a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer6.mListDimensionBehaviors[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour4 == dimensionBehaviour5 || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int width = constraintWidgetContainer6.getWidth() + x;
            this.f3384a.horizontalRun.end.resolve(width);
            this.f3384a.horizontalRun.f3430c.resolve(width - x);
            measureWidgets();
            ConstraintWidgetContainer constraintWidgetContainer7 = this.f3384a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = constraintWidgetContainer7.mListDimensionBehaviors[1];
            if (dimensionBehaviour6 == dimensionBehaviour5 || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer7.getHeight() + y;
                this.f3384a.verticalRun.end.resolve(height);
                this.f3384a.verticalRun.f3430c.resolve(height - y);
            }
            measureWidgets();
            z2 = true;
        } else {
            z2 = false;
        }
        Iterator<WidgetRun> it4 = this.f3388e.iterator();
        while (it4.hasNext()) {
            WidgetRun next2 = it4.next();
            if (next2.f3428a != this.f3384a || next2.f3431d) {
                next2.applyToWidget();
            }
        }
        Iterator<WidgetRun> it5 = this.f3388e.iterator();
        while (it5.hasNext()) {
            WidgetRun next3 = it5.next();
            if (z2 || next3.f3428a != this.f3384a) {
                if (!next3.start.resolved || ((!next3.end.resolved && !(next3 instanceof n6h)) || (!next3.f3430c.resolved && !(next3 instanceof ChainRun) && !(next3 instanceof n6h)))) {
                    z3 = false;
                    break;
                }
            }
        }
        this.f3384a.setHorizontalDimensionBehaviour(dimensionBehaviour);
        this.f3384a.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z3;
    }

    public boolean directMeasureSetup(boolean z) {
        if (this.f3385b) {
            Iterator<ConstraintWidget> it2 = this.f3384a.mChildren.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                next.ensureWidgetRuns();
                next.measured = false;
                HorizontalWidgetRun horizontalWidgetRun = next.horizontalRun;
                horizontalWidgetRun.f3430c.resolved = false;
                horizontalWidgetRun.f3431d = false;
                horizontalWidgetRun.mo1646c();
                VerticalWidgetRun verticalWidgetRun = next.verticalRun;
                verticalWidgetRun.f3430c.resolved = false;
                verticalWidgetRun.f3431d = false;
                verticalWidgetRun.mo1646c();
            }
            this.f3384a.ensureWidgetRuns();
            ConstraintWidgetContainer constraintWidgetContainer = this.f3384a;
            constraintWidgetContainer.measured = false;
            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidgetContainer.horizontalRun;
            horizontalWidgetRun2.f3430c.resolved = false;
            horizontalWidgetRun2.f3431d = false;
            horizontalWidgetRun2.mo1646c();
            VerticalWidgetRun verticalWidgetRun2 = this.f3384a.verticalRun;
            verticalWidgetRun2.f3430c.resolved = false;
            verticalWidgetRun2.f3431d = false;
            verticalWidgetRun2.mo1646c();
            buildGraph();
        }
        if (m1652b(this.f3387d)) {
            return false;
        }
        this.f3384a.setX(0);
        this.f3384a.setY(0);
        this.f3384a.horizontalRun.start.resolve(0);
        this.f3384a.verticalRun.start.resolve(0);
        return true;
    }

    public boolean directMeasureWithOrientation(boolean z, int i) {
        boolean z2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z3 = true;
        boolean z4 = z & true;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f3384a.getDimensionBehaviour(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = this.f3384a.getDimensionBehaviour(1);
        int x = this.f3384a.getX();
        int y = this.f3384a.getY();
        if (z4 && (dimensionBehaviour2 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour3 == dimensionBehaviour)) {
            Iterator<WidgetRun> it2 = this.f3388e.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                WidgetRun next = it2.next();
                if (next.orientation == i && !next.mo1647e()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.f3384a.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    ConstraintWidgetContainer constraintWidgetContainer = this.f3384a;
                    constraintWidgetContainer.setWidth(m1653c(constraintWidgetContainer, 0));
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.f3384a;
                    constraintWidgetContainer2.horizontalRun.f3430c.resolve(constraintWidgetContainer2.getWidth());
                }
            } else if (z4 && dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f3384a.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer3 = this.f3384a;
                constraintWidgetContainer3.setHeight(m1653c(constraintWidgetContainer3, 1));
                ConstraintWidgetContainer constraintWidgetContainer4 = this.f3384a;
                constraintWidgetContainer4.verticalRun.f3430c.resolve(constraintWidgetContainer4.getHeight());
            }
        }
        if (i == 0) {
            ConstraintWidgetContainer constraintWidgetContainer5 = this.f3384a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer5.mListDimensionBehaviors[0];
            if (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int width = constraintWidgetContainer5.getWidth() + x;
                this.f3384a.horizontalRun.end.resolve(width);
                this.f3384a.horizontalRun.f3430c.resolve(width - x);
                z2 = true;
            }
            z2 = false;
        } else {
            ConstraintWidgetContainer constraintWidgetContainer6 = this.f3384a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = constraintWidgetContainer6.mListDimensionBehaviors[1];
            if (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer6.getHeight() + y;
                this.f3384a.verticalRun.end.resolve(height);
                this.f3384a.verticalRun.f3430c.resolve(height - y);
                z2 = true;
            }
            z2 = false;
        }
        measureWidgets();
        Iterator<WidgetRun> it3 = this.f3388e.iterator();
        while (it3.hasNext()) {
            WidgetRun next2 = it3.next();
            if (next2.orientation == i && (next2.f3428a != this.f3384a || next2.f3431d)) {
                next2.applyToWidget();
            }
        }
        Iterator<WidgetRun> it4 = this.f3388e.iterator();
        while (it4.hasNext()) {
            WidgetRun next3 = it4.next();
            if (next3.orientation == i && (z2 || next3.f3428a != this.f3384a)) {
                if (!next3.start.resolved || !next3.end.resolved || (!(next3 instanceof ChainRun) && !next3.f3430c.resolved)) {
                    z3 = false;
                    break;
                }
            }
        }
        this.f3384a.setHorizontalDimensionBehaviour(dimensionBehaviour2);
        this.f3384a.setVerticalDimensionBehaviour(dimensionBehaviour3);
        return z3;
    }

    /* renamed from: e */
    public final void m1655e(WidgetRun widgetRun, int i, ArrayList<eul> arrayList) {
        for (Dependency dependency : widgetRun.start.f3398f) {
            if (dependency instanceof DependencyNode) {
                m1651a((DependencyNode) dependency, i, 0, widgetRun.end, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                m1651a(((WidgetRun) dependency).start, i, 0, widgetRun.end, arrayList, null);
            }
        }
        for (Dependency dependency2 : widgetRun.end.f3398f) {
            if (dependency2 instanceof DependencyNode) {
                m1651a((DependencyNode) dependency2, i, 1, widgetRun.start, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                m1651a(((WidgetRun) dependency2).end, i, 1, widgetRun.start, arrayList, null);
            }
        }
        if (i == 1) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.f3398f) {
                if (dependency3 instanceof DependencyNode) {
                    m1651a((DependencyNode) dependency3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    /* renamed from: f */
    public final String m1656f(ChainRun chainRun, String str) {
        int i = chainRun.orientation;
        StringBuilder sb = new StringBuilder("subgraph ");
        sb.append("cluster_");
        sb.append(chainRun.f3428a.getDebugName());
        if (i == 0) {
            sb.append("_h");
        } else {
            sb.append("_v");
        }
        sb.append(" {\n");
        Iterator<WidgetRun> it2 = chainRun.f3381e.iterator();
        String str2 = "";
        while (it2.hasNext()) {
            WidgetRun next = it2.next();
            sb.append(next.f3428a.getDebugName());
            if (i == 0) {
                sb.append("_HORIZONTAL");
            } else {
                sb.append("_VERTICAL");
            }
            sb.append(";\n");
            str2 = m1657g(next, str2);
        }
        sb.append("}\n");
        return str + str2 + ((Object) sb);
    }

    /* renamed from: g */
    public final String m1657g(WidgetRun widgetRun, String str) {
        boolean z;
        DependencyNode dependencyNode = widgetRun.start;
        DependencyNode dependencyNode2 = widgetRun.end;
        StringBuilder sb = new StringBuilder(str);
        if (!(widgetRun instanceof C0425b) && dependencyNode.f3398f.isEmpty() && (dependencyNode2.f3398f.isEmpty() && dependencyNode.f3399g.isEmpty()) && dependencyNode2.f3399g.isEmpty()) {
            return str;
        }
        sb.append(m1661k(widgetRun));
        boolean m1659i = m1659i(dependencyNode, dependencyNode2);
        String m1658h = m1658h(dependencyNode2, m1659i, m1658h(dependencyNode, m1659i, str));
        boolean z2 = widgetRun instanceof VerticalWidgetRun;
        if (z2) {
            m1658h = m1658h(((VerticalWidgetRun) widgetRun).baseline, m1659i, m1658h);
        }
        if ((widgetRun instanceof HorizontalWidgetRun) || (((z = widgetRun instanceof ChainRun)) && ((ChainRun) widgetRun).orientation == 0)) {
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = widgetRun.f3428a.getHorizontalDimensionBehaviour();
            if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED || horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                if (!dependencyNode.f3399g.isEmpty() && dependencyNode2.f3399g.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode2.name());
                    sb.append(AlphabetConverter.f109940d);
                    sb.append(dependencyNode.name());
                    sb.append("\n");
                } else if (dependencyNode.f3399g.isEmpty() && !dependencyNode2.f3399g.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode.name());
                    sb.append(AlphabetConverter.f109940d);
                    sb.append(dependencyNode2.name());
                    sb.append("\n");
                }
            } else if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun.f3428a.getDimensionRatio() > 0.0f) {
                sb.append("\n");
                sb.append(widgetRun.f3428a.getDebugName());
                sb.append("_HORIZONTAL -> ");
                sb.append(widgetRun.f3428a.getDebugName());
                sb.append("_VERTICAL;\n");
            }
        } else if (z2 || (z && ((ChainRun) widgetRun).orientation == 1)) {
            ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour = widgetRun.f3428a.getVerticalDimensionBehaviour();
            if (verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED || verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                if (!dependencyNode.f3399g.isEmpty() && dependencyNode2.f3399g.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode2.name());
                    sb.append(AlphabetConverter.f109940d);
                    sb.append(dependencyNode.name());
                    sb.append("\n");
                } else if (dependencyNode.f3399g.isEmpty() && !dependencyNode2.f3399g.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode.name());
                    sb.append(AlphabetConverter.f109940d);
                    sb.append(dependencyNode2.name());
                    sb.append("\n");
                }
            } else if (verticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun.f3428a.getDimensionRatio() > 0.0f) {
                sb.append("\n");
                sb.append(widgetRun.f3428a.getDebugName());
                sb.append("_VERTICAL -> ");
                sb.append(widgetRun.f3428a.getDebugName());
                sb.append("_HORIZONTAL;\n");
            }
        }
        return widgetRun instanceof ChainRun ? m1656f((ChainRun) widgetRun, m1658h) : sb.toString();
    }

    /* renamed from: h */
    public final String m1658h(DependencyNode dependencyNode, boolean z, String str) {
        StringBuilder sb = new StringBuilder(str);
        for (DependencyNode dependencyNode2 : dependencyNode.f3399g) {
            String str2 = ("\n" + dependencyNode.name()) + AlphabetConverter.f109940d + dependencyNode2.name();
            if (dependencyNode.f3395c > 0 || z || (dependencyNode.f3393a instanceof C0425b)) {
                String str3 = str2 + IteratorUtils.f104923a;
                if (dependencyNode.f3395c > 0) {
                    str3 = str3 + "label=\"" + dependencyNode.f3395c + "\"";
                    if (z) {
                        str3 = str3 + ",";
                    }
                }
                if (z) {
                    str3 = str3 + " style=dashed ";
                }
                if (dependencyNode.f3393a instanceof C0425b) {
                    str3 = str3 + " style=bold,color=gray ";
                }
                str2 = str3 + IteratorUtils.f104924b;
            }
            sb.append(str2 + "\n");
        }
        return sb.toString();
    }

    /* renamed from: i */
    public final boolean m1659i(DependencyNode dependencyNode, DependencyNode dependencyNode2) {
        Iterator<DependencyNode> it2 = dependencyNode.f3399g.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next() != dependencyNode2) {
                i++;
            }
        }
        Iterator<DependencyNode> it3 = dependencyNode2.f3399g.iterator();
        int i2 = 0;
        while (it3.hasNext()) {
            if (it3.next() != dependencyNode) {
                i2++;
            }
        }
        return i > 0 && i2 > 0;
    }

    public void invalidateGraph() {
        this.f3385b = true;
    }

    public void invalidateMeasures() {
        this.f3386c = true;
    }

    /* renamed from: j */
    public final void m1660j(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        BasicMeasure.Measure measure = this.f3391h;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i;
        measure.verticalDimension = i2;
        this.f3390g.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.f3391h.measuredWidth);
        constraintWidget.setHeight(this.f3391h.measuredHeight);
        constraintWidget.setHasBaseline(this.f3391h.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.f3391h.measuredBaseline);
    }

    /* renamed from: k */
    public final String m1661k(WidgetRun widgetRun) {
        boolean z = widgetRun instanceof VerticalWidgetRun;
        String debugName = widgetRun.f3428a.getDebugName();
        StringBuilder sb = new StringBuilder(debugName);
        ConstraintWidget constraintWidget = widgetRun.f3428a;
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = !z ? constraintWidget.getHorizontalDimensionBehaviour() : constraintWidget.getVerticalDimensionBehaviour();
        eul eulVar = widgetRun.f3429b;
        if (z) {
            sb.append("_VERTICAL");
        } else {
            sb.append("_HORIZONTAL");
        }
        sb.append(" [shape=none, label=<");
        sb.append("<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">");
        sb.append("  <TR>");
        if (z) {
            sb.append("    <TD ");
            if (widgetRun.start.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"TOP\" BORDER=\"1\">T</TD>");
        } else {
            sb.append("    <TD ");
            if (widgetRun.start.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"LEFT\" BORDER=\"1\">L</TD>");
        }
        sb.append("    <TD BORDER=\"1\" ");
        boolean z2 = widgetRun.f3430c.resolved;
        if (z2 && !widgetRun.f3428a.measured) {
            sb.append(" BGCOLOR=\"green\" ");
        } else if (z2) {
            sb.append(" BGCOLOR=\"lightgray\" ");
        } else if (widgetRun.f3428a.measured) {
            sb.append(" BGCOLOR=\"yellow\" ");
        }
        if (horizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            sb.append("style=\"dashed\"");
        }
        sb.append(">");
        sb.append(debugName);
        if (eulVar != null) {
            sb.append(" [");
            sb.append(eulVar.f69357f + 1);
            sb.append("/");
            sb.append(eul.f69351k);
            sb.append(IteratorUtils.f104924b);
        }
        sb.append(" </TD>");
        if (z) {
            sb.append("    <TD ");
            if (((VerticalWidgetRun) widgetRun).baseline.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"BASELINE\" BORDER=\"1\">b</TD>");
            sb.append("    <TD ");
            if (widgetRun.end.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"BOTTOM\" BORDER=\"1\">B</TD>");
        } else {
            sb.append("    <TD ");
            if (widgetRun.end.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"RIGHT\" BORDER=\"1\">R</TD>");
        }
        sb.append("  </TR></TABLE>");
        sb.append(">];\n");
        return sb.toString();
    }

    public void measureWidgets() {
        C0424a c0424a;
        Iterator<ConstraintWidget> it2 = this.f3384a.mChildren.iterator();
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            if (!next.measured) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = next.mListDimensionBehaviors;
                boolean z = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i = next.mMatchConstraintDefaultWidth;
                int i2 = next.mMatchConstraintDefaultHeight;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z2 = dimensionBehaviour == dimensionBehaviour3 || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i == 1);
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i2 == 1)) {
                    z = true;
                }
                C0424a c0424a2 = next.horizontalRun.f3430c;
                boolean z3 = c0424a2.resolved;
                C0424a c0424a3 = next.verticalRun.f3430c;
                boolean z4 = c0424a3.resolved;
                if (z3 && z4) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    m1660j(next, dimensionBehaviour4, c0424a2.value, dimensionBehaviour4, c0424a3.value);
                    next.measured = true;
                } else if (z3 && z) {
                    m1660j(next, ConstraintWidget.DimensionBehaviour.FIXED, c0424a2.value, dimensionBehaviour3, c0424a3.value);
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        next.verticalRun.f3430c.f3433h = next.getHeight();
                    } else {
                        next.verticalRun.f3430c.resolve(next.getHeight());
                        next.measured = true;
                    }
                } else if (z4 && z2) {
                    m1660j(next, dimensionBehaviour3, c0424a2.value, ConstraintWidget.DimensionBehaviour.FIXED, c0424a3.value);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        next.horizontalRun.f3430c.f3433h = next.getWidth();
                    } else {
                        next.horizontalRun.f3430c.resolve(next.getWidth());
                        next.measured = true;
                    }
                }
                if (next.measured && (c0424a = next.verticalRun.f3410e) != null) {
                    c0424a.resolve(next.getBaselineDistance());
                }
            }
        }
    }

    public void setMeasurer(BasicMeasure.Measurer measurer) {
        this.f3390g = measurer;
    }

    public void buildGraph(ArrayList<WidgetRun> arrayList) {
        arrayList.clear();
        this.f3387d.horizontalRun.mo1645b();
        this.f3387d.verticalRun.mo1645b();
        arrayList.add(this.f3387d.horizontalRun);
        arrayList.add(this.f3387d.verticalRun);
        Iterator<ConstraintWidget> it2 = this.f3387d.mChildren.iterator();
        HashSet hashSet = null;
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            if (next instanceof Guideline) {
                arrayList.add(new n6h(next));
            } else {
                if (next.isInHorizontalChain()) {
                    if (next.horizontalChainRun == null) {
                        next.horizontalChainRun = new ChainRun(next, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.horizontalChainRun);
                } else {
                    arrayList.add(next.horizontalRun);
                }
                if (next.isInVerticalChain()) {
                    if (next.verticalChainRun == null) {
                        next.verticalChainRun = new ChainRun(next, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.verticalChainRun);
                } else {
                    arrayList.add(next.verticalRun);
                }
                if (next instanceof HelperWidget) {
                    arrayList.add(new C0425b(next));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<WidgetRun> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            it3.next().mo1645b();
        }
        Iterator<WidgetRun> it4 = arrayList.iterator();
        while (it4.hasNext()) {
            WidgetRun next2 = it4.next();
            if (next2.f3428a != this.f3387d) {
                next2.mo1644a();
            }
        }
    }
}
