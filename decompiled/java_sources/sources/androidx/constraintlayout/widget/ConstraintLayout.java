package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class ConstraintLayout extends ViewGroup {
    public static final int DESIGN_INFO_ID = 0;

    /* renamed from: J */
    public static final String f4258J = "ConstraintLayout";

    /* renamed from: O */
    public static final boolean f4259O = true;

    /* renamed from: Q */
    public static final boolean f4260Q = false;
    public static final String VERSION = "ConstraintLayout-2.1.4";

    /* renamed from: k0 */
    public static final boolean f4261k0 = false;

    /* renamed from: q0 */
    public static final boolean f4262q0 = false;

    /* renamed from: t0 */
    public static final boolean f4263t0 = false;

    /* renamed from: u0 */
    public static SharedValues f4264u0;

    /* renamed from: e */
    public SparseArray<View> f4265e;

    /* renamed from: f */
    public ArrayList<ConstraintHelper> f4266f;

    /* renamed from: g */
    public int f4267g;

    /* renamed from: h */
    public int f4268h;

    /* renamed from: i */
    public int f4269i;

    /* renamed from: j */
    public int f4270j;

    /* renamed from: k */
    public int f4271k;

    /* renamed from: l */
    public ConstraintSet f4272l;

    /* renamed from: m */
    public int f4273m;
    protected ConstraintLayoutStates mConstraintLayoutSpec;
    protected boolean mDirtyHierarchy;
    protected ConstraintWidgetContainer mLayoutWidget;

    /* renamed from: n */
    public HashMap<String, Integer> f4274n;

    /* renamed from: o */
    public int f4275o;

    /* renamed from: p */
    public int f4276p;

    /* renamed from: q */
    public int f4277q;

    /* renamed from: r */
    public int f4278r;

    /* renamed from: s */
    public int f4279s;

    /* renamed from: t */
    public int f4280t;

    /* renamed from: u */
    public SparseArray<ConstraintWidget> f4281u;

    /* renamed from: v */
    public ConstraintsChangedListener f4282v;

    /* renamed from: w */
    public Metrics f4283w;

    /* renamed from: x */
    public C0497b f4284x;

    /* renamed from: y */
    public int f4285y;

    /* renamed from: z */
    public int f4286z;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0496a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4370a;

        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f4370a = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4370a[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4370a[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4370a[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$b */
    /* loaded from: classes3.dex */
    public class C0497b implements BasicMeasure.Measurer {

        /* renamed from: a */
        public ConstraintLayout f4371a;

        /* renamed from: b */
        public int f4372b;

        /* renamed from: c */
        public int f4373c;

        /* renamed from: d */
        public int f4374d;

        /* renamed from: e */
        public int f4375e;

        /* renamed from: f */
        public int f4376f;

        /* renamed from: g */
        public int f4377g;

        public C0497b(ConstraintLayout l) {
            this.f4371a = l;
        }

        /* renamed from: a */
        public void m2140a(int widthSpec, int heightSpec, int top, int bottom, int width, int height) {
            this.f4372b = top;
            this.f4373c = bottom;
            this.f4374d = width;
            this.f4375e = height;
            this.f4376f = widthSpec;
            this.f4377g = heightSpec;
        }

        /* renamed from: b */
        public final boolean m2141b(int lastMeasureSpec, int spec, int widgetSize) {
            if (lastMeasureSpec == spec) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(lastMeasureSpec);
            View.MeasureSpec.getSize(lastMeasureSpec);
            int mode2 = View.MeasureSpec.getMode(spec);
            int size = View.MeasureSpec.getSize(spec);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && widgetSize == size;
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
        public final void didMeasures() {
            int childCount = this.f4371a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f4371a.getChildAt(i);
                if (childAt instanceof Placeholder) {
                    ((Placeholder) childAt).updatePostMeasure(this.f4371a);
                }
            }
            int size = this.f4371a.f4266f.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((ConstraintHelper) this.f4371a.f4266f.get(i2)).updatePostMeasure(this.f4371a);
                }
            }
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
        @SuppressLint({"WrongCall"})
        public final void measure(ConstraintWidget widget, BasicMeasure.Measure measure) {
            int makeMeasureSpec;
            int makeMeasureSpec2;
            int baseline;
            int max;
            int i;
            int i2;
            int i3;
            if (widget == null) {
                return;
            }
            if (widget.getVisibility() == 8 && !widget.isInPlaceholder()) {
                measure.measuredWidth = 0;
                measure.measuredHeight = 0;
                measure.measuredBaseline = 0;
                return;
            }
            if (widget.getParent() == null) {
                return;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = measure.verticalBehavior;
            int i4 = measure.horizontalDimension;
            int i5 = measure.verticalDimension;
            int i6 = this.f4372b + this.f4373c;
            int i7 = this.f4374d;
            View view = (View) widget.getCompanionWidget();
            int[] iArr = C0496a.f4370a;
            int i8 = iArr[dimensionBehaviour.ordinal()];
            if (i8 == 1) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            } else if (i8 == 2) {
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f4376f, i7, -2);
            } else if (i8 == 3) {
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f4376f, i7 + widget.getHorizontalMargin(), -1);
            } else if (i8 != 4) {
                makeMeasureSpec = 0;
            } else {
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f4376f, i7, -2);
                boolean z = widget.mMatchConstraintDefaultWidth == 1;
                int i9 = measure.measureStrategy;
                if (i9 == BasicMeasure.Measure.TRY_GIVEN_DIMENSIONS || i9 == BasicMeasure.Measure.USE_GIVEN_DIMENSIONS) {
                    if (measure.measureStrategy == BasicMeasure.Measure.USE_GIVEN_DIMENSIONS || !z || (z && (view.getMeasuredHeight() == widget.getHeight())) || (view instanceof Placeholder) || widget.isResolvedHorizontally()) {
                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(widget.getWidth(), 1073741824);
                    }
                }
            }
            int i10 = iArr[dimensionBehaviour2.ordinal()];
            if (i10 == 1) {
                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
            } else if (i10 == 2) {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f4377g, i6, -2);
            } else if (i10 == 3) {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f4377g, i6 + widget.getVerticalMargin(), -1);
            } else if (i10 != 4) {
                makeMeasureSpec2 = 0;
            } else {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f4377g, i6, -2);
                boolean z2 = widget.mMatchConstraintDefaultHeight == 1;
                int i11 = measure.measureStrategy;
                if (i11 == BasicMeasure.Measure.TRY_GIVEN_DIMENSIONS || i11 == BasicMeasure.Measure.USE_GIVEN_DIMENSIONS) {
                    if (measure.measureStrategy == BasicMeasure.Measure.USE_GIVEN_DIMENSIONS || !z2 || (z2 && (view.getMeasuredWidth() == widget.getWidth())) || (view instanceof Placeholder) || widget.isResolvedVertically()) {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(widget.getHeight(), 1073741824);
                    }
                }
            }
            ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) widget.getParent();
            if (constraintWidgetContainer != null && Optimizer.enabled(ConstraintLayout.this.f4271k, 256) && view.getMeasuredWidth() == widget.getWidth() && view.getMeasuredWidth() < constraintWidgetContainer.getWidth() && view.getMeasuredHeight() == widget.getHeight() && view.getMeasuredHeight() < constraintWidgetContainer.getHeight() && view.getBaseline() == widget.getBaselineDistance() && !widget.isMeasureRequested()) {
                if (m2141b(widget.getLastHorizontalMeasureSpec(), makeMeasureSpec, widget.getWidth()) && m2141b(widget.getLastVerticalMeasureSpec(), makeMeasureSpec2, widget.getHeight())) {
                    measure.measuredWidth = widget.getWidth();
                    measure.measuredHeight = widget.getHeight();
                    measure.measuredBaseline = widget.getBaselineDistance();
                    return;
                }
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z3 = dimensionBehaviour == dimensionBehaviour3;
            boolean z4 = dimensionBehaviour2 == dimensionBehaviour3;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            boolean z5 = dimensionBehaviour2 == dimensionBehaviour4 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z6 = dimensionBehaviour == dimensionBehaviour4 || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z7 = z3 && widget.mDimensionRatio > 0.0f;
            boolean z8 = z4 && widget.mDimensionRatio > 0.0f;
            if (view == null) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i12 = measure.measureStrategy;
            if (i12 != BasicMeasure.Measure.TRY_GIVEN_DIMENSIONS && i12 != BasicMeasure.Measure.USE_GIVEN_DIMENSIONS && z3 && widget.mMatchConstraintDefaultWidth == 0 && z4 && widget.mMatchConstraintDefaultHeight == 0) {
                i3 = -1;
                i2 = 0;
                baseline = 0;
                max = 0;
            } else {
                if ((view instanceof VirtualLayout) && (widget instanceof androidx.constraintlayout.core.widgets.VirtualLayout)) {
                    ((VirtualLayout) view).onMeasure((androidx.constraintlayout.core.widgets.VirtualLayout) widget, makeMeasureSpec, makeMeasureSpec2);
                } else {
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                }
                widget.setLastMeasureSpec(makeMeasureSpec, makeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i13 = widget.mMatchConstraintMinWidth;
                max = i13 > 0 ? Math.max(i13, measuredWidth) : measuredWidth;
                int i14 = widget.mMatchConstraintMaxWidth;
                if (i14 > 0) {
                    max = Math.min(i14, max);
                }
                int i15 = widget.mMatchConstraintMinHeight;
                if (i15 > 0) {
                    i2 = Math.max(i15, measuredHeight);
                    i = makeMeasureSpec;
                } else {
                    i = makeMeasureSpec;
                    i2 = measuredHeight;
                }
                int i16 = widget.mMatchConstraintMaxHeight;
                if (i16 > 0) {
                    i2 = Math.min(i16, i2);
                }
                if (!Optimizer.enabled(ConstraintLayout.this.f4271k, 1)) {
                    if (z7 && z5) {
                        max = (int) ((i2 * widget.mDimensionRatio) + 0.5f);
                    } else if (z8 && z6) {
                        i2 = (int) ((max / widget.mDimensionRatio) + 0.5f);
                    }
                }
                if (measuredWidth != max || measuredHeight != i2) {
                    int makeMeasureSpec3 = measuredWidth != max ? View.MeasureSpec.makeMeasureSpec(max, 1073741824) : i;
                    if (measuredHeight != i2) {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
                    }
                    view.measure(makeMeasureSpec3, makeMeasureSpec2);
                    widget.setLastMeasureSpec(makeMeasureSpec3, makeMeasureSpec2);
                    max = view.getMeasuredWidth();
                    i2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
                i3 = -1;
            }
            boolean z9 = baseline != i3;
            measure.measuredNeedsSolverPass = (max == measure.horizontalDimension && i2 == measure.verticalDimension) ? false : true;
            if (layoutParams.f4293g) {
                z9 = true;
            }
            if (z9 && baseline != -1 && widget.getBaselineDistance() != baseline) {
                measure.measuredNeedsSolverPass = true;
            }
            measure.measuredWidth = max;
            measure.measuredHeight = i2;
            measure.measuredHasBaseline = z9;
            measure.measuredBaseline = baseline;
        }
    }

    public ConstraintLayout(@NonNull Context context) {
        super(context);
        this.f4265e = new SparseArray<>();
        this.f4266f = new ArrayList<>(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.f4267g = 0;
        this.f4268h = 0;
        this.f4269i = Integer.MAX_VALUE;
        this.f4270j = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.f4271k = 257;
        this.f4272l = null;
        this.mConstraintLayoutSpec = null;
        this.f4273m = -1;
        this.f4274n = new HashMap<>();
        this.f4275o = -1;
        this.f4276p = -1;
        this.f4277q = -1;
        this.f4278r = -1;
        this.f4279s = 0;
        this.f4280t = 0;
        this.f4281u = new SparseArray<>();
        this.f4284x = new C0497b(this);
        this.f4285y = 0;
        this.f4286z = 0;
        m2135h(null, 0, 0);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int max2 = Math.max(0, getPaddingStart()) + Math.max(0, getPaddingEnd());
        return max2 > 0 ? max2 : max;
    }

    public static SharedValues getSharedValues() {
        if (f4264u0 == null) {
            f4264u0 = new SharedValues();
        }
        return f4264u0;
    }

    public void applyConstraintsFromLayoutParams(boolean isInEditMode, View child, ConstraintWidget widget, LayoutParams layoutParams, SparseArray<ConstraintWidget> idToWidget) {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        int i;
        layoutParams.validate();
        layoutParams.helped = false;
        widget.setVisibility(child.getVisibility());
        if (layoutParams.f4296j) {
            widget.setInPlaceholder(true);
            widget.setVisibility(8);
        }
        widget.setCompanionWidget(child);
        if (child instanceof ConstraintHelper) {
            ((ConstraintHelper) child).resolveRtl(widget, this.mLayoutWidget.isRtl());
        }
        if (layoutParams.f4294h) {
            androidx.constraintlayout.core.widgets.Guideline guideline = (androidx.constraintlayout.core.widgets.Guideline) widget;
            int i2 = layoutParams.f4305s;
            int i3 = layoutParams.f4306t;
            float f = layoutParams.f4307u;
            if (f != -1.0f) {
                guideline.setGuidePercent(f);
                return;
            } else if (i2 != -1) {
                guideline.setGuideBegin(i2);
                return;
            } else {
                if (i3 != -1) {
                    guideline.setGuideEnd(i3);
                    return;
                }
                return;
            }
        }
        int i4 = layoutParams.f4298l;
        int i5 = layoutParams.f4299m;
        int i6 = layoutParams.f4300n;
        int i7 = layoutParams.f4301o;
        int i8 = layoutParams.f4302p;
        int i9 = layoutParams.f4303q;
        float f2 = layoutParams.f4304r;
        int i10 = layoutParams.circleConstraint;
        if (i10 != -1) {
            ConstraintWidget constraintWidget5 = idToWidget.get(i10);
            if (constraintWidget5 != null) {
                widget.connectCircularConstraint(constraintWidget5, layoutParams.circleAngle, layoutParams.circleRadius);
            }
        } else {
            if (i4 != -1) {
                ConstraintWidget constraintWidget6 = idToWidget.get(i4);
                if (constraintWidget6 != null) {
                    ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                    widget.immediateConnect(type, constraintWidget6, type, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i8);
                }
            } else if (i5 != -1 && (constraintWidget = idToWidget.get(i5)) != null) {
                widget.immediateConnect(ConstraintAnchor.Type.LEFT, constraintWidget, ConstraintAnchor.Type.RIGHT, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i8);
            }
            if (i6 != -1) {
                ConstraintWidget constraintWidget7 = idToWidget.get(i6);
                if (constraintWidget7 != null) {
                    widget.immediateConnect(ConstraintAnchor.Type.RIGHT, constraintWidget7, ConstraintAnchor.Type.LEFT, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i9);
                }
            } else if (i7 != -1 && (constraintWidget2 = idToWidget.get(i7)) != null) {
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                widget.immediateConnect(type2, constraintWidget2, type2, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i9);
            }
            int i11 = layoutParams.topToTop;
            if (i11 != -1) {
                ConstraintWidget constraintWidget8 = idToWidget.get(i11);
                if (constraintWidget8 != null) {
                    ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
                    widget.immediateConnect(type3, constraintWidget8, type3, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.goneTopMargin);
                }
            } else {
                int i12 = layoutParams.topToBottom;
                if (i12 != -1 && (constraintWidget3 = idToWidget.get(i12)) != null) {
                    widget.immediateConnect(ConstraintAnchor.Type.TOP, constraintWidget3, ConstraintAnchor.Type.BOTTOM, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.goneTopMargin);
                }
            }
            int i13 = layoutParams.bottomToTop;
            if (i13 != -1) {
                ConstraintWidget constraintWidget9 = idToWidget.get(i13);
                if (constraintWidget9 != null) {
                    widget.immediateConnect(ConstraintAnchor.Type.BOTTOM, constraintWidget9, ConstraintAnchor.Type.TOP, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.goneBottomMargin);
                }
            } else {
                int i14 = layoutParams.bottomToBottom;
                if (i14 != -1 && (constraintWidget4 = idToWidget.get(i14)) != null) {
                    ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
                    widget.immediateConnect(type4, constraintWidget4, type4, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.goneBottomMargin);
                }
            }
            int i15 = layoutParams.baselineToBaseline;
            if (i15 != -1) {
                m2138k(widget, layoutParams, idToWidget, i15, ConstraintAnchor.Type.BASELINE);
            } else {
                int i16 = layoutParams.baselineToTop;
                if (i16 != -1) {
                    m2138k(widget, layoutParams, idToWidget, i16, ConstraintAnchor.Type.TOP);
                } else {
                    int i17 = layoutParams.baselineToBottom;
                    if (i17 != -1) {
                        m2138k(widget, layoutParams, idToWidget, i17, ConstraintAnchor.Type.BOTTOM);
                    }
                }
            }
            if (f2 >= 0.0f) {
                widget.setHorizontalBiasPercent(f2);
            }
            float f3 = layoutParams.verticalBias;
            if (f3 >= 0.0f) {
                widget.setVerticalBiasPercent(f3);
            }
        }
        if (isInEditMode && ((i = layoutParams.editorAbsoluteX) != -1 || layoutParams.editorAbsoluteY != -1)) {
            widget.setOrigin(i, layoutParams.editorAbsoluteY);
        }
        if (layoutParams.f4291e) {
            widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            widget.setWidth(((ViewGroup.MarginLayoutParams) layoutParams).width);
            if (((ViewGroup.MarginLayoutParams) layoutParams).width == -2) {
                widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
            if (layoutParams.constrainedWidth) {
                widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            widget.getAnchor(ConstraintAnchor.Type.LEFT).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            widget.getAnchor(ConstraintAnchor.Type.RIGHT).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            widget.setWidth(0);
        }
        if (layoutParams.f4292f) {
            widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            widget.setHeight(((ViewGroup.MarginLayoutParams) layoutParams).height);
            if (((ViewGroup.MarginLayoutParams) layoutParams).height == -2) {
                widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
            if (layoutParams.constrainedHeight) {
                widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            widget.getAnchor(ConstraintAnchor.Type.TOP).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            widget.getAnchor(ConstraintAnchor.Type.BOTTOM).mMargin = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        } else {
            widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            widget.setHeight(0);
        }
        widget.setDimensionRatio(layoutParams.dimensionRatio);
        widget.setHorizontalWeight(layoutParams.horizontalWeight);
        widget.setVerticalWeight(layoutParams.verticalWeight);
        widget.setHorizontalChainStyle(layoutParams.horizontalChainStyle);
        widget.setVerticalChainStyle(layoutParams.verticalChainStyle);
        widget.setWrapBehaviorInParent(layoutParams.wrapBehaviorInParent);
        widget.setHorizontalMatchStyle(layoutParams.matchConstraintDefaultWidth, layoutParams.matchConstraintMinWidth, layoutParams.matchConstraintMaxWidth, layoutParams.matchConstraintPercentWidth);
        widget.setVerticalMatchStyle(layoutParams.matchConstraintDefaultHeight, layoutParams.matchConstraintMinHeight, layoutParams.matchConstraintMaxHeight, layoutParams.matchConstraintPercentHeight);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.f4266f;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f4266f.get(i).updatePreDraw(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f3, f2, paint);
                    }
                }
            }
        }
    }

    public void fillMetrics(Metrics metrics) {
        this.f4283w = metrics;
        this.mLayoutWidget.fillMetrics(metrics);
    }

    @Override // android.view.View
    public void forceLayout() {
        m2136i();
        super.forceLayout();
    }

    /* renamed from: g */
    public final ConstraintWidget m2134g(int id) {
        if (id == 0) {
            return this.mLayoutWidget;
        }
        View view = this.f4265e.get(id);
        if (view == null && (view = findViewById(id)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f4308v;
    }

    public Object getDesignInformation(int type, Object value) {
        if (type != 0 || !(value instanceof String)) {
            return null;
        }
        String str = (String) value;
        HashMap<String, Integer> hashMap = this.f4274n;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.f4274n.get(str);
    }

    public int getMaxHeight() {
        return this.f4270j;
    }

    public int getMaxWidth() {
        return this.f4269i;
    }

    public int getMinHeight() {
        return this.f4268h;
    }

    public int getMinWidth() {
        return this.f4267g;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.getOptimizationLevel();
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        if (this.mLayoutWidget.stringId == null) {
            int id2 = getId();
            if (id2 != -1) {
                this.mLayoutWidget.stringId = getContext().getResources().getResourceEntryName(id2);
            } else {
                this.mLayoutWidget.stringId = "parent";
            }
        }
        if (this.mLayoutWidget.getDebugName() == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutWidget;
            constraintWidgetContainer.setDebugName(constraintWidgetContainer.stringId);
            Log.v(f4258J, " setDebugName " + this.mLayoutWidget.getDebugName());
        }
        Iterator<ConstraintWidget> it2 = this.mLayoutWidget.getChildren().iterator();
        while (it2.hasNext()) {
            ConstraintWidget next = it2.next();
            View view = (View) next.getCompanionWidget();
            if (view != null) {
                if (next.stringId == null && (id = view.getId()) != -1) {
                    next.stringId = getContext().getResources().getResourceEntryName(id);
                }
                if (next.getDebugName() == null) {
                    next.setDebugName(next.stringId);
                    Log.v(f4258J, " setDebugName " + next.getDebugName());
                }
            }
        }
        this.mLayoutWidget.getSceneString(sb);
        return sb.toString();
    }

    public View getViewById(int id) {
        return this.f4265e.get(id);
    }

    public final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof LayoutParams) {
            return ((LayoutParams) view.getLayoutParams()).f4308v;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof LayoutParams) {
            return ((LayoutParams) view.getLayoutParams()).f4308v;
        }
        return null;
    }

    /* renamed from: h */
    public final void m2135h(AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this.mLayoutWidget.setCompanionWidget(this);
        this.mLayoutWidget.setMeasurer(this.f4284x);
        this.f4265e.put(getId(), this);
        this.f4272l = null;
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ConstraintLayout_Layout, defStyleAttr, defStyleRes);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.f4267g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f4267g);
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.f4268h = obtainStyledAttributes.getDimensionPixelOffset(index, this.f4268h);
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.f4269i = obtainStyledAttributes.getDimensionPixelOffset(index, this.f4269i);
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.f4270j = obtainStyledAttributes.getDimensionPixelOffset(index, this.f4270j);
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f4271k = obtainStyledAttributes.getInt(index, this.f4271k);
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f4272l = constraintSet;
                        constraintSet.load(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f4272l = null;
                    }
                    this.f4273m = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.setOptimizationLevel(this.f4271k);
    }

    /* renamed from: i */
    public final void m2136i() {
        this.mDirtyHierarchy = true;
        this.f4275o = -1;
        this.f4276p = -1;
        this.f4277q = -1;
        this.f4278r = -1;
        this.f4279s = 0;
        this.f4280t = 0;
    }

    public boolean isRtl() {
        return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
    }

    /* renamed from: j */
    public final void m2137j() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ConstraintWidget viewWidget = getViewWidget(getChildAt(i));
            if (viewWidget != null) {
                viewWidget.reset();
            }
        }
        if (isInEditMode) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    if (indexOf != -1) {
                        resourceName = resourceName.substring(indexOf + 1);
                    }
                    m2134g(childAt.getId()).setDebugName(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.f4273m != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.f4273m && (childAt2 instanceof Constraints)) {
                    this.f4272l = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        ConstraintSet constraintSet = this.f4272l;
        if (constraintSet != null) {
            constraintSet.m2168i(this, true);
        }
        this.mLayoutWidget.removeAllChildren();
        int size = this.f4266f.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f4266f.get(i4).updatePreLayout(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).updatePreLayout(this);
            }
        }
        this.f4281u.clear();
        this.f4281u.put(0, this.mLayoutWidget);
        this.f4281u.put(getId(), this.mLayoutWidget);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.f4281u.put(childAt4.getId(), getViewWidget(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            ConstraintWidget viewWidget2 = getViewWidget(childAt5);
            if (viewWidget2 != null) {
                LayoutParams layoutParams = (LayoutParams) childAt5.getLayoutParams();
                this.mLayoutWidget.add(viewWidget2);
                applyConstraintsFromLayoutParams(isInEditMode, childAt5, viewWidget2, layoutParams, this.f4281u);
            }
        }
    }

    /* renamed from: k */
    public final void m2138k(ConstraintWidget widget, LayoutParams layoutParams, SparseArray<ConstraintWidget> idToWidget, int baselineTarget, ConstraintAnchor.Type type) {
        View view = this.f4265e.get(baselineTarget);
        ConstraintWidget constraintWidget = idToWidget.get(baselineTarget);
        if (constraintWidget == null || view == null || !(view.getLayoutParams() instanceof LayoutParams)) {
            return;
        }
        layoutParams.f4293g = true;
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.BASELINE;
        if (type == type2) {
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.f4293g = true;
            layoutParams2.f4308v.setHasBaseline(true);
        }
        widget.getAnchor(type2).connect(constraintWidget.getAnchor(type), layoutParams.baselineMargin, layoutParams.goneBaselineMargin, true);
        widget.setHasBaseline(true);
        widget.getAnchor(ConstraintAnchor.Type.TOP).reset();
        widget.getAnchor(ConstraintAnchor.Type.BOTTOM).reset();
    }

    /* renamed from: l */
    public final boolean m2139l() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            m2137j();
        }
        return z;
    }

    public void loadLayoutDescription(int layoutDescription) {
        if (layoutDescription == 0) {
            this.mConstraintLayoutSpec = null;
            return;
        }
        try {
            this.mConstraintLayoutSpec = new ConstraintLayoutStates(getContext(), this, layoutDescription);
        } catch (Resources.NotFoundException unused) {
            this.mConstraintLayoutSpec = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.f4308v;
            if ((childAt.getVisibility() != 8 || layoutParams.f4294h || layoutParams.f4295i || layoutParams.f4297k || isInEditMode) && !layoutParams.f4296j) {
                int x = constraintWidget.getX();
                int y = constraintWidget.getY();
                int width = constraintWidget.getWidth() + x;
                int height = constraintWidget.getHeight() + y;
                childAt.layout(x, y, width, height);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(x, y, width, height);
                }
            }
        }
        int size = this.f4266f.size();
        if (size > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                this.f4266f.get(i2).updatePostLayout(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f4285y == widthMeasureSpec) {
            int i = this.f4286z;
        }
        if (!this.mDirtyHierarchy) {
            int childCount = getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                if (getChildAt(i2).isLayoutRequested()) {
                    this.mDirtyHierarchy = true;
                    break;
                }
                i2++;
            }
        }
        boolean z = this.mDirtyHierarchy;
        this.f4285y = widthMeasureSpec;
        this.f4286z = heightMeasureSpec;
        this.mLayoutWidget.setRtl(isRtl());
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            if (m2139l()) {
                this.mLayoutWidget.updateHierarchy();
            }
        }
        resolveSystem(this.mLayoutWidget, this.f4271k, widthMeasureSpec, heightMeasureSpec);
        resolveMeasuredDimension(widthMeasureSpec, heightMeasureSpec, this.mLayoutWidget.getWidth(), this.mLayoutWidget.getHeight(), this.mLayoutWidget.isWidthMeasuredTooSmall(), this.mLayoutWidget.isHeightMeasuredTooSmall());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof androidx.constraintlayout.core.widgets.Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            androidx.constraintlayout.core.widgets.Guideline guideline = new androidx.constraintlayout.core.widgets.Guideline();
            layoutParams.f4308v = guideline;
            layoutParams.f4294h = true;
            guideline.setOrientation(layoutParams.orientation);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.validateParams();
            ((LayoutParams) view.getLayoutParams()).f4295i = true;
            if (!this.f4266f.contains(constraintHelper)) {
                this.f4266f.add(constraintHelper);
            }
        }
        this.f4265e.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f4265e.remove(view.getId());
        this.mLayoutWidget.remove(getViewWidget(view));
        this.f4266f.remove(view);
        this.mDirtyHierarchy = true;
    }

    public void parseLayoutDescription(int id) {
        this.mConstraintLayoutSpec = new ConstraintLayoutStates(getContext(), this, id);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        m2136i();
        super.requestLayout();
    }

    public void resolveMeasuredDimension(int widthMeasureSpec, int heightMeasureSpec, int measuredWidth, int measuredHeight, boolean isWidthMeasuredTooSmall, boolean isHeightMeasuredTooSmall) {
        C0497b c0497b = this.f4284x;
        int i = c0497b.f4375e;
        int resolveSizeAndState = View.resolveSizeAndState(measuredWidth + c0497b.f4374d, widthMeasureSpec, 0);
        int resolveSizeAndState2 = View.resolveSizeAndState(measuredHeight + i, heightMeasureSpec, 0) & 16777215;
        int min = Math.min(this.f4269i, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f4270j, resolveSizeAndState2);
        if (isWidthMeasuredTooSmall) {
            min |= 16777216;
        }
        if (isHeightMeasuredTooSmall) {
            min2 |= 16777216;
        }
        setMeasuredDimension(min, min2);
        this.f4275o = min;
        this.f4276p = min2;
    }

    public void resolveSystem(ConstraintWidgetContainer layout, int optimizationLevel, int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        int max = Math.max(0, getPaddingTop());
        int max2 = Math.max(0, getPaddingBottom());
        int i = max + max2;
        int paddingWidth = getPaddingWidth();
        this.f4284x.m2140a(widthMeasureSpec, heightMeasureSpec, max, max2, paddingWidth, i);
        int max3 = Math.max(0, getPaddingStart());
        int max4 = Math.max(0, getPaddingEnd());
        if (max3 <= 0 && max4 <= 0) {
            max4 = Math.max(0, getPaddingLeft());
        } else if (!isRtl()) {
            max4 = max3;
        }
        int i2 = size - paddingWidth;
        int i3 = size2 - i;
        setSelfDimensionBehaviour(layout, mode, i2, mode2, i3);
        layout.measure(optimizationLevel, mode, i2, mode2, i3, this.f4275o, this.f4276p, max4, max);
    }

    public void setConstraintSet(ConstraintSet set) {
        this.f4272l = set;
    }

    public void setDesignInformation(int type, Object value1, Object value2) {
        if (type == 0 && (value1 instanceof String) && (value2 instanceof Integer)) {
            if (this.f4274n == null) {
                this.f4274n = new HashMap<>();
            }
            String str = (String) value1;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.f4274n.put(str, Integer.valueOf(((Integer) value2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int id) {
        this.f4265e.remove(getId());
        super.setId(id);
        this.f4265e.put(getId(), this);
    }

    public void setMaxHeight(int value) {
        if (value == this.f4270j) {
            return;
        }
        this.f4270j = value;
        requestLayout();
    }

    public void setMaxWidth(int value) {
        if (value == this.f4269i) {
            return;
        }
        this.f4269i = value;
        requestLayout();
    }

    public void setMinHeight(int value) {
        if (value == this.f4268h) {
            return;
        }
        this.f4268h = value;
        requestLayout();
    }

    public void setMinWidth(int value) {
        if (value == this.f4267g) {
            return;
        }
        this.f4267g = value;
        requestLayout();
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.f4282v = constraintsChangedListener;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.setOnConstraintsChanged(constraintsChangedListener);
        }
    }

    public void setOptimizationLevel(int level) {
        this.f4271k = level;
        this.mLayoutWidget.setOptimizationLevel(level);
    }

    public void setSelfDimensionBehaviour(ConstraintWidgetContainer layout, int widthMode, int widthSize, int heightMode, int heightSize) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        C0497b c0497b = this.f4284x;
        int i = c0497b.f4375e;
        int i2 = c0497b.f4374d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (widthMode == Integer.MIN_VALUE) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                widthSize = Math.max(0, this.f4267g);
            }
        } else if (widthMode == 0) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                widthSize = Math.max(0, this.f4267g);
            }
            widthSize = 0;
        } else if (widthMode != 1073741824) {
            dimensionBehaviour = dimensionBehaviour2;
            widthSize = 0;
        } else {
            widthSize = Math.min(this.f4269i - i2, widthSize);
            dimensionBehaviour = dimensionBehaviour2;
        }
        if (heightMode == Integer.MIN_VALUE) {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                heightSize = Math.max(0, this.f4268h);
            }
        } else if (heightMode != 0) {
            if (heightMode == 1073741824) {
                heightSize = Math.min(this.f4270j - i, heightSize);
            }
            heightSize = 0;
        } else {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                heightSize = Math.max(0, this.f4268h);
            }
            heightSize = 0;
        }
        if (widthSize != layout.getWidth() || heightSize != layout.getHeight()) {
            layout.invalidateMeasures();
        }
        layout.setX(0);
        layout.setY(0);
        layout.setMaxWidth(this.f4269i - i2);
        layout.setMaxHeight(this.f4270j - i);
        layout.setMinWidth(0);
        layout.setMinHeight(0);
        layout.setHorizontalDimensionBehaviour(dimensionBehaviour);
        layout.setWidth(widthSize);
        layout.setVerticalDimensionBehaviour(dimensionBehaviour2);
        layout.setHeight(heightSize);
        layout.setMinWidth(this.f4267g - i2);
        layout.setMinHeight(this.f4268h - i);
    }

    public void setState(int id, int screenWidth, int screenHeight) {
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(id, screenWidth, screenHeight);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        return new LayoutParams(p);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f4265e = new SparseArray<>();
        this.f4266f = new ArrayList<>(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.f4267g = 0;
        this.f4268h = 0;
        this.f4269i = Integer.MAX_VALUE;
        this.f4270j = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.f4271k = 257;
        this.f4272l = null;
        this.mConstraintLayoutSpec = null;
        this.f4273m = -1;
        this.f4274n = new HashMap<>();
        this.f4275o = -1;
        this.f4276p = -1;
        this.f4277q = -1;
        this.f4278r = -1;
        this.f4279s = 0;
        this.f4280t = 0;
        this.f4281u = new SparseArray<>();
        this.f4284x = new C0497b(this);
        this.f4285y = 0;
        this.f4286z = 0;
        m2135h(attrs, 0, 0);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f4265e = new SparseArray<>();
        this.f4266f = new ArrayList<>(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.f4267g = 0;
        this.f4268h = 0;
        this.f4269i = Integer.MAX_VALUE;
        this.f4270j = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.f4271k = 257;
        this.f4272l = null;
        this.mConstraintLayoutSpec = null;
        this.f4273m = -1;
        this.f4274n = new HashMap<>();
        this.f4275o = -1;
        this.f4276p = -1;
        this.f4277q = -1;
        this.f4278r = -1;
        this.f4279s = 0;
        this.f4280t = 0;
        this.f4281u = new SparseArray<>();
        this.f4284x = new C0497b(this);
        this.f4285y = 0;
        this.f4286z = 0;
        m2135h(attrs, defStyleAttr, 0);
    }

    @TargetApi(21)
    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.f4265e = new SparseArray<>();
        this.f4266f = new ArrayList<>(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.f4267g = 0;
        this.f4268h = 0;
        this.f4269i = Integer.MAX_VALUE;
        this.f4270j = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.f4271k = 257;
        this.f4272l = null;
        this.mConstraintLayoutSpec = null;
        this.f4273m = -1;
        this.f4274n = new HashMap<>();
        this.f4275o = -1;
        this.f4276p = -1;
        this.f4277q = -1;
        this.f4278r = -1;
        this.f4279s = 0;
        this.f4280t = 0;
        this.f4281u = new SparseArray<>();
        this.f4284x = new C0497b(this);
        this.f4285y = 0;
        this.f4286z = 0;
        m2135h(attrs, defStyleAttr, defStyleRes);
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public static final int BASELINE = 5;
        public static final int BOTTOM = 4;
        public static final int CHAIN_PACKED = 2;
        public static final int CHAIN_SPREAD = 0;
        public static final int CHAIN_SPREAD_INSIDE = 1;
        public static final int CIRCLE = 8;
        public static final int END = 7;
        public static final int GONE_UNSET = Integer.MIN_VALUE;
        public static final int HORIZONTAL = 0;
        public static final int LEFT = 1;
        public static final int MATCH_CONSTRAINT = 0;
        public static final int MATCH_CONSTRAINT_PERCENT = 2;
        public static final int MATCH_CONSTRAINT_SPREAD = 0;
        public static final int MATCH_CONSTRAINT_WRAP = 1;
        public static final int PARENT_ID = 0;
        public static final int RIGHT = 2;
        public static final int START = 6;
        public static final int TOP = 3;
        public static final int UNSET = -1;
        public static final int VERTICAL = 1;
        public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
        public static final int WRAP_BEHAVIOR_INCLUDED = 0;
        public static final int WRAP_BEHAVIOR_SKIPPED = 3;
        public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;

        /* renamed from: a */
        public boolean f4287a;

        /* renamed from: b */
        public boolean f4288b;
        public int baselineMargin;
        public int baselineToBaseline;
        public int baselineToBottom;
        public int baselineToTop;
        public int bottomToBottom;
        public int bottomToTop;

        /* renamed from: c */
        public float f4289c;
        public float circleAngle;
        public int circleConstraint;
        public int circleRadius;
        public boolean constrainedHeight;
        public boolean constrainedWidth;
        public String constraintTag;

        /* renamed from: d */
        public int f4290d;
        public String dimensionRatio;

        /* renamed from: e */
        public boolean f4291e;
        public int editorAbsoluteX;
        public int editorAbsoluteY;
        public int endToEnd;
        public int endToStart;

        /* renamed from: f */
        public boolean f4292f;

        /* renamed from: g */
        public boolean f4293g;
        public int goneBaselineMargin;
        public int goneBottomMargin;
        public int goneEndMargin;
        public int goneLeftMargin;
        public int goneRightMargin;
        public int goneStartMargin;
        public int goneTopMargin;
        public int guideBegin;
        public int guideEnd;
        public float guidePercent;
        public boolean guidelineUseRtl;

        /* renamed from: h */
        public boolean f4294h;
        public boolean helped;
        public float horizontalBias;
        public int horizontalChainStyle;
        public float horizontalWeight;

        /* renamed from: i */
        public boolean f4295i;

        /* renamed from: j */
        public boolean f4296j;

        /* renamed from: k */
        public boolean f4297k;

        /* renamed from: l */
        public int f4298l;
        public int leftToLeft;
        public int leftToRight;

        /* renamed from: m */
        public int f4299m;
        public int matchConstraintDefaultHeight;
        public int matchConstraintDefaultWidth;
        public int matchConstraintMaxHeight;
        public int matchConstraintMaxWidth;
        public int matchConstraintMinHeight;
        public int matchConstraintMinWidth;
        public float matchConstraintPercentHeight;
        public float matchConstraintPercentWidth;

        /* renamed from: n */
        public int f4300n;

        /* renamed from: o */
        public int f4301o;
        public int orientation;

        /* renamed from: p */
        public int f4302p;

        /* renamed from: q */
        public int f4303q;

        /* renamed from: r */
        public float f4304r;
        public int rightToLeft;
        public int rightToRight;

        /* renamed from: s */
        public int f4305s;
        public int startToEnd;
        public int startToStart;

        /* renamed from: t */
        public int f4306t;
        public int topToBottom;
        public int topToTop;

        /* renamed from: u */
        public float f4307u;

        /* renamed from: v */
        public ConstraintWidget f4308v;
        public float verticalBias;
        public int verticalChainStyle;
        public float verticalWeight;
        public int wrapBehaviorInParent;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$a */
        /* loaded from: classes3.dex */
        public static class C0495a {

            /* renamed from: A */
            public static final int f4309A = 26;

            /* renamed from: B */
            public static final int f4310B = 27;

            /* renamed from: C */
            public static final int f4311C = 28;

            /* renamed from: D */
            public static final int f4312D = 29;

            /* renamed from: E */
            public static final int f4313E = 30;

            /* renamed from: F */
            public static final int f4314F = 31;

            /* renamed from: G */
            public static final int f4315G = 32;

            /* renamed from: H */
            public static final int f4316H = 33;

            /* renamed from: I */
            public static final int f4317I = 34;

            /* renamed from: J */
            public static final int f4318J = 35;

            /* renamed from: K */
            public static final int f4319K = 36;

            /* renamed from: L */
            public static final int f4320L = 37;

            /* renamed from: M */
            public static final int f4321M = 38;

            /* renamed from: N */
            public static final int f4322N = 39;

            /* renamed from: O */
            public static final int f4323O = 40;

            /* renamed from: P */
            public static final int f4324P = 41;

            /* renamed from: Q */
            public static final int f4325Q = 42;

            /* renamed from: R */
            public static final int f4326R = 43;

            /* renamed from: S */
            public static final int f4327S = 44;

            /* renamed from: T */
            public static final int f4328T = 45;

            /* renamed from: U */
            public static final int f4329U = 46;

            /* renamed from: V */
            public static final int f4330V = 47;

            /* renamed from: W */
            public static final int f4331W = 48;

            /* renamed from: X */
            public static final int f4332X = 49;

            /* renamed from: Y */
            public static final int f4333Y = 50;

            /* renamed from: Z */
            public static final int f4334Z = 51;

            /* renamed from: a */
            public static final int f4335a = 0;

            /* renamed from: a0 */
            public static final int f4336a0 = 52;

            /* renamed from: b */
            public static final int f4337b = 1;

            /* renamed from: b0 */
            public static final int f4338b0 = 53;

            /* renamed from: c */
            public static final int f4339c = 2;

            /* renamed from: c0 */
            public static final int f4340c0 = 54;

            /* renamed from: d */
            public static final int f4341d = 3;

            /* renamed from: d0 */
            public static final int f4342d0 = 55;

            /* renamed from: e */
            public static final int f4343e = 4;

            /* renamed from: e0 */
            public static final int f4344e0 = 64;

            /* renamed from: f */
            public static final int f4345f = 5;

            /* renamed from: f0 */
            public static final int f4346f0 = 65;

            /* renamed from: g */
            public static final int f4347g = 6;

            /* renamed from: g0 */
            public static final int f4348g0 = 66;

            /* renamed from: h */
            public static final int f4349h = 7;

            /* renamed from: h0 */
            public static final int f4350h0 = 67;

            /* renamed from: i */
            public static final int f4351i = 8;

            /* renamed from: i0 */
            public static final SparseIntArray f4352i0;

            /* renamed from: j */
            public static final int f4353j = 9;

            /* renamed from: k */
            public static final int f4354k = 10;

            /* renamed from: l */
            public static final int f4355l = 11;

            /* renamed from: m */
            public static final int f4356m = 12;

            /* renamed from: n */
            public static final int f4357n = 13;

            /* renamed from: o */
            public static final int f4358o = 14;

            /* renamed from: p */
            public static final int f4359p = 15;

            /* renamed from: q */
            public static final int f4360q = 16;

            /* renamed from: r */
            public static final int f4361r = 17;

            /* renamed from: s */
            public static final int f4362s = 18;

            /* renamed from: t */
            public static final int f4363t = 19;

            /* renamed from: u */
            public static final int f4364u = 20;

            /* renamed from: v */
            public static final int f4365v = 21;

            /* renamed from: w */
            public static final int f4366w = 22;

            /* renamed from: x */
            public static final int f4367x = 23;

            /* renamed from: y */
            public static final int f4368y = 24;

            /* renamed from: z */
            public static final int f4369z = 25;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f4352i0 = sparseIntArray;
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintWidth, 64);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintHeight, 65);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toTopOf, 52);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBottomOf, 53);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_guidelineUseRtl, 67);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_goneMarginBaseline, 55);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_marginBaseline, 54);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
                sparseIntArray.append(C0503R.styleable.ConstraintLayout_Layout_layout_wrapBehaviorInParent, 66);
            }
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.MarginLayoutParams) source);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.f4287a = true;
            this.f4288b = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.f4289c = 0.0f;
            this.f4290d = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.f4291e = true;
            this.f4292f = true;
            this.f4293g = false;
            this.f4294h = false;
            this.f4295i = false;
            this.f4296j = false;
            this.f4297k = false;
            this.f4298l = -1;
            this.f4299m = -1;
            this.f4300n = -1;
            this.f4301o = -1;
            this.f4302p = Integer.MIN_VALUE;
            this.f4303q = Integer.MIN_VALUE;
            this.f4304r = 0.5f;
            this.f4308v = new ConstraintWidget();
            this.helped = false;
            this.guideBegin = source.guideBegin;
            this.guideEnd = source.guideEnd;
            this.guidePercent = source.guidePercent;
            this.guidelineUseRtl = source.guidelineUseRtl;
            this.leftToLeft = source.leftToLeft;
            this.leftToRight = source.leftToRight;
            this.rightToLeft = source.rightToLeft;
            this.rightToRight = source.rightToRight;
            this.topToTop = source.topToTop;
            this.topToBottom = source.topToBottom;
            this.bottomToTop = source.bottomToTop;
            this.bottomToBottom = source.bottomToBottom;
            this.baselineToBaseline = source.baselineToBaseline;
            this.baselineToTop = source.baselineToTop;
            this.baselineToBottom = source.baselineToBottom;
            this.circleConstraint = source.circleConstraint;
            this.circleRadius = source.circleRadius;
            this.circleAngle = source.circleAngle;
            this.startToEnd = source.startToEnd;
            this.startToStart = source.startToStart;
            this.endToStart = source.endToStart;
            this.endToEnd = source.endToEnd;
            this.goneLeftMargin = source.goneLeftMargin;
            this.goneTopMargin = source.goneTopMargin;
            this.goneRightMargin = source.goneRightMargin;
            this.goneBottomMargin = source.goneBottomMargin;
            this.goneStartMargin = source.goneStartMargin;
            this.goneEndMargin = source.goneEndMargin;
            this.goneBaselineMargin = source.goneBaselineMargin;
            this.baselineMargin = source.baselineMargin;
            this.horizontalBias = source.horizontalBias;
            this.verticalBias = source.verticalBias;
            this.dimensionRatio = source.dimensionRatio;
            this.f4289c = source.f4289c;
            this.f4290d = source.f4290d;
            this.horizontalWeight = source.horizontalWeight;
            this.verticalWeight = source.verticalWeight;
            this.horizontalChainStyle = source.horizontalChainStyle;
            this.verticalChainStyle = source.verticalChainStyle;
            this.constrainedWidth = source.constrainedWidth;
            this.constrainedHeight = source.constrainedHeight;
            this.matchConstraintDefaultWidth = source.matchConstraintDefaultWidth;
            this.matchConstraintDefaultHeight = source.matchConstraintDefaultHeight;
            this.matchConstraintMinWidth = source.matchConstraintMinWidth;
            this.matchConstraintMaxWidth = source.matchConstraintMaxWidth;
            this.matchConstraintMinHeight = source.matchConstraintMinHeight;
            this.matchConstraintMaxHeight = source.matchConstraintMaxHeight;
            this.matchConstraintPercentWidth = source.matchConstraintPercentWidth;
            this.matchConstraintPercentHeight = source.matchConstraintPercentHeight;
            this.editorAbsoluteX = source.editorAbsoluteX;
            this.editorAbsoluteY = source.editorAbsoluteY;
            this.orientation = source.orientation;
            this.f4291e = source.f4291e;
            this.f4292f = source.f4292f;
            this.f4293g = source.f4293g;
            this.f4294h = source.f4294h;
            this.f4298l = source.f4298l;
            this.f4299m = source.f4299m;
            this.f4300n = source.f4300n;
            this.f4301o = source.f4301o;
            this.f4302p = source.f4302p;
            this.f4303q = source.f4303q;
            this.f4304r = source.f4304r;
            this.constraintTag = source.constraintTag;
            this.wrapBehaviorInParent = source.wrapBehaviorInParent;
            this.f4308v = source.f4308v;
            this.f4287a = source.f4287a;
            this.f4288b = source.f4288b;
        }

        public String getConstraintTag() {
            return this.constraintTag;
        }

        public ConstraintWidget getConstraintWidget() {
            return this.f4308v;
        }

        public void reset() {
            ConstraintWidget constraintWidget = this.f4308v;
            if (constraintWidget != null) {
                constraintWidget.reset();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0082  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r11) {
            /*
                Method dump skipped, instructions count: 259
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }

        public void setWidgetDebugName(String text) {
            this.f4308v.setDebugName(text);
        }

        public void validate() {
            this.f4294h = false;
            this.f4291e = true;
            this.f4292f = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.constrainedWidth) {
                this.f4291e = false;
                if (this.matchConstraintDefaultWidth == 0) {
                    this.matchConstraintDefaultWidth = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.constrainedHeight) {
                this.f4292f = false;
                if (this.matchConstraintDefaultHeight == 0) {
                    this.matchConstraintDefaultHeight = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.f4291e = false;
                if (i == 0 && this.matchConstraintDefaultWidth == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.constrainedWidth = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.f4292f = false;
                if (i2 == 0 && this.matchConstraintDefaultHeight == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.constrainedHeight = true;
                }
            }
            if (this.guidePercent == -1.0f && this.guideBegin == -1 && this.guideEnd == -1) {
                return;
            }
            this.f4294h = true;
            this.f4291e = true;
            this.f4292f = true;
            if (!(this.f4308v instanceof androidx.constraintlayout.core.widgets.Guideline)) {
                this.f4308v = new androidx.constraintlayout.core.widgets.Guideline();
            }
            ((androidx.constraintlayout.core.widgets.Guideline) this.f4308v).setOrientation(this.orientation);
        }

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.f4287a = true;
            this.f4288b = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.f4289c = 0.0f;
            this.f4290d = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.f4291e = true;
            this.f4292f = true;
            this.f4293g = false;
            this.f4294h = false;
            this.f4295i = false;
            this.f4296j = false;
            this.f4297k = false;
            this.f4298l = -1;
            this.f4299m = -1;
            this.f4300n = -1;
            this.f4301o = -1;
            this.f4302p = Integer.MIN_VALUE;
            this.f4303q = Integer.MIN_VALUE;
            this.f4304r = 0.5f;
            this.f4308v = new ConstraintWidget();
            this.helped = false;
            TypedArray obtainStyledAttributes = c.obtainStyledAttributes(attrs, C0503R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = C0495a.f4352i0.get(index);
                switch (i2) {
                    case 1:
                        this.orientation = obtainStyledAttributes.getInt(index, this.orientation);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.circleConstraint);
                        this.circleConstraint = resourceId;
                        if (resourceId == -1) {
                            this.circleConstraint = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.circleAngle) % 360.0f;
                        this.circleAngle = f;
                        if (f < 0.0f) {
                            this.circleAngle = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                        break;
                    case 6:
                        this.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                        break;
                    case 7:
                        this.guidePercent = obtainStyledAttributes.getFloat(index, this.guidePercent);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.leftToLeft);
                        this.leftToLeft = resourceId2;
                        if (resourceId2 == -1) {
                            this.leftToLeft = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.leftToRight);
                        this.leftToRight = resourceId3;
                        if (resourceId3 == -1) {
                            this.leftToRight = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.rightToLeft);
                        this.rightToLeft = resourceId4;
                        if (resourceId4 == -1) {
                            this.rightToLeft = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.rightToRight);
                        this.rightToRight = resourceId5;
                        if (resourceId5 == -1) {
                            this.rightToRight = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.topToTop);
                        this.topToTop = resourceId6;
                        if (resourceId6 == -1) {
                            this.topToTop = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.topToBottom);
                        this.topToBottom = resourceId7;
                        if (resourceId7 == -1) {
                            this.topToBottom = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.bottomToTop);
                        this.bottomToTop = resourceId8;
                        if (resourceId8 == -1) {
                            this.bottomToTop = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.bottomToBottom);
                        this.bottomToBottom = resourceId9;
                        if (resourceId9 == -1) {
                            this.bottomToBottom = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.baselineToBaseline);
                        this.baselineToBaseline = resourceId10;
                        if (resourceId10 == -1) {
                            this.baselineToBaseline = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.startToEnd);
                        this.startToEnd = resourceId11;
                        if (resourceId11 == -1) {
                            this.startToEnd = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.startToStart);
                        this.startToStart = resourceId12;
                        if (resourceId12 == -1) {
                            this.startToStart = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.endToStart);
                        this.endToStart = resourceId13;
                        if (resourceId13 == -1) {
                            this.endToStart = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.endToEnd);
                        this.endToEnd = resourceId14;
                        if (resourceId14 == -1) {
                            this.endToEnd = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                        break;
                    case 22:
                        this.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                        break;
                    case 23:
                        this.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                        break;
                    case 24:
                        this.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                        break;
                    case 25:
                        this.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                        break;
                    case 26:
                        this.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                        break;
                    case 27:
                        this.constrainedWidth = obtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                        break;
                    case 28:
                        this.constrainedHeight = obtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                        break;
                    case 29:
                        this.horizontalBias = obtainStyledAttributes.getFloat(index, this.horizontalBias);
                        break;
                    case 30:
                        this.verticalBias = obtainStyledAttributes.getFloat(index, this.verticalBias);
                        break;
                    case 31:
                        int i3 = obtainStyledAttributes.getInt(index, 0);
                        this.matchConstraintDefaultWidth = i3;
                        if (i3 == 1) {
                            Log.e(ConstraintLayout.f4258J, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.matchConstraintDefaultHeight = i4;
                        if (i4 == 1) {
                            Log.e(ConstraintLayout.f4258J, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.matchConstraintMinWidth = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinWidth);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMinWidth) == -2) {
                                this.matchConstraintMinWidth = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.matchConstraintMaxWidth = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxWidth);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMaxWidth) == -2) {
                                this.matchConstraintMaxWidth = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.matchConstraintPercentWidth = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.matchConstraintPercentWidth));
                        this.matchConstraintDefaultWidth = 2;
                        break;
                    case 36:
                        try {
                            this.matchConstraintMinHeight = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinHeight);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMinHeight) == -2) {
                                this.matchConstraintMinHeight = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.matchConstraintMaxHeight = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxHeight);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMaxHeight) == -2) {
                                this.matchConstraintMaxHeight = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.matchConstraintPercentHeight = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.matchConstraintPercentHeight));
                        this.matchConstraintDefaultHeight = 2;
                        break;
                    default:
                        switch (i2) {
                            case 44:
                                ConstraintSet.m2161s(this, obtainStyledAttributes.getString(index));
                                break;
                            case 45:
                                this.horizontalWeight = obtainStyledAttributes.getFloat(index, this.horizontalWeight);
                                break;
                            case 46:
                                this.verticalWeight = obtainStyledAttributes.getFloat(index, this.verticalWeight);
                                break;
                            case 47:
                                this.horizontalChainStyle = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.verticalChainStyle = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                                break;
                            case 50:
                                this.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                                break;
                            case 51:
                                this.constraintTag = obtainStyledAttributes.getString(index);
                                break;
                            case 52:
                                int resourceId15 = obtainStyledAttributes.getResourceId(index, this.baselineToTop);
                                this.baselineToTop = resourceId15;
                                if (resourceId15 == -1) {
                                    this.baselineToTop = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    break;
                                }
                            case 53:
                                int resourceId16 = obtainStyledAttributes.getResourceId(index, this.baselineToBottom);
                                this.baselineToBottom = resourceId16;
                                if (resourceId16 == -1) {
                                    this.baselineToBottom = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    break;
                                }
                            case 54:
                                this.baselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                                break;
                            case 55:
                                this.goneBaselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                                break;
                            default:
                                switch (i2) {
                                    case 64:
                                        ConstraintSet.m2159q(this, obtainStyledAttributes, index, 0);
                                        this.f4287a = true;
                                        break;
                                    case 65:
                                        ConstraintSet.m2159q(this, obtainStyledAttributes, index, 1);
                                        this.f4288b = true;
                                        break;
                                    case 66:
                                        this.wrapBehaviorInParent = obtainStyledAttributes.getInt(index, this.wrapBehaviorInParent);
                                        break;
                                    case 67:
                                        this.guidelineUseRtl = obtainStyledAttributes.getBoolean(index, this.guidelineUseRtl);
                                        break;
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
            validate();
        }

        public LayoutParams(int width, int height) {
            super(width, height);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.f4287a = true;
            this.f4288b = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.f4289c = 0.0f;
            this.f4290d = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.f4291e = true;
            this.f4292f = true;
            this.f4293g = false;
            this.f4294h = false;
            this.f4295i = false;
            this.f4296j = false;
            this.f4297k = false;
            this.f4298l = -1;
            this.f4299m = -1;
            this.f4300n = -1;
            this.f4301o = -1;
            this.f4302p = Integer.MIN_VALUE;
            this.f4303q = Integer.MIN_VALUE;
            this.f4304r = 0.5f;
            this.f4308v = new ConstraintWidget();
            this.helped = false;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.f4287a = true;
            this.f4288b = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.f4289c = 0.0f;
            this.f4290d = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.f4291e = true;
            this.f4292f = true;
            this.f4293g = false;
            this.f4294h = false;
            this.f4295i = false;
            this.f4296j = false;
            this.f4297k = false;
            this.f4298l = -1;
            this.f4299m = -1;
            this.f4300n = -1;
            this.f4301o = -1;
            this.f4302p = Integer.MIN_VALUE;
            this.f4303q = Integer.MIN_VALUE;
            this.f4304r = 0.5f;
            this.f4308v = new ConstraintWidget();
            this.helped = false;
        }
    }
}
