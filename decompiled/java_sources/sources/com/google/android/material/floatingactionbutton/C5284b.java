package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ImageMatrixProperty;
import com.google.android.material.animation.MatrixEvaluator;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.internal.StateListAnimator;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.ripple.RippleDrawableCompat;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.onegravity.colorpicker.OpacityBar;
import com.sunia.HTREnginev2.C14472tt;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.google.android.material.floatingactionbutton.b */
/* loaded from: classes6.dex */
public class C5284b {

    /* renamed from: E */
    public static final long f31352E = 100;

    /* renamed from: F */
    public static final long f31353F = 100;

    /* renamed from: G */
    public static final int f31354G = 0;

    /* renamed from: H */
    public static final int f31355H = 1;

    /* renamed from: I */
    public static final int f31356I = 2;

    /* renamed from: J */
    public static final float f31357J = 1.5f;

    /* renamed from: K */
    public static final float f31358K = 0.0f;

    /* renamed from: L */
    public static final float f31359L = 0.4f;

    /* renamed from: M */
    public static final float f31360M = 0.4f;

    /* renamed from: N */
    public static final float f31361N = 1.0f;

    /* renamed from: O */
    public static final float f31362O = 1.0f;

    /* renamed from: P */
    public static final float f31363P = 1.0f;

    /* renamed from: Q */
    public static final float f31364Q = 0.0f;

    /* renamed from: R */
    public static final float f31365R = 0.0f;

    /* renamed from: C */
    @Nullable
    public ViewTreeObserver.OnPreDrawListener f31378C;

    /* renamed from: a */
    @Nullable
    public ShapeAppearanceModel f31379a;

    /* renamed from: b */
    @Nullable
    public MaterialShapeDrawable f31380b;

    /* renamed from: c */
    @Nullable
    public Drawable f31381c;

    /* renamed from: d */
    @Nullable
    public C14472tt f31382d;

    /* renamed from: e */
    @Nullable
    public Drawable f31383e;

    /* renamed from: f */
    public boolean f31384f;

    /* renamed from: h */
    public float f31386h;

    /* renamed from: i */
    public float f31387i;

    /* renamed from: j */
    public float f31388j;

    /* renamed from: k */
    public int f31389k;

    /* renamed from: l */
    @NonNull
    public final StateListAnimator f31390l;

    /* renamed from: m */
    @Nullable
    public Animator f31391m;

    /* renamed from: n */
    @Nullable
    public MotionSpec f31392n;

    /* renamed from: o */
    @Nullable
    public MotionSpec f31393o;

    /* renamed from: p */
    public float f31394p;

    /* renamed from: r */
    public int f31396r;

    /* renamed from: t */
    public ArrayList<Animator.AnimatorListener> f31398t;

    /* renamed from: u */
    public ArrayList<Animator.AnimatorListener> f31399u;

    /* renamed from: v */
    public ArrayList<j> f31400v;

    /* renamed from: w */
    public final FloatingActionButton f31401w;

    /* renamed from: x */
    public final ShadowViewDelegate f31402x;

    /* renamed from: D */
    public static final TimeInterpolator f31351D = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;

    /* renamed from: S */
    public static final int f31366S = C5139R.attr.motionDurationLong2;

    /* renamed from: T */
    public static final int f31367T = C5139R.attr.motionEasingEmphasizedInterpolator;

    /* renamed from: U */
    public static final int f31368U = C5139R.attr.motionDurationMedium1;

    /* renamed from: V */
    public static final int f31369V = C5139R.attr.motionEasingEmphasizedAccelerateInterpolator;

    /* renamed from: W */
    public static final int[] f31370W = {R.attr.state_pressed, R.attr.state_enabled};

