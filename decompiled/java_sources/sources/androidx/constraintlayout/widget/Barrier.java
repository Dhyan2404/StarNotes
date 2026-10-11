package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;

/* loaded from: classes3.dex */
public class Barrier extends ConstraintHelper {
    public static final int BOTTOM = 3;
    public static final int END = 6;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int START = 5;
    public static final int TOP = 2;

    /* renamed from: f */
    public int f4244f;

    /* renamed from: g */
    public int f4245g;

    /* renamed from: h */
    public androidx.constraintlayout.core.widgets.Barrier f4246h;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.f4246h.getAllowsGoneWidget();
    }

    /* renamed from: g */
    public final void m2124g(ConstraintWidget widget, int type, boolean isRtl) {
        this.f4245g = type;
        if (isRtl) {
            int i = this.f4244f;
            if (i == 5) {
                this.f4245g = 1;
            } else if (i == 6) {
                this.f4245g = 0;
            }
        } else {
            int i2 = this.f4244f;
            if (i2 == 5) {
                this.f4245g = 0;
            } else if (i2 == 6) {
                this.f4245g = 1;
            }
        }
        if (widget instanceof androidx.constraintlayout.core.widgets.Barrier) {
            ((androidx.constraintlayout.core.widgets.Barrier) widget).setBarrierType(this.f4245g);
        }
    }

    public boolean getAllowsGoneWidget() {
        return this.f4246h.getAllowsGoneWidget();
    }

    public int getMargin() {
        return this.f4246h.getMargin();
    }

    public int getType() {
        return this.f4244f;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attrs) {
        super.init(attrs);
        this.f4246h = new androidx.constraintlayout.core.widgets.Barrier();
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f4246h.setAllowsGoneWidget(obtainStyledAttributes.getBoolean(index, true));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.f4246h.setMargin(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mHelperWidget = this.f4246h;
        validateParams();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void loadParameters(ConstraintSet.Constraint constraint, HelperWidget child, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> mapIdToWidget) {
        super.loadParameters(constraint, child, layoutParams, mapIdToWidget);
        if (child instanceof androidx.constraintlayout.core.widgets.Barrier) {
            androidx.constraintlayout.core.widgets.Barrier barrier = (androidx.constraintlayout.core.widgets.Barrier) child;
            m2124g(barrier, constraint.layout.mBarrierDirection, ((ConstraintWidgetContainer) child.getParent()).isRtl());
            barrier.setAllowsGoneWidget(constraint.layout.mBarrierAllowsGoneWidgets);
            barrier.setMargin(constraint.layout.mBarrierMargin);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void resolveRtl(ConstraintWidget widget, boolean isRtl) {
        m2124g(widget, this.f4244f, isRtl);
    }

    public void setAllowsGoneWidget(boolean supportGone) {
        this.f4246h.setAllowsGoneWidget(supportGone);
    }

    public void setDpMargin(int margin) {
        this.f4246h.setMargin((int) ((margin * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int margin) {
        this.f4246h.setMargin(margin);
    }

    public void setType(int type) {
        this.f4244f = type;
    }

    public Barrier(Context context, AttributeSet attrs) {
        super(context, attrs);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        super.setVisibility(8);
    }
}
