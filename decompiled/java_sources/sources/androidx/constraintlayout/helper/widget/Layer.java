package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes3.dex */
public class Layer extends ConstraintHelper {

    /* renamed from: r */
    public static final String f3474r = "Layer";

    /* renamed from: f */
    public float f3475f;

    /* renamed from: g */
    public float f3476g;

    /* renamed from: h */
    public float f3477h;

    /* renamed from: i */
    public ConstraintLayout f3478i;

    /* renamed from: j */
    public float f3479j;

    /* renamed from: k */
    public float f3480k;

    /* renamed from: l */
    public boolean f3481l;

    /* renamed from: m */
    public View[] f3482m;
    protected float mComputedCenterX;
    protected float mComputedCenterY;
    protected float mComputedMaxX;
    protected float mComputedMaxY;
    protected float mComputedMinX;
    protected float mComputedMinY;

    /* renamed from: n */
    public float f3483n;

    /* renamed from: o */
    public float f3484o;

    /* renamed from: p */
    public boolean f3485p;

    /* renamed from: q */
    public boolean f3486q;

    public Layer(Context context) {
        super(context);
        this.f3475f = Float.NaN;
        this.f3476g = Float.NaN;
        this.f3477h = Float.NaN;
        this.f3479j = 1.0f;
        this.f3480k = 1.0f;
        this.mComputedCenterX = Float.NaN;
        this.mComputedCenterY = Float.NaN;
        this.mComputedMaxX = Float.NaN;
        this.mComputedMaxY = Float.NaN;
        this.mComputedMinX = Float.NaN;
        this.mComputedMinY = Float.NaN;
        this.f3481l = true;
        this.f3482m = null;
        this.f3483n = 0.0f;
        this.f3484o = 0.0f;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void applyLayoutFeaturesInConstraintSet(ConstraintLayout container) {
        applyLayoutFeatures(container);
    }

    public void calcCenters() {
        if (this.f3478i == null) {
            return;
        }
        if (this.f3481l || Float.isNaN(this.mComputedCenterX) || Float.isNaN(this.mComputedCenterY)) {
            if (!Float.isNaN(this.f3475f) && !Float.isNaN(this.f3476g)) {
                this.mComputedCenterY = this.f3476g;
                this.mComputedCenterX = this.f3475f;
                return;
            }
            View[] views = getViews(this.f3478i);
            int left = views[0].getLeft();
            int top = views[0].getTop();
            int right = views[0].getRight();
            int bottom = views[0].getBottom();
            for (int i = 0; i < this.mCount; i++) {
                View view = views[i];
                left = Math.min(left, view.getLeft());
                top = Math.min(top, view.getTop());
                right = Math.max(right, view.getRight());
                bottom = Math.max(bottom, view.getBottom());
            }
            this.mComputedMaxX = right;
            this.mComputedMaxY = bottom;
            this.mComputedMinX = left;
            this.mComputedMinY = top;
            if (Float.isNaN(this.f3475f)) {
                this.mComputedCenterX = (left + right) / 2;
            } else {
                this.mComputedCenterX = this.f3475f;
            }
            if (Float.isNaN(this.f3476g)) {
                this.mComputedCenterY = (top + bottom) / 2;
            } else {
                this.mComputedCenterY = this.f3476g;
            }
        }
    }

    /* renamed from: g */
    public final void m1701g() {
        int i;
        if (this.f3478i == null || (i = this.mCount) == 0) {
            return;
        }
        View[] viewArr = this.f3482m;
        if (viewArr == null || viewArr.length != i) {
            this.f3482m = new View[i];
        }
        for (int i2 = 0; i2 < this.mCount; i2++) {
            this.f3482m[i2] = this.f3478i.getViewById(this.mIds[i2]);
        }
    }

    /* renamed from: h */
    public final void m1702h() {
        if (this.f3478i == null) {
            return;
        }
        if (this.f3482m == null) {
            m1701g();
        }
        calcCenters();
        double radians = Float.isNaN(this.f3477h) ? 0.0d : Math.toRadians(this.f3477h);
        float sin = (float) Math.sin(radians);
        float cos = (float) Math.cos(radians);
        float f = this.f3479j;
        float f2 = f * cos;
        float f3 = this.f3480k;
        float f4 = (-f3) * sin;
        float f5 = f * sin;
        float f6 = f3 * cos;
        for (int i = 0; i < this.mCount; i++) {
            View view = this.f3482m[i];
            int left = (view.getLeft() + view.getRight()) / 2;
            int top = (view.getTop() + view.getBottom()) / 2;
            float f7 = left - this.mComputedCenterX;
            float f8 = top - this.mComputedCenterY;
            float f9 = (((f2 * f7) + (f4 * f8)) - f7) + this.f3483n;
            float f10 = (((f7 * f5) + (f6 * f8)) - f8) + this.f3484o;
            view.setTranslationX(f9);
            view.setTranslationY(f10);
            view.setScaleY(this.f3480k);
            view.setScaleX(this.f3479j);
            if (!Float.isNaN(this.f3477h)) {
                view.setRotation(this.f3477h);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attrs) {
        super.init(attrs);
        this.mUseViewMeasure = false;
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f3485p = true;
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_elevation) {
                    this.f3486q = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3478i = (ConstraintLayout) getParent();
        if (this.f3485p || this.f3486q) {
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i = 0; i < this.mCount; i++) {
                View viewById = this.f3478i.getViewById(this.mIds[i]);
                if (viewById != null) {
                    if (this.f3485p) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.f3486q && elevation > 0.0f) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float elevation) {
        super.setElevation(elevation);
        applyLayoutFeatures();
    }

    @Override // android.view.View
    public void setPivotX(float pivotX) {
        this.f3475f = pivotX;
        m1702h();
    }

    @Override // android.view.View
    public void setPivotY(float pivotY) {
        this.f3476g = pivotY;
        m1702h();
    }

    @Override // android.view.View
    public void setRotation(float angle) {
        this.f3477h = angle;
        m1702h();
    }

    @Override // android.view.View
    public void setScaleX(float scaleX) {
        this.f3479j = scaleX;
        m1702h();
    }

    @Override // android.view.View
    public void setScaleY(float scaleY) {
        this.f3480k = scaleY;
        m1702h();
    }

    @Override // android.view.View
    public void setTranslationX(float dx) {
        this.f3483n = dx;
        m1702h();
    }

    @Override // android.view.View
    public void setTranslationY(float dy) {
        this.f3484o = dy;
        m1702h();
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        applyLayoutFeatures();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePostLayout(ConstraintLayout container) {
        m1701g();
        this.mComputedCenterX = Float.NaN;
        this.mComputedCenterY = Float.NaN;
        ConstraintWidget constraintWidget = ((ConstraintLayout.LayoutParams) getLayoutParams()).getConstraintWidget();
        constraintWidget.setWidth(0);
        constraintWidget.setHeight(0);
        calcCenters();
        layout(((int) this.mComputedMinX) - getPaddingLeft(), ((int) this.mComputedMinY) - getPaddingTop(), ((int) this.mComputedMaxX) + getPaddingRight(), ((int) this.mComputedMaxY) + getPaddingBottom());
        m1702h();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePreDraw(ConstraintLayout container) {
        this.f3478i = container;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.f3477h = rotation;
        } else {
            if (Float.isNaN(this.f3477h)) {
                return;
            }
            this.f3477h = rotation;
        }
    }

    public Layer(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3475f = Float.NaN;
        this.f3476g = Float.NaN;
        this.f3477h = Float.NaN;
        this.f3479j = 1.0f;
        this.f3480k = 1.0f;
        this.mComputedCenterX = Float.NaN;
        this.mComputedCenterY = Float.NaN;
        this.mComputedMaxX = Float.NaN;
        this.mComputedMaxY = Float.NaN;
        this.mComputedMinX = Float.NaN;
        this.mComputedMinY = Float.NaN;
        this.f3481l = true;
        this.f3482m = null;
        this.f3483n = 0.0f;
        this.f3484o = 0.0f;
    }

    public Layer(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3475f = Float.NaN;
        this.f3476g = Float.NaN;
        this.f3477h = Float.NaN;
        this.f3479j = 1.0f;
        this.f3480k = 1.0f;
        this.mComputedCenterX = Float.NaN;
        this.mComputedCenterY = Float.NaN;
        this.mComputedMaxX = Float.NaN;
        this.mComputedMaxY = Float.NaN;
        this.mComputedMinX = Float.NaN;
        this.mComputedMinY = Float.NaN;
        this.f3481l = true;
        this.f3482m = null;
        this.f3483n = 0.0f;
        this.f3484o = 0.0f;
    }
}
