package com.onyx.galaxy.note.category.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.core.view.GravityCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.SlideLayout;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 W2\u00020\u0001:\u0003WXYB'\b\u0007\u0012\u0006\u0010S\u001a\u00020R\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010T\u001a\u00020\u0014¢\u0006\u0004\bU\u0010VJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J \u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0014J\b\u0010\u0013\u001a\u00020\u0004H\u0014J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0014J0\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0014J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0018J\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u0004J\u000e\u0010#\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0018J\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0004J\u0010\u0010'\u001a\u00020\u00042\b\b\u0002\u0010&\u001a\u00020\u0018J\u0006\u0010(\u001a\u00020\u0018J\u000e\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)J\u000e\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,J\u000e\u00100\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0014J\u0016\u00101\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007J\u0016\u00102\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007J\b\u00104\u001a\u000203H\u0014J\u0012\u00106\u001a\u00020\u00042\b\u00105\u001a\u0004\u0018\u000103H\u0014R\u0016\u00108\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u00107R\u0016\u0010:\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u00109R\u0016\u0010-\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010;R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010A\u001a\u00020<8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b@\u0010>R\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010E\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010DR\u0016\u0010G\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u00107R\u0016\u0010J\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010L\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010IR\u001c\u0010Q\u001a\n N*\u0004\u0018\u00010M0M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010P¨\u0006Z"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/SlideLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;", "Landroid/util/AttributeSet;", "attrs", "", "e", C6999h.f39688c, "", gon.f71290o0, "end", "fraction", C6997f.f39671c, C6998g.f39679a, "d", "min", "max", "", "c", "onFinishInflate", "onDetachedFromWindow", "", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "", "changed", "l", "t", "r", "b", "onLayout", "shouldExpand", "toggleSlideWithAnimation", "expandWithAnimation", "collapseWithAnimation", "toggleSlideWithoutAnimation", "expandWithoutAnimation", "collapseWithoutAnimation", "animate", "toggle", "isExpanded", "Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setSlideListener", "", "duration", "setAnimationDuration", "width", "setLeftWidth", "setLeftAlphaRange", "setRightAlphaRange", "Landroid/os/Parcelable;", "onSaveInstanceState", "state", "onRestoreInstanceState", "I", "leftWidth", "F", "leftShowPercent", "J", "Landroid/view/View;", "i", "Landroid/view/View;", "leftView", "j", "rightView", C4921e.f26537n, "Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;", Constants.HASIDCALL_INDEX_SIG, "isRestoredState", "m", NotificationCompat.WearableExtender.f5060z, GoogleApiAvailabilityLight.f29016b, "[F", "leftAlphaRange", C4921e.f26528e, "rightAlphaRange", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "p", "Landroid/animation/ValueAnimator;", "animator", "Landroid/content/Context;", "context", "defStyleAttr", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "SavedState", "SlideLayoutListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SlideLayout extends TintLinearLayout {
    public static final int LEFT_WIDTH_DEFAULT = 600;

    /* renamed from: f, reason: from kotlin metadata */
    public int leftWidth;

    /* renamed from: g, reason: from kotlin metadata */
    public float leftShowPercent;

    /* renamed from: h, reason: from kotlin metadata */
    public long duration;

    /* renamed from: i, reason: from kotlin metadata */
    public View leftView;

    /* renamed from: j, reason: from kotlin metadata */
    public View rightView;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public SlideLayoutListener listener;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isRestoredState;

    /* renamed from: m, reason: from kotlin metadata */
    public int gravity;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public float[] leftAlphaRange;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public float[] rightAlphaRange;

    /* renamed from: p, reason: from kotlin metadata */
    public final ValueAnimator animator;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;", "", "onAnimationEnd", "", "onAnimationStart", "onSlideStateChanged", "isExpanded", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface SlideLayoutListener {
        void onAnimationEnd();

        void onAnimationStart();

        void onSlideStateChanged(boolean isExpanded);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SlideLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: b */
    public static final void m43944b(SlideLayout this$0, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.leftShowPercent = ((Float) animatedValue).floatValue();
        this$0.m43950h();
        SlideLayoutListener slideLayoutListener = this$0.listener;
        if (slideLayoutListener != null) {
            slideLayoutListener.onSlideStateChanged(this$0.isExpanded());
        }
        this$0.requestLayout();
    }

    public static /* synthetic */ void toggle$default(SlideLayout slideLayout, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        slideLayout.toggle(z);
    }

    /* renamed from: c */
    public final float[] m43945c(float min, float max) {
        float coerceIn;
        float coerceIn2;
        coerceIn = RangesKt___RangesKt.coerceIn(min, 0.0f, 1.0f);
        coerceIn2 = RangesKt___RangesKt.coerceIn(max, 0.0f, 1.0f);
        return new float[]{coerceIn, coerceIn2};
    }

    public final void collapseWithAnimation() {
        if (isExpanded()) {
            this.animator.reverse();
        }
    }

    public final void collapseWithoutAnimation() {
        this.leftShowPercent = 0.0f;
        m43950h();
        requestLayout();
    }

    /* renamed from: d */
    public final void m43946d() {
        if (this.animator.isRunning()) {
            return;
        }
        View view = this.leftView;
        View view2 = null;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftView");
            view = null;
        }
        view.setHasTransientState(false);
        View view3 = this.rightView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightView");
        } else {
            view2 = view3;
        }
        view2.setHasTransientState(false);
    }

    /* renamed from: e */
    public final void m43947e(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.SlideLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.leftWidth = obtainStyledAttributes.getDimensionPixelSize(C10651R.styleable.SlideLayout_leftWidth, 600);
        this.duration = obtainStyledAttributes.getInt(C10651R.styleable.SlideLayout_animationDuration, (int) this.duration);
        this.leftShowPercent = obtainStyledAttributes.getFloat(C10651R.styleable.SlideLayout_initialState, 0.0f);
        this.gravity = obtainStyledAttributes.getInt(C10651R.styleable.SlideLayout_gravity, GravityCompat.START);
        this.leftAlphaRange[0] = obtainStyledAttributes.getFloat(C10651R.styleable.SlideLayout_leftAlphaMin, 0.0f);
        this.leftAlphaRange[1] = obtainStyledAttributes.getFloat(C10651R.styleable.SlideLayout_leftAlphaMax, 1.0f);
        this.rightAlphaRange[0] = obtainStyledAttributes.getFloat(C10651R.styleable.SlideLayout_rightAlphaMin, 1.0f);
        this.rightAlphaRange[1] = obtainStyledAttributes.getFloat(C10651R.styleable.SlideLayout_rightAlphaMax, 1.0f);
        obtainStyledAttributes.recycle();
    }

    public final void expandWithAnimation() {
        if (isExpanded()) {
            return;
        }
        this.animator.start();
    }

    public final void expandWithoutAnimation() {
        this.leftShowPercent = 1.0f;
        m43950h();
        requestLayout();
    }

    /* renamed from: f */
    public final float m43948f(float start, float end, float fraction) {
        return start + (fraction * (end - start));
    }

    /* renamed from: g */
    public final void m43949g() {
        View view = this.leftView;
        View view2 = null;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftView");
            view = null;
        }
        if (!view.hasTransientState()) {
            View view3 = this.leftView;
            if (view3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("leftView");
                view3 = null;
            }
            view3.setHasTransientState(true);
        }
        View view4 = this.rightView;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightView");
            view4 = null;
        }
        if (view4.hasTransientState()) {
            return;
        }
        View view5 = this.rightView;
        if (view5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightView");
        } else {
            view2 = view5;
        }
        view2.setHasTransientState(true);
    }

    /* renamed from: h */
    public final void m43950h() {
        View view = this.leftView;
        View view2 = null;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftView");
            view = null;
        }
        float[] fArr = this.leftAlphaRange;
        view.setAlpha(m43948f(fArr[0], fArr[1], this.leftShowPercent));
        View view3 = this.rightView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightView");
        } else {
            view2 = view3;
        }
        float[] fArr2 = this.rightAlphaRange;
        view2.setAlpha(m43948f(fArr2[1], fArr2[0], this.leftShowPercent));
    }

    public final boolean isExpanded() {
        return this.leftShowPercent == 1.0f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View view = this.leftView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftView");
            view = null;
        }
        view.setHasTransientState(false);
        View view2 = this.rightView;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightView");
            view2 = null;
        }
        view2.setHasTransientState(false);
        View view3 = this.leftView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftView");
            view3 = null;
        }
        view3.setLayerType(0, null);
        View view4 = this.rightView;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightView");
            view4 = null;
        }
        view4.setLayerType(0, null);
        this.animator.cancel();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() != 2) {
            throw new IllegalStateException("SlideLayout must contain exactly 2 child views.");
        }
        View childAt = getChildAt(0);
        childAt.setHasTransientState(true);
        childAt.setLayerType(2, null);
        childAt.setAlpha(this.leftAlphaRange[0]);
        Intrinsics.checkNotNullExpressionValue(childAt, "apply(...)");
        this.leftView = childAt;
        View childAt2 = getChildAt(1);
        childAt2.setHasTransientState(true);
        childAt2.setLayerType(2, null);
        childAt2.setAlpha(this.rightAlphaRange[1]);
        Intrinsics.checkNotNullExpressionValue(childAt2, "apply(...)");
        this.rightView = childAt2;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int l, int t, int r, int b) {
        int i = (int) (this.leftWidth * this.leftShowPercent);
        boolean isLayoutDirectionRtl = ViewExtKt.isLayoutDirectionRtl(this);
        int i2 = this.gravity;
        View view = null;
        if (i2 == 3) {
            View view2 = this.leftView;
            if (view2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("leftView");
                view2 = null;
            }
            view2.layout((-this.leftWidth) + i, t, i, b);
            View view3 = this.rightView;
            if (view3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rightView");
            } else {
                view = view3;
            }
            view.layout(i, t, r, b);
            return;
        }
        if (i2 == 5) {
            View view4 = this.leftView;
            if (view4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("leftView");
                view4 = null;
            }
            int i3 = r - i;
            view4.layout(i3, t, (r + this.leftWidth) - i, b);
            View view5 = this.rightView;
            if (view5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rightView");
            } else {
                view = view5;
            }
            view.layout(l, t, i3, b);
            return;
        }
        if (i2 == 8388611) {
            if (!isLayoutDirectionRtl) {
                View view6 = this.leftView;
                if (view6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("leftView");
                    view6 = null;
                }
                view6.layout((-this.leftWidth) + i, t, i, b);
                View view7 = this.rightView;
                if (view7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("rightView");
                } else {
                    view = view7;
                }
                view.layout(i, t, r, b);
                return;
            }
            View view8 = this.leftView;
            if (view8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("leftView");
                view8 = null;
            }
            int i4 = r - i;
            view8.layout(i4, t, (r + this.leftWidth) - i, b);
            View view9 = this.rightView;
            if (view9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rightView");
            } else {
                view = view9;
            }
            view.layout(l, t, i4, b);
            return;
        }
        if (i2 != 8388613) {
            return;
        }
        if (isLayoutDirectionRtl) {
            View view10 = this.leftView;
            if (view10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("leftView");
                view10 = null;
            }
            view10.layout((-this.leftWidth) + i, t, i, b);
            View view11 = this.rightView;
            if (view11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rightView");
            } else {
                view = view11;
            }
            view.layout(i, t, r, b);
            return;
        }
        View view12 = this.leftView;
        if (view12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftView");
            view12 = null;
        }
        int i5 = r - i;
        view12.layout(i5, t, (r + this.leftWidth) - i, b);
        View view13 = this.rightView;
        if (view13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightView");
        } else {
            view = view13;
        }
        view.layout(l, t, i5, b);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.leftWidth, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
        View view = this.leftView;
        View view2 = null;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftView");
            view = null;
        }
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(size - ((int) (this.leftWidth * this.leftShowPercent)), 1073741824);
        View view3 = this.rightView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rightView");
        } else {
            view2 = view3;
        }
        view2.measure(makeMeasureSpec3, makeMeasureSpec2);
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable state) {
        if (!(state instanceof SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.leftShowPercent = savedState.getLeftShowPercent();
        this.leftAlphaRange = m43945c(savedState.getLeftAlphaMin(), savedState.getLeftAlphaMax());
        this.rightAlphaRange = m43945c(savedState.getRightAlphaMin(), savedState.getRightAlphaMax());
        if (savedState.getIsAnimating()) {
            this.animator.setCurrentPlayTime(savedState.getAnimatorCurrentTime());
            this.animator.start();
        }
        this.isRestoredState = true;
        m43950h();
        requestLayout();
    }

    @Override // android.view.View
    @NotNull
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (onSaveInstanceState == null) {
            onSaveInstanceState = View.BaseSavedState.EMPTY_STATE;
        }
        Intrinsics.checkNotNull(onSaveInstanceState);
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.setLeftShowPercent(this.leftShowPercent);
        savedState.setAnimating(this.animator.isRunning());
        savedState.setAnimatorCurrentTime(this.animator.isRunning() ? this.animator.getCurrentPlayTime() : 0L);
        savedState.setLeftAlphaMin(this.leftAlphaRange[0]);
        savedState.setLeftAlphaMax(this.leftAlphaRange[1]);
        savedState.setRightAlphaMin(this.rightAlphaRange[0]);
        savedState.setRightAlphaMax(this.rightAlphaRange[1]);
        return savedState;
    }

    public final void setAnimationDuration(long duration) {
        this.duration = duration;
        this.animator.setDuration(duration);
    }

    public final void setLeftAlphaRange(float min, float max) {
        this.leftAlphaRange = m43945c(min, max);
        m43950h();
    }

    public final void setLeftWidth(int width) {
        this.leftWidth = width;
        requestLayout();
    }

    public final void setRightAlphaRange(float min, float max) {
        this.rightAlphaRange = m43945c(min, max);
        m43950h();
    }

    public final void setSlideListener(@NotNull SlideLayoutListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void toggle(boolean animate) {
        boolean z = !isExpanded();
        if (animate) {
            toggleSlideWithAnimation(z);
        } else {
            toggleSlideWithoutAnimation(z);
        }
    }

    public final void toggleSlideWithAnimation(boolean shouldExpand) {
        if (shouldExpand) {
            expandWithAnimation();
        } else {
            collapseWithAnimation();
        }
    }

    public final void toggleSlideWithoutAnimation(boolean shouldExpand) {
        if (shouldExpand) {
            expandWithoutAnimation();
        } else {
            collapseWithoutAnimation();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SlideLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0002\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)H\u0016R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\u001a\u0010\u001c\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u001a\u0010\u001f\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\u0018R\u001a\u0010\"\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0016\"\u0004\b$\u0010\u0018¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/SlideLayout$SavedState;", "Landroid/view/View$BaseSavedState;", "superState", "Landroid/os/Parcelable;", "(Landroid/os/Parcelable;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "animatorCurrentTime", "", "getAnimatorCurrentTime", "()J", "setAnimatorCurrentTime", "(J)V", "isAnimating", "", Constants.BOOLEAN_VALUE_SIG, "setAnimating", "(Z)V", "leftAlphaMax", "", "getLeftAlphaMax", "()F", "setLeftAlphaMax", "(F)V", "leftAlphaMin", "getLeftAlphaMin", "setLeftAlphaMin", "leftShowPercent", "getLeftShowPercent", "setLeftShowPercent", "rightAlphaMax", "getRightAlphaMax", "setRightAlphaMax", "rightAlphaMin", "getRightAlphaMin", "setRightAlphaMin", "writeToParcel", "", "out", "flags", "", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class SavedState extends View.BaseSavedState {
        private long animatorCurrentTime;
        private boolean isAnimating;
        private float leftAlphaMax;
        private float leftAlphaMin;
        private float leftShowPercent;
        private float rightAlphaMax;
        private float rightAlphaMin;

        @JvmField
        @NotNull
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.onyx.galaxy.note.category.view.SlideLayout$SavedState$Companion$CREATOR$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public SlideLayout.SavedState createFromParcel(@NotNull Parcel source) {
                Intrinsics.checkNotNullParameter(source, "source");
                return new SlideLayout.SavedState(source);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public SlideLayout.SavedState[] newArray(int size) {
                return new SlideLayout.SavedState[size];
            }
        };

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavedState(@NotNull Parcelable superState) {
            super(superState);
            Intrinsics.checkNotNullParameter(superState, "superState");
            this.leftAlphaMax = 1.0f;
            this.rightAlphaMax = 1.0f;
        }

        public final long getAnimatorCurrentTime() {
            return this.animatorCurrentTime;
        }

        public final float getLeftAlphaMax() {
            return this.leftAlphaMax;
        }

        public final float getLeftAlphaMin() {
            return this.leftAlphaMin;
        }

        public final float getLeftShowPercent() {
            return this.leftShowPercent;
        }

        public final float getRightAlphaMax() {
            return this.rightAlphaMax;
        }

        public final float getRightAlphaMin() {
            return this.rightAlphaMin;
        }

        /* renamed from: isAnimating, reason: from getter */
        public final boolean getIsAnimating() {
            return this.isAnimating;
        }

        public final void setAnimating(boolean z) {
            this.isAnimating = z;
        }

        public final void setAnimatorCurrentTime(long j) {
            this.animatorCurrentTime = j;
        }

        public final void setLeftAlphaMax(float f) {
            this.leftAlphaMax = f;
        }

        public final void setLeftAlphaMin(float f) {
            this.leftAlphaMin = f;
        }

        public final void setLeftShowPercent(float f) {
            this.leftShowPercent = f;
        }

        public final void setRightAlphaMax(float f) {
            this.rightAlphaMax = f;
        }

        public final void setRightAlphaMin(float f) {
            this.rightAlphaMin = f;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int flags) {
            Intrinsics.checkNotNullParameter(out, "out");
            super.writeToParcel(out, flags);
            out.writeFloat(this.leftShowPercent);
            out.writeByte(this.isAnimating ? (byte) 1 : (byte) 0);
            out.writeLong(this.animatorCurrentTime);
            out.writeFloat(this.leftAlphaMin);
            out.writeFloat(this.leftAlphaMax);
            out.writeFloat(this.rightAlphaMin);
            out.writeFloat(this.rightAlphaMax);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavedState(@NotNull Parcel source) {
            super(source);
            Intrinsics.checkNotNullParameter(source, "source");
            this.leftAlphaMax = 1.0f;
            this.rightAlphaMax = 1.0f;
            this.leftShowPercent = source.readFloat();
            this.isAnimating = source.readByte() == 1;
            this.animatorCurrentTime = source.readLong();
            this.leftAlphaMin = source.readFloat();
            this.leftAlphaMax = source.readFloat();
            this.rightAlphaMin = source.readFloat();
            this.rightAlphaMax = source.readFloat();
        }
    }

    public /* synthetic */ SlideLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SlideLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.leftWidth = 600;
        this.duration = 300L;
        this.gravity = GravityCompat.START;
        this.leftAlphaRange = new float[]{0.0f, 1.0f};
        this.rightAlphaRange = new float[]{1.0f, 1.0f};
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(this.duration);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.stm
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SlideLayout.m43944b(SlideLayout.this, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.onyx.galaxy.note.category.view.SlideLayout$animator$1$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                SlideLayout.SlideLayoutListener slideLayoutListener;
                Intrinsics.checkNotNullParameter(animation, "animation");
                SlideLayout.this.m43946d();
                slideLayoutListener = SlideLayout.this.listener;
                if (slideLayoutListener != null) {
                    slideLayoutListener.onAnimationEnd();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animation) {
                SlideLayout.SlideLayoutListener slideLayoutListener;
                Intrinsics.checkNotNullParameter(animation, "animation");
                SlideLayout.this.m43949g();
                slideLayoutListener = SlideLayout.this.listener;
                if (slideLayoutListener != null) {
                    slideLayoutListener.onAnimationStart();
                }
            }
        });
        this.animator = ofFloat;
        setOrientation(0);
        m43947e(attributeSet);
    }
}
