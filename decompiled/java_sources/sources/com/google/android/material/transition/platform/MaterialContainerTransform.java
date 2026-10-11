package com.google.android.material.transition.platform;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.transition.ArcMotion;
import android.transition.PathMotion;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.sunia.HTREnginev2.ang;
import com.sunia.HTREnginev2.dng;
import com.sunia.HTREnginev2.eng;
import com.sunia.HTREnginev2.fnn;
import com.sunia.HTREnginev2.jnn;
import com.sunia.HTREnginev2.q8g;
import com.sunia.HTREnginev2.t8g;
import com.sunia.HTREnginev2.u8g;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(21)
/* loaded from: classes6.dex */
public final class MaterialContainerTransform extends Transition {
    public static final int FADE_MODE_CROSS = 2;
    public static final int FADE_MODE_IN = 0;
    public static final int FADE_MODE_OUT = 1;
    public static final int FADE_MODE_THROUGH = 3;
    public static final int FIT_MODE_AUTO = 0;
    public static final int FIT_MODE_HEIGHT = 2;
    public static final int FIT_MODE_WIDTH = 1;
    public static final int TRANSITION_DIRECTION_AUTO = 0;
    public static final int TRANSITION_DIRECTION_ENTER = 1;
    public static final int TRANSITION_DIRECTION_RETURN = 2;

    /* renamed from: Z */
    public static final String f33202Z = "MaterialContainerTransform";

    /* renamed from: k0 */
    public static final String f33203k0 = "materialContainerTransition:bounds";

    /* renamed from: q0 */
    public static final String f33204q0 = "materialContainerTransition:shapeAppearance";

    /* renamed from: v0 */
    public static final C5473c f33207v0;

    /* renamed from: x0 */
    public static final C5473c f33209x0;

    /* renamed from: y0 */
    public static final float f33210y0 = -1.0f;

    /* renamed from: J */
    public boolean f33211J;

    /* renamed from: O */
    public float f33212O;

    /* renamed from: Q */
    public float f33213Q;

    /* renamed from: e */
    public boolean f33214e;

    /* renamed from: f */
    public boolean f33215f;

    /* renamed from: g */
    public boolean f33216g;

    /* renamed from: h */
    public boolean f33217h;

    /* renamed from: i */
    @IdRes
    public int f33218i;

    /* renamed from: j */
    @IdRes
    public int f33219j;

    /* renamed from: k */
    @IdRes
    public int f33220k;

    /* renamed from: l */
    @ColorInt
    public int f33221l;

    /* renamed from: m */
    @ColorInt
    public int f33222m;

    /* renamed from: n */
    @ColorInt
    public int f33223n;

    /* renamed from: o */
    @ColorInt
    public int f33224o;

    /* renamed from: p */
    public int f33225p;

    /* renamed from: q */
    public int f33226q;

    /* renamed from: r */
    public int f33227r;

    /* renamed from: s */
    @Nullable
    public View f33228s;

    /* renamed from: t */
    @Nullable
    public View f33229t;

    /* renamed from: u */
    @Nullable
    public ShapeAppearanceModel f33230u;

    /* renamed from: v */
    @Nullable
    public ShapeAppearanceModel f33231v;

    /* renamed from: w */
    @Nullable
    public ProgressThresholds f33232w;

    /* renamed from: x */
    @Nullable
    public ProgressThresholds f33233x;

    /* renamed from: y */
    @Nullable
    public ProgressThresholds f33234y;

    /* renamed from: z */
    @Nullable
    public ProgressThresholds f33235z;

    /* renamed from: t0 */
    public static final String[] f33205t0 = {"materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance"};

    /* renamed from: u0 */
    public static final C5473c f33206u0 = new C5473c(new ProgressThresholds(0.0f, 0.25f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.75f), null);

    /* renamed from: w0 */
    public static final C5473c f33208w0 = new C5473c(new ProgressThresholds(0.1f, 0.4f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 0.9f), null);

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface FitMode {
    }

    /* loaded from: classes6.dex */
    public static class ProgressThresholds {

