package com.onyx.galaxy.note.editor.utils;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.onyx.galaxy.note.editor.utils.MarginDirection;
import com.onyx.galaxy.note.editor.utils.ViewAnimatorExtensionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u001a\u001e\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u001a\u001e\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u001a\u001a\u0010\b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t\u001a\"\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t\u001a\u001a\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t\u001a\u001a\u0010\u000e\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t¨\u0006\u000f"}, m61528d2 = {"alphaAnimator", "Landroid/animation/ValueAnimator;", "Landroid/view/View;", "startValue", "", "endValue", "fadeInAnimator", "fadeOutAnimator", "heightAnimator", "", "marginAnimator", "direction", "Lcom/onyx/galaxy/note/editor/utils/MarginDirection;", "resizeAnimator", "widthAnimator", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nViewAnimatorExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewAnimatorExtensions.kt\ncom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,115:1\n254#2:116\n256#2,2:117\n254#2:119\n256#2,2:120\n254#2:122\n256#2,2:123\n*S KotlinDebug\n*F\n+ 1 ViewAnimatorExtensions.kt\ncom/onyx/galaxy/note/editor/utils/ViewAnimatorExtensionsKt\n*L\n34#1:116\n35#1:117,2\n89#1:119\n90#1:120,2\n106#1:122\n107#1:123,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ViewAnimatorExtensionsKt {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MarginDirection.values().length];
            try {
                iArr[MarginDirection.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MarginDirection.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MarginDirection.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MarginDirection.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public static final ValueAnimator alphaAnimator(@NotNull final View view, float f, float f2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.t1o
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewAnimatorExtensionsKt.m47093f(view, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofFloat, "apply(...)");
        return ofFloat;
    }

    /* renamed from: f */
    public static final void m47093f(View this_alphaAnimator, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this_alphaAnimator, "$this_alphaAnimator");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        this_alphaAnimator.setAlpha(floatValue);
        boolean z = floatValue > 0.0f;
        if ((this_alphaAnimator.getVisibility() == 0) != z) {
            this_alphaAnimator.setVisibility(z ? 0 : 8);
        }
    }

    @NotNull
    public static final ValueAnimator fadeInAnimator(@NotNull View view, float f, float f2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return alphaAnimator(view, f, f2);
    }

    public static /* synthetic */ ValueAnimator fadeInAnimator$default(View view, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 1.0f;
        }
        return fadeInAnimator(view, f, f2);
    }

    @NotNull
    public static final ValueAnimator fadeOutAnimator(@NotNull View view, float f, float f2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return alphaAnimator(view, f, f2);
    }

    public static /* synthetic */ ValueAnimator fadeOutAnimator$default(View view, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return fadeOutAnimator(view, f, f2);
    }

    /* renamed from: g */
    public static final void m47094g(View this_heightAnimator, ViewGroup.LayoutParams layoutParams, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this_heightAnimator, "$this_heightAnimator");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        boolean z = intValue > 0;
        if ((this_heightAnimator.getVisibility() == 0) != z) {
            this_heightAnimator.setVisibility(z ? 0 : 8);
        }
        if (intValue > 0) {
            layoutParams.height = intValue;
        }
        this_heightAnimator.setLayoutParams(layoutParams);
    }

    /* renamed from: h */
    public static final void m47095h(MarginDirection direction, ViewGroup.LayoutParams layoutParams, View this_marginAnimator, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(direction, "$direction");
        Intrinsics.checkNotNullParameter(this_marginAnimator, "$this_marginAnimator");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        int i = WhenMappings.$EnumSwitchMapping$0[direction.ordinal()];
        if (i == 1) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = intValue;
        } else if (i == 2) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = intValue;
        } else if (i == 3) {
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = intValue;
        } else if (i == 4) {
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = intValue;
        }
        this_marginAnimator.setLayoutParams(layoutParams);
    }

    @NotNull
    public static final ValueAnimator heightAnimator(@NotNull final View view, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.v1o
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewAnimatorExtensionsKt.m47094g(view, layoutParams, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofInt, "apply(...)");
        return ofInt;
    }

    /* renamed from: i */
    public static final void m47096i(ViewGroup.LayoutParams layoutParams, View this_resizeAnimator, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this_resizeAnimator, "$this_resizeAnimator");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        layoutParams.height = intValue;
        layoutParams.width = intValue;
        this_resizeAnimator.setLayoutParams(layoutParams);
    }

    /* renamed from: j */
    public static final void m47097j(View this_widthAnimator, ViewGroup.LayoutParams layoutParams, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this_widthAnimator, "$this_widthAnimator");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        boolean z = intValue > 0;
        if ((this_widthAnimator.getVisibility() == 0) != z) {
            this_widthAnimator.setVisibility(z ? 0 : 8);
        }
        if (intValue > 0) {
            layoutParams.width = intValue;
        }
        this_widthAnimator.setLayoutParams(layoutParams);
    }

    @NotNull
    public static final ValueAnimator marginAnimator(@NotNull final View view, @NotNull final MarginDirection direction, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(direction, "direction");
        final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
            Intrinsics.checkNotNullExpressionValue(ofInt, "ofInt(...)");
            return ofInt;
        }
        ValueAnimator ofInt2 = ValueAnimator.ofInt(i, i2);
        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.u1o
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewAnimatorExtensionsKt.m47095h(MarginDirection.this, layoutParams, view, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofInt2, "apply(...)");
        return ofInt2;
    }

    @NotNull
    public static final ValueAnimator resizeAnimator(@NotNull final View view, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.s1o
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewAnimatorExtensionsKt.m47096i(layoutParams, view, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofInt, "apply(...)");
        return ofInt;
    }

    @NotNull
    public static final ValueAnimator widthAnimator(@NotNull final View view, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.r1o
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewAnimatorExtensionsKt.m47097j(view, layoutParams, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofInt, "apply(...)");
        return ofInt;
    }
}