    /* renamed from: X */
    public static final int[] f31371X = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};

    /* renamed from: Y */
    public static final int[] f31372Y = {R.attr.state_focused, R.attr.state_enabled};

    /* renamed from: Z */
    public static final int[] f31373Z = {R.attr.state_hovered, R.attr.state_enabled};

    /* renamed from: a0 */
    public static final int[] f31374a0 = {R.attr.state_enabled};

    /* renamed from: b0 */
    public static final int[] f31375b0 = new int[0];

    /* renamed from: g */
    public boolean f31385g = true;

    /* renamed from: q */
    public float f31395q = 1.0f;

    /* renamed from: s */
    public int f31397s = 0;

    /* renamed from: y */
    public final Rect f31403y = new Rect();

    /* renamed from: z */
    public final RectF f31404z = new RectF();

    /* renamed from: A */
    public final RectF f31376A = new RectF();

    /* renamed from: B */
    public final Matrix f31377B = new Matrix();

    /* renamed from: com.google.android.material.floatingactionbutton.b$a */
    /* loaded from: classes6.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public boolean f31405e;

        /* renamed from: f */
        public final /* synthetic */ boolean f31406f;

        /* renamed from: g */
        public final /* synthetic */ k f31407g;

        public a(boolean z, k kVar) {
            this.f31406f = z;
            this.f31407g = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f31405e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5284b.this.f31397s = 0;
            C5284b.this.f31391m = null;
            if (this.f31405e) {
                return;
            }
            FloatingActionButton floatingActionButton = C5284b.this.f31401w;
            boolean z = this.f31406f;
            floatingActionButton.internalSetVisibility(z ? 8 : 4, z);
            k kVar = this.f31407g;
            if (kVar != null) {
                kVar.mo24097a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C5284b.this.f31401w.internalSetVisibility(0, this.f31406f);
            C5284b.this.f31397s = 1;
            C5284b.this.f31391m = animator;
            this.f31405e = false;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$b */
    /* loaded from: classes6.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ boolean f31409e;

        /* renamed from: f */
        public final /* synthetic */ k f31410f;

        public b(boolean z, k kVar) {
            this.f31409e = z;
            this.f31410f = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5284b.this.f31397s = 0;
            C5284b.this.f31391m = null;
            k kVar = this.f31410f;
            if (kVar != null) {
                kVar.onShown();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C5284b.this.f31401w.internalSetVisibility(0, this.f31409e);
            C5284b.this.f31397s = 2;
            C5284b.this.f31391m = animator;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$c */
    /* loaded from: classes6.dex */
    public class c extends MatrixEvaluator {
        public c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.material.animation.MatrixEvaluator, android.animation.TypeEvaluator
        public Matrix evaluate(float f, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
            C5284b.this.f31395q = f;
            return super.evaluate(f, matrix, matrix2);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$d */
    /* loaded from: classes6.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ float f31413e;

        /* renamed from: f */
        public final /* synthetic */ float f31414f;

        /* renamed from: g */
        public final /* synthetic */ float f31415g;

        /* renamed from: h */
        public final /* synthetic */ float f31416h;

        /* renamed from: i */
        public final /* synthetic */ float f31417i;

        /* renamed from: j */
        public final /* synthetic */ float f31418j;

        /* renamed from: k */
        public final /* synthetic */ float f31419k;

        /* renamed from: l */
        public final /* synthetic */ Matrix f31420l;

        public d(float f, float f2, float f3, float f4, float f5, float f6, float f7, Matrix matrix) {
            this.f31413e = f;
            this.f31414f = f2;
            this.f31415g = f3;
            this.f31416h = f4;
            this.f31417i = f5;
            this.f31418j = f6;
            this.f31419k = f7;
            this.f31420l = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            C5284b.this.f31401w.setAlpha(AnimationUtils.lerp(this.f31413e, this.f31414f, 0.0f, 0.2f, floatValue));
            C5284b.this.f31401w.setScaleX(AnimationUtils.lerp(this.f31415g, this.f31416h, floatValue));
            C5284b.this.f31401w.setScaleY(AnimationUtils.lerp(this.f31417i, this.f31416h, floatValue));
            C5284b.this.f31395q = AnimationUtils.lerp(this.f31418j, this.f31419k, floatValue);
            C5284b.this.m24149h(AnimationUtils.lerp(this.f31418j, this.f31419k, floatValue), this.f31420l);
            C5284b.this.f31401w.setImageMatrix(this.f31420l);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$e */
    /* loaded from: classes6.dex */
    public class e implements TypeEvaluator<Float> {

        /* renamed from: a */
        public FloatEvaluator f31422a = new FloatEvaluator();

        public e() {
        }

        @Override // android.animation.TypeEvaluator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float evaluate(float f, Float f2, Float f3) {
            float floatValue = this.f31422a.evaluate(f, (Number) f2, (Number) f3).floatValue();
            if (floatValue < 0.1f) {
                floatValue = 0.0f;
            }
            return Float.valueOf(floatValue);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$f */
    /* loaded from: classes6.dex */
    public class f implements ViewTreeObserver.OnPreDrawListener {
        public f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C5284b.this.m24121I();
            return true;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$g */
    /* loaded from: classes6.dex */
    public class g extends m {
        public g() {
            super(C5284b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.C5284b.m
        /* renamed from: a */
        public float mo24174a() {
            return 0.0f;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$h */
    /* loaded from: classes6.dex */
    public class h extends m {
        public h() {
            super(C5284b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.C5284b.m
        /* renamed from: a */
        public float mo24174a() {
            C5284b c5284b = C5284b.this;
            return c5284b.f31386h + c5284b.f31387i;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$i */
    /* loaded from: classes6.dex */
    public class i extends m {
        public i() {
            super(C5284b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.C5284b.m
        /* renamed from: a */
        public float mo24174a() {
            C5284b c5284b = C5284b.this;
            return c5284b.f31386h + c5284b.f31388j;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$j */
    /* loaded from: classes6.dex */
    public interface j {
        /* renamed from: a */
        void mo24098a();

        /* renamed from: b */
        void mo24099b();
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$k */
    /* loaded from: classes6.dex */
    public interface k {
        /* renamed from: a */
        void mo24097a();

        void onShown();
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$l */
    /* loaded from: classes6.dex */
    public class l extends m {
        public l() {
            super(C5284b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.C5284b.m
        /* renamed from: a */
        public float mo24174a() {
            return C5284b.this.f31386h;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.b$m */
    /* loaded from: classes6.dex */
    public abstract class m extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public boolean f31429e;

        /* renamed from: f */
        public float f31430f;

        /* renamed from: g */
        public float f31431g;

        public m() {
        }

        /* renamed from: a */
        public abstract float mo24174a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5284b.this.m24156k0((int) this.f31431g);
            this.f31429e = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            if (!this.f31429e) {
                MaterialShapeDrawable materialShapeDrawable = C5284b.this.f31380b;
                this.f31430f = materialShapeDrawable == null ? 0.0f : materialShapeDrawable.getElevation();
                this.f31431g = mo24174a();
                this.f31429e = true;
            }
            C5284b c5284b = C5284b.this;
            float f = this.f31430f;
            c5284b.m24156k0((int) (f + ((this.f31431g - f) * valueAnimator.getAnimatedFraction())));
        }

        public /* synthetic */ m(C5284b c5284b, a aVar) {
            this();
        }
    }

    public C5284b(FloatingActionButton floatingActionButton, ShadowViewDelegate shadowViewDelegate) {
        this.f31401w = floatingActionButton;
        this.f31402x = shadowViewDelegate;
        StateListAnimator stateListAnimator = new StateListAnimator();
        this.f31390l = stateListAnimator;
        stateListAnimator.addState(f31370W, m24155k(new i()));
        stateListAnimator.addState(f31371X, m24155k(new h()));
        stateListAnimator.addState(f31372Y, m24155k(new h()));
        stateListAnimator.addState(f31373Z, m24155k(new h()));
        stateListAnimator.addState(f31374a0, m24155k(new l()));
        stateListAnimator.addState(f31375b0, m24155k(new g()));
        this.f31394p = floatingActionButton.getRotation();
    }

    /* renamed from: A */
    public boolean m24113A() {
        return this.f31401w.getVisibility() != 0 ? this.f31397s == 2 : this.f31397s != 1;
    }

    /* renamed from: B */
    public void mo24114B() {
        this.f31390l.jumpToCurrentState();
    }

    /* renamed from: C */
    public void m24115C() {
        MaterialShapeDrawable materialShapeDrawable = this.f31380b;
        if (materialShapeDrawable != null) {
            MaterialShapeUtils.setParentAbsoluteElevation(this.f31401w, materialShapeDrawable);
        }
        if (mo24127O()) {
            this.f31401w.getViewTreeObserver().addOnPreDrawListener(m24164r());
        }
    }

    /* renamed from: D */
    public void mo24116D() {
    }

    /* renamed from: E */
    public void m24117E() {
        ViewTreeObserver viewTreeObserver = this.f31401w.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.f31378C;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.f31378C = null;
        }
    }

    /* renamed from: F */
    public void mo24118F(int[] iArr) {
        this.f31390l.setState(iArr);
    }

    /* renamed from: G */
    public void mo24119G(float f2, float f3, float f4) {
        mo24114B();
        m24154j0();
        m24156k0(f2);
    }

    /* renamed from: H */
    public void m24120H(@NonNull Rect rect) {
        Preconditions.checkNotNull(this.f31383e, "Didn't initialize content background");
        if (!mo24142d0()) {
            this.f31402x.setBackgroundDrawable(this.f31383e);
        } else {
            this.f31402x.setBackgroundDrawable(new InsetDrawable(this.f31383e, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    /* renamed from: I */
    public void m24121I() {
        float rotation = this.f31401w.getRotation();
        if (this.f31394p != rotation) {
            this.f31394p = rotation;
            mo24150h0();
        }
    }

    /* renamed from: J */
    public void m24122J() {
        ArrayList<j> arrayList = this.f31400v;
        if (arrayList != null) {
            Iterator<j> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().mo24098a();
            }
        }
    }

    /* renamed from: K */
    public void m24123K() {
        ArrayList<j> arrayList = this.f31400v;
        if (arrayList != null) {
            Iterator<j> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().mo24099b();
            }
        }
    }

    /* renamed from: L */
    public void m24124L(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f31399u;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    /* renamed from: M */
    public void m24125M(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f31398t;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    /* renamed from: N */
    public void m24126N(@NonNull j jVar) {
        ArrayList<j> arrayList = this.f31400v;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(jVar);
    }

    /* renamed from: O */
    public boolean mo24127O() {
        return true;
    }

    /* renamed from: P */
    public void m24128P(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f31380b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintList(colorStateList);
        }
        C14472tt c14472tt = this.f31382d;
        if (c14472tt != null) {
            c14472tt.m57447d(colorStateList);
        }
    }

    /* renamed from: Q */
    public void m24129Q(@Nullable PorterDuff.Mode mode) {
        MaterialShapeDrawable materialShapeDrawable = this.f31380b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintMode(mode);
        }
    }

    /* renamed from: R */
    public final void m24130R(float f2) {
        if (this.f31386h != f2) {
            this.f31386h = f2;
            mo24119G(f2, this.f31387i, this.f31388j);
        }
    }

    /* renamed from: S */
    public void m24131S(boolean z) {
        this.f31384f = z;
    }

    /* renamed from: T */
    public final void m24132T(@Nullable MotionSpec motionSpec) {
        this.f31393o = motionSpec;
    }

    /* renamed from: U */
    public final void m24133U(float f2) {
        if (this.f31387i != f2) {
            this.f31387i = f2;
            mo24119G(this.f31386h, f2, this.f31388j);
        }
    }

    /* renamed from: V */
    public final void m24134V(float f2) {
        this.f31395q = f2;
        Matrix matrix = this.f31377B;
        m24149h(f2, matrix);
        this.f31401w.setImageMatrix(matrix);
    }

    /* renamed from: W */
    public final void m24135W(int i2) {
        if (this.f31396r != i2) {
            this.f31396r = i2;
            m24152i0();
        }
    }

    /* renamed from: X */
    public void m24136X(int i2) {
        this.f31389k = i2;
    }

    /* renamed from: Y */
    public final void m24137Y(float f2) {
        if (this.f31388j != f2) {
            this.f31388j = f2;
            mo24119G(this.f31386h, this.f31387i, f2);
        }
    }

    /* renamed from: Z */
    public void mo24138Z(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f31381c;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, RippleUtils.sanitizeRippleDrawableColor(colorStateList));
        }
    }

    /* renamed from: a0 */
    public void m24139a0(boolean z) {
        this.f31385g = z;
        m24154j0();
    }

    /* renamed from: b0 */
    public final void m24140b0(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f31379a = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.f31380b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        Object obj = this.f31381c;
        if (obj instanceof Shapeable) {
            ((Shapeable) obj).setShapeAppearanceModel(shapeAppearanceModel);
        }
        C14472tt c14472tt = this.f31382d;
        if (c14472tt != null) {
            c14472tt.m57450g(shapeAppearanceModel);
        }
    }

    /* renamed from: c0 */
    public final void m24141c0(@Nullable MotionSpec motionSpec) {
        this.f31392n = motionSpec;
    }

    /* renamed from: d0 */
    public boolean mo24142d0() {
        return true;
    }

    /* renamed from: e */
    public void m24143e(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f31399u == null) {
            this.f31399u = new ArrayList<>();
        }
        this.f31399u.add(animatorListener);
    }

    /* renamed from: e0 */
    public final boolean m24144e0() {
        return ViewCompat.isLaidOut(this.f31401w) && !this.f31401w.isInEditMode();
    }

    /* renamed from: f */
    public void m24145f(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f31398t == null) {
            this.f31398t = new ArrayList<>();
        }
        this.f31398t.add(animatorListener);
    }

    /* renamed from: f0 */
    public final boolean m24146f0() {
        return !this.f31384f || this.f31401w.getSizeDimension() >= this.f31389k;
    }

    /* renamed from: g */
    public void m24147g(@NonNull j jVar) {
        if (this.f31400v == null) {
            this.f31400v = new ArrayList<>();
        }
        this.f31400v.add(jVar);
    }

    /* renamed from: g0 */
    public void m24148g0(@Nullable k kVar, boolean z) {
        if (m24113A()) {
            return;
        }
        Animator animator = this.f31391m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z2 = this.f31392n == null;
        if (!m24144e0()) {
            this.f31401w.internalSetVisibility(0, z);
            this.f31401w.setAlpha(1.0f);
            this.f31401w.setScaleY(1.0f);
            this.f31401w.setScaleX(1.0f);
            m24134V(1.0f);
            if (kVar != null) {
                kVar.onShown();
                return;
            }
            return;
        }
        if (this.f31401w.getVisibility() != 0) {
            this.f31401w.setAlpha(0.0f);
            this.f31401w.setScaleY(z2 ? 0.4f : 0.0f);
            this.f31401w.setScaleX(z2 ? 0.4f : 0.0f);
            m24134V(z2 ? 0.4f : 0.0f);
        }
        MotionSpec motionSpec = this.f31392n;
        AnimatorSet m24151i = motionSpec != null ? m24151i(motionSpec, 1.0f, 1.0f, 1.0f) : m24153j(1.0f, 1.0f, 1.0f, f31366S, f31367T);
        m24151i.addListener(new b(z, kVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f31398t;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m24151i.addListener(it2.next());
            }
        }
        m24151i.start();
    }

    /* renamed from: h */
    public final void m24149h(float f2, @NonNull Matrix matrix) {
        matrix.reset();
        if (this.f31401w.getDrawable() == null || this.f31396r == 0) {
            return;
        }
        RectF rectF = this.f31404z;
        RectF rectF2 = this.f31376A;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i2 = this.f31396r;
        rectF2.set(0.0f, 0.0f, i2, i2);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i3 = this.f31396r;
        matrix.postScale(f2, f2, i3 / 2.0f, i3 / 2.0f);
    }

    /* renamed from: h0 */
    public void mo24150h0() {
        MaterialShapeDrawable materialShapeDrawable = this.f31380b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShadowCompatRotation((int) this.f31394p);
        }
    }

    @NonNull
    /* renamed from: i */
    public final AnimatorSet m24151i(@NonNull MotionSpec motionSpec, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f31401w, (Property<FloatingActionButton, Float>) View.ALPHA, f2);
        motionSpec.getTiming(OpacityBar.f39917J).apply(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f31401w, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        motionSpec.getTiming("scale").apply(ofFloat2);
        m24158l0(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f31401w, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        motionSpec.getTiming("scale").apply(ofFloat3);
        m24158l0(ofFloat3);
        arrayList.add(ofFloat3);
        m24149h(f4, this.f31377B);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f31401w, new ImageMatrixProperty(), new c(), new Matrix(this.f31377B));
        motionSpec.getTiming("iconScale").apply(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: i0 */
    public final void m24152i0() {
        m24134V(this.f31395q);
    }

    /* renamed from: j */
    public final AnimatorSet m24153j(float f2, float f3, float f4, int i2, int i3) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new d(this.f31401w.getAlpha(), f2, this.f31401w.getScaleX(), f3, this.f31401w.getScaleY(), this.f31395q, f4, new Matrix(this.f31377B)));
        arrayList.add(ofFloat);
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        animatorSet.setDuration(MotionUtils.resolveThemeDuration(this.f31401w.getContext(), i2, this.f31401w.getContext().getResources().getInteger(C5139R.integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(MotionUtils.resolveThemeInterpolator(this.f31401w.getContext(), i3, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return animatorSet;
    }

    /* renamed from: j0 */
    public final void m24154j0() {
        Rect rect = this.f31403y;
        mo24165s(rect);
        m24120H(rect);
        this.f31402x.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    @NonNull
    /* renamed from: k */
    public final ValueAnimator m24155k(@NonNull m mVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f31351D);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(mVar);
        valueAnimator.addUpdateListener(mVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: k0 */
    public void m24156k0(float f2) {
        MaterialShapeDrawable materialShapeDrawable = this.f31380b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setElevation(f2);
        }
    }

    /* renamed from: l */
    public MaterialShapeDrawable mo24157l() {
        return new MaterialShapeDrawable((ShapeAppearanceModel) Preconditions.checkNotNull(this.f31379a));
    }

    /* renamed from: l0 */
    public final void m24158l0(ObjectAnimator objectAnimator) {
    }

    @Nullable
    /* renamed from: m */
    public final Drawable m24159m() {
        return this.f31383e;
    }

    /* renamed from: n */
    public float mo24160n() {
        return this.f31386h;
    }

    /* renamed from: o */
    public boolean m24161o() {
        return this.f31384f;
    }

    @Nullable
    /* renamed from: p */
    public final MotionSpec m24162p() {
        return this.f31393o;
    }

    /* renamed from: q */
    public float m24163q() {
        return this.f31387i;
    }

    @NonNull
    /* renamed from: r */
    public final ViewTreeObserver.OnPreDrawListener m24164r() {
        if (this.f31378C == null) {
            this.f31378C = new f();
        }
        return this.f31378C;
    }

    /* renamed from: s */
    public void mo24165s(@NonNull Rect rect) {
        int m24169w = m24169w();
        int max = Math.max(m24169w, (int) Math.ceil(this.f31385g ? mo24160n() + this.f31388j : 0.0f));
        int max2 = Math.max(m24169w, (int) Math.ceil(r1 * 1.5f));
        rect.set(max, max2, max, max2);
    }

    /* renamed from: t */
    public float m24166t() {
        return this.f31388j;
    }

    @Nullable
    /* renamed from: u */
    public final ShapeAppearanceModel m24167u() {
        return this.f31379a;
    }

    @Nullable
    /* renamed from: v */
    public final MotionSpec m24168v() {
        return this.f31392n;
    }

    /* renamed from: w */
    public int m24169w() {
        if (this.f31384f) {
            return Math.max((this.f31389k - this.f31401w.getSizeDimension()) / 2, 0);
        }
        return 0;
    }

    /* renamed from: x */
    public void m24170x(@Nullable k kVar, boolean z) {
        if (m24172z()) {
            return;
        }
        Animator animator = this.f31391m;
        if (animator != null) {
            animator.cancel();
        }
        if (!m24144e0()) {
            this.f31401w.internalSetVisibility(z ? 8 : 4, z);
            if (kVar != null) {
                kVar.mo24097a();
                return;
            }
            return;
        }
        MotionSpec motionSpec = this.f31393o;
        AnimatorSet m24151i = motionSpec != null ? m24151i(motionSpec, 0.0f, 0.0f, 0.0f) : m24153j(0.0f, 0.4f, 0.4f, f31368U, f31369V);
        m24151i.addListener(new a(z, kVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f31399u;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m24151i.addListener(it2.next());
            }
        }
        m24151i.start();
    }

    /* renamed from: y */
    public void mo24171y(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        MaterialShapeDrawable mo24157l = mo24157l();
        this.f31380b = mo24157l;
        mo24157l.setTintList(colorStateList);
        if (mode != null) {
            this.f31380b.setTintMode(mode);
        }
        this.f31380b.setShadowColor(-12303292);
        this.f31380b.initializeElevationOverlay(this.f31401w.getContext());
        RippleDrawableCompat rippleDrawableCompat = new RippleDrawableCompat(this.f31380b.getShapeAppearanceModel());
        rippleDrawableCompat.setTintList(RippleUtils.sanitizeRippleDrawableColor(colorStateList2));
        this.f31381c = rippleDrawableCompat;
        this.f31383e = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f31380b), rippleDrawableCompat});
    }

    /* renamed from: z */
    public boolean m24172z() {
        return this.f31401w.getVisibility() == 0 ? this.f31397s == 1 : this.f31397s != 2;
    }
}
