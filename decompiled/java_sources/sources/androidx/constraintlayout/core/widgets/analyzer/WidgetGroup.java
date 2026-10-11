package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.mortbay.jetty.HttpStatus;

/* loaded from: classes3.dex */
public class WidgetGroup {

    /* renamed from: g */
    public static final boolean f3412g = false;

    /* renamed from: h */
    public static int f3413h;

    /* renamed from: b */
    public int f3415b;

    /* renamed from: d */
    public int f3417d;

    /* renamed from: a */
    public ArrayList<ConstraintWidget> f3414a = new ArrayList<>();

    /* renamed from: c */
    public boolean f3416c = false;

    /* renamed from: e */
    public ArrayList<C0422a> f3418e = null;

    /* renamed from: f */
    public int f3419f = -1;

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetGroup$a */
    /* loaded from: classes3.dex */
    public class C0422a {

        /* renamed from: a */
        public WeakReference<ConstraintWidget> f3420a;

        /* renamed from: b */
        public int f3421b;

        /* renamed from: c */
        public int f3422c;

        /* renamed from: d */
        public int f3423d;

        /* renamed from: e */
        public int f3424e;

        /* renamed from: f */
        public int f3425f;

        /* renamed from: g */
        public int f3426g;

        public C0422a(ConstraintWidget constraintWidget, LinearSystem linearSystem, int i) {
            this.f3420a = new WeakReference<>(constraintWidget);
            this.f3421b = linearSystem.getObjectVariableValue(constraintWidget.mLeft);
            this.f3422c = linearSystem.getObjectVariableValue(constraintWidget.mTop);
            this.f3423d = linearSystem.getObjectVariableValue(constraintWidget.mRight);
            this.f3424e = linearSystem.getObjectVariableValue(constraintWidget.mBottom);
            this.f3425f = linearSystem.getObjectVariableValue(constraintWidget.mBaseline);
            this.f3426g = i;
        }

        /* renamed from: a */
        public void m1677a() {
            ConstraintWidget constraintWidget = this.f3420a.get();
            if (constraintWidget != null) {
                constraintWidget.setFinalFrame(this.f3421b, this.f3422c, this.f3423d, this.f3424e, this.f3425f, this.f3426g);
            }
        }
    }

    public WidgetGroup(int i) {
        int i2 = f3413h;
        f3413h = i2 + 1;
        this.f3415b = i2;
        this.f3417d = i;
    }

    /* renamed from: a */
    public final boolean m1673a(ConstraintWidget constraintWidget) {
        return this.f3414a.contains(constraintWidget);
    }

    public boolean add(ConstraintWidget constraintWidget) {
        if (this.f3414a.contains(constraintWidget)) {
            return false;
        }
        this.f3414a.add(constraintWidget);
        return true;
    }

    public void apply() {
        if (this.f3418e != null && this.f3416c) {
            for (int i = 0; i < this.f3418e.size(); i++) {
                this.f3418e.get(i).m1677a();
            }
        }
    }

    /* renamed from: b */
    public final String m1674b() {
        int i = this.f3417d;
        return i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : HttpStatus.Unknown;
    }

    /* renamed from: c */
    public final int m1675c(int i, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(i);
        if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
            return i == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight();
        }
        return -1;
    }

    public void cleanup(ArrayList<WidgetGroup> arrayList) {
        int size = this.f3414a.size();
        if (this.f3419f != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                WidgetGroup widgetGroup = arrayList.get(i);
                if (this.f3419f == widgetGroup.f3415b) {
                    moveTo(this.f3417d, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public void clear() {
        this.f3414a.clear();
    }

    /* renamed from: d */
    public final int m1676d(LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i) {
        int objectVariableValue;
        int objectVariableValue2;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) arrayList.get(0).getParent();
        linearSystem.reset();
        constraintWidgetContainer.addToSolver(linearSystem, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).addToSolver(linearSystem, false);
        }
        if (i == 0 && constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i == 1 && constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.minimize();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f3418e = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.f3418e.add(new C0422a(arrayList.get(i3), linearSystem, i));
        }
        if (i == 0) {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mLeft);
            objectVariableValue2 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mRight);
            linearSystem.reset();
        } else {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mTop);
            objectVariableValue2 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mBottom);
            linearSystem.reset();
        }
        return objectVariableValue2 - objectVariableValue;
    }

    public int getId() {
        return this.f3415b;
    }

    public int getOrientation() {
        return this.f3417d;
    }

    public boolean intersectWith(WidgetGroup widgetGroup) {
        for (int i = 0; i < this.f3414a.size(); i++) {
            if (widgetGroup.m1673a(this.f3414a.get(i))) {
                return true;
            }
        }
        return false;
    }

    public boolean isAuthoritative() {
        return this.f3416c;
    }

    public int measureWrap(LinearSystem linearSystem, int i) {
        if (this.f3414a.size() == 0) {
            return 0;
        }
        return m1676d(linearSystem, this.f3414a, i);
    }

    public void moveTo(int i, WidgetGroup widgetGroup) {
        Iterator<ConstraintWidget> it2 = this.f3414a.iterator();
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            widgetGroup.add(next);
            if (i == 0) {
                next.horizontalGroup = widgetGroup.getId();
            } else {
                next.verticalGroup = widgetGroup.getId();
            }
        }
        this.f3419f = widgetGroup.f3415b;
    }

    public void setAuthoritative(boolean z) {
        this.f3416c = z;
    }

    public void setOrientation(int i) {
        this.f3417d = i;
    }

    public int size() {
        return this.f3414a.size();
    }

    public String toString() {
        String str = m1674b() + " [" + this.f3415b + "] <";
        Iterator<ConstraintWidget> it2 = this.f3414a.iterator();
        while (it2.hasNext()) {
            str = str + " " + it2.next().getDebugName();
        }
        return str + " >";
    }
}
