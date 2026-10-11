package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.WindowUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.C5409a;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes6.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: A */
    public static final int f32489A = 180;
    public static final int ANIMATION_MODE_FADE = 1;
    public static final int ANIMATION_MODE_SLIDE = 0;

    /* renamed from: C */
    public static final int f32491C = 150;

    /* renamed from: D */
    public static final int f32492D = 75;

    /* renamed from: G */
    public static final float f32495G = 0.8f;

    /* renamed from: I */
    public static final int f32497I = 0;

    /* renamed from: J */
    public static final int f32498J = 1;
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;

    /* renamed from: z */
    public static final int f32502z = 250;

    /* renamed from: a */
    public final int f32503a;

    /* renamed from: b */
    public final int f32504b;

    /* renamed from: c */
    public final int f32505c;

    /* renamed from: d */
    public final TimeInterpolator f32506d;

    /* renamed from: e */
    public final TimeInterpolator f32507e;

    /* renamed from: f */
    public final TimeInterpolator f32508f;

    /* renamed from: g */
    @NonNull
    public final ViewGroup f32509g;

    /* renamed from: h */
    public final Context f32510h;

    /* renamed from: i */
    @NonNull
    public final com.google.android.material.snackbar.ContentViewCallback f32511i;

    /* renamed from: j */
    public int f32512j;

    /* renamed from: k */
    public boolean f32513k;

    /* renamed from: l */
    @Nullable
    public ViewOnAttachStateChangeListenerC5408q f32514l;

    /* renamed from: m */
    public boolean f32515m;

    /* renamed from: n */
    @RequiresApi(29)
    public final Runnable f32516n;

    /* renamed from: o */
    public int f32517o;

    /* renamed from: p */
    public int f32518p;

    /* renamed from: q */
    public int f32519q;

    /* renamed from: r */
    public int f32520r;

    /* renamed from: s */
    public int f32521s;

    /* renamed from: t */
    public int f32522t;

    /* renamed from: u */
    public boolean f32523u;

    /* renamed from: v */
    public List<BaseCallback<B>> f32524v;

    @NonNull
    protected final SnackbarBaseLayout view;

    /* renamed from: w */
    public Behavior f32525w;

    /* renamed from: x */
    @Nullable
    public final AccessibilityManager f32526x;

    /* renamed from: y */
    @NonNull
    public C5409a.b f32527y;

    /* renamed from: B */
    public static final TimeInterpolator f32490B = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;

    /* renamed from: E */
    public static final TimeInterpolator f32493E = AnimationUtils.LINEAR_INTERPOLATOR;

    /* renamed from: F */
    public static final TimeInterpolator f32494F = AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR;

    /* renamed from: K */
    public static final boolean f32499K = false;

    /* renamed from: L */
    public static final int[] f32500L = {C5139R.attr.snackbarStyle};

    /* renamed from: M */
    public static final String f32501M = BaseTransientBottomBar.class.getSimpleName();

    /* renamed from: H */
    @NonNull
    public static final Handler f32496H = new Handler(Looper.getMainLooper(), new C5399h());

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface AnimationMode {
    }

    /* loaded from: classes6.dex */
    public static abstract class BaseCallback<B> {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes6.dex */
        public @interface DismissEvent {
        }

        public void onDismissed(B b, int i) {
        }

        public void onShown(B b) {
        }
    }

    /* loaded from: classes6.dex */
    public static class Behavior extends SwipeDismissBehavior<View> {

        /* renamed from: s */
        @NonNull
        public final BehaviorDelegate f32528s = new BehaviorDelegate(this);

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean canSwipeDismissView(View view) {
            return this.f32528s.canSwipeDismissView(view);
        }

        /* renamed from: h */
        public final void m25046h(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f32528s.setBaseTransientBottomBar(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            this.f32528s.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public static class BehaviorDelegate {

        /* renamed from: a */
        public C5409a.b f32529a;

        public BehaviorDelegate(@NonNull SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.setStartAlphaSwipeDistance(0.1f);
            swipeDismissBehavior.setEndAlphaSwipeDistance(0.6f);
            swipeDismissBehavior.setSwipeDirection(0);
        }

        public boolean canSwipeDismissView(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    C5409a.m25068c().m25078k(this.f32529a);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                C5409a.m25068c().m25079l(this.f32529a);
            }
        }

        public void setBaseTransientBottomBar(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f32529a = baseTransientBottomBar.f32527y;
        }
    }

    @Deprecated
    /* loaded from: classes6.dex */
    public interface ContentViewCallback extends com.google.android.material.snackbar.ContentViewCallback {
    }

    @IntRange(from = WorkQueueKt.NOTHING_TO_STEAL)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface Duration {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public static class SnackbarBaseLayout extends FrameLayout {

        /* renamed from: p */
        public static final View.OnTouchListener f32530p = new ViewOnTouchListenerC5391a();

        /* renamed from: e */
        @Nullable
        public BaseTransientBottomBar<?> f32531e;

        /* renamed from: f */
        @Nullable
        public ShapeAppearanceModel f32532f;

        /* renamed from: g */
        public int f32533g;

        /* renamed from: h */
        public final float f32534h;

        /* renamed from: i */
        public final float f32535i;

        /* renamed from: j */
        public final int f32536j;

        /* renamed from: k */
        public final int f32537k;

        /* renamed from: l */
        public ColorStateList f32538l;

        /* renamed from: m */
        public PorterDuff.Mode f32539m;

        /* renamed from: n */
        @Nullable
        public Rect f32540n;

        /* renamed from: o */
        public boolean f32541o;

        /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$SnackbarBaseLayout$a */
        /* loaded from: classes6.dex */
        public class ViewOnTouchListenerC5391a implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public SnackbarBaseLayout(@NonNull Context context) {
            this(context, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f32531e = baseTransientBottomBar;
        }

        /* renamed from: c */
        public void m25049c(ViewGroup viewGroup) {
            this.f32541o = true;
            viewGroup.addView(this);
            this.f32541o = false;
        }

        @NonNull
        /* renamed from: d */
        public final Drawable m25050d() {
            int layer = MaterialColors.layer(this, C5139R.attr.colorSurface, C5139R.attr.colorOnSurface, getBackgroundOverlayColorAlpha());
            ShapeAppearanceModel shapeAppearanceModel = this.f32532f;
            Drawable m25019y = shapeAppearanceModel != null ? BaseTransientBottomBar.m25019y(layer, shapeAppearanceModel) : BaseTransientBottomBar.m25018x(layer, getResources());
            if (this.f32538l == null) {
                return DrawableCompat.wrap(m25019y);
            }
            Drawable wrap = DrawableCompat.wrap(m25019y);
            DrawableCompat.setTintList(wrap, this.f32538l);
            return wrap;
        }

        /* renamed from: e */
        public final void m25051e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.f32540n = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }

        public float getActionTextColorAlpha() {
            return this.f32535i;
        }

        public int getAnimationMode() {
            return this.f32533g;
        }

        public float getBackgroundOverlayColorAlpha() {
            return this.f32534h;
        }

        public int getMaxInlineActionWidth() {
            return this.f32537k;
        }

        public int getMaxWidth() {
            return this.f32536j;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f32531e;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.m25025F();
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f32531e;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.m25026G();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f32531e;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.m25027H();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (this.f32536j > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = this.f32536j;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        public void setAnimationMode(int i) {
            this.f32533g = i;
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.f32538l != null) {
                drawable = DrawableCompat.wrap(drawable.mutate());
                DrawableCompat.setTintList(drawable, this.f32538l);
                DrawableCompat.setTintMode(drawable, this.f32539m);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.f32538l = colorStateList;
            if (getBackground() != null) {
                Drawable wrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintList(wrap, colorStateList);
                DrawableCompat.setTintMode(wrap, this.f32539m);
                if (wrap != getBackground()) {
                    super.setBackgroundDrawable(wrap);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.f32539m = mode;
            if (getBackground() != null) {
                Drawable wrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintMode(wrap, mode);
                if (wrap != getBackground()) {
                    super.setBackgroundDrawable(wrap);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.f32541o || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            m25051e((ViewGroup.MarginLayoutParams) layoutParams);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f32531e;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.m25040U();
            }
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f32530p);
            super.setOnClickListener(onClickListener);
        }

        public SnackbarBaseLayout(@NonNull Context context, AttributeSet attributeSet) {
            super(MaterialThemeOverlay.wrap(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C5139R.styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(C5139R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.SnackbarLayout_elevation, 0));
            }
            this.f32533g = obtainStyledAttributes.getInt(C5139R.styleable.SnackbarLayout_animationMode, 0);
            if (obtainStyledAttributes.hasValue(C5139R.styleable.SnackbarLayout_shapeAppearance) || obtainStyledAttributes.hasValue(C5139R.styleable.SnackbarLayout_shapeAppearanceOverlay)) {
                this.f32532f = ShapeAppearanceModel.builder(context2, attributeSet, 0, 0).build();
            }
            this.f32534h = obtainStyledAttributes.getFloat(C5139R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(MaterialResources.getColorStateList(context2, obtainStyledAttributes, C5139R.styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(ViewUtils.parseTintMode(obtainStyledAttributes.getInt(C5139R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f32535i = obtainStyledAttributes.getFloat(C5139R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.f32536j = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.SnackbarLayout_android_maxWidth, -1);
            this.f32537k = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
            obtainStyledAttributes.recycle();
            setOnTouchListener(f32530p);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.setBackground(this, m25050d());
            }
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$a */
    /* loaded from: classes6.dex */
    public class C5392a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ int f32542e;

        public C5392a(int i) {
            this.f32542e = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.m25028I(this.f32542e);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$b */
    /* loaded from: classes6.dex */
    public class C5393b implements ValueAnimator.AnimatorUpdateListener {
        public C5393b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$c */
    /* loaded from: classes6.dex */
    public class C5394c implements ValueAnimator.AnimatorUpdateListener {
        public C5394c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseTransientBottomBar.this.view.setScaleX(floatValue);
            BaseTransientBottomBar.this.view.setScaleY(floatValue);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$d */
    /* loaded from: classes6.dex */
    public class C5395d extends AnimatorListenerAdapter {
        public C5395d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.m25029J();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f32511i.animateContentIn(BaseTransientBottomBar.this.f32505c - BaseTransientBottomBar.this.f32503a, BaseTransientBottomBar.this.f32503a);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$e */
    /* loaded from: classes6.dex */
    public class C5396e implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public int f32547e;

        /* renamed from: f */
        public final /* synthetic */ int f32548f;

        public C5396e(int i) {
            this.f32548f = i;
            this.f32547e = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.f32499K) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.view, intValue - this.f32547e);
            } else {
                BaseTransientBottomBar.this.view.setTranslationY(intValue);
            }
            this.f32547e = intValue;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$f */
    /* loaded from: classes6.dex */
    public class C5397f extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ int f32550e;

        public C5397f(int i) {
            this.f32550e = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.m25028I(this.f32550e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f32511i.animateContentOut(0, BaseTransientBottomBar.this.f32504b);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$g */
    /* loaded from: classes6.dex */
    public class C5398g implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public int f32552e = 0;

        public C5398g() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.f32499K) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.view, intValue - this.f32552e);
            } else {
                BaseTransientBottomBar.this.view.setTranslationY(intValue);
            }
            this.f32552e = intValue;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$h */
    /* loaded from: classes6.dex */
    public class C5399h implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            int i = message.what;
            if (i == 0) {
                ((BaseTransientBottomBar) message.obj).m25034O();
                return true;
            }
            if (i != 1) {
                return false;
            }
            ((BaseTransientBottomBar) message.obj).m25023D(message.arg1);
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$i */
    /* loaded from: classes6.dex */
    public class RunnableC5400i implements Runnable {
        public RunnableC5400i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.view == null || baseTransientBottomBar.f32510h == null) {
                return;
            }
            int height = (WindowUtils.getCurrentWindowBounds(BaseTransientBottomBar.this.f32510h).height() - BaseTransientBottomBar.this.m25022C()) + ((int) BaseTransientBottomBar.this.view.getTranslationY());
            if (height >= BaseTransientBottomBar.this.f32521s) {
                BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
                baseTransientBottomBar2.f32522t = baseTransientBottomBar2.f32521s;
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.view.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Log.w(BaseTransientBottomBar.f32501M, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
            baseTransientBottomBar3.f32522t = baseTransientBottomBar3.f32521s;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.f32521s - height;
            BaseTransientBottomBar.this.view.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$j */
    /* loaded from: classes6.dex */
    public class C5401j implements OnApplyWindowInsetsListener {
        public C5401j() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            BaseTransientBottomBar.this.f32517o = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar.this.f32518p = windowInsetsCompat.getSystemWindowInsetLeft();
            BaseTransientBottomBar.this.f32519q = windowInsetsCompat.getSystemWindowInsetRight();
            BaseTransientBottomBar.this.m25040U();
            return windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$k */
    /* loaded from: classes6.dex */
    public class C5402k extends AccessibilityDelegateCompat {
        public C5402k() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i != 1048576) {
                return super.performAccessibilityAction(view, i, bundle);
            }
            BaseTransientBottomBar.this.dismiss();
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$l */
    /* loaded from: classes6.dex */
    public class C5403l implements C5409a.b {
        public C5403l() {
        }

        @Override // com.google.android.material.snackbar.C5409a.b
        /* renamed from: a */
        public void mo25052a(int i) {
            Handler handler = BaseTransientBottomBar.f32496H;
            handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.C5409a.b
        public void show() {
            Handler handler = BaseTransientBottomBar.f32496H;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$m */
    /* loaded from: classes6.dex */
    public class RunnableC5404m implements Runnable {
        public RunnableC5404m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseTransientBottomBar.this.m25028I(3);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$n */
    /* loaded from: classes6.dex */
    public class C5405n implements SwipeDismissBehavior.OnDismissListener {
        public C5405n() {
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
        public void onDismiss(@NonNull View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.dispatchDismiss(0);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
        public void onDragStateChanged(int i) {
            if (i == 0) {
                C5409a.m25068c().m25079l(BaseTransientBottomBar.this.f32527y);
            } else if (i == 1 || i == 2) {
                C5409a.m25068c().m25078k(BaseTransientBottomBar.this.f32527y);
            }
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$o */
    /* loaded from: classes6.dex */
    public class RunnableC5406o implements Runnable {
        public RunnableC5406o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SnackbarBaseLayout snackbarBaseLayout = BaseTransientBottomBar.this.view;
            if (snackbarBaseLayout == null) {
                return;
            }
            if (snackbarBaseLayout.getParent() != null) {
                BaseTransientBottomBar.this.view.setVisibility(0);
            }
            if (BaseTransientBottomBar.this.view.getAnimationMode() == 1) {
                BaseTransientBottomBar.this.m25036Q();
            } else {
                BaseTransientBottomBar.this.m25038S();
            }
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$p */
    /* loaded from: classes6.dex */
    public class C5407p extends AnimatorListenerAdapter {
        public C5407p() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.m25029J();
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$q */
    /* loaded from: classes6.dex */
    public static class ViewOnAttachStateChangeListenerC5408q implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: e */
        @NonNull
        public final WeakReference<BaseTransientBottomBar> f32562e;

        /* renamed from: f */
        @NonNull
        public final WeakReference<View> f32563f;

        public ViewOnAttachStateChangeListenerC5408q(@NonNull BaseTransientBottomBar baseTransientBottomBar, @NonNull View view) {
            this.f32562e = new WeakReference<>(baseTransientBottomBar);
            this.f32563f = new WeakReference<>(view);
        }

        /* renamed from: a */
        public static ViewOnAttachStateChangeListenerC5408q m25053a(@NonNull BaseTransientBottomBar baseTransientBottomBar, @NonNull View view) {
            ViewOnAttachStateChangeListenerC5408q viewOnAttachStateChangeListenerC5408q = new ViewOnAttachStateChangeListenerC5408q(baseTransientBottomBar, view);
            if (ViewCompat.isAttachedToWindow(view)) {
                ViewUtils.addOnGlobalLayoutListener(view, viewOnAttachStateChangeListenerC5408q);
            }
            view.addOnAttachStateChangeListener(viewOnAttachStateChangeListenerC5408q);
            return viewOnAttachStateChangeListenerC5408q;
        }

        @Nullable
        /* renamed from: b */
        public View m25054b() {
            return this.f32563f.get();
        }

        /* renamed from: c */
        public void m25055c() {
            if (this.f32563f.get() != null) {
                this.f32563f.get().removeOnAttachStateChangeListener(this);
                ViewUtils.removeOnGlobalLayoutListener(this.f32563f.get(), this);
            }
            this.f32563f.clear();
            this.f32562e.clear();
        }

        /* renamed from: d */
        public final boolean m25056d() {
            if (this.f32562e.get() != null) {
                return false;
            }
            m25055c();
            return true;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (m25056d() || !this.f32562e.get().f32515m) {
                return;
            }
            this.f32562e.get().m25030K();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (m25056d()) {
                return;
            }
            ViewUtils.addOnGlobalLayoutListener(view, this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (m25056d()) {
                return;
            }
            ViewUtils.removeOnGlobalLayoutListener(view, this);
        }
    }

    public BaseTransientBottomBar(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.ContentViewCallback contentViewCallback) {
        this(viewGroup.getContext(), viewGroup, view, contentViewCallback);
    }

    @NonNull
    /* renamed from: x */
    public static GradientDrawable m25018x(@ColorInt int i, @NonNull Resources resources) {
        float dimension = resources.getDimension(C5139R.dimen.mtrl_snackbar_background_corner_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimension);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }

    @NonNull
    /* renamed from: y */
    public static MaterialShapeDrawable m25019y(@ColorInt int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(i));
        return materialShapeDrawable;
    }

    /* renamed from: A */
    public final ValueAnimator m25020A(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(this.f32508f);
        ofFloat.addUpdateListener(new C5394c());
        return ofFloat;
    }

    /* renamed from: B */
    public final int m25021B() {
        int height = this.view.getHeight();
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    /* renamed from: C */
    public final int m25022C() {
        int[] iArr = new int[2];
        this.view.getLocationInWindow(iArr);
        return iArr[1] + this.view.getHeight();
    }

    /* renamed from: D */
    public final void m25023D(int i) {
        if (m25032M() && this.view.getVisibility() == 0) {
            m25042v(i);
        } else {
            m25028I(i);
        }
    }

    /* renamed from: E */
    public final boolean m25024E() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof SwipeDismissBehavior);
    }

    /* renamed from: F */
    public void m25025F() {
        WindowInsets rootWindowInsets = this.view.getRootWindowInsets();
        if (rootWindowInsets != null) {
            this.f32521s = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
            m25040U();
        }
    }

    /* renamed from: G */
    public void m25026G() {
        if (isShownOrQueued()) {
            f32496H.post(new RunnableC5404m());
        }
    }

    /* renamed from: H */
    public void m25027H() {
        if (this.f32523u) {
            m25035P();
            this.f32523u = false;
        }
    }

    /* renamed from: I */
    public void m25028I(int i) {
        C5409a.m25068c().m25076i(this.f32527y);
        List<BaseCallback<B>> list = this.f32524v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f32524v.get(size).onDismissed(this, i);
            }
        }
        ViewParent parent = this.view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.view);
        }
    }

    /* renamed from: J */
    public void m25029J() {
        C5409a.m25068c().m25077j(this.f32527y);
        List<BaseCallback<B>> list = this.f32524v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f32524v.get(size).onShown(this);
            }
        }
    }

    /* renamed from: K */
    public final void m25030K() {
        this.f32520r = m25043w();
        m25040U();
    }

    /* renamed from: L */
    public final void m25031L(CoordinatorLayout.LayoutParams layoutParams) {
        SwipeDismissBehavior<? extends View> swipeDismissBehavior = this.f32525w;
        if (swipeDismissBehavior == null) {
            swipeDismissBehavior = getNewBehavior();
        }
        if (swipeDismissBehavior instanceof Behavior) {
            ((Behavior) swipeDismissBehavior).m25046h(this);
        }
        swipeDismissBehavior.setListener(new C5405n());
        layoutParams.setBehavior(swipeDismissBehavior);
        if (getAnchorView() == null) {
            layoutParams.insetEdge = 80;
        }
    }

    /* renamed from: M */
    public boolean m25032M() {
        AccessibilityManager accessibilityManager = this.f32526x;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    /* renamed from: N */
    public final boolean m25033N() {
        return this.f32521s > 0 && !this.f32513k && m25024E();
    }

    /* renamed from: O */
    public final void m25034O() {
        if (this.view.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                m25031L((CoordinatorLayout.LayoutParams) layoutParams);
            }
            this.view.m25049c(this.f32509g);
            m25030K();
            this.view.setVisibility(4);
        }
        if (ViewCompat.isLaidOut(this.view)) {
            m25035P();
        } else {
            this.f32523u = true;
        }
    }

    /* renamed from: P */
    public final void m25035P() {
        if (m25032M()) {
            m25041u();
            return;
        }
        if (this.view.getParent() != null) {
            this.view.setVisibility(0);
        }
        m25029J();
    }

    /* renamed from: Q */
    public final void m25036Q() {
        ValueAnimator m25044z = m25044z(0.0f, 1.0f);
        ValueAnimator m25020A = m25020A(0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(m25044z, m25020A);
        animatorSet.setDuration(this.f32503a);
        animatorSet.addListener(new C5407p());
        animatorSet.start();
    }

    /* renamed from: R */
    public final void m25037R(int i) {
        ValueAnimator m25044z = m25044z(1.0f, 0.0f);
        m25044z.setDuration(this.f32504b);
        m25044z.addListener(new C5392a(i));
        m25044z.start();
    }

    /* renamed from: S */
    public final void m25038S() {
        int m25021B = m25021B();
        if (f32499K) {
            ViewCompat.offsetTopAndBottom(this.view, m25021B);
        } else {
            this.view.setTranslationY(m25021B);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(m25021B, 0);
        valueAnimator.setInterpolator(this.f32507e);
        valueAnimator.setDuration(this.f32505c);
        valueAnimator.addListener(new C5395d());
        valueAnimator.addUpdateListener(new C5396e(m25021B));
        valueAnimator.start();
    }

    /* renamed from: T */
    public final void m25039T(int i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, m25021B());
        valueAnimator.setInterpolator(this.f32507e);
        valueAnimator.setDuration(this.f32505c);
        valueAnimator.addListener(new C5397f(i));
        valueAnimator.addUpdateListener(new C5398g());
        valueAnimator.start();
    }

    /* renamed from: U */
    public final void m25040U() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            Log.w(f32501M, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        if (this.view.f32540n == null) {
            Log.w(f32501M, "Unable to update margins because original view margins are not set");
            return;
        }
        if (this.view.getParent() == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int i = this.view.f32540n.bottom + (getAnchorView() != null ? this.f32520r : this.f32517o);
        int i2 = this.view.f32540n.left + this.f32518p;
        int i3 = this.view.f32540n.right + this.f32519q;
        int i4 = this.view.f32540n.top;
        boolean z = (marginLayoutParams.bottomMargin == i && marginLayoutParams.leftMargin == i2 && marginLayoutParams.rightMargin == i3 && marginLayoutParams.topMargin == i4) ? false : true;
        if (z) {
            marginLayoutParams.bottomMargin = i;
            marginLayoutParams.leftMargin = i2;
            marginLayoutParams.rightMargin = i3;
            marginLayoutParams.topMargin = i4;
            this.view.requestLayout();
        }
        if ((z || this.f32522t != this.f32521s) && m25033N()) {
            this.view.removeCallbacks(this.f32516n);
            this.view.post(this.f32516n);
        }
    }

    @NonNull
    public B addCallback(@Nullable BaseCallback<B> baseCallback) {
        if (baseCallback == null) {
            return this;
        }
        if (this.f32524v == null) {
            this.f32524v = new ArrayList();
        }
        this.f32524v.add(baseCallback);
        return this;
    }

    public void dismiss() {
        dispatchDismiss(3);
    }

    public void dispatchDismiss(int i) {
        C5409a.m25068c().m25070b(this.f32527y, i);
    }

    @Nullable
    public View getAnchorView() {
        ViewOnAttachStateChangeListenerC5408q viewOnAttachStateChangeListenerC5408q = this.f32514l;
        if (viewOnAttachStateChangeListenerC5408q == null) {
            return null;
        }
        return viewOnAttachStateChangeListenerC5408q.m25054b();
    }

    public int getAnimationMode() {
        return this.view.getAnimationMode();
    }

    public Behavior getBehavior() {
        return this.f32525w;
    }

    @NonNull
    public Context getContext() {
        return this.f32510h;
    }

    public int getDuration() {
        return this.f32512j;
    }

    @NonNull
    public SwipeDismissBehavior<? extends View> getNewBehavior() {
        return new Behavior();
    }

    @LayoutRes
    public int getSnackbarBaseLayoutResId() {
        return hasSnackbarStyleAttr() ? C5139R.layout.mtrl_layout_snackbar : C5139R.layout.design_layout_snackbar;
    }

    @NonNull
    public View getView() {
        return this.view;
    }

    public boolean hasSnackbarStyleAttr() {
        TypedArray obtainStyledAttributes = this.f32510h.obtainStyledAttributes(f32500L);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    public boolean isAnchorViewLayoutListenerEnabled() {
        return this.f32515m;
    }

    public boolean isGestureInsetBottomIgnored() {
        return this.f32513k;
    }

    public boolean isShown() {
        return C5409a.m25068c().m25072e(this.f32527y);
    }

    public boolean isShownOrQueued() {
        return C5409a.m25068c().m25073f(this.f32527y);
    }

    @NonNull
    public B removeCallback(@Nullable BaseCallback<B> baseCallback) {
        List<BaseCallback<B>> list;
        if (baseCallback == null || (list = this.f32524v) == null) {
            return this;
        }
        list.remove(baseCallback);
        return this;
    }

    @NonNull
    public B setAnchorView(@Nullable View view) {
        ViewOnAttachStateChangeListenerC5408q viewOnAttachStateChangeListenerC5408q = this.f32514l;
        if (viewOnAttachStateChangeListenerC5408q != null) {
            viewOnAttachStateChangeListenerC5408q.m25055c();
        }
        this.f32514l = view == null ? null : ViewOnAttachStateChangeListenerC5408q.m25053a(this, view);
        return this;
    }

    public void setAnchorViewLayoutListenerEnabled(boolean z) {
        this.f32515m = z;
    }

    @NonNull
    public B setAnimationMode(int i) {
        this.view.setAnimationMode(i);
        return this;
    }

    @NonNull
    public B setBehavior(Behavior behavior) {
        this.f32525w = behavior;
        return this;
    }

    @NonNull
    public B setDuration(int i) {
        this.f32512j = i;
        return this;
    }

    @NonNull
    public B setGestureInsetBottomIgnored(boolean z) {
        this.f32513k = z;
        return this;
    }

    public void show() {
        C5409a.m25068c().m25081n(getDuration(), this.f32527y);
    }

    /* renamed from: u */
    public void m25041u() {
        this.view.post(new RunnableC5406o());
    }

    /* renamed from: v */
    public final void m25042v(int i) {
        if (this.view.getAnimationMode() == 1) {
            m25037R(i);
        } else {
            m25039T(i);
        }
    }

    /* renamed from: w */
    public final int m25043w() {
        if (getAnchorView() == null) {
            return 0;
        }
        int[] iArr = new int[2];
        getAnchorView().getLocationOnScreen(iArr);
        int i = iArr[1];
        int[] iArr2 = new int[2];
        this.f32509g.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f32509g.getHeight()) - i;
    }

    /* renamed from: z */
    public final ValueAnimator m25044z(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(this.f32506d);
        ofFloat.addUpdateListener(new C5393b());
        return ofFloat;
    }

    public BaseTransientBottomBar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.ContentViewCallback contentViewCallback) {
        this.f32515m = false;
        this.f32516n = new RunnableC5400i();
        this.f32527y = new C5403l();
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (contentViewCallback != null) {
            this.f32509g = viewGroup;
            this.f32511i = contentViewCallback;
            this.f32510h = context;
            ThemeEnforcement.checkAppCompatTheme(context);
            SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) LayoutInflater.from(context).inflate(getSnackbarBaseLayoutResId(), viewGroup, false);
            this.view = snackbarBaseLayout;
            snackbarBaseLayout.setBaseTransientBottomBar(this);
            if (view instanceof SnackbarContentLayout) {
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
                snackbarContentLayout.m25066a(snackbarBaseLayout.getActionTextColorAlpha());
                snackbarContentLayout.setMaxInlineActionWidth(snackbarBaseLayout.getMaxInlineActionWidth());
            }
            snackbarBaseLayout.addView(view);
            ViewCompat.setAccessibilityLiveRegion(snackbarBaseLayout, 1);
            ViewCompat.setImportantForAccessibility(snackbarBaseLayout, 1);
            ViewCompat.setFitsSystemWindows(snackbarBaseLayout, true);
            ViewCompat.setOnApplyWindowInsetsListener(snackbarBaseLayout, new C5401j());
            ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new C5402k());
            this.f32526x = (AccessibilityManager) context.getSystemService("accessibility");
            this.f32505c = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationLong2, 250);
            this.f32503a = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationLong2, 150);
            this.f32504b = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationMedium1, 75);
            this.f32506d = MotionUtils.resolveThemeInterpolator(context, C5139R.attr.motionEasingEmphasizedInterpolator, f32493E);
            this.f32508f = MotionUtils.resolveThemeInterpolator(context, C5139R.attr.motionEasingEmphasizedInterpolator, f32494F);
            this.f32507e = MotionUtils.resolveThemeInterpolator(context, C5139R.attr.motionEasingEmphasizedInterpolator, f32490B);
            return;
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
    }

    @NonNull
    public B setAnchorView(@IdRes int i) {
        View findViewById = this.f32509g.findViewById(i);
        if (findViewById != null) {
            return setAnchorView(findViewById);
        }
        throw new IllegalArgumentException("Unable to find anchor view with id: " + i);
    }
}
