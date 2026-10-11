package com.google.android.exoplayer2.p008ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes5.dex */
public final class AspectRatioFrameLayout extends FrameLayout {
    public static final int RESIZE_MODE_FILL = 3;
    public static final int RESIZE_MODE_FIT = 0;
    public static final int RESIZE_MODE_FIXED_HEIGHT = 2;
    public static final int RESIZE_MODE_FIXED_WIDTH = 1;
    public static final int RESIZE_MODE_ZOOM = 4;

    /* renamed from: i */
    public static final float f27472i = 0.01f;

    /* renamed from: e */
    public final RunnableC4962b f27473e;

    /* renamed from: f */
    @Nullable
    public AspectRatioListener f27474f;

    /* renamed from: g */
    public float f27475g;

    /* renamed from: h */
    public int f27476h;

    /* loaded from: classes5.dex */
    public interface AspectRatioListener {
        void onAspectRatioUpdated(float f, float f2, boolean z);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ResizeMode {
    }

    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$b */
    /* loaded from: classes5.dex */
    public final class RunnableC4962b implements Runnable {

        /* renamed from: e */
        public float f27477e;

        /* renamed from: f */
        public float f27478f;

        /* renamed from: g */
        public boolean f27479g;

        /* renamed from: h */
        public boolean f27480h;

        public RunnableC4962b() {
        }

        /* renamed from: a */
        public void m20919a(float f, float f2, boolean z) {
            this.f27477e = f;
            this.f27478f = f2;
            this.f27479g = z;
            if (this.f27480h) {
                return;
            }
            this.f27480h = true;
            AspectRatioFrameLayout.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f27480h = false;
            if (AspectRatioFrameLayout.this.f27474f == null) {
                return;
            }
            AspectRatioFrameLayout.this.f27474f.onAspectRatioUpdated(this.f27477e, this.f27478f, this.f27479g);
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public int getResizeMode() {
        return this.f27476h;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        float f;
        float f2;
        super.onMeasure(i, i2);
        if (this.f27475g <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f3 = measuredWidth;
        float f4 = measuredHeight;
        float f5 = f3 / f4;
        float f6 = (this.f27475g / f5) - 1.0f;
        if (Math.abs(f6) <= 0.01f) {
            this.f27473e.m20919a(this.f27475g, f5, false);
            return;
        }
        int i3 = this.f27476h;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    f = this.f27475g;
                } else if (i3 == 4) {
                    if (f6 > 0.0f) {
                        f = this.f27475g;
                    } else {
                        f2 = this.f27475g;
                    }
                }
                measuredWidth = (int) (f4 * f);
            } else {
                f2 = this.f27475g;
            }
            measuredHeight = (int) (f3 / f2);
        } else if (f6 > 0.0f) {
            f2 = this.f27475g;
            measuredHeight = (int) (f3 / f2);
        } else {
            f = this.f27475g;
            measuredWidth = (int) (f4 * f);
        }
        this.f27473e.m20919a(this.f27475g, f5, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f) {
        if (this.f27475g != f) {
            this.f27475g = f;
            requestLayout();
        }
    }

    public void setAspectRatioListener(@Nullable AspectRatioListener aspectRatioListener) {
        this.f27474f = aspectRatioListener;
    }

    public void setResizeMode(int i) {
        if (this.f27476h != i) {
            this.f27476h = i;
            requestLayout();
        }
    }

    public AspectRatioFrameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27476h = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C4970R.styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.f27476h = obtainStyledAttributes.getInt(C4970R.styleable.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f27473e = new RunnableC4962b();
    }
}
