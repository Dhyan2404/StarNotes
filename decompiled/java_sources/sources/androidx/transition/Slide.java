package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes3.dex */
public class Slide extends Visibility {

    /* renamed from: Z0 */
    public static final String f10612Z0 = "android:slide:screenPosition";

    /* renamed from: V0 */
    public InterfaceC1493g f10619V0;

    /* renamed from: W0 */
    public int f10620W0;

    /* renamed from: X0 */
    public static final TimeInterpolator f10610X0 = new DecelerateInterpolator();

    /* renamed from: Y0 */
    public static final TimeInterpolator f10611Y0 = new AccelerateInterpolator();

    /* renamed from: a1 */
    public static final InterfaceC1493g f10613a1 = new C1487a();

    /* renamed from: b1 */
    public static final InterfaceC1493g f10614b1 = new C1488b();

    /* renamed from: c1 */
    public static final InterfaceC1493g f10615c1 = new C1489c();

    /* renamed from: d1 */
    public static final InterfaceC1493g f10616d1 = new C1490d();

    /* renamed from: e1 */
    public static final InterfaceC1493g f10617e1 = new C1491e();

    /* renamed from: f1 */
    public static final InterfaceC1493g f10618f1 = new C1492f();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface GravityFlag {
    }

    /* renamed from: androidx.transition.Slide$a */
    /* loaded from: classes3.dex */
    public class C1487a extends AbstractC1494h {
        public C1487a() {
            super(null);
        }

        @Override // androidx.transition.Slide.InterfaceC1493g
        /* renamed from: b */
        public float mo6570b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() - viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$b */
    /* loaded from: classes3.dex */
    public class C1488b extends AbstractC1494h {
        public C1488b() {
            super(null);
        }

        @Override // androidx.transition.Slide.InterfaceC1493g
        /* renamed from: b */
        public float mo6570b(ViewGroup viewGroup, View view) {
            return viewGroup.getLayoutDirection() == 1 ? view.getTranslationX() + viewGroup.getWidth() : view.getTranslationX() - viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$c */
    /* loaded from: classes3.dex */
    public class C1489c extends AbstractC1495i {
        public C1489c() {
            super(null);
        }

        @Override // androidx.transition.Slide.InterfaceC1493g
        /* renamed from: a */
        public float mo6571a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() - viewGroup.getHeight();
        }
    }

    /* renamed from: androidx.transition.Slide$d */
    /* loaded from: classes3.dex */
    public class C1490d extends AbstractC1494h {
        public C1490d() {
            super(null);
        }

        @Override // androidx.transition.Slide.InterfaceC1493g
        /* renamed from: b */
        public float mo6570b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() + viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$e */
    /* loaded from: classes3.dex */
    public class C1491e extends AbstractC1494h {
        public C1491e() {
            super(null);
        }

        @Override // androidx.transition.Slide.InterfaceC1493g
        /* renamed from: b */
        public float mo6570b(ViewGroup viewGroup, View view) {
            return viewGroup.getLayoutDirection() == 1 ? view.getTranslationX() - viewGroup.getWidth() : view.getTranslationX() + viewGroup.getWidth();
        }
    }

    /* renamed from: androidx.transition.Slide$f */
    /* loaded from: classes3.dex */
    public class C1492f extends AbstractC1495i {
        public C1492f() {
            super(null);
        }

        @Override // androidx.transition.Slide.InterfaceC1493g
        /* renamed from: a */
        public float mo6571a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() + viewGroup.getHeight();
        }
    }

    /* renamed from: androidx.transition.Slide$g */
    /* loaded from: classes3.dex */
    public interface InterfaceC1493g {
        /* renamed from: a */
        float mo6571a(ViewGroup viewGroup, View view);

        /* renamed from: b */
        float mo6570b(ViewGroup viewGroup, View view);
    }

    /* renamed from: androidx.transition.Slide$h */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1494h implements InterfaceC1493g {
        public AbstractC1494h() {
        }

        @Override // androidx.transition.Slide.InterfaceC1493g
        /* renamed from: a */
        public float mo6571a(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }

        public /* synthetic */ AbstractC1494h(C1487a c1487a) {
            this();
        }
    }

    /* renamed from: androidx.transition.Slide$i */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1495i implements InterfaceC1493g {
        public AbstractC1495i() {
        }

        @Override // androidx.transition.Slide.InterfaceC1493g
        /* renamed from: b */
        public float mo6570b(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }

        public /* synthetic */ AbstractC1495i(C1487a c1487a) {
            this();
        }
    }

    public Slide() {
        this.f10619V0 = f10618f1;
        this.f10620W0 = 80;
        setSlideEdge(80);
    }

    /* renamed from: L */
    private void m6569L(TransitionValues transitionValues) {
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put(f10612Z0, iArr);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        m6569L(transitionValues);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        m6569L(transitionValues);
    }

    public int getSlideEdge() {
        return this.f10620W0;
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onAppear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        int[] iArr = (int[]) transitionValues2.values.get(f10612Z0);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return C1515e.m6669a(view, transitionValues2, iArr[0], iArr[1], this.f10619V0.mo6570b(viewGroup, view), this.f10619V0.mo6571a(viewGroup, view), translationX, translationY, f10610X0, this);
    }

    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onDisappear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return null;
        }
        int[] iArr = (int[]) transitionValues.values.get(f10612Z0);
        return C1515e.m6669a(view, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f10619V0.mo6570b(viewGroup, view), this.f10619V0.mo6571a(viewGroup, view), f10611Y0, this);
    }

    public void setSlideEdge(int i) {
        if (i == 3) {
            this.f10619V0 = f10613a1;
        } else if (i == 5) {
            this.f10619V0 = f10616d1;
        } else if (i == 48) {
            this.f10619V0 = f10615c1;
        } else if (i == 80) {
            this.f10619V0 = f10618f1;
        } else if (i == 8388611) {
            this.f10619V0 = f10614b1;
        } else {
            if (i != 8388613) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f10619V0 = f10617e1;
        }
        this.f10620W0 = i;
        SidePropagation sidePropagation = new SidePropagation();
        sidePropagation.setSide(i);
        setPropagation(sidePropagation);
    }

    public Slide(int i) {
        this.f10619V0 = f10618f1;
        this.f10620W0 = 80;
        setSlideEdge(i);
    }

    public Slide(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10619V0 = f10618f1;
        this.f10620W0 = 80;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1513c.f10763h);
        int namedInt = TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        obtainStyledAttributes.recycle();
        setSlideEdge(namedInt);
    }
}
