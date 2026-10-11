package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;

/* loaded from: classes3.dex */
public class PagerTabStrip extends PagerTitleStrip {

    /* renamed from: A0 */
    public static final String f10973A0 = "PagerTabStrip";

    /* renamed from: B0 */
    public static final int f10974B0 = 3;

    /* renamed from: C0 */
    public static final int f10975C0 = 6;

    /* renamed from: D0 */
    public static final int f10976D0 = 16;

    /* renamed from: E0 */
    public static final int f10977E0 = 32;

    /* renamed from: F0 */
    public static final int f10978F0 = 64;

    /* renamed from: G0 */
    public static final int f10979G0 = 1;

    /* renamed from: H0 */
    public static final int f10980H0 = 32;

    /* renamed from: J */
    public int f10981J;

    /* renamed from: O */
    public int f10982O;

    /* renamed from: Q */
    public final Paint f10983Q;

    /* renamed from: k0 */
    public final Rect f10984k0;

    /* renamed from: q0 */
    public int f10985q0;

    /* renamed from: t0 */
    public boolean f10986t0;

    /* renamed from: u0 */
    public boolean f10987u0;

    /* renamed from: v0 */
    public int f10988v0;

    /* renamed from: w */
    public int f10989w;

    /* renamed from: w0 */
    public boolean f10990w0;

    /* renamed from: x */
    public int f10991x;

    /* renamed from: x0 */
    public float f10992x0;

    /* renamed from: y */
    public int f10993y;

    /* renamed from: y0 */
    public float f10994y0;

    /* renamed from: z */
    public int f10995z;

    /* renamed from: z0 */
    public int f10996z0;

    /* renamed from: androidx.viewpager.widget.PagerTabStrip$a */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC1539a implements View.OnClickListener {
        public ViewOnClickListenerC1539a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PagerTabStrip.this.f11003e.setCurrentItem(r0.getCurrentItem() - 1);
        }
    }

    /* renamed from: androidx.viewpager.widget.PagerTabStrip$b */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC1540b implements View.OnClickListener {
        public ViewOnClickListenerC1540b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f11003e;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public PagerTabStrip(@NonNull Context context) {
        this(context, null);
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    /* renamed from: c */
    public void mo6762c(int i, float f, boolean z) {
        Rect rect = this.f10984k0;
        int height = getHeight();
        int left = this.f11005g.getLeft() - this.f10982O;
        int right = this.f11005g.getRight() + this.f10982O;
        int i2 = height - this.f10991x;
        rect.set(left, i2, right, height);
        super.mo6762c(i, f, z);
        this.f10985q0 = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f11005g.getLeft() - this.f10982O, i2, this.f11005g.getRight() + this.f10982O, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.f10986t0;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.f10981J);
    }

    @ColorInt
    public int getTabIndicatorColor() {
        return this.f10989w;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f11005g.getLeft() - this.f10982O;
        int right = this.f11005g.getRight() + this.f10982O;
        int i = height - this.f10991x;
        this.f10983Q.setColor((this.f10985q0 << 24) | (this.f10989w & 16777215));
        float f = height;
        canvas.drawRect(left, i, right, f, this.f10983Q);
        if (this.f10986t0) {
            this.f10983Q.setColor((this.f10989w & 16777215) | (-16777216));
            canvas.drawRect(getPaddingLeft(), height - this.f10988v0, getWidth() - getPaddingRight(), f, this.f10983Q);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.f10990w0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.f10992x0 = x;
            this.f10994y0 = y;
            this.f10990w0 = false;
        } else if (action != 1) {
            if (action == 2 && (Math.abs(x - this.f10992x0) > this.f10996z0 || Math.abs(y - this.f10994y0) > this.f10996z0)) {
                this.f10990w0 = true;
            }
        } else if (x < this.f11005g.getLeft() - this.f10982O) {
            ViewPager viewPager = this.f11003e;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        } else if (x > this.f11005g.getRight() + this.f10982O) {
            ViewPager viewPager2 = this.f11003e;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        super.setBackgroundColor(i);
        if (this.f10987u0) {
            return;
        }
        this.f10986t0 = (i & (-16777216)) == 0;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f10987u0) {
            return;
        }
        this.f10986t0 = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (this.f10987u0) {
            return;
        }
        this.f10986t0 = i == 0;
    }

    public void setDrawFullUnderline(boolean z) {
        this.f10986t0 = z;
        this.f10987u0 = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.f10993y;
        if (i4 < i5) {
            i4 = i5;
        }
        super.setPadding(i, i2, i3, i4);
    }

    public void setTabIndicatorColor(@ColorInt int i) {
        this.f10989w = i;
        this.f10983Q.setColor(i);
        invalidate();
    }

    public void setTabIndicatorColorResource(@ColorRes int i) {
        setTabIndicatorColor(ContextCompat.getColor(getContext(), i));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i) {
        int i2 = this.f10995z;
        if (i < i2) {
            i = i2;
        }
        super.setTextSpacing(i);
    }

    public PagerTabStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f10983Q = paint;
        this.f10984k0 = new Rect();
        this.f10985q0 = 255;
        this.f10986t0 = false;
        this.f10987u0 = false;
        int i = this.f11016r;
        this.f10989w = i;
        paint.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.f10991x = (int) ((3.0f * f) + 0.5f);
        this.f10993y = (int) ((6.0f * f) + 0.5f);
        this.f10995z = (int) (64.0f * f);
        this.f10982O = (int) ((16.0f * f) + 0.5f);
        this.f10988v0 = (int) ((1.0f * f) + 0.5f);
        this.f10981J = (int) ((f * 32.0f) + 0.5f);
        this.f10996z0 = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f11004f.setFocusable(true);
        this.f11004f.setOnClickListener(new ViewOnClickListenerC1539a());
        this.f11006h.setFocusable(true);
        this.f11006h.setOnClickListener(new ViewOnClickListenerC1540b());
        if (getBackground() == null) {
            this.f10986t0 = true;
        }
    }
}
