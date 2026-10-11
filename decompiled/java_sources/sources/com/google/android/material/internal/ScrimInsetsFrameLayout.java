package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C5139R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: e */
    @Nullable
    public Drawable f31650e;

    /* renamed from: f */
    public Rect f31651f;

    /* renamed from: g */
    public Rect f31652g;

    /* renamed from: h */
    public boolean f31653h;

    /* renamed from: i */
    public boolean f31654i;

    /* renamed from: j */
    public boolean f31655j;

    /* renamed from: k */
    public boolean f31656k;

    /* renamed from: com.google.android.material.internal.ScrimInsetsFrameLayout$a */
    /* loaded from: classes6.dex */
    public class C5311a implements OnApplyWindowInsetsListener {
        public C5311a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f31651f == null) {
                scrimInsetsFrameLayout.f31651f = new Rect();
            }
            ScrimInsetsFrameLayout.this.f31651f.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            ScrimInsetsFrameLayout.this.onInsetsChanged(windowInsetsCompat);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.f31650e == null);
            ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    public ScrimInsetsFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f31651f == null || this.f31650e == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f31653h) {
            this.f31652g.set(0, 0, width, this.f31651f.top);
            this.f31650e.setBounds(this.f31652g);
            this.f31650e.draw(canvas);
        }
        if (this.f31654i) {
            this.f31652g.set(0, height - this.f31651f.bottom, width, height);
            this.f31650e.setBounds(this.f31652g);
            this.f31650e.draw(canvas);
        }
        if (this.f31655j) {
            Rect rect = this.f31652g;
            Rect rect2 = this.f31651f;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.f31650e.setBounds(this.f31652g);
            this.f31650e.draw(canvas);
        }
        if (this.f31656k) {
            Rect rect3 = this.f31652g;
            Rect rect4 = this.f31651f;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.f31650e.setBounds(this.f31652g);
            this.f31650e.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f31650e;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f31650e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void onInsetsChanged(WindowInsetsCompat windowInsetsCompat) {
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.f31654i = z;
    }

    public void setDrawLeftInsetForeground(boolean z) {
        this.f31655j = z;
    }

    public void setDrawRightInsetForeground(boolean z) {
        this.f31656k = z;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.f31653h = z;
    }

    public void setScrimInsetForeground(@Nullable Drawable drawable) {
        this.f31650e = drawable;
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f31652g = new Rect();
        this.f31653h = true;
        this.f31654i = true;
        this.f31655j = true;
        this.f31656k = true;
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, C5139R.styleable.ScrimInsetsFrameLayout, i, C5139R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f31650e = obtainStyledAttributes.getDrawable(C5139R.styleable.ScrimInsetsFrameLayout_insetForeground);
        obtainStyledAttributes.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new C5311a());
    }
}
