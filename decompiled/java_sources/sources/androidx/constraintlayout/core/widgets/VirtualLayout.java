package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.HashSet;

/* loaded from: classes3.dex */
public class VirtualLayout extends HelperWidget {

    /* renamed from: g0 */
    public int f3364g0 = 0;

    /* renamed from: h0 */
    public int f3365h0 = 0;

    /* renamed from: i0 */
    public int f3366i0 = 0;

    /* renamed from: j0 */
    public int f3367j0 = 0;

    /* renamed from: k0 */
    public int f3368k0 = 0;

    /* renamed from: l0 */
    public int f3369l0 = 0;

    /* renamed from: m0 */
    public int f3370m0 = 0;

    /* renamed from: n0 */
    public int f3371n0 = 0;

    /* renamed from: o0 */
    public boolean f3372o0 = false;

    /* renamed from: p0 */
    public int f3373p0 = 0;

    /* renamed from: q0 */
    public int f3374q0 = 0;
    protected BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();

    /* renamed from: r0 */
    public BasicMeasure.Measurer f3375r0 = null;

    public void applyRtl(boolean z) {
        int i = this.f3368k0;
        if (i > 0 || this.f3369l0 > 0) {
            if (z) {
                this.f3370m0 = this.f3369l0;
                this.f3371n0 = i;
            } else {
                this.f3370m0 = i;
                this.f3371n0 = this.f3369l0;
            }
        }
    }

    public void captureWidgets() {
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (constraintWidget != null) {
                constraintWidget.setInVirtualLayout(true);
            }
        }
    }

    public boolean contains(HashSet<ConstraintWidget> hashSet) {
        for (int i = 0; i < this.mWidgetsCount; i++) {
            if (hashSet.contains(this.mWidgets[i])) {
                return true;
            }
        }
        return false;
    }

    public int getMeasuredHeight() {
        return this.f3374q0;
    }

    public int getMeasuredWidth() {
        return this.f3373p0;
    }

    public int getPaddingBottom() {
        return this.f3365h0;
    }

    public int getPaddingLeft() {
        return this.f3370m0;
    }

    public int getPaddingRight() {
        return this.f3371n0;
    }

    public int getPaddingTop() {
        return this.f3364g0;
    }

    public void measure(int i, int i2, int i3, int i4) {
    }

    public boolean measureChildren() {
        ConstraintWidget constraintWidget = this.mParent;
        BasicMeasure.Measurer measurer = constraintWidget != null ? ((ConstraintWidgetContainer) constraintWidget).getMeasurer() : null;
        if (measurer == null) {
            return false;
        }
        int i = 0;
        while (true) {
            if (i >= this.mWidgetsCount) {
                return true;
            }
            ConstraintWidget constraintWidget2 = this.mWidgets[i];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof Guideline)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget2.getDimensionBehaviour(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget2.getDimensionBehaviour(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (!(dimensionBehaviour == dimensionBehaviour3 && constraintWidget2.mMatchConstraintDefaultWidth != 1 && dimensionBehaviour2 == dimensionBehaviour3 && constraintWidget2.mMatchConstraintDefaultHeight != 1)) {
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    BasicMeasure.Measure measure = this.mMeasure;
                    measure.horizontalBehavior = dimensionBehaviour;
                    measure.verticalBehavior = dimensionBehaviour2;
                    measure.horizontalDimension = constraintWidget2.getWidth();
                    this.mMeasure.verticalDimension = constraintWidget2.getHeight();
                    measurer.measure(constraintWidget2, this.mMeasure);
                    constraintWidget2.setWidth(this.mMeasure.measuredWidth);
                    constraintWidget2.setHeight(this.mMeasure.measuredHeight);
                    constraintWidget2.setBaselineDistance(this.mMeasure.measuredBaseline);
                }
            }
            i++;
        }
    }

    public boolean needSolverPass() {
        return this.f3372o0;
    }

    public void needsCallbackFromSolver(boolean z) {
        this.f3372o0 = z;
    }

    public void setMeasure(int i, int i2) {
        this.f3373p0 = i;
        this.f3374q0 = i2;
    }

    public void setPadding(int i) {
        this.f3366i0 = i;
        this.f3364g0 = i;
        this.f3367j0 = i;
        this.f3365h0 = i;
        this.f3368k0 = i;
        this.f3369l0 = i;
    }

    public void setPaddingBottom(int i) {
        this.f3365h0 = i;
    }

    public void setPaddingEnd(int i) {
        this.f3369l0 = i;
    }

    public void setPaddingLeft(int i) {
        this.f3366i0 = i;
        this.f3370m0 = i;
    }

    public void setPaddingRight(int i) {
        this.f3367j0 = i;
        this.f3371n0 = i;
    }

    public void setPaddingStart(int i) {
        this.f3368k0 = i;
        this.f3370m0 = i;
        this.f3371n0 = i;
    }

    public void setPaddingTop(int i) {
        this.f3364g0 = i;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.Helper
    public void updateConstraints(ConstraintWidgetContainer constraintWidgetContainer) {
        captureWidgets();
    }

    public void measure(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        while (this.f3375r0 == null && getParent() != null) {
            this.f3375r0 = ((ConstraintWidgetContainer) getParent()).getMeasurer();
        }
        BasicMeasure.Measure measure = this.mMeasure;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i;
        measure.verticalDimension = i2;
        this.f3375r0.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
    }
}
