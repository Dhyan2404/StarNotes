package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.SharedValues;

/* loaded from: classes3.dex */
public class ReactiveGuide extends View implements SharedValues.SharedValuesListener {

    /* renamed from: e */
    public int f4671e;

    /* renamed from: f */
    public boolean f4672f;

    /* renamed from: g */
    public int f4673g;

    /* renamed from: h */
    public boolean f4674h;

    public ReactiveGuide(Context context) {
        super(context);
        this.f4671e = -1;
        this.f4672f = false;
        this.f4673g = 0;
        this.f4674h = true;
        super.setVisibility(8);
        m2232b(null);
    }

    /* renamed from: a */
    public final void m2231a(int newValue, int id, MotionLayout motionLayout, int currentState) {
        ConstraintSet constraintSet = motionLayout.getConstraintSet(currentState);
        constraintSet.setGuidelineEnd(id, newValue);
        motionLayout.updateState(currentState, constraintSet);
    }

    /* renamed from: b */
    public final void m2232b(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ConstraintLayout_ReactiveGuide);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_valueId) {
                    this.f4671e = obtainStyledAttributes.getResourceId(index, this.f4671e);
                } else if (index == C0503R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_animateChange) {
                    this.f4672f = obtainStyledAttributes.getBoolean(index, this.f4672f);
                } else if (index == C0503R.styleable.f4670x2694048c) {
                    this.f4673g = obtainStyledAttributes.getResourceId(index, this.f4673g);
                } else if (index == C0503R.styleable.f4669xfdeff96) {
                    this.f4674h = obtainStyledAttributes.getBoolean(index, this.f4674h);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.f4671e != -1) {
            ConstraintLayout.getSharedValues().addListener(this.f4671e, this);
        }
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getApplyToConstraintSetId() {
        return this.f4673g;
    }

    public int getAttributeId() {
        return this.f4671e;
    }

    public boolean isAnimatingChange() {
        return this.f4672f;
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(0, 0);
    }

    @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
    public void onNewValue(int key, int newValue, int oldValue) {
        setGuidelineBegin(newValue);
        int id = getId();
        if (id > 0 && (getParent() instanceof MotionLayout)) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            int currentState = motionLayout.getCurrentState();
            int i = this.f4673g;
            if (i != 0) {
                currentState = i;
            }
            int i2 = 0;
            if (!this.f4672f) {
                if (!this.f4674h) {
                    m2231a(newValue, id, motionLayout, currentState);
                    return;
                }
                int[] constraintSetIds = motionLayout.getConstraintSetIds();
                while (i2 < constraintSetIds.length) {
                    m2231a(newValue, id, motionLayout, constraintSetIds[i2]);
                    i2++;
                }
                return;
            }
            if (this.f4674h) {
                int[] constraintSetIds2 = motionLayout.getConstraintSetIds();
                while (i2 < constraintSetIds2.length) {
                    int i3 = constraintSetIds2[i2];
                    if (i3 != currentState) {
                        m2231a(newValue, id, motionLayout, i3);
                    }
                    i2++;
                }
            }
            ConstraintSet cloneConstraintSet = motionLayout.cloneConstraintSet(currentState);
            cloneConstraintSet.setGuidelineEnd(id, newValue);
            motionLayout.updateStateAnimate(currentState, cloneConstraintSet, 1000);
        }
    }

    public void setAnimateChange(boolean animate) {
        this.f4672f = animate;
    }

    public void setApplyToConstraintSetId(int id) {
        this.f4673g = id;
    }

    public void setAttributeId(int id) {
        SharedValues sharedValues = ConstraintLayout.getSharedValues();
        int i = this.f4671e;
        if (i != -1) {
            sharedValues.removeListener(i, this);
        }
        this.f4671e = id;
        if (id != -1) {
            sharedValues.addListener(id, this);
        }
    }

    public void setGuidelineBegin(int margin) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideBegin = margin;
        setLayoutParams(layoutParams);
    }

    public void setGuidelineEnd(int margin) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideEnd = margin;
        setLayoutParams(layoutParams);
    }

    public void setGuidelinePercent(float ratio) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guidePercent = ratio;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
    }

    public ReactiveGuide(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f4671e = -1;
        this.f4672f = false;
        this.f4673g = 0;
        this.f4674h = true;
        super.setVisibility(8);
        m2232b(attrs);
    }

    public ReactiveGuide(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f4671e = -1;
        this.f4672f = false;
        this.f4673g = 0;
        this.f4674h = true;
        super.setVisibility(8);
        m2232b(attrs);
    }

    public ReactiveGuide(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
        this.f4671e = -1;
        this.f4672f = false;
        this.f4673g = 0;
        this.f4674h = true;
        super.setVisibility(8);
        m2232b(attrs);
    }
}
