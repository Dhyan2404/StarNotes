package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_CHAIN_NEW = 3;
    public static final int WRAP_NONE = 0;

    /* renamed from: P0 */
    public ConstraintWidget[] f3325P0;

    /* renamed from: s0 */
    public int f3327s0 = -1;

    /* renamed from: t0 */
    public int f3328t0 = -1;

    /* renamed from: u0 */
    public int f3329u0 = -1;

    /* renamed from: v0 */
    public int f3330v0 = -1;

    /* renamed from: w0 */
    public int f3331w0 = -1;

    /* renamed from: x0 */
    public int f3332x0 = -1;

    /* renamed from: y0 */
    public float f3333y0 = 0.5f;

    /* renamed from: z0 */
    public float f3334z0 = 0.5f;

    /* renamed from: A0 */
    public float f3310A0 = 0.5f;

    /* renamed from: B0 */
    public float f3311B0 = 0.5f;

    /* renamed from: C0 */
    public float f3312C0 = 0.5f;

    /* renamed from: D0 */
    public float f3313D0 = 0.5f;

    /* renamed from: E0 */
    public int f3314E0 = 0;

    /* renamed from: F0 */
    public int f3315F0 = 0;

    /* renamed from: G0 */
    public int f3316G0 = 2;

    /* renamed from: H0 */
    public int f3317H0 = 2;

    /* renamed from: I0 */
    public int f3318I0 = 0;

    /* renamed from: J0 */
    public int f3319J0 = -1;

    /* renamed from: K0 */
    public int f3320K0 = 0;

    /* renamed from: L0 */
    public ArrayList<C0418a> f3321L0 = new ArrayList<>();

    /* renamed from: M0 */
    public ConstraintWidget[] f3322M0 = null;

    /* renamed from: N0 */
    public ConstraintWidget[] f3323N0 = null;

    /* renamed from: O0 */
    public int[] f3324O0 = null;

    /* renamed from: Q0 */
    public int f3326Q0 = 0;

    /* renamed from: androidx.constraintlayout.core.widgets.Flow$a */
    /* loaded from: classes3.dex */
    public class C0418a {

        /* renamed from: a */
        public int f3335a;

        /* renamed from: d */
        public ConstraintAnchor f3338d;

        /* renamed from: e */
        public ConstraintAnchor f3339e;

        /* renamed from: f */
        public ConstraintAnchor f3340f;

        /* renamed from: g */
        public ConstraintAnchor f3341g;

        /* renamed from: h */
        public int f3342h;

        /* renamed from: i */
        public int f3343i;

        /* renamed from: j */
        public int f3344j;

        /* renamed from: k */
        public int f3345k;

        /* renamed from: q */
        public int f3351q;

        /* renamed from: b */
        public ConstraintWidget f3336b = null;

        /* renamed from: c */
        public int f3337c = 0;

        /* renamed from: l */
        public int f3346l = 0;

        /* renamed from: m */
        public int f3347m = 0;

        /* renamed from: n */
        public int f3348n = 0;

        /* renamed from: o */
        public int f3349o = 0;

        /* renamed from: p */
        public int f3350p = 0;

        public C0418a(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
            this.f3342h = 0;
            this.f3343i = 0;
            this.f3344j = 0;
            this.f3345k = 0;
            this.f3351q = 0;
            this.f3335a = i;
            this.f3338d = constraintAnchor;
            this.f3339e = constraintAnchor2;
            this.f3340f = constraintAnchor3;
            this.f3341g = constraintAnchor4;
            this.f3342h = Flow.this.getPaddingLeft();
            this.f3343i = Flow.this.getPaddingTop();
            this.f3344j = Flow.this.getPaddingRight();
            this.f3345k = Flow.this.getPaddingBottom();
            this.f3351q = i2;
        }

        /* renamed from: b */
        public void m1626b(ConstraintWidget constraintWidget) {
            if (this.f3335a == 0) {
                int m1620K = Flow.this.m1620K(constraintWidget, this.f3351q);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f3350p++;
                    m1620K = 0;
                }
                this.f3346l += m1620K + (constraintWidget.getVisibility() != 8 ? Flow.this.f3314E0 : 0);
                int m1619J = Flow.this.m1619J(constraintWidget, this.f3351q);
                if (this.f3336b == null || this.f3337c < m1619J) {
                    this.f3336b = constraintWidget;
                    this.f3337c = m1619J;
                    this.f3347m = m1619J;
                }
            } else {
                int m1620K2 = Flow.this.m1620K(constraintWidget, this.f3351q);
                int m1619J2 = Flow.this.m1619J(constraintWidget, this.f3351q);
                if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.f3350p++;
                    m1619J2 = 0;
                }
                this.f3347m += m1619J2 + (constraintWidget.getVisibility() != 8 ? Flow.this.f3315F0 : 0);
                if (this.f3336b == null || this.f3337c < m1620K2) {
                    this.f3336b = constraintWidget;
                    this.f3337c = m1620K2;
                    this.f3346l = m1620K2;
                }
            }
            this.f3349o++;
        }

        /* renamed from: c */
        public void m1627c() {
            this.f3337c = 0;
            this.f3336b = null;
            this.f3346l = 0;
            this.f3347m = 0;
            this.f3348n = 0;
            this.f3349o = 0;
            this.f3350p = 0;
        }

        /* renamed from: d */
        public void m1628d(boolean z, int i, boolean z2) {
            ConstraintWidget constraintWidget;
            char c;
            float f;
            float f2;
            int i2 = this.f3349o;
            for (int i3 = 0; i3 < i2 && this.f3348n + i3 < Flow.this.f3326Q0; i3++) {
                ConstraintWidget constraintWidget2 = Flow.this.f3325P0[this.f3348n + i3];
                if (constraintWidget2 != null) {
                    constraintWidget2.resetAnchors();
                }
            }
            if (i2 == 0 || this.f3336b == null) {
                return;
            }
            boolean z3 = z2 && i == 0;
            int i4 = -1;
            int i5 = -1;
            for (int i6 = 0; i6 < i2; i6++) {
                int i7 = z ? (i2 - 1) - i6 : i6;
                if (this.f3348n + i7 >= Flow.this.f3326Q0) {
                    break;
                }
                ConstraintWidget constraintWidget3 = Flow.this.f3325P0[this.f3348n + i7];
                if (constraintWidget3 != null && constraintWidget3.getVisibility() == 0) {
                    if (i4 == -1) {
                        i4 = i6;
                    }
                    i5 = i6;
                }
            }
            ConstraintWidget constraintWidget4 = null;
            if (this.f3335a != 0) {
                ConstraintWidget constraintWidget5 = this.f3336b;
                constraintWidget5.setHorizontalChainStyle(Flow.this.f3327s0);
                int i8 = this.f3342h;
                if (i > 0) {
                    i8 += Flow.this.f3314E0;
                }
                if (z) {
                    constraintWidget5.mRight.connect(this.f3340f, i8);
                    if (z2) {
                        constraintWidget5.mLeft.connect(this.f3338d, this.f3344j);
                    }
                    if (i > 0) {
                        this.f3340f.mOwner.mLeft.connect(constraintWidget5.mRight, 0);
                    }
                } else {
                    constraintWidget5.mLeft.connect(this.f3338d, i8);
                    if (z2) {
                        constraintWidget5.mRight.connect(this.f3340f, this.f3344j);
                    }
                    if (i > 0) {
                        this.f3338d.mOwner.mRight.connect(constraintWidget5.mLeft, 0);
                    }
                }
                for (int i9 = 0; i9 < i2 && this.f3348n + i9 < Flow.this.f3326Q0; i9++) {
                    ConstraintWidget constraintWidget6 = Flow.this.f3325P0[this.f3348n + i9];
                    if (constraintWidget6 != null) {
                        if (i9 == 0) {
                            constraintWidget6.connect(constraintWidget6.mTop, this.f3339e, this.f3343i);
                            int i10 = Flow.this.f3328t0;
                            float f3 = Flow.this.f3334z0;
                            if (this.f3348n == 0 && Flow.this.f3330v0 != -1) {
                                i10 = Flow.this.f3330v0;
                                f3 = Flow.this.f3311B0;
                            } else if (z2 && Flow.this.f3332x0 != -1) {
                                i10 = Flow.this.f3332x0;
                                f3 = Flow.this.f3313D0;
                            }
                            constraintWidget6.setVerticalChainStyle(i10);
                            constraintWidget6.setVerticalBiasPercent(f3);
                        }
                        if (i9 == i2 - 1) {
                            constraintWidget6.connect(constraintWidget6.mBottom, this.f3341g, this.f3345k);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget6.mTop.connect(constraintWidget4.mBottom, Flow.this.f3315F0);
                            if (i9 == i4) {
                                constraintWidget6.mTop.setGoneMargin(this.f3343i);
                            }
                            constraintWidget4.mBottom.connect(constraintWidget6.mTop, 0);
                            if (i9 == i5 + 1) {
                                constraintWidget4.mBottom.setGoneMargin(this.f3345k);
                            }
                        }
                        if (constraintWidget6 != constraintWidget5) {
                            if (z) {
                                int i11 = Flow.this.f3316G0;
                                if (i11 == 0) {
                                    constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                } else if (i11 == 1) {
                                    constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                } else if (i11 == 2) {
                                    constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                    constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                }
                            } else {
                                int i12 = Flow.this.f3316G0;
                                if (i12 == 0) {
                                    constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                } else if (i12 == 1) {
                                    constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                } else if (i12 == 2) {
                                    if (z3) {
                                        constraintWidget6.mLeft.connect(this.f3338d, this.f3342h);
                                        constraintWidget6.mRight.connect(this.f3340f, this.f3344j);
                                    } else {
                                        constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                        constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                    }
                                }
                                constraintWidget4 = constraintWidget6;
                            }
                        }
                        constraintWidget4 = constraintWidget6;
                    }
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.f3336b;
            constraintWidget7.setVerticalChainStyle(Flow.this.f3328t0);
            int i13 = this.f3343i;
            if (i > 0) {
                i13 += Flow.this.f3315F0;
            }
            constraintWidget7.mTop.connect(this.f3339e, i13);
            if (z2) {
                constraintWidget7.mBottom.connect(this.f3341g, this.f3345k);
            }
            if (i > 0) {
                this.f3339e.mOwner.mBottom.connect(constraintWidget7.mTop, 0);
            }
            char c2 = 3;
            if (Flow.this.f3317H0 == 3 && !constraintWidget7.hasBaseline()) {
                for (int i14 = 0; i14 < i2; i14++) {
                    int i15 = z ? (i2 - 1) - i14 : i14;
                    if (this.f3348n + i15 >= Flow.this.f3326Q0) {
                        break;
                    }
                    constraintWidget = Flow.this.f3325P0[this.f3348n + i15];
                    if (constraintWidget.hasBaseline()) {
                        break;
                    }
                }
            }
            constraintWidget = constraintWidget7;
            int i16 = 0;
            while (i16 < i2) {
                int i17 = z ? (i2 - 1) - i16 : i16;
                if (this.f3348n + i17 >= Flow.this.f3326Q0) {
                    return;
                }
                ConstraintWidget constraintWidget8 = Flow.this.f3325P0[this.f3348n + i17];
                if (constraintWidget8 == null) {
                    constraintWidget8 = constraintWidget4;
                    c = c2;
                } else {
                    if (i16 == 0) {
                        constraintWidget8.connect(constraintWidget8.mLeft, this.f3338d, this.f3342h);
                    }
                    if (i17 == 0) {
                        int i18 = Flow.this.f3327s0;
                        float f4 = Flow.this.f3333y0;
                        if (z) {
                            f4 = 1.0f - f4;
                        }
                        if (this.f3348n == 0 && Flow.this.f3329u0 != -1) {
                            i18 = Flow.this.f3329u0;
                            if (z) {
                                f2 = Flow.this.f3310A0;
                                f = 1.0f - f2;
                                f4 = f;
                            } else {
                                f = Flow.this.f3310A0;
                                f4 = f;
                            }
                        } else if (z2 && Flow.this.f3331w0 != -1) {
                            i18 = Flow.this.f3331w0;
                            if (z) {
                                f2 = Flow.this.f3312C0;
                                f = 1.0f - f2;
                                f4 = f;
                            } else {
                                f = Flow.this.f3312C0;
                                f4 = f;
                            }
                        }
                        constraintWidget8.setHorizontalChainStyle(i18);
                        constraintWidget8.setHorizontalBiasPercent(f4);
                    }
                    if (i16 == i2 - 1) {
                        constraintWidget8.connect(constraintWidget8.mRight, this.f3340f, this.f3344j);
                    }
                    if (constraintWidget4 != null) {
                        constraintWidget8.mLeft.connect(constraintWidget4.mRight, Flow.this.f3314E0);
                        if (i16 == i4) {
                            constraintWidget8.mLeft.setGoneMargin(this.f3342h);
                        }
                        constraintWidget4.mRight.connect(constraintWidget8.mLeft, 0);
                        if (i16 == i5 + 1) {
                            constraintWidget4.mRight.setGoneMargin(this.f3344j);
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        c = 3;
                        if (Flow.this.f3317H0 == 3 && constraintWidget.hasBaseline() && constraintWidget8 != constraintWidget && constraintWidget8.hasBaseline()) {
                            constraintWidget8.mBaseline.connect(constraintWidget.mBaseline, 0);
                        } else {
                            int i19 = Flow.this.f3317H0;
                            if (i19 == 0) {
                                constraintWidget8.mTop.connect(constraintWidget7.mTop, 0);
                            } else if (i19 == 1) {
                                constraintWidget8.mBottom.connect(constraintWidget7.mBottom, 0);
                            } else if (z3) {
                                constraintWidget8.mTop.connect(this.f3339e, this.f3343i);
                                constraintWidget8.mBottom.connect(this.f3341g, this.f3345k);
                            } else {
                                constraintWidget8.mTop.connect(constraintWidget7.mTop, 0);
                                constraintWidget8.mBottom.connect(constraintWidget7.mBottom, 0);
                            }
                        }
                    } else {
                        c = 3;
                    }
                }
                i16++;
                c2 = c;
                constraintWidget4 = constraintWidget8;
            }
        }

        /* renamed from: e */
        public int m1629e() {
            return this.f3335a == 1 ? this.f3347m - Flow.this.f3315F0 : this.f3347m;
        }

        /* renamed from: f */
        public int m1630f() {
            return this.f3335a == 0 ? this.f3346l - Flow.this.f3314E0 : this.f3346l;
        }

        /* renamed from: g */
        public void m1631g(int i) {
            int i2 = this.f3350p;
            if (i2 == 0) {
                return;
            }
            int i3 = this.f3349o;
            int i4 = i / i2;
            for (int i5 = 0; i5 < i3 && this.f3348n + i5 < Flow.this.f3326Q0; i5++) {
                ConstraintWidget constraintWidget = Flow.this.f3325P0[this.f3348n + i5];
                if (this.f3335a == 0) {
                    if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                        Flow.this.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i4, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                    }
                } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    Flow.this.measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i4);
                }
            }
            m1632h();
        }

        /* renamed from: h */
        public final void m1632h() {
            this.f3346l = 0;
            this.f3347m = 0;
            this.f3336b = null;
            this.f3337c = 0;
            int i = this.f3349o;
            for (int i2 = 0; i2 < i && this.f3348n + i2 < Flow.this.f3326Q0; i2++) {
                ConstraintWidget constraintWidget = Flow.this.f3325P0[this.f3348n + i2];
                if (this.f3335a == 0) {
                    int width = constraintWidget.getWidth();
                    int i3 = Flow.this.f3314E0;
                    if (constraintWidget.getVisibility() == 8) {
                        i3 = 0;
                    }
                    this.f3346l += width + i3;
                    int m1619J = Flow.this.m1619J(constraintWidget, this.f3351q);
                    if (this.f3336b == null || this.f3337c < m1619J) {
                        this.f3336b = constraintWidget;
                        this.f3337c = m1619J;
                        this.f3347m = m1619J;
                    }
                } else {
                    int m1620K = Flow.this.m1620K(constraintWidget, this.f3351q);
                    int m1619J2 = Flow.this.m1619J(constraintWidget, this.f3351q);
                    int i4 = Flow.this.f3315F0;
                    if (constraintWidget.getVisibility() == 8) {
                        i4 = 0;
                    }
                    this.f3347m += m1619J2 + i4;
                    if (this.f3336b == null || this.f3337c < m1620K) {
                        this.f3336b = constraintWidget;
                        this.f3337c = m1620K;
                        this.f3346l = m1620K;
                    }
                }
            }
        }

        /* renamed from: i */
        public void m1633i(int i) {
            this.f3348n = i;
        }

        /* renamed from: j */
        public void m1634j(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
            this.f3335a = i;
            this.f3338d = constraintAnchor;
            this.f3339e = constraintAnchor2;
            this.f3340f = constraintAnchor3;
            this.f3341g = constraintAnchor4;
            this.f3342h = i2;
            this.f3343i = i3;
            this.f3344j = i4;
            this.f3345k = i5;
            this.f3351q = i6;
        }
    }

    /* renamed from: I */
    public final void m1618I(boolean z) {
        ConstraintWidget constraintWidget;
        float f;
        int i;
        if (this.f3324O0 == null || this.f3323N0 == null || this.f3322M0 == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f3326Q0; i2++) {
            this.f3325P0[i2].resetAnchors();
        }
        int[] iArr = this.f3324O0;
        int i3 = iArr[0];
        int i4 = iArr[1];
        float f2 = this.f3333y0;
        ConstraintWidget constraintWidget2 = null;
        int i5 = 0;
        while (i5 < i3) {
            if (z) {
                i = (i3 - i5) - 1;
                f = 1.0f - this.f3333y0;
            } else {
                f = f2;
                i = i5;
            }
            ConstraintWidget constraintWidget3 = this.f3323N0[i];
            if (constraintWidget3 != null && constraintWidget3.getVisibility() != 8) {
                if (i5 == 0) {
                    constraintWidget3.connect(constraintWidget3.mLeft, this.mLeft, getPaddingLeft());
                    constraintWidget3.setHorizontalChainStyle(this.f3327s0);
                    constraintWidget3.setHorizontalBiasPercent(f);
                }
                if (i5 == i3 - 1) {
                    constraintWidget3.connect(constraintWidget3.mRight, this.mRight, getPaddingRight());
                }
                if (i5 > 0 && constraintWidget2 != null) {
                    constraintWidget3.connect(constraintWidget3.mLeft, constraintWidget2.mRight, this.f3314E0);
                    constraintWidget2.connect(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                }
                constraintWidget2 = constraintWidget3;
            }
            i5++;
            f2 = f;
        }
        for (int i6 = 0; i6 < i4; i6++) {
            ConstraintWidget constraintWidget4 = this.f3322M0[i6];
            if (constraintWidget4 != null && constraintWidget4.getVisibility() != 8) {
                if (i6 == 0) {
                    constraintWidget4.connect(constraintWidget4.mTop, this.mTop, getPaddingTop());
                    constraintWidget4.setVerticalChainStyle(this.f3328t0);
                    constraintWidget4.setVerticalBiasPercent(this.f3334z0);
                }
                if (i6 == i4 - 1) {
                    constraintWidget4.connect(constraintWidget4.mBottom, this.mBottom, getPaddingBottom());
                }
                if (i6 > 0 && constraintWidget2 != null) {
                    constraintWidget4.connect(constraintWidget4.mTop, constraintWidget2.mBottom, this.f3315F0);
                    constraintWidget2.connect(constraintWidget2.mBottom, constraintWidget4.mTop, 0);
                }
                constraintWidget2 = constraintWidget4;
            }
        }
        for (int i7 = 0; i7 < i3; i7++) {
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = (i8 * i3) + i7;
                if (this.f3320K0 == 1) {
                    i9 = (i7 * i4) + i8;
                }
                ConstraintWidget[] constraintWidgetArr = this.f3325P0;
                if (i9 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i9]) != null && constraintWidget.getVisibility() != 8) {
                    ConstraintWidget constraintWidget5 = this.f3323N0[i7];
                    ConstraintWidget constraintWidget6 = this.f3322M0[i8];
                    if (constraintWidget != constraintWidget5) {
                        constraintWidget.connect(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                        constraintWidget.connect(constraintWidget.mRight, constraintWidget5.mRight, 0);
                    }
                    if (constraintWidget != constraintWidget6) {
                        constraintWidget.connect(constraintWidget.mTop, constraintWidget6.mTop, 0);
                        constraintWidget.connect(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                    }
                }
            }
        }
    }

    /* renamed from: J */
    public final int m1619J(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.mMatchConstraintDefaultHeight;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.mMatchConstraintPercentHeight * i);
                if (i3 != constraintWidget.getHeight()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i3);
                }
                return i3;
            }
            if (i2 == 1) {
                return constraintWidget.getHeight();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget.getWidth() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getHeight();
    }

    /* renamed from: K */
    public final int m1620K(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.mMatchConstraintDefaultWidth;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.mMatchConstraintPercentWidth * i);
                if (i3 != constraintWidget.getWidth()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i3, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                }
                return i3;
            }
            if (i2 == 1) {
                return constraintWidget.getWidth();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget.getHeight() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getWidth();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x010d -> B:22:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x010f -> B:22:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x0115 -> B:22:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x0117 -> B:22:0x0059). Please report as a decompilation issue!!! */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1621L(androidx.constraintlayout.core.widgets.ConstraintWidget[] r11, int r12, int r13, int r14, int[] r15) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.m1621L(androidx.constraintlayout.core.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    /* renamed from: M */
    public final void m1622M(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        int i4;
        int i5;
        int i6;
        ConstraintAnchor constraintAnchor;
        int paddingRight;
        ConstraintAnchor constraintAnchor2;
        int paddingBottom;
        int i7;
        if (i == 0) {
            return;
        }
        this.f3321L0.clear();
        C0418a c0418a = new C0418a(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
        this.f3321L0.add(c0418a);
        if (i2 == 0) {
            i4 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i9 < i) {
                ConstraintWidget constraintWidget = constraintWidgetArr[i9];
                int m1620K = m1620K(constraintWidget, i3);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i4++;
                }
                int i10 = i4;
                boolean z = (i8 == i3 || (this.f3314E0 + i8) + m1620K > i3) && c0418a.f3336b != null;
                if (!z && i9 > 0 && (i7 = this.f3319J0) > 0 && i9 % i7 == 0) {
                    z = true;
                }
                if (z) {
                    c0418a = new C0418a(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
                    c0418a.m1633i(i9);
                    this.f3321L0.add(c0418a);
                } else if (i9 > 0) {
                    i8 += this.f3314E0 + m1620K;
                    c0418a.m1626b(constraintWidget);
                    i9++;
                    i4 = i10;
                }
                i8 = m1620K;
                c0418a.m1626b(constraintWidget);
                i9++;
                i4 = i10;
            }
        } else {
            i4 = 0;
            int i11 = 0;
            int i12 = 0;
            while (i12 < i) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i12];
                int m1619J = m1619J(constraintWidget2, i3);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i4++;
                }
                int i13 = i4;
                boolean z2 = (i11 == i3 || (this.f3315F0 + i11) + m1619J > i3) && c0418a.f3336b != null;
                if (!z2 && i12 > 0 && (i5 = this.f3319J0) > 0 && i12 % i5 == 0) {
                    z2 = true;
                }
                if (z2) {
                    c0418a = new C0418a(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
                    c0418a.m1633i(i12);
                    this.f3321L0.add(c0418a);
                } else if (i12 > 0) {
                    i11 += this.f3315F0 + m1619J;
                    c0418a.m1626b(constraintWidget2);
                    i12++;
                    i4 = i13;
                }
                i11 = m1619J;
                c0418a.m1626b(constraintWidget2);
                i12++;
                i4 = i13;
            }
        }
        int size = this.f3321L0.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight2 = getPaddingRight();
        int paddingBottom2 = getPaddingBottom();
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z3 = horizontalDimensionBehaviour == dimensionBehaviour || getVerticalDimensionBehaviour() == dimensionBehaviour;
        if (i4 > 0 && z3) {
            for (int i14 = 0; i14 < size; i14++) {
                C0418a c0418a2 = this.f3321L0.get(i14);
                if (i2 == 0) {
                    c0418a2.m1631g(i3 - c0418a2.m1630f());
                } else {
                    c0418a2.m1631g(i3 - c0418a2.m1629e());
                }
            }
        }
        int i15 = paddingTop;
        int i16 = paddingRight2;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i21 = paddingBottom2;
        while (i19 < size) {
            C0418a c0418a3 = this.f3321L0.get(i19);
            if (i2 == 0) {
                if (i19 < size - 1) {
                    constraintAnchor2 = this.f3321L0.get(i19 + 1).f3336b.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor9 = c0418a3.f3336b.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i22 = i17;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i23 = i18;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i6 = i19;
                c0418a3.m1634j(i2, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i20, i15, i16, paddingBottom, i3);
                int max = Math.max(i23, c0418a3.m1630f());
                i17 = i22 + c0418a3.m1629e();
                if (i6 > 0) {
                    i17 += this.f3315F0;
                }
                constraintAnchor8 = constraintAnchor11;
                i18 = max;
                i15 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i24 = paddingBottom;
                constraintAnchor6 = constraintAnchor2;
                i21 = i24;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i25 = i17;
                int i26 = i18;
                i6 = i19;
                if (i6 < size - 1) {
                    constraintAnchor = this.f3321L0.get(i6 + 1).f3336b.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor16 = c0418a3.f3336b.mRight;
                c0418a3.m1634j(i2, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i20, i15, paddingRight, i21, i3);
                i18 = i26 + c0418a3.m1630f();
                int max2 = Math.max(i25, c0418a3.m1629e());
                if (i6 > 0) {
                    i18 += this.f3314E0;
                }
                i17 = max2;
                i20 = 0;
                i16 = paddingRight;
                constraintAnchor8 = constraintAnchor16;
            }
            i19 = i6 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = i18;
        iArr[1] = i17;
    }

    /* renamed from: N */
    public final void m1623N(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        int i4;
        int i5;
        int i6;
        ConstraintAnchor constraintAnchor;
        int paddingRight;
        ConstraintAnchor constraintAnchor2;
        int paddingBottom;
        int i7;
        if (i == 0) {
            return;
        }
        this.f3321L0.clear();
        C0418a c0418a = new C0418a(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
        this.f3321L0.add(c0418a);
        if (i2 == 0) {
            int i8 = 0;
            i4 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i10 < i) {
                int i11 = i8 + 1;
                ConstraintWidget constraintWidget = constraintWidgetArr[i10];
                int m1620K = m1620K(constraintWidget, i3);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i4++;
                }
                int i12 = i4;
                boolean z = (i9 == i3 || (this.f3314E0 + i9) + m1620K > i3) && c0418a.f3336b != null;
                if (!z && i10 > 0 && (i7 = this.f3319J0) > 0 && i11 > i7) {
                    z = true;
                }
                if (z) {
                    c0418a = new C0418a(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
                    c0418a.m1633i(i10);
                    this.f3321L0.add(c0418a);
                    i8 = i11;
                    i9 = m1620K;
                } else {
                    i9 = i10 > 0 ? i9 + this.f3314E0 + m1620K : m1620K;
                    i8 = 0;
                }
                c0418a.m1626b(constraintWidget);
                i10++;
                i4 = i12;
            }
        } else {
            int i13 = 0;
            i4 = 0;
            int i14 = 0;
            while (i14 < i) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i14];
                int m1619J = m1619J(constraintWidget2, i3);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i4++;
                }
                int i15 = i4;
                boolean z2 = (i13 == i3 || (this.f3315F0 + i13) + m1619J > i3) && c0418a.f3336b != null;
                if (!z2 && i14 > 0 && (i5 = this.f3319J0) > 0 && i5 < 0) {
                    z2 = true;
                }
                if (z2) {
                    c0418a = new C0418a(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
                    c0418a.m1633i(i14);
                    this.f3321L0.add(c0418a);
                } else if (i14 > 0) {
                    i13 += this.f3315F0 + m1619J;
                    c0418a.m1626b(constraintWidget2);
                    i14++;
                    i4 = i15;
                }
                i13 = m1619J;
                c0418a.m1626b(constraintWidget2);
                i14++;
                i4 = i15;
            }
        }
        int size = this.f3321L0.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight2 = getPaddingRight();
        int paddingBottom2 = getPaddingBottom();
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z3 = horizontalDimensionBehaviour == dimensionBehaviour || getVerticalDimensionBehaviour() == dimensionBehaviour;
        if (i4 > 0 && z3) {
            for (int i16 = 0; i16 < size; i16++) {
                C0418a c0418a2 = this.f3321L0.get(i16);
                if (i2 == 0) {
                    c0418a2.m1631g(i3 - c0418a2.m1630f());
                } else {
                    c0418a2.m1631g(i3 - c0418a2.m1629e());
                }
            }
        }
        int i17 = paddingTop;
        int i18 = paddingRight2;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i23 = paddingBottom2;
        while (i21 < size) {
            C0418a c0418a3 = this.f3321L0.get(i21);
            if (i2 == 0) {
                if (i21 < size - 1) {
                    constraintAnchor2 = this.f3321L0.get(i21 + 1).f3336b.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor9 = c0418a3.f3336b.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i24 = i19;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i25 = i20;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i6 = i21;
                c0418a3.m1634j(i2, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i22, i17, i18, paddingBottom, i3);
                int max = Math.max(i25, c0418a3.m1630f());
                i19 = i24 + c0418a3.m1629e();
                if (i6 > 0) {
                    i19 += this.f3315F0;
                }
                constraintAnchor8 = constraintAnchor11;
                i20 = max;
                i17 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i26 = paddingBottom;
                constraintAnchor6 = constraintAnchor2;
                i23 = i26;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i27 = i19;
                int i28 = i20;
                i6 = i21;
                if (i6 < size - 1) {
                    constraintAnchor = this.f3321L0.get(i6 + 1).f3336b.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor16 = c0418a3.f3336b.mRight;
                c0418a3.m1634j(i2, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i22, i17, paddingRight, i23, i3);
                i20 = i28 + c0418a3.m1630f();
                int max2 = Math.max(i27, c0418a3.m1629e());
                if (i6 > 0) {
                    i20 += this.f3314E0;
                }
                i19 = max2;
                i22 = 0;
                i18 = paddingRight;
                constraintAnchor8 = constraintAnchor16;
            }
            i21 = i6 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = i20;
        iArr[1] = i19;
    }

    /* renamed from: O */
    public final void m1624O(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        C0418a c0418a;
        if (i == 0) {
            return;
        }
        if (this.f3321L0.size() == 0) {
            c0418a = new C0418a(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
            this.f3321L0.add(c0418a);
        } else {
            C0418a c0418a2 = this.f3321L0.get(0);
            c0418a2.m1627c();
            c0418a = c0418a2;
            c0418a.m1634j(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom(), i3);
        }
        for (int i4 = 0; i4 < i; i4++) {
            c0418a.m1626b(constraintWidgetArr[i4]);
        }
        iArr[0] = c0418a.m1630f();
        iArr[1] = c0418a.m1629e();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z) {
        super.addToSolver(linearSystem, z);
        boolean z2 = getParent() != null && ((ConstraintWidgetContainer) getParent()).isRtl();
        int i = this.f3318I0;
        if (i != 0) {
            if (i == 1) {
                int size = this.f3321L0.size();
                int i2 = 0;
                while (i2 < size) {
                    this.f3321L0.get(i2).m1628d(z2, i2, i2 == size + (-1));
                    i2++;
                }
            } else if (i == 2) {
                m1618I(z2);
            } else if (i == 3) {
                int size2 = this.f3321L0.size();
                int i3 = 0;
                while (i3 < size2) {
                    this.f3321L0.get(i3).m1628d(z2, i3, i3 == size2 + (-1));
                    i3++;
                }
            }
        } else if (this.f3321L0.size() > 0) {
            this.f3321L0.get(0).m1628d(z2, 0, true);
        }
        needsCallbackFromSolver(false);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        Flow flow = (Flow) constraintWidget;
        this.f3327s0 = flow.f3327s0;
        this.f3328t0 = flow.f3328t0;
        this.f3329u0 = flow.f3329u0;
        this.f3330v0 = flow.f3330v0;
        this.f3331w0 = flow.f3331w0;
        this.f3332x0 = flow.f3332x0;
        this.f3333y0 = flow.f3333y0;
        this.f3334z0 = flow.f3334z0;
        this.f3310A0 = flow.f3310A0;
        this.f3311B0 = flow.f3311B0;
        this.f3312C0 = flow.f3312C0;
        this.f3313D0 = flow.f3313D0;
        this.f3314E0 = flow.f3314E0;
        this.f3315F0 = flow.f3315F0;
        this.f3316G0 = flow.f3316G0;
        this.f3317H0 = flow.f3317H0;
        this.f3318I0 = flow.f3318I0;
        this.f3319J0 = flow.f3319J0;
        this.f3320K0 = flow.f3320K0;
    }

    public float getMaxElementsWrap() {
        return this.f3319J0;
    }

    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void measure(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int[] iArr;
        boolean z;
        if (this.mWidgetsCount > 0 && !measureChildren()) {
            setMeasure(0, 0);
            needsCallbackFromSolver(false);
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int[] iArr2 = new int[2];
        int i7 = (i2 - paddingLeft) - paddingRight;
        int i8 = this.f3320K0;
        if (i8 == 1) {
            i7 = (i4 - paddingTop) - paddingBottom;
        }
        int i9 = i7;
        if (i8 == 0) {
            if (this.f3327s0 == -1) {
                this.f3327s0 = 0;
            }
            if (this.f3328t0 == -1) {
                this.f3328t0 = 0;
            }
        } else {
            if (this.f3327s0 == -1) {
                this.f3327s0 = 0;
            }
            if (this.f3328t0 == -1) {
                this.f3328t0 = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            i5 = this.mWidgetsCount;
            if (i10 >= i5) {
                break;
            }
            if (this.mWidgets[i10].getVisibility() == 8) {
                i11++;
            }
            i10++;
        }
        if (i11 > 0) {
            constraintWidgetArr = new ConstraintWidget[i5 - i11];
            int i12 = 0;
            for (int i13 = 0; i13 < this.mWidgetsCount; i13++) {
                ConstraintWidget constraintWidget = this.mWidgets[i13];
                if (constraintWidget.getVisibility() != 8) {
                    constraintWidgetArr[i12] = constraintWidget;
                    i12++;
                }
            }
            i6 = i12;
        } else {
            i6 = i5;
        }
        this.f3325P0 = constraintWidgetArr;
        this.f3326Q0 = i6;
        int i14 = this.f3318I0;
        if (i14 == 0) {
            iArr = iArr2;
            z = true;
            m1624O(constraintWidgetArr, i6, this.f3320K0, i9, iArr2);
        } else if (i14 == 1) {
            z = true;
            iArr = iArr2;
            m1622M(constraintWidgetArr, i6, this.f3320K0, i9, iArr2);
        } else if (i14 == 2) {
            z = true;
            iArr = iArr2;
            m1621L(constraintWidgetArr, i6, this.f3320K0, i9, iArr2);
        } else if (i14 != 3) {
            z = true;
            iArr = iArr2;
        } else {
            z = true;
            iArr = iArr2;
            m1623N(constraintWidgetArr, i6, this.f3320K0, i9, iArr2);
        }
        int i15 = iArr[0] + paddingLeft + paddingRight;
        int i16 = iArr[z ? 1 : 0] + paddingTop + paddingBottom;
        if (i == 1073741824) {
            i15 = i2;
        } else if (i == Integer.MIN_VALUE) {
            i15 = Math.min(i15, i2);
        } else if (i != 0) {
            i15 = 0;
        }
        if (i3 == 1073741824) {
            i16 = i4;
        } else if (i3 == Integer.MIN_VALUE) {
            i16 = Math.min(i16, i4);
        } else if (i3 != 0) {
            i16 = 0;
        }
        setMeasure(i15, i16);
        setWidth(i15);
        setHeight(i16);
        if (this.mWidgetsCount <= 0) {
            z = false;
        }
        needsCallbackFromSolver(z);
    }

    public void setFirstHorizontalBias(float f) {
        this.f3310A0 = f;
    }

    public void setFirstHorizontalStyle(int i) {
        this.f3329u0 = i;
    }

    public void setFirstVerticalBias(float f) {
        this.f3311B0 = f;
    }

    public void setFirstVerticalStyle(int i) {
        this.f3330v0 = i;
    }

    public void setHorizontalAlign(int i) {
        this.f3316G0 = i;
    }

    public void setHorizontalBias(float f) {
        this.f3333y0 = f;
    }

    public void setHorizontalGap(int i) {
        this.f3314E0 = i;
    }

    public void setHorizontalStyle(int i) {
        this.f3327s0 = i;
    }

    public void setLastHorizontalBias(float f) {
        this.f3312C0 = f;
    }

    public void setLastHorizontalStyle(int i) {
        this.f3331w0 = i;
    }

    public void setLastVerticalBias(float f) {
        this.f3313D0 = f;
    }

    public void setLastVerticalStyle(int i) {
        this.f3332x0 = i;
    }

    public void setMaxElementsWrap(int i) {
        this.f3319J0 = i;
    }

    public void setOrientation(int i) {
        this.f3320K0 = i;
    }

    public void setVerticalAlign(int i) {
        this.f3317H0 = i;
    }

    public void setVerticalBias(float f) {
        this.f3334z0 = f;
    }

    public void setVerticalGap(int i) {
        this.f3315F0 = i;
    }

    public void setVerticalStyle(int i) {
        this.f3328t0 = i;
    }

    public void setWrapMode(int i) {
        this.f3318I0 = i;
    }
}
