package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;

    /* renamed from: k0 */
    public static final boolean f3203k0 = true;

    /* renamed from: l0 */
    public static final boolean f3204l0 = false;

    /* renamed from: g0 */
    public int f3205g0 = 0;

    /* renamed from: h0 */
    public boolean f3206h0 = true;

    /* renamed from: i0 */
    public int f3207i0 = 0;

    /* renamed from: j0 */
    public boolean f3208j0 = false;

    public Barrier() {
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z2;
        int i;
        int i2;
        int i3;
        ConstraintAnchor[] constraintAnchorArr2 = this.mListAnchors;
        constraintAnchorArr2[0] = this.mLeft;
        constraintAnchorArr2[2] = this.mTop;
        constraintAnchorArr2[1] = this.mRight;
        constraintAnchorArr2[3] = this.mBottom;
        int i4 = 0;
        while (true) {
            constraintAnchorArr = this.mListAnchors;
            if (i4 >= constraintAnchorArr.length) {
                break;
            }
            ConstraintAnchor constraintAnchor = constraintAnchorArr[i4];
            constraintAnchor.f3223e = linearSystem.createObjectVariable(constraintAnchor);
            i4++;
        }
        int i5 = this.f3205g0;
        if (i5 < 0 || i5 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i5];
        if (!this.f3208j0) {
            allSolved();
        }
        if (this.f3208j0) {
            this.f3208j0 = false;
            int i6 = this.f3205g0;
            if (i6 == 0 || i6 == 1) {
                linearSystem.addEquality(this.mLeft.f3223e, this.f3270mX);
                linearSystem.addEquality(this.mRight.f3223e, this.f3270mX);
                return;
            } else {
                if (i6 == 2 || i6 == 3) {
                    linearSystem.addEquality(this.mTop.f3223e, this.f3271mY);
                    linearSystem.addEquality(this.mBottom.f3223e, this.f3271mY);
                    return;
                }
                return;
            }
        }
        for (int i7 = 0; i7 < this.mWidgetsCount; i7++) {
            ConstraintWidget constraintWidget = this.mWidgets[i7];
            if ((this.f3206h0 || constraintWidget.allowedInBarrier()) && ((((i2 = this.f3205g0) == 0 || i2 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || (((i3 = this.f3205g0) == 2 || i3 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = this.mLeft.hasCenteredDependents() || this.mRight.hasCenteredDependents();
        boolean z4 = this.mTop.hasCenteredDependents() || this.mBottom.hasCenteredDependents();
        int i8 = !(!z2 && (((i = this.f3205g0) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))))) ? 4 : 5;
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i9];
            if (this.f3206h0 || constraintWidget2.allowedInBarrier()) {
                SolverVariable createObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.f3205g0]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.mListAnchors;
                int i10 = this.f3205g0;
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr3[i10];
                constraintAnchor3.f3223e = createObjectVariable;
                ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
                int i11 = (constraintAnchor4 == null || constraintAnchor4.mOwner != this) ? 0 : constraintAnchor3.mMargin + 0;
                if (i10 == 0 || i10 == 2) {
                    linearSystem.addLowerBarrier(constraintAnchor2.f3223e, createObjectVariable, this.f3207i0 - i11, z2);
                } else {
                    linearSystem.addGreaterBarrier(constraintAnchor2.f3223e, createObjectVariable, this.f3207i0 + i11, z2);
                }
                linearSystem.addEquality(constraintAnchor2.f3223e, createObjectVariable, this.f3207i0 + i11, i8);
            }
        }
        int i12 = this.f3205g0;
        if (i12 == 0) {
            linearSystem.addEquality(this.mRight.f3223e, this.mLeft.f3223e, 0, 8);
            linearSystem.addEquality(this.mLeft.f3223e, this.mParent.mRight.f3223e, 0, 4);
            linearSystem.addEquality(this.mLeft.f3223e, this.mParent.mLeft.f3223e, 0, 0);
            return;
        }
        if (i12 == 1) {
            linearSystem.addEquality(this.mLeft.f3223e, this.mRight.f3223e, 0, 8);
            linearSystem.addEquality(this.mLeft.f3223e, this.mParent.mLeft.f3223e, 0, 4);
            linearSystem.addEquality(this.mLeft.f3223e, this.mParent.mRight.f3223e, 0, 0);
        } else if (i12 == 2) {
            linearSystem.addEquality(this.mBottom.f3223e, this.mTop.f3223e, 0, 8);
            linearSystem.addEquality(this.mTop.f3223e, this.mParent.mBottom.f3223e, 0, 4);
            linearSystem.addEquality(this.mTop.f3223e, this.mParent.mTop.f3223e, 0, 0);
        } else if (i12 == 3) {
            linearSystem.addEquality(this.mTop.f3223e, this.mBottom.f3223e, 0, 8);
            linearSystem.addEquality(this.mTop.f3223e, this.mParent.mTop.f3223e, 0, 4);
            linearSystem.addEquality(this.mTop.f3223e, this.mParent.mBottom.f3223e, 0, 0);
        }
    }

    public boolean allSolved() {
        int i;
        int i2;
        int i3;
        boolean z = true;
        int i4 = 0;
        while (true) {
            i = this.mWidgetsCount;
            if (i4 >= i) {
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i4];
            if ((this.f3206h0 || constraintWidget.allowedInBarrier()) && ((((i2 = this.f3205g0) == 0 || i2 == 1) && !constraintWidget.isResolvedHorizontally()) || (((i3 = this.f3205g0) == 2 || i3 == 3) && !constraintWidget.isResolvedVertically()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.mWidgetsCount; i6++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i6];
            if (this.f3206h0 || constraintWidget2.allowedInBarrier()) {
                if (!z2) {
                    int i7 = this.f3205g0;
                    if (i7 == 0) {
                        i5 = constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue();
                    } else if (i7 == 1) {
                        i5 = constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue();
                    } else if (i7 == 2) {
                        i5 = constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue();
                    } else if (i7 == 3) {
                        i5 = constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue();
                    }
                    z2 = true;
                }
                int i8 = this.f3205g0;
                if (i8 == 0) {
                    i5 = Math.min(i5, constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue());
                } else if (i8 == 1) {
                    i5 = Math.max(i5, constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue());
                } else if (i8 == 2) {
                    i5 = Math.min(i5, constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue());
                } else if (i8 == 3) {
                    i5 = Math.max(i5, constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue());
                }
            }
        }
        int i9 = i5 + this.f3207i0;
        int i10 = this.f3205g0;
        if (i10 == 0 || i10 == 1) {
            setFinalHorizontal(i9, i9);
        } else {
            setFinalVertical(i9, i9);
        }
        this.f3208j0 = true;
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.f3206h0;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        Barrier barrier = (Barrier) constraintWidget;
        this.f3205g0 = barrier.f3205g0;
        this.f3206h0 = barrier.f3206h0;
        this.f3207i0 = barrier.f3207i0;
    }

    public boolean getAllowsGoneWidget() {
        return this.f3206h0;
    }

    public int getBarrierType() {
        return this.f3205g0;
    }

    public int getMargin() {
        return this.f3207i0;
    }

    public int getOrientation() {
        int i = this.f3205g0;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedHorizontally() {
        return this.f3208j0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedVertically() {
        return this.f3208j0;
    }

    public void markWidgets() {
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (this.f3206h0 || constraintWidget.allowedInBarrier()) {
                int i2 = this.f3205g0;
                if (i2 == 0 || i2 == 1) {
                    constraintWidget.setInBarrier(0, true);
                } else if (i2 == 2 || i2 == 3) {
                    constraintWidget.setInBarrier(1, true);
                }
            }
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f3206h0 = z;
    }

    public void setBarrierType(int i) {
        this.f3205g0 = i;
    }

    public void setMargin(int i) {
        this.f3207i0 = i;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String str = "[Barrier] " + getDebugName() + " {";
        for (int i = 0; i < this.mWidgetsCount; i++) {
            ConstraintWidget constraintWidget = this.mWidgets[i];
            if (i > 0) {
                str = str + ", ";
            }
            str = str + constraintWidget.getDebugName();
        }
        return str + "}";
    }

    public Barrier(String str) {
        setDebugName(str);
    }
}
