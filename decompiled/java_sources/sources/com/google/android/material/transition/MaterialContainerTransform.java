package com.google.android.material.transition;

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
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.transition.ArcMotion;
import androidx.transition.PathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.sunia.HTREnginev2.bng;
import com.sunia.HTREnginev2.cng;
import com.sunia.HTREnginev2.fng;
import com.sunia.HTREnginev2.gnn;
import com.sunia.HTREnginev2.knn;
import com.sunia.HTREnginev2.r8g;
import com.sunia.HTREnginev2.s8g;
import com.sunia.HTREnginev2.v8g;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

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

    /* renamed from: p1 */
    public static final String f33055p1 = "MaterialContainerTransform";

    /* renamed from: q1 */
    public static final String f33056q1 = "materialContainerTransition:bounds";

    /* renamed from: r1 */
    public static final String f33057r1 = "materialContainerTransition:shapeAppearance";

    /* renamed from: u1 */
    public static final C5461c f33060u1;

    /* renamed from: w1 */
    public static final C5461c f33062w1;

    /* renamed from: x1 */
    public static final float f33063x1 = -1.0f;

    /* renamed from: Q0 */
    public boolean f33064Q0;

    /* renamed from: R0 */
    public boolean f33065R0;

    /* renamed from: S0 */
    public boolean f33066S0;

    /* renamed from: T0 */
    public boolean f33067T0;

    /* renamed from: U0 */
    @IdRes
    public int f33068U0;

    /* renamed from: V0 */
    @IdRes
    public int f33069V0;

    /* renamed from: W0 */
    @IdRes
    public int f33070W0;

    /* renamed from: X0 */
    @ColorInt
    public int f33071X0;

    /* renamed from: Y0 */
    @ColorInt
    public int f33072Y0;

    /* renamed from: Z0 */
    @ColorInt
    public int f33073Z0;

    /* renamed from: a1 */
    @ColorInt
    public int f33074a1;

    /* renamed from: b1 */
    public int f33075b1;

    /* renamed from: c1 */
    public int f33076c1;

    /* renamed from: d1 */
    public int f33077d1;

    /* renamed from: e1 */
    @Nullable
    public View f33078e1;

    /* renamed from: f1 */
    @Nullable
    public View f33079f1;

    /* renamed from: g1 */
    @Nullable
    public ShapeAppearanceModel f33080g1;

    /* renamed from: h1 */
    @Nullable
    public ShapeAppearanceModel f33081h1;

    /* renamed from: i1 */
    @Nullable
    public ProgressThresholds f33082i1;

    /* renamed from: j1 */
    @Nullable
    public ProgressThresholds f33083j1;

    /* renamed from: k1 */
    @Nullable
    public ProgressThresholds f33084k1;

    /* renamed from: l1 */
    @Nullable
    public ProgressThresholds f33085l1;

    /* renamed from: m1 */
    public boolean f33086m1;

    /* renamed from: n1 */
    public float f33087n1;

    /* renamed from: o1 */
    public float f33088o1;

    /* renamed from: s1 */
    public static final String[] f33058s1 = {"materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance"};

    /* renamed from: t1 */
    public static final C5461c f33059t1 = new C5461c(new ProgressThresholds(0.0f, 0.25f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.75f), null);

    /* renamed from: v1 */
    public static final C5461c f33061v1 = new C5461c(new ProgressThresholds(0.1f, 0.4f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 0.9f), null);

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
        public final float f33089a;

        /* renamed from: b */
        @FloatRange(from = 0.0d, m280to = 1.0d)
        public final float f33090b;

        public ProgressThresholds(@FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2) {
            this.f33089a = f;
            this.f33090b = f2;
        }

        @FloatRange(from = 0.0d, m280to = 1.0d)
        public float getEnd() {
            return this.f33090b;
        }

        @FloatRange(from = 0.0d, m280to = 1.0d)
        public float getStart() {
            return this.f33089a;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface TransitionDirection {
    }

    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$a */
    /* loaded from: classes6.dex */
    public class C5459a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ C5462d f33091e;

        public C5459a(C5462d c5462d) {
            this.f33091e = c5462d;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f33091e.m25559o(valueAnimator.getAnimatedFraction());
        }
    }

    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$b */
    /* loaded from: classes6.dex */
    public class C5460b extends gnn {

        /* renamed from: e */
        public final /* synthetic */ View f33093e;

        /* renamed from: f */
        public final /* synthetic */ C5462d f33094f;

        /* renamed from: g */
        public final /* synthetic */ View f33095g;

        /* renamed from: h */
        public final /* synthetic */ View f33096h;

        public C5460b(View view, C5462d c5462d, View view2, View view3) {
            this.f33093e = view;
            this.f33094f = c5462d;
            this.f33095g = view2;
            this.f33096h = view3;
        }

        @Override // com.sunia.HTREnginev2.gnn, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            MaterialContainerTransform.this.removeListener(this);
            if (MaterialContainerTransform.this.f33065R0) {
                return;
            }
            this.f33095g.setAlpha(1.0f);
            this.f33096h.setAlpha(1.0f);
            ViewUtils.getOverlay(this.f33093e).remove(this.f33094f);
        }

        @Override // com.sunia.HTREnginev2.gnn, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            ViewUtils.getOverlay(this.f33093e).add(this.f33094f);
            this.f33095g.setAlpha(0.0f);
            this.f33096h.setAlpha(0.0f);
        }
    }

    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$c */
    /* loaded from: classes6.dex */
    public static class C5461c {

        /* renamed from: a */
        @NonNull
        public final ProgressThresholds f33098a;

        /* renamed from: b */
        @NonNull
        public final ProgressThresholds f33099b;

        /* renamed from: c */
        @NonNull
        public final ProgressThresholds f33100c;

        /* renamed from: d */
        @NonNull
        public final ProgressThresholds f33101d;

        public /* synthetic */ C5461c(ProgressThresholds progressThresholds, ProgressThresholds progressThresholds2, ProgressThresholds progressThresholds3, ProgressThresholds progressThresholds4, C5459a c5459a) {
            this(progressThresholds, progressThresholds2, progressThresholds3, progressThresholds4);
        }

        public C5461c(@NonNull ProgressThresholds progressThresholds, @NonNull ProgressThresholds progressThresholds2, @NonNull ProgressThresholds progressThresholds3, @NonNull ProgressThresholds progressThresholds4) {
            this.f33098a = progressThresholds;
            this.f33099b = progressThresholds2;
            this.f33100c = progressThresholds3;
            this.f33101d = progressThresholds4;
        }
    }

    /* renamed from: com.google.android.material.transition.MaterialContainerTransform$d */
    /* loaded from: classes6.dex */
    public static final class C5462d extends Drawable {

        /* renamed from: M */
        public static final int f33102M = 754974720;

        /* renamed from: N */
        public static final int f33103N = -7829368;

        /* renamed from: O */
        public static final float f33104O = 0.3f;

        /* renamed from: P */
        public static final float f33105P = 1.5f;

        /* renamed from: A */
        public final C5461c f33106A;

        /* renamed from: B */
        public final r8g f33107B;

        /* renamed from: C */
        public final bng f33108C;

        /* renamed from: D */
        public final boolean f33109D;

        /* renamed from: E */
        public final Paint f33110E;

        /* renamed from: F */
        public final Path f33111F;

        /* renamed from: G */
        public v8g f33112G;

        /* renamed from: H */
        public fng f33113H;

        /* renamed from: I */
        public RectF f33114I;

        /* renamed from: J */
        public float f33115J;

        /* renamed from: K */
        public float f33116K;

        /* renamed from: L */
        public float f33117L;

        /* renamed from: a */
        public final View f33118a;

        /* renamed from: b */
        public final RectF f33119b;

        /* renamed from: c */
        public final ShapeAppearanceModel f33120c;

        /* renamed from: d */
        public final float f33121d;

        /* renamed from: e */
        public final View f33122e;

        /* renamed from: f */
        public final RectF f33123f;

        /* renamed from: g */
        public final ShapeAppearanceModel f33124g;

        /* renamed from: h */
        public final float f33125h;

        /* renamed from: i */
        public final Paint f33126i;

        /* renamed from: j */
        public final Paint f33127j;

        /* renamed from: k */
        public final Paint f33128k;

        /* renamed from: l */
        public final Paint f33129l;

        /* renamed from: m */
        public final Paint f33130m;

        /* renamed from: n */
        public final C5466a f33131n;

        /* renamed from: o */
        public final PathMeasure f33132o;

        /* renamed from: p */
        public final float f33133p;

        /* renamed from: q */
        public final float[] f33134q;

        /* renamed from: r */
        public final boolean f33135r;

        /* renamed from: s */
        public final float f33136s;

        /* renamed from: t */
        public final float f33137t;

        /* renamed from: u */
        public final boolean f33138u;

        /* renamed from: v */
        public final MaterialShapeDrawable f33139v;

        /* renamed from: w */
        public final RectF f33140w;

        /* renamed from: x */
        public final RectF f33141x;

        /* renamed from: y */
        public final RectF f33142y;

        /* renamed from: z */
        public final RectF f33143z;

        /* renamed from: com.google.android.material.transition.MaterialContainerTransform$d$a */
        /* loaded from: classes6.dex */
        public class a implements CanvasCompat.CanvasOperation {
            public a() {
            }

            @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
            public void run(Canvas canvas) {
                C5462d.this.f33118a.draw(canvas);
            }
        }

        /* renamed from: com.google.android.material.transition.MaterialContainerTransform$d$b */
        /* loaded from: classes6.dex */
        public class b implements CanvasCompat.CanvasOperation {
            public b() {
            }

            @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
            public void run(Canvas canvas) {
                C5462d.this.f33122e.draw(canvas);
            }
        }

        public /* synthetic */ C5462d(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, int i, int i2, int i3, int i4, boolean z, boolean z2, r8g r8gVar, bng bngVar, C5461c c5461c, boolean z3, C5459a c5459a) {
            this(pathMotion, view, rectF, shapeAppearanceModel, f, view2, rectF2, shapeAppearanceModel2, f2, i, i2, i3, i4, z, z2, r8gVar, bngVar, c5461c, z3);
        }

        /* renamed from: d */
        public static float m25548d(RectF rectF, float f) {
            return ((rectF.centerX() / (f / 2.0f)) - 1.0f) * 0.3f;
        }

        /* renamed from: e */
        public static float m25549e(RectF rectF, float f) {
            return (rectF.centerY() / f) * 1.5f;
        }

        /* renamed from: m */
        public static PointF m25550m(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f33130m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f33130m);
            }
            int save = this.f33109D ? canvas.save() : -1;
            if (this.f33138u && this.f33115J > 0.0f) {
                m25553h(canvas);
            }
            this.f33131n.m25579a(canvas);
            m25558n(canvas, this.f33126i);
            if (this.f33112G.f87252c) {
                m25557l(canvas);
                m25556k(canvas);
            } else {
                m25556k(canvas);
                m25557l(canvas);
            }
            if (this.f33109D) {
                canvas.restoreToCount(save);
                m25551f(canvas, this.f33140w, this.f33111F, -65281);
                m25552g(canvas, this.f33141x, -256);
                m25552g(canvas, this.f33140w, -16711936);
                m25552g(canvas, this.f33143z, -16711681);
                m25552g(canvas, this.f33142y, -16776961);
            }
        }

        /* renamed from: f */
        public final void m25551f(Canvas canvas, RectF rectF, Path path, @ColorInt int i) {
            PointF m25550m = m25550m(rectF);
            if (this.f33117L == 0.0f) {
                path.reset();
                path.moveTo(m25550m.x, m25550m.y);
            } else {
                path.lineTo(m25550m.x, m25550m.y);
                this.f33110E.setColor(i);
                canvas.drawPath(path, this.f33110E);
            }
        }

        /* renamed from: g */
        public final void m25552g(Canvas canvas, RectF rectF, @ColorInt int i) {
            this.f33110E.setColor(i);
            canvas.drawRect(rectF, this.f33110E);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        /* renamed from: h */
        public final void m25553h(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f33131n.m25582d(), Region.Op.DIFFERENCE);
            m25555j(canvas);
            canvas.restore();
        }

        /* renamed from: i */
        public final void m25554i(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f33139v;
            RectF rectF = this.f33114I;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f33139v.setElevation(this.f33115J);
            this.f33139v.setShadowVerticalOffset((int) this.f33116K);
            this.f33139v.setShapeAppearanceModel(this.f33131n.m25581c());
            this.f33139v.draw(canvas);
        }

        /* renamed from: j */
        public final void m25555j(Canvas canvas) {
            ShapeAppearanceModel m25581c = this.f33131n.m25581c();
            if (!m25581c.isRoundRect(this.f33114I)) {
                canvas.drawPath(this.f33131n.m25582d(), this.f33129l);
            } else {
                float cornerSize = m25581c.getTopLeftCornerSize().getCornerSize(this.f33114I);
                canvas.drawRoundRect(this.f33114I, cornerSize, cornerSize, this.f33129l);
            }
        }

        /* renamed from: k */
        public final void m25556k(Canvas canvas) {
            m25558n(canvas, this.f33128k);
            Rect bounds = getBounds();
            RectF rectF = this.f33142y;
            knn.m55278y(canvas, bounds, rectF.left, rectF.top, this.f33113H.f70188b, this.f33112G.f87251b, new b());
        }

        /* renamed from: l */
        public final void m25557l(Canvas canvas) {
            m25558n(canvas, this.f33127j);
            Rect bounds = getBounds();
            RectF rectF = this.f33140w;
            knn.m55278y(canvas, bounds, rectF.left, rectF.top, this.f33113H.f70187a, this.f33112G.f87250a, new a());
        }

        /* renamed from: n */
        public final void m25558n(Canvas canvas, Paint paint) {
            if (paint.getColor() == 0 || paint.getAlpha() <= 0) {
                return;
            }
            canvas.drawRect(getBounds(), paint);
        }

        /* renamed from: o */
        public final void m25559o(float f) {
            if (this.f33117L != f) {
                m25560p(f);
            }
        }

        /* renamed from: p */
        public final void m25560p(float f) {
            float f2;
            float f3;
            this.f33117L = f;
            this.f33130m.setAlpha((int) (this.f33135r ? knn.m55266m(0.0f, 255.0f, f) : knn.m55266m(255.0f, 0.0f, f)));
            this.f33132o.getPosTan(this.f33133p * f, this.f33134q, null);
            float[] fArr = this.f33134q;
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
                this.f33132o.getPosTan(this.f33133p * f2, fArr, null);
                float[] fArr2 = this.f33134q;
                f4 += (f4 - fArr2[0]) * f3;
                f5 += (f5 - fArr2[1]) * f3;
            }
            float f6 = f4;
            float f7 = f5;
            fng mo53284a = this.f33108C.mo53284a(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33106A.f33099b.f33089a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33106A.f33099b.f33090b))).floatValue(), this.f33119b.width(), this.f33119b.height(), this.f33123f.width(), this.f33123f.height());
            this.f33113H = mo53284a;
            RectF rectF = this.f33140w;
            float f8 = mo53284a.f70189c;
            rectF.set(f6 - (f8 / 2.0f), f7, (f8 / 2.0f) + f6, mo53284a.f70190d + f7);
            RectF rectF2 = this.f33142y;
            fng fngVar = this.f33113H;
            float f9 = fngVar.f70191e;
            rectF2.set(f6 - (f9 / 2.0f), f7, f6 + (f9 / 2.0f), fngVar.f70192f + f7);
            this.f33141x.set(this.f33140w);
            this.f33143z.set(this.f33142y);
            float floatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33106A.f33100c.f33089a))).floatValue();
            float floatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33106A.f33100c.f33090b))).floatValue();
            boolean mo53285b = this.f33108C.mo53285b(this.f33113H);
            RectF rectF3 = mo53285b ? this.f33141x : this.f33143z;
            float m55267n = knn.m55267n(0.0f, 1.0f, floatValue, floatValue2, f);
            if (!mo53285b) {
                m55267n = 1.0f - m55267n;
            }
            this.f33108C.mo53286c(rectF3, m55267n, this.f33113H);
            this.f33114I = new RectF(Math.min(this.f33141x.left, this.f33143z.left), Math.min(this.f33141x.top, this.f33143z.top), Math.max(this.f33141x.right, this.f33143z.right), Math.max(this.f33141x.bottom, this.f33143z.bottom));
            this.f33131n.m25580b(f, this.f33120c, this.f33124g, this.f33140w, this.f33141x, this.f33143z, this.f33106A.f33101d);
            this.f33115J = knn.m55266m(this.f33121d, this.f33125h, f);
            float m25548d = m25548d(this.f33114I, this.f33136s);
            float m25549e = m25549e(this.f33114I, this.f33137t);
            float f10 = this.f33115J;
            float f11 = (int) (m25549e * f10);
            this.f33116K = f11;
            this.f33129l.setShadowLayer(f10, (int) (m25548d * f10), f11, 754974720);
            this.f33112G = this.f33107B.mo56932a(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33106A.f33098a.f33089a))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.f33106A.f33098a.f33090b))).floatValue(), 0.35f);
            if (this.f33127j.getColor() != 0) {
                this.f33127j.setAlpha(this.f33112G.f87250a);
            }
            if (this.f33128k.getColor() != 0) {
                this.f33128k.setAlpha(this.f33112G.f87251b);
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

        public C5462d(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, int i4, boolean z, boolean z2, r8g r8gVar, bng bngVar, C5461c c5461c, boolean z3) {
            Paint paint = new Paint();
            this.f33126i = paint;
            Paint paint2 = new Paint();
            this.f33127j = paint2;
            Paint paint3 = new Paint();
            this.f33128k = paint3;
            this.f33129l = new Paint();
            Paint paint4 = new Paint();
            this.f33130m = paint4;
            this.f33131n = new C5466a();
            this.f33134q = r7;
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.f33139v = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.f33110E = paint5;
            this.f33111F = new Path();
            this.f33118a = view;
            this.f33119b = rectF;
            this.f33120c = shapeAppearanceModel;
            this.f33121d = f;
            this.f33122e = view2;
            this.f33123f = rectF2;
            this.f33124g = shapeAppearanceModel2;
            this.f33125h = f2;
            this.f33135r = z;
            this.f33138u = z2;
            this.f33107B = r8gVar;
            this.f33108C = bngVar;
            this.f33106A = c5461c;
            this.f33109D = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.f33136s = r12.widthPixels;
            this.f33137t = r12.heightPixels;
            paint.setColor(i);
            paint2.setColor(i2);
            paint3.setColor(i3);
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(0));
            materialShapeDrawable.setShadowCompatibilityMode(2);
            materialShapeDrawable.setShadowBitmapDrawingEnable(false);
            materialShapeDrawable.setShadowColor(-7829368);
            RectF rectF3 = new RectF(rectF);
            this.f33140w = rectF3;
            this.f33141x = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.f33142y = rectF4;
            this.f33143z = new RectF(rectF4);
            PointF m25550m = m25550m(rectF);
            PointF m25550m2 = m25550m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(m25550m.x, m25550m.y, m25550m2.x, m25550m2.y), false);
            this.f33132o = pathMeasure;
            this.f33133p = pathMeasure.getLength();
            float[] fArr = {rectF.centerX(), rectF.top};
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(knn.m55257d(i4));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            m25560p(0.0f);
        }
    }

    static {
        C5459a c5459a = null;
        f33060u1 = new C5461c(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.3f, 0.9f), c5459a);
        f33062w1 = new C5461c(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.2f, 0.9f), c5459a);
    }

    public MaterialContainerTransform() {
        this.f33064Q0 = false;
        this.f33065R0 = false;
        this.f33066S0 = false;
        this.f33067T0 = false;
        this.f33068U0 = R.id.content;
        this.f33069V0 = -1;
        this.f33070W0 = -1;
        this.f33071X0 = 0;
        this.f33072Y0 = 0;
        this.f33073Z0 = 0;
        this.f33074a1 = 1375731712;
        this.f33075b1 = 0;
        this.f33076c1 = 0;
        this.f33077d1 = 0;
        this.f33086m1 = true;
        this.f33087n1 = -1.0f;
        this.f33088o1 = -1.0f;
    }

    /* renamed from: N */
    public static RectF m25529N(View view, @Nullable View view2, float f, float f2) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF m55261h = knn.m55261h(view2);
        m55261h.offset(f, f2);
        return m55261h;
    }

    /* renamed from: O */
    public static ShapeAppearanceModel m25530O(@NonNull View view, @NonNull RectF rectF, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        return knn.m55256c(m25533R(view, shapeAppearanceModel), rectF);
    }

    /* renamed from: P */
    public static void m25531P(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (i != -1) {
            transitionValues.view = knn.m55260g(transitionValues.view, i);
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
        RectF m55262i = view3.getParent() == null ? knn.m55262i(view3) : knn.m55261h(view3);
        transitionValues.values.put("materialContainerTransition:bounds", m55262i);
        transitionValues.values.put("materialContainerTransition:shapeAppearance", m25530O(view3, m55262i, shapeAppearanceModel));
    }

    /* renamed from: Q */
    public static float m25532Q(float f, View view) {
        return f != -1.0f ? f : ViewCompat.getElevation(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: R */
    public static ShapeAppearanceModel m25533R(@NonNull View view, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel != null) {
            return shapeAppearanceModel;
        }
        if (view.getTag(C5139R.id.mtrl_motion_snapshot_view) instanceof ShapeAppearanceModel) {
            return (ShapeAppearanceModel) view.getTag(C5139R.id.mtrl_motion_snapshot_view);
        }
        Context context = view.getContext();
        int m25534T = m25534T(context);
        return m25534T != -1 ? ShapeAppearanceModel.builder(context, m25534T, 0).build() : view instanceof Shapeable ? ((Shapeable) view).getShapeAppearanceModel() : ShapeAppearanceModel.builder().build();
    }

    @StyleRes
    /* renamed from: T */
    public static int m25534T(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{C5139R.attr.transitionShapeAppearance});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: M */
    public final C5461c m25535M(boolean z) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof MaterialArcMotion)) ? m25536S(z, f33061v1, f33062w1) : m25536S(z, f33059t1, f33060u1);
    }

    /* renamed from: S */
    public final C5461c m25536S(boolean z, C5461c c5461c, C5461c c5461c2) {
        if (!z) {
            c5461c = c5461c2;
        }
        return new C5461c((ProgressThresholds) knn.m55258e(this.f33082i1, c5461c.f33098a), (ProgressThresholds) knn.m55258e(this.f33083j1, c5461c.f33099b), (ProgressThresholds) knn.m55258e(this.f33084k1, c5461c.f33100c), (ProgressThresholds) knn.m55258e(this.f33085l1, c5461c.f33101d), null);
    }

    /* renamed from: U */
    public final boolean m25537U(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i = this.f33075b1;
        if (i == 0) {
            return knn.m55255b(rectF2) > knn.m55255b(rectF);
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        throw new IllegalArgumentException("Invalid transition direction: " + this.f33075b1);
    }

    /* renamed from: V */
    public final void m25538V(Context context, boolean z) {
        knn.m55273t(this, context, C5139R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        knn.m55272s(this, context, z ? C5139R.attr.motionDurationLong2 : C5139R.attr.motionDurationMedium4);
        if (this.f33066S0) {
            return;
        }
        knn.m55274u(this, context, C5139R.attr.motionPath);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m25531P(transitionValues, this.f33079f1, this.f33070W0, this.f33081h1);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m25531P(transitionValues, this.f33078e1, this.f33069V0, this.f33080g1);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        View m55259f;
        View view;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get("materialContainerTransition:bounds");
            ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) transitionValues.values.get("materialContainerTransition:shapeAppearance");
            if (rectF != null && shapeAppearanceModel != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get("materialContainerTransition:bounds");
                ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) transitionValues2.values.get("materialContainerTransition:shapeAppearance");
                if (rectF2 == null || shapeAppearanceModel2 == null) {
                    Log.w(f33055p1, "Skipping due to null end bounds. Ensure end view is laid out and measured.");
                    return null;
                }
                View view2 = transitionValues.view;
                View view3 = transitionValues2.view;
                View view4 = view3.getParent() != null ? view3 : view2;
                if (this.f33068U0 == view4.getId()) {
                    m55259f = (View) view4.getParent();
                    view = view4;
                } else {
                    m55259f = knn.m55259f(view4, this.f33068U0);
                    view = null;
                }
                RectF m55261h = knn.m55261h(m55259f);
                float f = -m55261h.left;
                float f2 = -m55261h.top;
                RectF m25529N = m25529N(m55259f, view, f, f2);
                rectF.offset(f, f2);
                rectF2.offset(f, f2);
                boolean m25537U = m25537U(rectF, rectF2);
                if (!this.f33067T0) {
                    m25538V(view4.getContext(), m25537U);
                }
                C5462d c5462d = new C5462d(getPathMotion(), view2, rectF, shapeAppearanceModel, m25532Q(this.f33087n1, view2), view3, rectF2, shapeAppearanceModel2, m25532Q(this.f33088o1, view3), this.f33071X0, this.f33072Y0, this.f33073Z0, this.f33074a1, m25537U, this.f33086m1, s8g.m57137a(this.f33076c1, m25537U), cng.m53478a(this.f33077d1, m25537U, rectF, rectF2), m25535M(m25537U), this.f33064Q0, null);
                c5462d.setBounds(Math.round(m25529N.left), Math.round(m25529N.top), Math.round(m25529N.right), Math.round(m25529N.bottom));
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                ofFloat.addUpdateListener(new C5459a(c5462d));
                addListener(new C5460b(m55259f, c5462d, view2, view3));
                return ofFloat;
            }
            Log.w(f33055p1, "Skipping due to null start bounds. Ensure start view is laid out and measured.");
        }
        return null;
    }

    @ColorInt
    public int getContainerColor() {
        return this.f33071X0;
    }

    @IdRes
    public int getDrawingViewId() {
        return this.f33068U0;
    }

    @ColorInt
    public int getEndContainerColor() {
        return this.f33073Z0;
    }

    public float getEndElevation() {
        return this.f33088o1;
    }

    @Nullable
    public ShapeAppearanceModel getEndShapeAppearanceModel() {
        return this.f33081h1;
    }

    @Nullable
    public View getEndView() {
        return this.f33079f1;
    }

    @IdRes
    public int getEndViewId() {
        return this.f33070W0;
    }

    public int getFadeMode() {
        return this.f33076c1;
    }

    @Nullable
    public ProgressThresholds getFadeProgressThresholds() {
        return this.f33082i1;
    }

    public int getFitMode() {
        return this.f33077d1;
    }

    @Nullable
    public ProgressThresholds getScaleMaskProgressThresholds() {
        return this.f33084k1;
    }

    @Nullable
    public ProgressThresholds getScaleProgressThresholds() {
        return this.f33083j1;
    }

    @ColorInt
    public int getScrimColor() {
        return this.f33074a1;
    }

    @Nullable
    public ProgressThresholds getShapeMaskProgressThresholds() {
        return this.f33085l1;
    }

    @ColorInt
    public int getStartContainerColor() {
        return this.f33072Y0;
    }

    public float getStartElevation() {
        return this.f33087n1;
    }

    @Nullable
    public ShapeAppearanceModel getStartShapeAppearanceModel() {
        return this.f33080g1;
    }

    @Nullable
    public View getStartView() {
        return this.f33078e1;
    }

    @IdRes
    public int getStartViewId() {
        return this.f33069V0;
    }

    public int getTransitionDirection() {
        return this.f33075b1;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f33058s1;
    }

    public boolean isDrawDebugEnabled() {
        return this.f33064Q0;
    }

    public boolean isElevationShadowEnabled() {
        return this.f33086m1;
    }

    public boolean isHoldAtEndEnabled() {
        return this.f33065R0;
    }

    public void setAllContainerColors(@ColorInt int i) {
        this.f33071X0 = i;
        this.f33072Y0 = i;
        this.f33073Z0 = i;
    }

    public void setContainerColor(@ColorInt int i) {
        this.f33071X0 = i;
    }

    public void setDrawDebugEnabled(boolean z) {
        this.f33064Q0 = z;
    }

    public void setDrawingViewId(@IdRes int i) {
        this.f33068U0 = i;
    }

    public void setElevationShadowEnabled(boolean z) {
        this.f33086m1 = z;
    }

    public void setEndContainerColor(@ColorInt int i) {
        this.f33073Z0 = i;
    }

    public void setEndElevation(float f) {
        this.f33088o1 = f;
    }

    public void setEndShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f33081h1 = shapeAppearanceModel;
    }

    public void setEndView(@Nullable View view) {
        this.f33079f1 = view;
    }

    public void setEndViewId(@IdRes int i) {
        this.f33070W0 = i;
    }

    public void setFadeMode(int i) {
        this.f33076c1 = i;
    }

    public void setFadeProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.f33082i1 = progressThresholds;
    }

    public void setFitMode(int i) {
        this.f33077d1 = i;
    }

    public void setHoldAtEndEnabled(boolean z) {
        this.f33065R0 = z;
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f33066S0 = true;
    }

    public void setScaleMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.f33084k1 = progressThresholds;
    }

    public void setScaleProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.f33083j1 = progressThresholds;
    }

    public void setScrimColor(@ColorInt int i) {
        this.f33074a1 = i;
    }

    public void setShapeMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.f33085l1 = progressThresholds;
    }

    public void setStartContainerColor(@ColorInt int i) {
        this.f33072Y0 = i;
    }

    public void setStartElevation(float f) {
        this.f33087n1 = f;
    }

    public void setStartShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f33080g1 = shapeAppearanceModel;
    }

    public void setStartView(@Nullable View view) {
        this.f33078e1 = view;
    }

    public void setStartViewId(@IdRes int i) {
        this.f33069V0 = i;
    }

    public void setTransitionDirection(int i) {
        this.f33075b1 = i;
    }

    public MaterialContainerTransform(@NonNull Context context, boolean z) {
        this.f33064Q0 = false;
        this.f33065R0 = false;
        this.f33066S0 = false;
        this.f33067T0 = false;
        this.f33068U0 = R.id.content;
        this.f33069V0 = -1;
        this.f33070W0 = -1;
        this.f33071X0 = 0;
        this.f33072Y0 = 0;
        this.f33073Z0 = 0;
        this.f33074a1 = 1375731712;
        this.f33075b1 = 0;
        this.f33076c1 = 0;
        this.f33077d1 = 0;
        this.f33086m1 = true;
        this.f33087n1 = -1.0f;
        this.f33088o1 = -1.0f;
        m25538V(context, z);
        this.f33067T0 = true;
    }
}
