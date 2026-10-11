package com.blankj.utilcode.util;

import android.R;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.SystemClock;
import android.util.Log;
import android.util.StateSet;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.blankj.utilcode.util.ShadowUtils;

/* loaded from: classes3.dex */
public class ClickUtils {

    /* renamed from: a */
    public static final int f13696a = -1;

    /* renamed from: b */
    public static final float f13697b = -0.06f;

    /* renamed from: c */
    public static final int f13698c = -2;

    /* renamed from: d */
    public static final int f13699d = -3;

    /* renamed from: e */
    public static final float f13700e = 0.8f;

    /* renamed from: f */
    public static final int f13701f = 4;

    /* renamed from: g */
    public static final float f13702g = 0.9f;

    /* renamed from: h */
    public static final int f13703h = 5;

    /* renamed from: i */
    public static final float f13704i = 0.9f;

    /* renamed from: j */
    public static final long f13705j = 1000;

    /* renamed from: k */
    public static final long f13706k = 2000;

    /* renamed from: l */
    public static long f13707l;

    /* renamed from: m */
    public static int f13708m;

    /* loaded from: classes3.dex */
    public interface Back2HomeFriendlyListener {
        public static final Back2HomeFriendlyListener DEFAULT = new C1805a();

        /* renamed from: com.blankj.utilcode.util.ClickUtils$Back2HomeFriendlyListener$a */
        /* loaded from: classes3.dex */
        public static class C1805a implements Back2HomeFriendlyListener {
            @Override // com.blankj.utilcode.util.ClickUtils.Back2HomeFriendlyListener
            public void dismiss() {
                C1887b.m8491c1();
            }

            @Override // com.blankj.utilcode.util.ClickUtils.Back2HomeFriendlyListener
            public void show(CharSequence charSequence, long j) {
                C1887b.m8494d1(charSequence);
            }
        }

        void dismiss();

        void show(CharSequence charSequence, long j);
    }

    /* loaded from: classes3.dex */
    public static abstract class OnDebouncingClickListener implements View.OnClickListener {

        /* renamed from: g */
        public static boolean f13709g = true;

        /* renamed from: h */
        public static final Runnable f13710h = new RunnableC1806a();

        /* renamed from: e */
        public long f13711e;

        /* renamed from: f */
        public boolean f13712f;

        /* renamed from: com.blankj.utilcode.util.ClickUtils$OnDebouncingClickListener$a */
        /* loaded from: classes3.dex */
        public static class RunnableC1806a implements Runnable {
            @Override // java.lang.Runnable
            public void run() {
                boolean unused = OnDebouncingClickListener.f13709g = true;
            }
        }

        public OnDebouncingClickListener() {
            this(true, 1000L);
        }

        /* renamed from: b */
        public static boolean m8048b(@NonNull View view, long j) {
            return C1887b.m8440E0(view, j);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!this.f13712f) {
                if (m8048b(view, this.f13711e)) {
                    onDebouncingClick(view);
                }
            } else if (f13709g) {
                f13709g = false;
                view.postDelayed(f13710h, this.f13711e);
                onDebouncingClick(view);
            }
        }

        public abstract void onDebouncingClick(View view);

        public OnDebouncingClickListener(boolean z) {
            this(z, 1000L);
        }

        public OnDebouncingClickListener(long j) {
            this(true, j);
        }

        public OnDebouncingClickListener(boolean z, long j) {
            this.f13712f = z;
            this.f13711e = j;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class OnMultiClickListener implements View.OnClickListener {

        /* renamed from: i */
        public static final long f13713i = 666;

        /* renamed from: e */
        public final int f13714e;

        /* renamed from: f */
        public final long f13715f;

        /* renamed from: g */
        public long f13716g;

        /* renamed from: h */
        public int f13717h;

        public OnMultiClickListener(int i) {
            this(i, 666L);
        }

        public abstract void onBeforeTriggerClick(View view, int i);

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f13714e <= 1) {
                onTriggerClick(view);
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.f13716g < this.f13715f) {
                int i = this.f13717h + 1;
                this.f13717h = i;
                int i2 = this.f13714e;
                if (i == i2) {
                    onTriggerClick(view);
                } else if (i < i2) {
                    onBeforeTriggerClick(view, i);
                } else {
                    this.f13717h = 1;
                    onBeforeTriggerClick(view, 1);
                }
            } else {
                this.f13717h = 1;
                onBeforeTriggerClick(view, 1);
            }
            this.f13716g = currentTimeMillis;
        }

