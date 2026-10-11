package androidx.constraintlayout.helper.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.VirtualLayout;

/* loaded from: classes3.dex */
public class Flow extends VirtualLayout {
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int HORIZONTAL = 0;
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL = 1;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_NONE = 0;

    /* renamed from: i */
    public static final String f3472i = "Flow";

    /* renamed from: h */
    public androidx.constraintlayout.core.widgets.Flow f3473h;

    public Flow(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attrs) {
        super.init(attrs);
        this.f3473h = new androidx.constraintlayout.core.widgets.Flow();
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ConstraintLayout_Layout_android_orientation) {
                    this.f3473h.setOrientation(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_padding) {
                    this.f3473h.setPadding(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_paddingStart) {
                    this.f3473h.setPaddingStart(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_paddingEnd) {
                    this.f3473h.setPaddingEnd(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_paddingLeft) {
                    this.f3473h.setPaddingLeft(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_paddingTop) {
                    this.f3473h.setPaddingTop(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_paddingRight) {
                    this.f3473h.setPaddingRight(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_android_paddingBottom) {
                    this.f3473h.setPaddingBottom(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_wrapMode) {
                    this.f3473h.setWrapMode(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.f3473h.setHorizontalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.f3473h.setVerticalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.f3473h.setFirstHorizontalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.f3473h.setLastHorizontalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.f3473h.setFirstVerticalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.f3473h.setLastVerticalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.f3473h.setHorizontalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.f3473h.setFirstHorizontalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.f3473h.setLastHorizontalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.f3473h.setFirstVerticalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.f3473h.setLastVerticalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_verticalBias) {
                    this.f3473h.setVerticalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.f3473h.setHorizontalAlign(obtainStyledAttributes.getInt(index, 2));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.f3473h.setVerticalAlign(obtainStyledAttributes.getInt(index, 2));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.f3473h.setHorizontalGap(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_verticalGap) {
                    this.f3473h.setVerticalGap(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.f3473h.setMaxElementsWrap(obtainStyledAttributes.getInt(index, -1));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mHelperWidget = this.f3473h;
        validateParams();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void loadParameters(ConstraintSet.Constraint constraint, HelperWidget child, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> mapIdToWidget) {
        super.loadParameters(constraint, child, layoutParams, mapIdToWidget);
        if (child instanceof androidx.constraintlayout.core.widgets.Flow) {
            androidx.constraintlayout.core.widgets.Flow flow = (androidx.constraintlayout.core.widgets.Flow) child;
            int i = layoutParams.orientation;
            if (i != -1) {
                flow.setOrientation(i);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    @SuppressLint({"WrongCall"})
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        onMeasure(this.f3473h, widthMeasureSpec, heightMeasureSpec);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void resolveRtl(ConstraintWidget widget, boolean isRtl) {
        this.f3473h.applyRtl(isRtl);
    }

    public void setFirstHorizontalBias(float bias) {
        this.f3473h.setFirstHorizontalBias(bias);
        requestLayout();
    }

    public void setFirstHorizontalStyle(int style) {
        this.f3473h.setFirstHorizontalStyle(style);
        requestLayout();
    }

    public void setFirstVerticalBias(float bias) {
        this.f3473h.setFirstVerticalBias(bias);
        requestLayout();
    }

    public void setFirstVerticalStyle(int style) {
        this.f3473h.setFirstVerticalStyle(style);
        requestLayout();
    }

    public void setHorizontalAlign(int align) {
        this.f3473h.setHorizontalAlign(align);
        requestLayout();
    }

    public void setHorizontalBias(float bias) {
        this.f3473h.setHorizontalBias(bias);
        requestLayout();
    }

    public void setHorizontalGap(int gap) {
        this.f3473h.setHorizontalGap(gap);
        requestLayout();
    }

    public void setHorizontalStyle(int style) {
        this.f3473h.setHorizontalStyle(style);
        requestLayout();
    }

    public void setLastHorizontalBias(float bias) {
        this.f3473h.setLastHorizontalBias(bias);
        requestLayout();
    }

    public void setLastHorizontalStyle(int style) {
        this.f3473h.setLastHorizontalStyle(style);
        requestLayout();
    }

    public void setLastVerticalBias(float bias) {
        this.f3473h.setLastVerticalBias(bias);
        requestLayout();
    }

    public void setLastVerticalStyle(int style) {
        this.f3473h.setLastVerticalStyle(style);
        requestLayout();
    }

    public void setMaxElementsWrap(int max) {
        this.f3473h.setMaxElementsWrap(max);
        requestLayout();
    }

    public void setOrientation(int orientation) {
        this.f3473h.setOrientation(orientation);
        requestLayout();
    }

    public void setPadding(int padding) {
        this.f3473h.setPadding(padding);
        requestLayout();
    }

    public void setPaddingBottom(int paddingBottom) {
        this.f3473h.setPaddingBottom(paddingBottom);
        requestLayout();
    }

    public void setPaddingLeft(int paddingLeft) {
        this.f3473h.setPaddingLeft(paddingLeft);
        requestLayout();
    }

    public void setPaddingRight(int paddingRight) {
        this.f3473h.setPaddingRight(paddingRight);
        requestLayout();
    }

    public void setPaddingTop(int paddingTop) {
        this.f3473h.setPaddingTop(paddingTop);
        requestLayout();
    }

    public void setVerticalAlign(int align) {
        this.f3473h.setVerticalAlign(align);
        requestLayout();
    }

    public void setVerticalBias(float bias) {
        this.f3473h.setVerticalBias(bias);
        requestLayout();
    }

    public void setVerticalGap(int gap) {
        this.f3473h.setVerticalGap(gap);
        requestLayout();
    }

    public void setVerticalStyle(int style) {
        this.f3473h.setVerticalStyle(style);
        requestLayout();
    }

    public void setWrapMode(int mode) {
        this.f3473h.setWrapMode(mode);
        requestLayout();
    }

    public Flow(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    public void onMeasure(androidx.constraintlayout.core.widgets.VirtualLayout layout, int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (layout != null) {
            layout.measure(mode, size, mode2, size2);
            setMeasuredDimension(layout.getMeasuredWidth(), layout.getMeasuredHeight());
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public Flow(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
