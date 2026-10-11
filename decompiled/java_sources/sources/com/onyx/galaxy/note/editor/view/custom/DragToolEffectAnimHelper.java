package com.onyx.galaxy.note.editor.view.custom;

import android.animation.Animator;
import android.animation.ValueAnimator;
import com.onyx.galaxy.note.editor.view.custom.DragToolEffectAnimHelper;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\f\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J \u0010\u0007\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002J \u0010\b\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002J \u0010\t\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002JD\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002H\u0002R\u0014\u0010\u0013\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0012¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;", "", "Lkotlin/Function2;", "", "", "", "callback", "startShow", "startHidden", "startSelectAnim", "Landroid/animation/ValueAnimator;", "valueAnimator", "startValue", "endValue", "", "duration", "b", "a", "Landroid/animation/ValueAnimator;", "showAnim", "hideAnim", "c", "selectAnim", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDragToolEffectAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragToolEffectAnimHelper.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,76:1\n30#2:77\n91#2,14:78\n*S KotlinDebug\n*F\n+ 1 DragToolEffectAnimHelper.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper\n*L\n44#1:77\n44#1:78,14\n*E\n"})
/* loaded from: classes9.dex */
public final class DragToolEffectAnimHelper {
    public static final long ANIM_DURATION = 380;
    public static final float HIDE_ANIM_END_VALUE = 0.0f;
    public static final float HIDE_ANIM_START_VALUE = 1.0f;
    public static final float SELECT_ANIM_END_VALUE = 1.0f;
    public static final float SELECT_ANIM_START_VALUE = 0.1f;
    public static final float SHOW_ANIM_END_VALUE = 1.0f;
    public static final float SHOW_ANIM_START_VALUE = 0.0f;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ValueAnimator showAnim;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ValueAnimator hideAnim;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final ValueAnimator selectAnim;

    public DragToolEffectAnimHelper() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        Intrinsics.checkNotNullExpressionValue(ofFloat, "ofFloat(...)");
        this.showAnim = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        Intrinsics.checkNotNullExpressionValue(ofFloat2, "ofFloat(...)");
        this.hideAnim = ofFloat2;
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.1f, 1.0f);
        Intrinsics.checkNotNullExpressionValue(ofFloat3, "ofFloat(...)");
        this.selectAnim = ofFloat3;
    }

    /* renamed from: c */
    public static /* synthetic */ void m47723c(DragToolEffectAnimHelper dragToolEffectAnimHelper, ValueAnimator valueAnimator, float f, float f2, long j, Function2 function2, int i, Object obj) {
        if ((i & 8) != 0) {
            j = 380;
        }
        dragToolEffectAnimHelper.m47725b(valueAnimator, f, f2, j, function2);
    }

    /* renamed from: d */
    public static final void m47724d(float f, float f2, Function2 callback, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        if (floatValue == f) {
            return;
        }
        if (floatValue == f2) {
            return;
        }
        callback.invoke(Float.valueOf(floatValue), Boolean.TRUE);
    }

    /* renamed from: b */
    public final void m47725b(ValueAnimator valueAnimator, final float startValue, final float endValue, long duration, final Function2<? super Float, ? super Boolean, Unit> callback) {
        valueAnimator.cancel();
        valueAnimator.setDuration(duration);
        valueAnimator.start();
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.thf
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DragToolEffectAnimHelper.m47724d(startValue, endValue, callback, valueAnimator2);
            }
        });
        valueAnimator.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.custom.DragToolEffectAnimHelper$startAnimator$$inlined$doOnEnd$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                Function2.this.invoke(Float.valueOf(endValue), Boolean.FALSE);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
    }

    public final void startHidden(@NotNull Function2<? super Float, ? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        m47723c(this, this.hideAnim, 1.0f, 0.0f, 0L, callback, 8, null);
    }

    public final void startSelectAnim(@NotNull Function2<? super Float, ? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        m47723c(this, this.selectAnim, 0.1f, 1.0f, 0L, callback, 8, null);
    }

    public final void startShow(@NotNull Function2<? super Float, ? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        m47723c(this, this.showAnim, 0.0f, 1.0f, 0L, callback, 8, null);
    }
}