        public abstract void onTriggerClick(View view);

        public OnMultiClickListener(int i, long j) {
            this.f13714e = i;
            this.f13715f = j;
        }
    }

    /* renamed from: com.blankj.utilcode.util.ClickUtils$a */
    /* loaded from: classes3.dex */
    public static class C1807a extends OnDebouncingClickListener {

        /* renamed from: i */
        public final /* synthetic */ View.OnClickListener f13718i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1807a(boolean z, long j, View.OnClickListener onClickListener) {
            super(z, j);
            this.f13718i = onClickListener;
        }

        @Override // com.blankj.utilcode.util.ClickUtils.OnDebouncingClickListener
        public void onDebouncingClick(View view) {
            this.f13718i.onClick(view);
        }
    }

    /* renamed from: com.blankj.utilcode.util.ClickUtils$b */
    /* loaded from: classes3.dex */
    public static class RunnableC1808b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ View f13719e;

        /* renamed from: f */
        public final /* synthetic */ int f13720f;

        /* renamed from: g */
        public final /* synthetic */ int f13721g;

        /* renamed from: h */
        public final /* synthetic */ int f13722h;

        /* renamed from: i */
        public final /* synthetic */ int f13723i;

        /* renamed from: j */
        public final /* synthetic */ View f13724j;

        public RunnableC1808b(View view, int i, int i2, int i3, int i4, View view2) {
            this.f13719e = view;
            this.f13720f = i;
            this.f13721g = i2;
            this.f13722h = i3;
            this.f13723i = i4;
            this.f13724j = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Rect rect = new Rect();
            this.f13719e.getHitRect(rect);
            rect.top -= this.f13720f;
            rect.bottom += this.f13721g;
            rect.left -= this.f13722h;
            rect.right += this.f13723i;
            this.f13724j.setTouchDelegate(new TouchDelegate(rect, this.f13719e));
        }
    }

    /* renamed from: com.blankj.utilcode.util.ClickUtils$c */
    /* loaded from: classes3.dex */
    public static class C1809c extends ShadowUtils.C1852a {

        /* renamed from: f */
        public BitmapDrawable f13725f;

        /* renamed from: g */
        public Paint f13726g;

        public C1809c(Drawable drawable) {
            super(drawable);
            this.f13725f = null;
            this.f13726g = null;
            if (drawable instanceof ColorDrawable) {
                Paint paint = new Paint(5);
                this.f13726g = paint;
                paint.setColor(((ColorDrawable) drawable).getColor());
            }
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f13725f == null) {
                Bitmap createBitmap = Bitmap.createBitmap(getBounds().width(), getBounds().height(), Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap);
                if (this.f13726g != null) {
                    canvas2.drawRect(getBounds(), this.f13726g);
                } else {
                    super.draw(canvas2);
                }
                BitmapDrawable bitmapDrawable = new BitmapDrawable(Resources.getSystem(), createBitmap);
                this.f13725f = bitmapDrawable;
                bitmapDrawable.setBounds(getBounds());
            }
            this.f13725f.draw(canvas);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            super.setAlpha(i);
        }

        @Override // com.blankj.utilcode.util.ShadowUtils.C1852a, android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            super.setColorFilter(colorFilter);
        }
    }

    /* renamed from: com.blankj.utilcode.util.ClickUtils$d */
    /* loaded from: classes3.dex */
    public static class ViewOnTouchListenerC1810d implements View.OnTouchListener {

        /* renamed from: com.blankj.utilcode.util.ClickUtils$d$a */
        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a */
            public static final ViewOnTouchListenerC1810d f13727a = new ViewOnTouchListenerC1810d(null);
        }

        public /* synthetic */ ViewOnTouchListenerC1810d(C1807a c1807a) {
            this();
        }

        /* renamed from: a */
        public static ViewOnTouchListenerC1810d m8049a() {
            return a.f13727a;
        }

        /* renamed from: b */
        public final void m8050b(View view, boolean z) {
            Object tag = view.getTag(z ? -2 : -3);
            if (tag instanceof Float) {
                view.setAlpha(((Float) tag).floatValue());
            }
        }

        /* renamed from: c */
        public final void m8051c(View view, boolean z) {
            Object tag = view.getTag(-1);
            if (tag instanceof Float) {
                float floatValue = z ? 1.0f + ((Float) tag).floatValue() : 1.0f;
                view.animate().scaleX(floatValue).scaleY(floatValue).setDuration(200L).start();
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                m8051c(view, true);
                m8050b(view, true);
            } else if (action == 1 || action == 3) {
                m8051c(view, false);
                m8050b(view, false);
            }
            return false;
        }

        public ViewOnTouchListenerC1810d() {
        }
    }

    public ClickUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static void m8041a(View[] viewArr, boolean z, @IntRange(from = 0) long j, View.OnClickListener onClickListener) {
        if (viewArr == null || viewArr.length == 0 || onClickListener == null) {
            return;
        }
        for (View view : viewArr) {
            if (view != null) {
                view.setOnClickListener(new C1807a(z, j, onClickListener));
            }
        }
    }

    public static void applyGlobalDebouncing(View view, View.OnClickListener onClickListener) {
        applyGlobalDebouncing(new View[]{view}, onClickListener);
    }

    public static void applyPressedBgAlpha(View view) {
        applyPressedBgAlpha(view, 0.9f);
    }

    public static void applyPressedBgDark(View view) {
        applyPressedBgDark(view, 0.9f);
    }

    public static void applyPressedViewAlpha(View... viewArr) {
        applyPressedViewAlpha(viewArr, (float[]) null);
    }

    public static void applyPressedViewScale(View... viewArr) {
        applyPressedViewScale(viewArr, (float[]) null);
    }

    public static void applySingleDebouncing(View view, View.OnClickListener onClickListener) {
        applySingleDebouncing(new View[]{view}, onClickListener);
    }

    /* renamed from: b */
    public static void m8042b(View view, int i, float f) {
        if (view == null) {
            return;
        }
        Drawable background = view.getBackground();
        int i2 = -i;
        Object tag = view.getTag(i2);
        if (tag instanceof Drawable) {
            ViewCompat.setBackground(view, (Drawable) tag);
            return;
        }
        Drawable m8045e = m8045e(background, i, f);
        ViewCompat.setBackground(view, m8045e);
        view.setTag(i2, m8045e);
    }

    public static void back2HomeFriendly(CharSequence charSequence) {
        back2HomeFriendly(charSequence, 2000L, Back2HomeFriendlyListener.DEFAULT);
    }

    /* renamed from: c */
    public static Drawable m8043c(Drawable drawable, float f) {
        C1809c c1809c = new C1809c(drawable);
        c1809c.setAlpha((int) (f * 255.0f));
        return c1809c;
    }

    /* renamed from: d */
    public static Drawable m8044d(Drawable drawable, float f) {
        C1809c c1809c = new C1809c(drawable);
        c1809c.setColorFilter(m8046f(f));
        return c1809c;
    }

    /* renamed from: e */
    public static Drawable m8045e(Drawable drawable, int i, float f) {
        if (drawable == null) {
            drawable = new ColorDrawable(0);
        }
        if (drawable.getConstantState() == null) {
            return drawable;
        }
        Drawable mutate = drawable.getConstantState().newDrawable().mutate();
        if (i == 4) {
            mutate = m8043c(mutate, f);
        } else if (i == 5) {
            mutate = m8044d(mutate, f);
        }
        Drawable m8043c = m8043c(drawable.getConstantState().newDrawable().mutate(), 0.5f);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, mutate);
        stateListDrawable.addState(new int[]{-16842910}, m8043c);
        stateListDrawable.addState(StateSet.WILD_CARD, drawable);
        return stateListDrawable;
    }

    public static void expandClickArea(@NonNull View view, int i) {
        expandClickArea(view, i, i, i, i);
    }

    /* renamed from: f */
    public static ColorMatrixColorFilter m8046f(float f) {
        return new ColorMatrixColorFilter(new ColorMatrix(new float[]{f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 2.0f, 0.0f}));
    }

    public static void applyGlobalDebouncing(View view, @IntRange(from = 0) long j, View.OnClickListener onClickListener) {
        applyGlobalDebouncing(new View[]{view}, j, onClickListener);
    }

    public static void applyPressedBgAlpha(View view, float f) {
        m8042b(view, 4, f);
    }

    public static void applyPressedBgDark(View view, float f) {
        m8042b(view, 5, f);
    }

    public static void applyPressedViewAlpha(View[] viewArr, float[] fArr) {
        if (viewArr == null || viewArr.length == 0) {
            return;
        }
        for (int i = 0; i < viewArr.length; i++) {
            if (fArr != null && i < fArr.length) {
                applyPressedViewAlpha(viewArr[i], fArr[i]);
            } else {
                applyPressedViewAlpha(viewArr[i], 0.8f);
            }
        }
    }

    public static void applyPressedViewScale(View[] viewArr, float[] fArr) {
        if (viewArr == null || viewArr.length == 0) {
            return;
        }
        for (int i = 0; i < viewArr.length; i++) {
            if (fArr != null && i < fArr.length) {
                applyPressedViewScale(viewArr[i], fArr[i]);
            } else {
                applyPressedViewScale(viewArr[i], -0.06f);
            }
        }
    }

    public static void applySingleDebouncing(View view, @IntRange(from = 0) long j, View.OnClickListener onClickListener) {
        applySingleDebouncing(new View[]{view}, j, onClickListener);
    }

    public static void back2HomeFriendly(@NonNull CharSequence charSequence, long j, @NonNull Back2HomeFriendlyListener back2HomeFriendlyListener) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (Math.abs(elapsedRealtime - f13707l) < j) {
            int i = f13708m + 1;
            f13708m = i;
            if (i == 2) {
                C1887b.m8482Z0();
                back2HomeFriendlyListener.dismiss();
                f13707l = 0L;
                return;
            }
            return;
        }
        f13708m = 1;
        back2HomeFriendlyListener.show(charSequence, j);
        f13707l = elapsedRealtime;
    }

    public static void expandClickArea(@NonNull View view, int i, int i2, int i3, int i4) {
        View view2 = (View) view.getParent();
        if (view2 == null) {
            Log.e("ClickUtils", "expandClickArea must have parent view.");
        } else {
            view2.post(new RunnableC1808b(view, i, i4, i2, i3, view2));
        }
    }

    public static void applyGlobalDebouncing(View[] viewArr, View.OnClickListener onClickListener) {
        applyGlobalDebouncing(viewArr, 1000L, onClickListener);
    }

    public static void applySingleDebouncing(View[] viewArr, View.OnClickListener onClickListener) {
        applySingleDebouncing(viewArr, 1000L, onClickListener);
    }

    public static void applyGlobalDebouncing(View[] viewArr, @IntRange(from = 0) long j, View.OnClickListener onClickListener) {
        m8041a(viewArr, true, j, onClickListener);
    }

    public static void applySingleDebouncing(View[] viewArr, @IntRange(from = 0) long j, View.OnClickListener onClickListener) {
        m8041a(viewArr, false, j, onClickListener);
    }

    public static void applyPressedViewAlpha(View view, float f) {
        if (view == null) {
            return;
        }
        view.setTag(-2, Float.valueOf(f));
        view.setTag(-3, Float.valueOf(view.getAlpha()));
        view.setClickable(true);
        view.setOnTouchListener(ViewOnTouchListenerC1810d.m8049a());
    }

    public static void applyPressedViewScale(View view, float f) {
        if (view == null) {
            return;
        }
        view.setTag(-1, Float.valueOf(f));
        view.setClickable(true);
        view.setOnTouchListener(ViewOnTouchListenerC1810d.m8049a());
    }
}
