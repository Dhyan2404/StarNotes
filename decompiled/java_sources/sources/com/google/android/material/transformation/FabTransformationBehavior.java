package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.animation.ChildrenAlphaProperty;
import com.google.android.material.animation.DrawableAlphaProperty;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.MotionTiming;
import com.google.android.material.animation.Positioning;
import com.google.android.material.circularreveal.CircularRevealCompat;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.math.MathUtils;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: classes6.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: j */
    public final Rect f33015j;

    /* renamed from: k */
    public final RectF f33016k;

    /* renamed from: l */
    public final RectF f33017l;

    /* renamed from: m */
    public final int[] f33018m;

    /* renamed from: n */
    public float f33019n;

    /* renamed from: o */
    public float f33020o;

    /* loaded from: classes6.dex */
    public static class FabTransformationSpec {
        public Positioning positioning;

        @Nullable
        public MotionSpec timings;
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$a */
    /* loaded from: classes6.dex */
    public class C5450a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ boolean f33021e;

        /* renamed from: f */
        public final /* synthetic */ View f33022f;

        /* renamed from: g */
        public final /* synthetic */ View f33023g;

        public C5450a(boolean z, View view, View view2) {
            this.f33021e = z;
            this.f33022f = view;
            this.f33023g = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f33021e) {
                return;
            }
            this.f33022f.setVisibility(4);
            this.f33023g.setAlpha(1.0f);
            this.f33023g.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f33021e) {
                this.f33022f.setVisibility(0);
                this.f33023g.setAlpha(0.0f);
                this.f33023g.setVisibility(4);
            }
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$b */
    /* loaded from: classes6.dex */
    public class C5451b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ View f33025e;

        public C5451b(View view) {
            this.f33025e = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f33025e.invalidate();
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$c */
    /* loaded from: classes6.dex */
    public class C5452c extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ CircularRevealWidget f33027e;

        /* renamed from: f */
        public final /* synthetic */ Drawable f33028f;

        public C5452c(CircularRevealWidget circularRevealWidget, Drawable drawable) {
            this.f33027e = circularRevealWidget;
            this.f33028f = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f33027e.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f33027e.setCircularRevealOverlayDrawable(this.f33028f);
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$d */
    /* loaded from: classes6.dex */
    public class C5453d extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ CircularRevealWidget f33030e;

        public C5453d(CircularRevealWidget circularRevealWidget) {
            this.f33030e = circularRevealWidget;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CircularRevealWidget.RevealInfo revealInfo = this.f33030e.getRevealInfo();
            revealInfo.radius = Float.MAX_VALUE;
            this.f33030e.setRevealInfo(revealInfo);
        }
    }

    public FabTransformationBehavior() {
        this.f33015j = new Rect();
        this.f33016k = new RectF();
        this.f33017l = new RectF();
        this.f33018m = new int[2];
    }

    @Nullable
    /* renamed from: d */
    public final ViewGroup m25502d(@NonNull View view) {
        View findViewById = view.findViewById(C5139R.id.mtrl_child_content_container);
        return findViewById != null ? m25522x(findViewById) : ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? m25522x(((ViewGroup) view).getChildAt(0)) : m25522x(view);
    }

    /* renamed from: e */
    public final void m25503e(@NonNull View view, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull MotionTiming motionTiming, @NonNull MotionTiming motionTiming2, float f, float f2, float f3, float f4, @NonNull RectF rectF) {
        float m25510l = m25510l(fabTransformationSpec, motionTiming, f, f3);
        float m25510l2 = m25510l(fabTransformationSpec, motionTiming2, f2, f4);
        Rect rect = this.f33015j;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f33016k;
        rectF2.set(rect);
        RectF rectF3 = this.f33017l;
        m25511m(view, rectF3);
        rectF3.offset(m25510l, m25510l2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    /* renamed from: f */
    public final void m25504f(@NonNull View view, @NonNull RectF rectF) {
        m25511m(view, rectF);
        rectF.offset(this.f33019n, this.f33020o);
    }

    @NonNull
    /* renamed from: g */
    public final Pair<MotionTiming, MotionTiming> m25505g(float f, float f2, boolean z, @NonNull FabTransformationSpec fabTransformationSpec) {
        MotionTiming timing;
        MotionTiming timing2;
        if (f == 0.0f || f2 == 0.0f) {
            timing = fabTransformationSpec.timings.getTiming("translationXLinear");
            timing2 = fabTransformationSpec.timings.getTiming("translationYLinear");
        } else if ((!z || f2 >= 0.0f) && (z || f2 <= 0.0f)) {
            timing = fabTransformationSpec.timings.getTiming("translationXCurveDownwards");
            timing2 = fabTransformationSpec.timings.getTiming("translationYCurveDownwards");
        } else {
            timing = fabTransformationSpec.timings.getTiming("translationXCurveUpwards");
            timing2 = fabTransformationSpec.timings.getTiming("translationYCurveUpwards");
        }
        return new Pair<>(timing, timing2);
    }

    /* renamed from: h */
    public final float m25506h(@NonNull View view, @NonNull View view2, @NonNull Positioning positioning) {
        RectF rectF = this.f33016k;
        RectF rectF2 = this.f33017l;
        m25504f(view, rectF);
        m25511m(view2, rectF2);
        rectF2.offset(-m25508j(view, view2, positioning), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    /* renamed from: i */
    public final float m25507i(@NonNull View view, @NonNull View view2, @NonNull Positioning positioning) {
        RectF rectF = this.f33016k;
        RectF rectF2 = this.f33017l;
        m25504f(view, rectF);
        m25511m(view2, rectF2);
        rectF2.offset(0.0f, -m25509k(view, view2, positioning));
        return rectF.centerY() - rectF2.top;
    }

    /* renamed from: j */
    public final float m25508j(@NonNull View view, @NonNull View view2, @NonNull Positioning positioning) {
        float centerX;
        float centerX2;
        float f;
        RectF rectF = this.f33016k;
        RectF rectF2 = this.f33017l;
        m25504f(view, rectF);
        m25511m(view2, rectF2);
        int i = positioning.gravity & 7;
        if (i == 1) {
            centerX = rectF2.centerX();
            centerX2 = rectF.centerX();
        } else if (i == 3) {
            centerX = rectF2.left;
            centerX2 = rectF.left;
        } else {
            if (i != 5) {
                f = 0.0f;
                return f + positioning.xAdjustment;
            }
            centerX = rectF2.right;
            centerX2 = rectF.right;
        }
        f = centerX - centerX2;
        return f + positioning.xAdjustment;
    }

    /* renamed from: k */
    public final float m25509k(@NonNull View view, @NonNull View view2, @NonNull Positioning positioning) {
        float centerY;
        float centerY2;
        float f;
        RectF rectF = this.f33016k;
        RectF rectF2 = this.f33017l;
        m25504f(view, rectF);
        m25511m(view2, rectF2);
        int i = positioning.gravity & 112;
        if (i == 16) {
            centerY = rectF2.centerY();
            centerY2 = rectF.centerY();
        } else if (i == 48) {
            centerY = rectF2.top;
            centerY2 = rectF.top;
        } else {
            if (i != 80) {
                f = 0.0f;
                return f + positioning.yAdjustment;
            }
            centerY = rectF2.bottom;
            centerY2 = rectF.bottom;
        }
        f = centerY - centerY2;
        return f + positioning.yAdjustment;
    }

    /* renamed from: l */
    public final float m25510l(@NonNull FabTransformationSpec fabTransformationSpec, @NonNull MotionTiming motionTiming, float f, float f2) {
        long delay = motionTiming.getDelay();
        long duration = motionTiming.getDuration();
        MotionTiming timing = fabTransformationSpec.timings.getTiming("expansion");
        return AnimationUtils.lerp(f, f2, motionTiming.getInterpolator().getInterpolation(((float) (((timing.getDelay() + timing.getDuration()) + 17) - delay)) / ((float) duration)));
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    /* renamed from: m */
    public final void m25511m(@NonNull View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f33018m);
        rectF.offsetTo(r3[0], r3[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* renamed from: n */
    public final void m25512n(View view, View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup m25502d;
        ObjectAnimator ofFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof CircularRevealWidget) && CircularRevealHelper.STRATEGY == 0) || (m25502d = m25502d(view2)) == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    ChildrenAlphaProperty.CHILDREN_ALPHA.set(m25502d, Float.valueOf(0.0f));
                }
                ofFloat = ObjectAnimator.ofFloat(m25502d, ChildrenAlphaProperty.CHILDREN_ALPHA, 1.0f);
            } else {
                ofFloat = ObjectAnimator.ofFloat(m25502d, ChildrenAlphaProperty.CHILDREN_ALPHA, 0.0f);
            }
            fabTransformationSpec.timings.getTiming("contentFade").apply(ofFloat);
            list.add(ofFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public final void m25513o(@NonNull View view, View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if (view2 instanceof CircularRevealWidget) {
            CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            int m25521w = m25521w(view);
            int i = 16777215 & m25521w;
            if (z) {
                if (!z2) {
                    circularRevealWidget.setCircularRevealScrimColor(m25521w);
                }
                ofInt = ObjectAnimator.ofInt(circularRevealWidget, CircularRevealWidget.CircularRevealScrimColorProperty.CIRCULAR_REVEAL_SCRIM_COLOR, i);
            } else {
                ofInt = ObjectAnimator.ofInt(circularRevealWidget, CircularRevealWidget.CircularRevealScrimColorProperty.CIRCULAR_REVEAL_SCRIM_COLOR, m25521w);
            }
            ofInt.setEvaluator(ArgbEvaluatorCompat.getInstance());
            fabTransformationSpec.timings.getTiming("color").apply(ofInt);
            list.add(ofInt);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    public AnimatorSet onCreateExpandedStateChangeAnimation(@NonNull View view, @NonNull View view2, boolean z, boolean z2) {
        FabTransformationSpec onCreateMotionSpec = onCreateMotionSpec(view2.getContext(), z);
        if (z) {
            this.f33019n = view.getTranslationX();
            this.f33020o = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        m25515q(view, view2, z, z2, onCreateMotionSpec, arrayList, arrayList2);
        RectF rectF = this.f33016k;
        m25520v(view, view2, z, z2, onCreateMotionSpec, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        m25514p(view, view2, z, onCreateMotionSpec, arrayList);
        m25517s(view, view2, z, z2, onCreateMotionSpec, arrayList, arrayList2);
        m25516r(view, view2, z, z2, onCreateMotionSpec, width, height, arrayList, arrayList2);
        m25513o(view, view2, z, z2, onCreateMotionSpec, arrayList, arrayList2);
        m25512n(view, view2, z, z2, onCreateMotionSpec, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        animatorSet.addListener(new C5450a(z, view2, view));
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    public abstract FabTransformationSpec onCreateMotionSpec(Context context, boolean z);

    /* renamed from: p */
    public final void m25514p(@NonNull View view, @NonNull View view2, boolean z, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list) {
        float m25508j = m25508j(view, view2, fabTransformationSpec.positioning);
        float m25509k = m25509k(view, view2, fabTransformationSpec.positioning);
        Pair<MotionTiming, MotionTiming> m25505g = m25505g(m25508j, m25509k, z, fabTransformationSpec);
        MotionTiming motionTiming = (MotionTiming) m25505g.first;
        MotionTiming motionTiming2 = (MotionTiming) m25505g.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z) {
            m25508j = this.f33019n;
        }
        fArr[0] = m25508j;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z) {
            m25509k = this.f33020o;
        }
        fArr2[0] = m25509k;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        motionTiming.apply(ofFloat);
        motionTiming2.apply(ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    @TargetApi(21)
    /* renamed from: q */
    public final void m25515q(View view, @NonNull View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        fabTransformationSpec.timings.getTiming("elevation").apply(ofFloat);
        list.add(ofFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    public final void m25516r(@NonNull View view, View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, float f, float f2, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        Animator animator;
        if (view2 instanceof CircularRevealWidget) {
            CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            float m25506h = m25506h(view, view2, fabTransformationSpec.positioning);
            float m25507i = m25507i(view, view2, fabTransformationSpec.positioning);
            ((FloatingActionButton) view).getContentRect(this.f33015j);
            float width = this.f33015j.width() / 2.0f;
            MotionTiming timing = fabTransformationSpec.timings.getTiming("expansion");
            if (z) {
                if (!z2) {
                    circularRevealWidget.setRevealInfo(new CircularRevealWidget.RevealInfo(m25506h, m25507i, width));
                }
                if (z2) {
                    width = circularRevealWidget.getRevealInfo().radius;
                }
                animator = CircularRevealCompat.createCircularReveal(circularRevealWidget, m25506h, m25507i, MathUtils.distanceToFurthestCorner(m25506h, m25507i, 0.0f, 0.0f, f, f2));
                animator.addListener(new C5453d(circularRevealWidget));
                m25519u(view2, timing.getDelay(), (int) m25506h, (int) m25507i, width, list);
            } else {
                float f3 = circularRevealWidget.getRevealInfo().radius;
                Animator createCircularReveal = CircularRevealCompat.createCircularReveal(circularRevealWidget, m25506h, m25507i, width);
                int i = (int) m25506h;
                int i2 = (int) m25507i;
                m25519u(view2, timing.getDelay(), i, i2, f3, list);
                m25518t(view2, timing.getDelay(), timing.getDuration(), fabTransformationSpec.timings.getTotalDuration(), i, i2, width, list);
                animator = createCircularReveal;
            }
            timing.apply(animator);
            list.add(animator);
            list2.add(CircularRevealCompat.createCircularRevealListener(circularRevealWidget));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: s */
    public final void m25517s(View view, View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if ((view2 instanceof CircularRevealWidget) && (view instanceof ImageView)) {
            CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z) {
                if (!z2) {
                    drawable.setAlpha(255);
                }
                ofInt = ObjectAnimator.ofInt(drawable, DrawableAlphaProperty.DRAWABLE_ALPHA_COMPAT, 0);
            } else {
                ofInt = ObjectAnimator.ofInt(drawable, DrawableAlphaProperty.DRAWABLE_ALPHA_COMPAT, 255);
            }
            ofInt.addUpdateListener(new C5451b(view2));
            fabTransformationSpec.timings.getTiming("iconFade").apply(ofInt);
            list.add(ofInt);
            list2.add(new C5452c(circularRevealWidget, drawable));
        }
    }

    /* renamed from: t */
    public final void m25518t(View view, long j, long j2, long j3, int i, int i2, float f, @NonNull List<Animator> list) {
        long j4 = j + j2;
        if (j4 < j3) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(j4);
            createCircularReveal.setDuration(j3 - j4);
            list.add(createCircularReveal);
        }
    }

    /* renamed from: u */
    public final void m25519u(View view, long j, int i, int i2, float f, @NonNull List<Animator> list) {
        if (j > 0) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(0L);
            createCircularReveal.setDuration(j);
            list.add(createCircularReveal);
        }
    }

    /* renamed from: v */
    public final void m25520v(@NonNull View view, @NonNull View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2, @NonNull RectF rectF) {
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        float m25508j = m25508j(view, view2, fabTransformationSpec.positioning);
        float m25509k = m25509k(view, view2, fabTransformationSpec.positioning);
        Pair<MotionTiming, MotionTiming> m25505g = m25505g(m25508j, m25509k, z, fabTransformationSpec);
        MotionTiming motionTiming = (MotionTiming) m25505g.first;
        MotionTiming motionTiming2 = (MotionTiming) m25505g.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-m25508j);
                view2.setTranslationY(-m25509k);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            ofFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            m25503e(view2, fabTransformationSpec, motionTiming, motionTiming2, -m25508j, -m25509k, 0.0f, 0.0f, rectF);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -m25508j);
            ofFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -m25509k);
        }
        motionTiming.apply(ofFloat);
        motionTiming2.apply(ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    /* renamed from: w */
    public final int m25521w(@NonNull View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    @Nullable
    /* renamed from: x */
    public final ViewGroup m25522x(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33015j = new Rect();
        this.f33016k = new RectF();
        this.f33017l = new RectF();
        this.f33018m = new int[2];
    }
}