        /* renamed from: a */
        @FloatRange(from = 0.0d, m280to = 1.0d)
        public final float f33236a;

        /* renamed from: b */
        @FloatRange(from = 0.0d, m280to = 1.0d)
        public final float f33237b;

        public ProgressThresholds(@FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2) {
            this.f33236a = f;
            this.f33237b = f2;
        }

        @FloatRange(from = 0.0d, m280to = 1.0d)
        public float getEnd() {
            return this.f33237b;
        }

        @FloatRange(from = 0.0d, m280to = 1.0d)
        public float getStart() {
            return this.f33236a;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface TransitionDirection {
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransform$a */
    /* loaded from: classes6.dex */
    public class C5471a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ C5474d f33238e;

        public C5471a(C5474d c5474d) {
            this.f33238e = c5474d;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f33238e.m25617o(valueAnimator.getAnimatedFraction());
        }
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransform$b */
    /* loaded from: classes6.dex */
    public class C5472b extends fnn {

        /* renamed from: a */
        public final /* synthetic */ View f33240a;

        /* renamed from: b */
        public final /* synthetic */ C5474d f33241b;

        /* renamed from: c */
        public final /* synthetic */ View f33242c;

        /* renamed from: d */
        public final /* synthetic */ View f33243d;

        public C5472b(View view, C5474d c5474d, View view2, View view3) {
            this.f33240a = view;
            this.f33241b = c5474d;
            this.f33242c = view2;
            this.f33243d = view3;
        }

        @Override // com.sunia.HTREnginev2.fnn, android.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            MaterialContainerTransform.this.removeListener(this);
            if (MaterialContainerTransform.this.f33215f) {
                return;
            }
            this.f33242c.setAlpha(1.0f);
            this.f33243d.setAlpha(1.0f);
            ViewUtils.getOverlay(this.f33240a).remove(this.f33241b);
        }

        @Override // com.sunia.HTREnginev2.fnn, android.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            ViewUtils.getOverlay(this.f33240a).add(this.f33241b);
            this.f33242c.setAlpha(0.0f);
            this.f33243d.setAlpha(0.0f);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransform$c */
    /* loaded from: classes6.dex */
    public static class C5473c {

        /* renamed from: a */
        @NonNull
        public final ProgressThresholds f33245a;

        /* renamed from: b */
        @NonNull
        public final ProgressThresholds f33246b;

        /* renamed from: c */
        @NonNull
        public final ProgressThresholds f33247c;

        /* renamed from: d */
        @NonNull
        public final ProgressThresholds f33248d;

        public /* synthetic */ C5473c(ProgressThresholds progressThresholds, ProgressThresholds progressThresholds2, ProgressThresholds progressThresholds3, ProgressThresholds progressThresholds4, C5471a c5471a) {
            this(progressThresholds, progressThresholds2, progressThresholds3, progressThresholds4);
        }

        public C5473c(@NonNull ProgressThresholds progressThresholds, @NonNull ProgressThresholds progressThresholds2, @NonNull ProgressThresholds progressThresholds3, @NonNull ProgressThresholds progressThresholds4) {
            this.f33245a = progressThresholds;
            this.f33246b = progressThresholds2;
            this.f33247c = progressThresholds3;
            this.f33248d = progressThresholds4;
        }
    }

    /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransform$d */
    /* loaded from: classes6.dex */
    public static final class C5474d extends Drawable {

        /* renamed from: M */
        public static final int f33249M = 754974720;

        /* renamed from: N */
        public static final int f33250N = -7829368;

        /* renamed from: O */
        public static final float f33251O = 0.3f;

        /* renamed from: P */
        public static final float f33252P = 1.5f;

        /* renamed from: A */
        public final C5473c f33253A;

        /* renamed from: B */
        public final q8g f33254B;

        /* renamed from: C */
        public final ang f33255C;

        /* renamed from: D */
        public final boolean f33256D;

        /* renamed from: E */
        public final Paint f33257E;

        /* renamed from: F */
        public final Path f33258F;

        /* renamed from: G */
        public u8g f33259G;

        /* renamed from: H */
        public eng f33260H;

        /* renamed from: I */
        public RectF f33261I;

        /* renamed from: J */
        public float f33262J;

        /* renamed from: K */
        public float f33263K;

        /* renamed from: L */
        public float f33264L;

        /* renamed from: a */
        public final View f33265a;

        /* renamed from: b */
        public final RectF f33266b;

        /* renamed from: c */
        public final ShapeAppearanceModel f33267c;

        /* renamed from: d */
        public final float f33268d;

        /* renamed from: e */
        public final View f33269e;

        /* renamed from: f */
        public final RectF f33270f;

        /* renamed from: g */
        public final ShapeAppearanceModel f33271g;

        /* renamed from: h */
        public final float f33272h;

        /* renamed from: i */
        public final Paint f33273i;

        /* renamed from: j */
        public final Paint f33274j;

        /* renamed from: k */
        public final Paint f33275k;

        /* renamed from: l */
        public final Paint f33276l;

        /* renamed from: m */
        public final Paint f33277m;

        /* renamed from: n */
        public final C5481a f33278n;

        /* renamed from: o */
        public final PathMeasure f33279o;

        /* renamed from: p */
        public final float f33280p;

        /* renamed from: q */
        public final float[] f33281q;

        /* renamed from: r */
        public final boolean f33282r;

        /* renamed from: s */
        public final float f33283s;

        /* renamed from: t */
        public final float f33284t;

        /* renamed from: u */
        public final boolean f33285u;

        /* renamed from: v */
        public final MaterialShapeDrawable f33286v;

        /* renamed from: w */
        public final RectF f33287w;

        /* renamed from: x */
        public final RectF f33288x;

        /* renamed from: y */
        public final RectF f33289y;

        /* renamed from: z */
        public final RectF f33290z;

        /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransform$d$a */
        /* loaded from: classes6.dex */
        public class a implements CanvasCompat.CanvasOperation {
            public a() {
            }

            @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
            public void run(Canvas canvas) {
                C5474d.this.f33265a.draw(canvas);
            }
        }

        /* renamed from: com.google.android.material.transition.platform.MaterialContainerTransform$d$b */
        /* loaded from: classes6.dex */
        public class b implements CanvasCompat.CanvasOperation {
            public b() {
            }

            @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
            public void run(Canvas canvas) {
                C5474d.this.f33269e.draw(canvas);
            }
        }

        public /* synthetic */ C5474d(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, int i, int i2, int i3, int i4, boolean z, boolean z2, q8g q8gVar, ang angVar, C5473c c5473c, boolean z3, C5471a c5471a) {
            this(pathMotion, view, rectF, shapeAppearanceModel, f, view2, rectF2, shapeAppearanceModel2, f2, i, i2, i3, i4, z, z2, q8gVar, angVar, c5473c, z3);
        }

        /* renamed from: d */
        public static float m25606d(RectF rectF, float f) {
            return ((rectF.centerX() / (f / 2.0f)) - 1.0f) * 0.3f;
        }

        /* renamed from: e */
        public static float m25607e(RectF rectF, float f) {
            return (rectF.centerY() / f) * 1.5f;
        }

        /* renamed from: m */
        public static PointF m25608m(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f33277m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f33277m);
            }
            int save = this.f33256D ? canvas.save() : -1;
            if (this.f33285u && this.f33262J > 0.0f) {
                m25611h(canvas);
            }
            this.f33278n.m25647a(canvas);
            m25616n(canvas, this.f33273i);
            if (this.f33259G.f86211c) {
                m25615l(canvas);
                m25614k(canvas);
            } else {
                m25614k(canvas);
                m25615l(canvas);
            }
            if (this.f33256D) {
                canvas.restoreToCount(save);
                m25609f(canvas, this.f33287w, this.f33258F, -65281);
                m25610g(canvas, this.f33288x, -256);
                m25610g(canvas, this.f33287w, -16711936);
                m25610g(canvas, this.f33290z, -16711681);
                m25610g(canvas, this.f33289y, -16776961);
            }
        }

        /* renamed from: f */
        public final void m25609f(Canvas canvas, RectF rectF, Path path, @ColorInt int i) {
            PointF m25608m = m25608m(rectF);
            if (this.f33264L == 0.0f) {
                path.reset();
                path.moveTo(m25608m.x, m25608m.y);
            } else {
                path.lineTo(m25608m.x, m25608m.y);
                this.f33257E.setColor(i);
                canvas.drawPath(path, this.f33257E);
            }
        }

        /* renamed from: g */
        public final void m25610g(Canvas canvas, RectF rectF, @ColorInt int i) {
            this.f33257E.setColor(i);
            canvas.drawRect(rectF, this.f33257E);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        /* renamed from: h */
        public final void m25611h(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f33278n.m25650d(), Region.Op.DIFFERENCE);
            m25613j(canvas);
            canvas.restore();
        }

        /* renamed from: i */
        public final void m25612i(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f33286v;
            RectF rectF = this.f33261I;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f33286v.setElevation(this.f33262J);
            this.f33286v.setShadowVerticalOffset((int) this.f33263K);
            this.f33286v.setShapeAppearanceModel(this.f33278n.m25649c());
            this.f33286v.draw(canvas);
        }

        /* renamed from: j */
        public final void m25613j(Canvas canvas) {
            ShapeAppearanceModel m25649c = this.f33278n.m25649c();
            if (!m25649c.isRoundRect(this.f33261I)) {
                canvas.drawPath(this.f33278n.m25650d(), this.f33276l);
            } else {
                float cornerSize = m25649c.getTopLeftCornerSize().getCornerSize(this.f33261I);
                canvas.drawRoundRect(this.f33261I, cornerSize, cornerSize, this.f33276l);
            }
        }

        /* renamed from: k */
        public final void m25614k(Canvas canvas) {
            m25616n(canvas, this.f33275k);
            Rect bounds = getBounds();
            RectF rectF = this.f33289y;
            jnn.m55008y(canvas, bounds, rectF.left, rectF.top, this.f33260H.f69124b, this.f33259G.f86210b, new b());
        }

        /* renamed from: l */
        public final void m25615l(Canvas canvas) {
            m25616n(canvas, this.f33274j);
            Rect bounds = getBounds();
            RectF rectF = this.f33287w;
            jnn.m55008y(canvas, bounds, rectF.left, rectF.top, this.f33260H.f69123a, this.f33259G.f86209a, new a());
        }

        /* renamed from: n */
        public final void m25616n(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        /* renamed from: o */
        public final void m25617o(float f) {
            if (this.f33264L != f) {
                m25618p(f);
            }
        }

        /* renamed from: p */
        public final void m25618p(float f) {
            float f2;
            float f3;
            this.f33264L = f;
            this.f33277m.setAlpha((int) (this.f33282r ? jnn.m54996m(0.0f, 255.0f, f) : jnn.m54996m(255.0f, 0.0f, f)));
            this.f33279o.getPosTan(this.f33280p * f, this.f33281q, null);
            float[] fArr = this.f33281q;
            float f4 = fArr[0];
            float f5 = fArr[1];
            if (f > 1.0f || f < 0.0f) {
                if (f > 1.0f) {
                    f3 = (f - 1.0f) / 0.00999999f;
                    f2 = 0.99f;
                } else {
                    f2 = 0.01f;
                    f3 = (f / 0.01f) * (-1.0f);
                }
                this.f33279o.getPosTan(this.f33280p * f2, fArr, null);
                float[] fArr2 = this.f33281q;
                f4 += (f4 - fArr2[0]) * f3;
                f5 += (f5 - fArr2[1]) * f3;
            }
            float f6 = f4;
            float f7 = f5;
            eng mo53051a = this.f33255C.mo53051a(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33253A.f33246b.f33236a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33253A.f33246b.f33237b))).floatValue(), this.f33266b.width(), this.f33266b.height(), this.f33270f.width(), this.f33270f.height());
            this.f33260H = mo53051a;
            RectF rectF = this.f33287w;
            float f8 = mo53051a.f69125c;
            rectF.set(f6 - (f8 / 2.0f), f7, (f8 / 2.0f) + f6, mo53051a.f69126d + f7);
            RectF rectF2 = this.f33289y;
            eng engVar = this.f33260H;
            float f9 = engVar.f69127e;
            rectF2.set(f6 - (f9 / 2.0f), f7, f6 + (f9 / 2.0f), engVar.f69128f + f7);
            this.f33288x.set(this.f33287w);
            this.f33290z.set(this.f33289y);
            float floatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33253A.f33247c.f33236a))).floatValue();
            float floatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33253A.f33247c.f33237b))).floatValue();
            boolean mo53053c = this.f33255C.mo53053c(this.f33260H);
            RectF rectF3 = mo53053c ? this.f33288x : this.f33290z;
            float m54997n = jnn.m54997n(0.0f, 1.0f, floatValue, floatValue2, f);
            if (!mo53053c) {
                m54997n = 1.0f - m54997n;
            }
            this.f33255C.mo53052b(rectF3, m54997n, this.f33260H);
            this.f33261I = new RectF(Math.min(this.f33288x.left, this.f33290z.left), Math.min(this.f33288x.top, this.f33290z.top), Math.max(this.f33288x.right, this.f33290z.right), Math.max(this.f33288x.bottom, this.f33290z.bottom));
            this.f33278n.m25648b(f, this.f33267c, this.f33271g, this.f33287w, this.f33288x, this.f33290z, this.f33253A.f33248d);
            this.f33262J = jnn.m54996m(this.f33268d, this.f33272h, f);
            float m25606d = m25606d(this.f33261I, this.f33283s);
            float m25607e = m25607e(this.f33261I, this.f33284t);
            float f10 = this.f33262J;
            float f11 = (int) (m25607e * f10);
            this.f33263K = f11;
            this.f33276l.setShadowLayer(f10, (int) (m25606d * f10), f11, 754974720);
            this.f33259G = this.f33254B.mo56658a(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33253A.f33245a.f33236a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33253A.f33245a.f33237b))).floatValue(), 0.35f);
            if (this.f33274j.getColor() != 0) {
                this.f33274j.setAlpha(this.f33259G.f86209a);
            }
            if (this.f33275k.getColor() != 0) {
                this.f33275k.setAlpha(this.f33259G.f86210b);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }

        public C5474d(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, int i4, boolean z, boolean z2, q8g q8gVar, ang angVar, C5473c c5473c, boolean z3) {
            Paint paint = new Paint();
            this.f33273i = paint;
            Paint paint2 = new Paint();
            this.f33274j = paint2;
            Paint paint3 = new Paint();
            this.f33275k = paint3;
            this.f33276l = new Paint();
            Paint paint4 = new Paint();
            this.f33277m = paint4;
            this.f33278n = new C5481a();
            this.f33281q = r7;
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.f33286v = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.f33257E = paint5;
            this.f33258F = new Path();
            this.f33265a = view;
            this.f33266b = rectF;
            this.f33267c = shapeAppearanceModel;
            this.f33268d = f;
            this.f33269e = view2;
            this.f33270f = rectF2;
            this.f33271g = shapeAppearanceModel2;
            this.f33272h = f2;
            this.f33282r = z;
            this.f33285u = z2;
            this.f33254B = q8gVar;
            this.f33255C = angVar;
            this.f33253A = c5473c;
            this.f33256D = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.f33283s = r12.widthPixels;
            this.f33284t = r12.heightPixels;
            paint.setColor(i);
            paint2.setColor(i2);
            paint3.setColor(i3);
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(0));
            materialShapeDrawable.setShadowCompatibilityMode(2);
            materialShapeDrawable.setShadowBitmapDrawingEnable(false);
            materialShapeDrawable.setShadowColor(-7829368);
            RectF rectF3 = new RectF(rectF);
            this.f33287w = rectF3;
            this.f33288x = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f33289y = rectF4;
            this.f33290z = new RectF(rectF4);
            PointF m25608m = m25608m(rectF);
            PointF m25608m2 = m25608m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(m25608m.x, m25608m.y, m25608m2.x, m25608m2.y), false);
            this.f33279o = pathMeasure;
            this.f33280p = pathMeasure.getLength();
            float[] fArr = {rectF.centerX(), rectF.top};
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(jnn.m54987d(i4));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            m25618p(0.0f);
        }
    }

    static {
        C5471a c5471a = null;
        f33207v0 = new C5473c(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.3f, 0.9f), c5471a);
        f33209x0 = new C5473c(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.2f, 0.9f), c5471a);
    }

    public MaterialContainerTransform() {
        this.f33214e = false;
        this.f33215f = false;
        this.f33216g = false;
        this.f33217h = false;
        this.f33218i = R.id.content;
        this.f33219j = -1;
        this.f33220k = -1;
        this.f33221l = 0;
        this.f33222m = 0;
        this.f33223n = 0;
        this.f33224o = 1375731712;
        this.f33225p = 0;
        this.f33226q = 0;
        this.f33227r = 0;
        this.f33211J = true;
        this.f33212O = -1.0f;
        this.f33213Q = -1.0f;
    }

    /* renamed from: c */
    public static RectF m25587c(View view, @Nullable View view2, float f, float f2) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF m54991h = jnn.m54991h(view2);
        m54991h.offset(f, f2);
        return m54991h;
    }

    /* renamed from: d */
    public static ShapeAppearanceModel m25588d(@NonNull View view, @NonNull RectF rectF, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        return jnn.m54986c(m25591g(view, shapeAppearanceModel), rectF);
    }

    /* renamed from: e */
    public static void m25589e(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (i != -1) {
            transitionValues.view = jnn.m54990g(transitionValues.view, i);
        } else if (view != null) {
            transitionValues.view = view;
        } else if (transitionValues.view.getTag(C5139R.id.mtrl_motion_snapshot_view) instanceof View) {
            View view2 = (View) transitionValues.view.getTag(C5139R.id.mtrl_motion_snapshot_view);
            transitionValues.view.setTag(C5139R.id.mtrl_motion_snapshot_view, null);
            transitionValues.view = view2;
        }
        View view3 = transitionValues.view;
        if (!ViewCompat.isLaidOut(view3) && view3.getWidth() == 0 && view3.getHeight() == 0) {
            return;
        }
        RectF m54992i = view3.getParent() == null ? jnn.m54992i(view3) : jnn.m54991h(view3);
        transitionValues.values.put("materialContainerTransition:bounds", m54992i);
        transitionValues.values.put("materialContainerTransition:shapeAppearance", m25588d(view3, m54992i, shapeAppearanceModel));
    }

    /* renamed from: f */
    public static float m25590f(float f, View view) {
        return f != -1.0f ? f : ViewCompat.getElevation(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public static ShapeAppearanceModel m25591g(@NonNull View view, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel != null) {
            return shapeAppearanceModel;
        }
        if (view.getTag(C5139R.id.mtrl_motion_snapshot_view) instanceof ShapeAppearanceModel) {
            return (ShapeAppearanceModel) view.getTag(C5139R.id.mtrl_motion_snapshot_view);
        }
        Context context = view.getContext();
        int m25592i = m25592i(context);
        return m25592i != -1 ? ShapeAppearanceModel.builder(context, m25592i, 0).build() : view instanceof Shapeable ? ((Shapeable) view).getShapeAppearanceModel() : ShapeAppearanceModel.builder().build();
    }

    @StyleRes
    /* renamed from: i */
    public static int m25592i(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{C5139R.attr.transitionShapeAppearance});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: b */
    public final C5473c m25593b(boolean z) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof MaterialArcMotion)) ? m25594h(z, f33208w0, f33209x0) : m25594h(z, f33206u0, f33207v0);
    }

    @Override // android.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m25589e(transitionValues, this.f33229t, this.f33220k, this.f33231v);
    }

    @Override // android.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m25589e(transitionValues, this.f33228s, this.f33219j, this.f33230u);
    }

    @Override // android.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        View m54989f;
        View view;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get("materialContainerTransition:bounds");
            ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) transitionValues.values.get("materialContainerTransition:shapeAppearance");
            if (rectF != null && shapeAppearanceModel != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get("materialContainerTransition:bounds");
                ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) transitionValues2.values.get("materialContainerTransition:shapeAppearance");
                if (rectF2 == null || shapeAppearanceModel2 == null) {
                    Log.w(f33202Z, "Skipping due to null end bounds. Ensure end view is laid out and measured.");
                    return null;
                }
                View view2 = transitionValues.view;
                View view3 = transitionValues2.view;
                View view4 = view3.getParent() != null ? view3 : view2;
                if (this.f33218i == view4.getId()) {
                    m54989f = (View) view4.getParent();
                    view = view4;
                } else {
                    m54989f = jnn.m54989f(view4, this.f33218i);
                    view = null;
                }
                RectF m54991h = jnn.m54991h(m54989f);
                float f = -m54991h.left;
                float f2 = -m54991h.top;
                RectF m25587c = m25587c(m54989f, view, f, f2);
                rectF.offset(f, f2);
                rectF2.offset(f, f2);
                boolean m25595j = m25595j(rectF, rectF2);
                if (!this.f33217h) {
                    m25596k(view4.getContext(), m25595j);
                }
                C5474d c5474d = new C5474d(getPathMotion(), view2, rectF, shapeAppearanceModel, m25590f(this.f33212O, view2), view3, rectF2, shapeAppearanceModel2, m25590f(this.f33213Q, view3), this.f33221l, this.f33222m, this.f33223n, this.f33224o, m25595j, this.f33211J, t8g.m57309a(this.f33226q, m25595j), dng.m53680a(this.f33227r, m25595j, rectF, rectF2), m25593b(m25595j), this.f33214e, null);
                c5474d.setBounds(Math.round(m25587c.left), Math.round(m25587c.top), Math.round(m25587c.right), Math.round(m25587c.bottom));
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                ofFloat.addUpdateListener(new C5471a(c5474d));
                addListener(new C5472b(m54989f, c5474d, view2, view3));
                return ofFloat;
            }
            Log.w(f33202Z, "Skipping due to null start bounds. Ensure start view is laid out and measured.");
        }
        return null;
    }

    @ColorInt
    public int getContainerColor() {
        return this.f33221l;
    }

    @IdRes
    public int getDrawingViewId() {
        return this.f33218i;
    }

    @ColorInt
    public int getEndContainerColor() {
        return this.f33223n;
    }

    public float getEndElevation() {
        return this.f33213Q;
    }

    @Nullable
    public ShapeAppearanceModel getEndShapeAppearanceModel() {
        return this.f33231v;
    }

    @Nullable
    public View getEndView() {
        return this.f33229t;
    }

    @IdRes
    public int getEndViewId() {
        return this.f33220k;
    }

    public int getFadeMode() {
        return this.f33226q;
    }

    @Nullable
    public ProgressThresholds getFadeProgressThresholds() {
        return this.f33232w;
    }

    public int getFitMode() {
        return this.f33227r;
    }

    @Nullable
    public ProgressThresholds getScaleMaskProgressThresholds() {
        return this.f33234y;
    }

    @Nullable
    public ProgressThresholds getScaleProgressThresholds() {
        return this.f33233x;
    }

    @ColorInt
    public int getScrimColor() {
        return this.f33224o;
    }

    @Nullable
    public ProgressThresholds getShapeMaskProgressThresholds() {
        return this.f33235z;
    }

    @ColorInt
    public int getStartContainerColor() {
        return this.f33222m;
    }

    public float getStartElevation() {
        return this.f33212O;
    }

    @Nullable
    public ShapeAppearanceModel getStartShapeAppearanceModel() {
        return this.f33230u;
    }

    @Nullable
    public View getStartView() {
        return this.f33228s;
    }

    @IdRes
    public int getStartViewId() {
        return this.f33219j;
    }

    public int getTransitionDirection() {
        return this.f33225p;
    }

    @Override // android.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f33205t0;
    }

    /* renamed from: h */
    public final C5473c m25594h(boolean z, C5473c c5473c, C5473c c5473c2) {
        if (!z) {
            c5473c = c5473c2;
        }
        return new C5473c((ProgressThresholds) jnn.m54988e(this.f33232w, c5473c.f33245a), (ProgressThresholds) jnn.m54988e(this.f33233x, c5473c.f33246b), (ProgressThresholds) jnn.m54988e(this.f33234y, c5473c.f33247c), (ProgressThresholds) jnn.m54988e(this.f33235z, c5473c.f33248d), null);
    }

    public boolean isDrawDebugEnabled() {
        return this.f33214e;
    }

    public boolean isElevationShadowEnabled() {
        return this.f33211J;
    }

    public boolean isHoldAtEndEnabled() {
        return this.f33215f;
    }

    /* renamed from: j */
    public final boolean m25595j(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i = this.f33225p;
        if (i == 0) {
            return jnn.m54985b(rectF2) > jnn.m54985b(rectF);
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        throw new IllegalArgumentException("Invalid transition direction: " + this.f33225p);
    }

    /* renamed from: k */
    public final void m25596k(Context context, boolean z) {
        jnn.m55003t(this, context, C5139R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        jnn.m55002s(this, context, z ? C5139R.attr.motionDurationLong2 : C5139R.attr.motionDurationMedium4);
        if (this.f33216g) {
            return;
        }
        jnn.m55004u(this, context, C5139R.attr.motionPath);
    }

    public void setAllContainerColors(@ColorInt int i) {
        this.f33221l = i;
        this.f33222m = i;
        this.f33223n = i;
    }

    public void setContainerColor(@ColorInt int i) {
        this.f33221l = i;
    }

    public void setDrawDebugEnabled(boolean z) {
        this.f33214e = z;
    }

    public void setDrawingViewId(@IdRes int i) {
        this.f33218i = i;
    }

    public void setElevationShadowEnabled(boolean z) {
        this.f33211J = z;
    }

    public void setEndContainerColor(@ColorInt int i) {
        this.f33223n = i;
    }

    public void setEndElevation(float f) {
        this.f33213Q = f;
    }

    public void setEndShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f33231v = shapeAppearanceModel;
    }

    public void setEndView(@Nullable View view) {
        this.f33229t = view;
    }

    public void setEndViewId(@IdRes int i) {
        this.f33220k = i;
    }

    public void setFadeMode(int i) {
        this.f33226q = i;
    }

    public void setFadeProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.f33232w = progressThresholds;
    }

    public void setFitMode(int i) {
        this.f33227r = i;
    }

    public void setHoldAtEndEnabled(boolean z) {
        this.f33215f = z;
    }

    @Override // android.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f33216g = true;
    }

    public void setScaleMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.f33234y = progressThresholds;
    }

    public void setScaleProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.f33233x = progressThresholds;
    }

    public void setScrimColor(@ColorInt int i) {
        this.f33224o = i;
    }

    public void setShapeMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.f33235z = progressThresholds;
    }

    public void setStartContainerColor(@ColorInt int i) {
        this.f33222m = i;
    }

    public void setStartElevation(float f) {
        this.f33212O = f;
    }

    public void setStartShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f33230u = shapeAppearanceModel;
    }

    public void setStartView(@Nullable View view) {
        this.f33228s = view;
    }

    public void setStartViewId(@IdRes int i) {
        this.f33219j = i;
    }

    public void setTransitionDirection(int i) {
        this.f33225p = i;
    }

    public MaterialContainerTransform(@NonNull Context context, boolean z) {
        this.f33214e = false;
        this.f33215f = false;
        this.f33216g = false;
        this.f33217h = false;
        this.f33218i = R.id.content;
        this.f33219j = -1;
        this.f33220k = -1;
        this.f33221l = 0;
        this.f33222m = 0;
        this.f33223n = 0;
        this.f33224o = 1375731712;
        this.f33225p = 0;
        this.f33226q = 0;
        this.f33227r = 0;
        this.f33211J = true;
        this.f33212O = -1.0f;
        this.f33213Q = -1.0f;
        m25596k(context, z);
        this.f33217h = true;
    }
}
