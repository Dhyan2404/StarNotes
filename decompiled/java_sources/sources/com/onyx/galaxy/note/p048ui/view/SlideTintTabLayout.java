package com.onyx.galaxy.note.p048ui.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.TabLayoutKt;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.p048ui.view.SlideTintTabLayout;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001c¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;", "Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "onDraw", "", "newPosition", "G", "Landroid/graphics/Paint;", "b1", "Landroid/graphics/Paint;", "sliderPaint", "Landroid/graphics/RectF;", "c1", "Landroid/graphics/RectF;", "sliderRect", "Landroid/animation/ValueAnimator;", "d1", "Landroid/animation/ValueAnimator;", "animator", "e1", "I", "lastPosition", "f1", "targetPosition", "", "g1", "F", "progress", "h1", Keywords.FUNC_ROUND_STRING, "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SlideTintTabLayout extends TintTabLayoutView {

    /* renamed from: b1, reason: from kotlin metadata */
    @NotNull
    public final Paint sliderPaint;

    /* renamed from: c1, reason: from kotlin metadata */
    @NotNull
    public final RectF sliderRect;

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final ValueAnimator animator;

    /* renamed from: e1, reason: from kotlin metadata */
    public int lastPosition;

    /* renamed from: f1, reason: from kotlin metadata */
    public int targetPosition;

    /* renamed from: g1, reason: from kotlin metadata */
    public float progress;

    /* renamed from: h1, reason: from kotlin metadata */
    public final float round;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlideTintTabLayout(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Paint paint = new Paint(1);
        paint.setColor(ThemeUtils.getColorById(C7996R.color.theme_background_drag_tool));
        paint.setStyle(Paint.Style.FILL);
        this.sliderPaint = paint;
        this.sliderRect = new RectF();
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(300L);
        valueAnimator.setInterpolator(new FastOutSlowInInterpolator());
        this.animator = valueAnimator;
        TabLayoutKt.addOnTabSelectedListener(this, new Function1<TabLayout.Tab, Unit>() { // from class: com.onyx.galaxy.note.ui.view.SlideTintTabLayout.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TabLayout.Tab tab) {
                invoke2(tab);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TabLayout.Tab it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                SlideTintTabLayout.this.m51473G(it2.getPosition());
            }
        });
        this.round = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_10);
    }

    /* renamed from: H */
    public static final void m51472H(SlideTintTabLayout this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.progress = it2.getAnimatedFraction();
        this$0.invalidate();
    }

    /* renamed from: G */
    public final void m51473G(final int newPosition) {
        this.animator.cancel();
        int i = this.lastPosition;
        if (i == newPosition) {
            return;
        }
        this.targetPosition = newPosition;
        ValueAnimator valueAnimator = this.animator;
        valueAnimator.setFloatValues(i, newPosition);
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.num
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                SlideTintTabLayout.m51472H(SlideTintTabLayout.this, valueAnimator2);
            }
        });
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.onyx.galaxy.note.ui.view.SlideTintTabLayout$animateToPosition$1$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                SlideTintTabLayout.this.lastPosition = newPosition;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                SlideTintTabLayout.this.lastPosition = newPosition;
            }
        });
        valueAnimator.start();
    }

    @Override // com.google.android.material.tabs.TabLayout, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        TabLayout.TabView tabView;
        TabLayout.Tab tabAt;
        TabLayout.TabView tabView2;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        TabLayout.Tab tabAt2 = getTabAt(this.lastPosition);
        if (tabAt2 == null || (tabView = tabAt2.view) == null || (tabAt = getTabAt(this.targetPosition)) == null || (tabView2 = tabAt.view) == null) {
            return;
        }
        float left = tabView.getLeft() + ((tabView2.getLeft() - tabView.getLeft()) * this.progress);
        float right = tabView.getRight() + ((tabView2.getRight() - tabView.getRight()) * this.progress);
        if (this.lastPosition == this.targetPosition) {
            left = tabView2.getLeft();
            right = tabView2.getRight();
        }
        RectF rectF = this.sliderRect;
        rectF.left = left;
        rectF.top = tabView2.getTop();
        rectF.right = right;
        rectF.bottom = tabView2.getBottom();
        RectF rectF2 = this.sliderRect;
        float f = this.round;
        canvas.drawRoundRect(rectF2, f, f, this.sliderPaint);
    }
}
