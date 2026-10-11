package com.sunia.HTREnginev2;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.PathParser;
import androidx.transition.PathMotion;
import androidx.transition.PatternPathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.transition.MaterialArcMotion;

/* loaded from: classes6.dex */
public class knn {

    /* renamed from: a */
    public static final int f75639a = -1;

    /* renamed from: b */
    @AttrRes
    public static final int f75640b = 0;

    /* renamed from: c */
    public static final int f75641c = 0;

    /* renamed from: d */
    public static final int f75642d = 1;

    /* renamed from: e */
    public static final RectF f75643e = new RectF();

    /* renamed from: com.sunia.HTREnginev2.knn$a */
    /* loaded from: classes6.dex */
    public class C14003a implements InterfaceC14004b {

        /* renamed from: a */
        public final /* synthetic */ RectF f75644a;

        /* renamed from: b */
        public final /* synthetic */ RectF f75645b;

        /* renamed from: c */
        public final /* synthetic */ float f75646c;

        /* renamed from: d */
        public final /* synthetic */ float f75647d;

        /* renamed from: e */
        public final /* synthetic */ float f75648e;

        public C14003a(RectF rectF, RectF rectF2, float f, float f2, float f3) {
            this.f75644a = rectF;
            this.f75645b = rectF2;
            this.f75646c = f;
            this.f75647d = f2;
            this.f75648e = f3;
        }

        @Override // com.sunia.HTREnginev2.knn.InterfaceC14004b
        @NonNull
        /* renamed from: a */
        public CornerSize mo55280a(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2) {
            return new AbsoluteCornerSize(knn.m55267n(cornerSize.getCornerSize(this.f75644a), cornerSize2.getCornerSize(this.f75645b), this.f75646c, this.f75647d, this.f75648e));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.knn$b */
    /* loaded from: classes6.dex */
    public interface InterfaceC14004b {
        @NonNull
        /* renamed from: a */
        CornerSize mo55280a(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2);
    }

    /* renamed from: b */
    public static float m55255b(@NonNull RectF rectF) {
        return rectF.width() * rectF.height();
    }

    /* renamed from: c */
    public static ShapeAppearanceModel m55256c(ShapeAppearanceModel shapeAppearanceModel, final RectF rectF) {
        return shapeAppearanceModel.withTransformedCornerSizes(new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.sunia.HTREnginev2.inn
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public final CornerSize apply(CornerSize cornerSize) {
                CornerSize createFromCornerSize;
                createFromCornerSize = RelativeCornerSize.createFromCornerSize(rectF, cornerSize);
                return createFromCornerSize;
            }
        });
    }

    /* renamed from: d */
    public static Shader m55257d(@ColorInt int i) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i, i, Shader.TileMode.CLAMP);
    }

    @NonNull
    /* renamed from: e */
    public static <T> T m55258e(@Nullable T t, @NonNull T t2) {
        return t != null ? t : t2;
    }

    /* renamed from: f */
    public static View m55259f(View view, @IdRes int i) {
        String resourceName = view.getResources().getResourceName(i);
        while (view != null) {
            if (view.getId() != i) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    /* renamed from: g */
    public static View m55260g(View view, @IdRes int i) {
        View findViewById = view.findViewById(i);
        return findViewById != null ? findViewById : m55259f(view, i);
    }

    /* renamed from: h */
    public static RectF m55261h(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    /* renamed from: i */
    public static RectF m55262i(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: j */
    public static Rect m55263j(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: k */
    public static boolean m55264k(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return (shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getTopRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(rectF) == 0.0f) ? false : true;
    }

    /* renamed from: m */
    public static float m55266m(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: n */
    public static float m55267n(float f, float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3, @FloatRange(from = 0.0d, m280to = 1.0d) float f4, @FloatRange(from = 0.0d, m280to = 1.0d) float f5) {
        return m55268o(f, f2, f3, f4, f5, false);
    }

    /* renamed from: o */
    public static float m55268o(float f, float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3, @FloatRange(from = 0.0d, m280to = 1.0d) float f4, @FloatRange(from = 0.0d) float f5, boolean z) {
        return (!z || (f5 >= 0.0f && f5 <= 1.0f)) ? f5 < f3 ? f : f5 > f4 ? f2 : m55266m(f, f2, (f5 - f3) / (f4 - f3)) : m55266m(f, f2, f5);
    }

    /* renamed from: p */
    public static int m55269p(int i, int i2, @FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3) {
        return f3 < f ? i : f3 > f2 ? i2 : (int) m55266m(i, i2, (f3 - f) / (f2 - f));
    }

    /* renamed from: q */
    public static ShapeAppearanceModel m55270q(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, @FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3) {
        return f3 < f ? shapeAppearanceModel : f3 > f2 ? shapeAppearanceModel2 : m55279z(shapeAppearanceModel, shapeAppearanceModel2, rectF, new C14003a(rectF, rectF2, f, f2, f3));
    }

    /* renamed from: r */
    public static void m55271r(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    /* renamed from: s */
    public static boolean m55272s(Transition transition, Context context, @AttrRes int i) {
        int resolveThemeDuration;
        if (i == 0 || transition.getDuration() != -1 || (resolveThemeDuration = MotionUtils.resolveThemeDuration(context, i, -1)) == -1) {
            return false;
        }
        transition.setDuration(resolveThemeDuration);
        return true;
    }

    /* renamed from: t */
    public static boolean m55273t(Transition transition, Context context, @AttrRes int i, TimeInterpolator timeInterpolator) {
        if (i == 0 || transition.getInterpolator() != null) {
            return false;
        }
        transition.setInterpolator(MotionUtils.resolveThemeInterpolator(context, i, timeInterpolator));
        return true;
    }

    /* renamed from: u */
    public static boolean m55274u(Transition transition, Context context, @AttrRes int i) {
        PathMotion m55276w;
        if (i == 0 || (m55276w = m55276w(context, i)) == null) {
            return false;
        }
        transition.setPathMotion(m55276w);
        return true;
    }

    /* renamed from: v */
    public static void m55275v(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }

    @Nullable
    /* renamed from: w */
    public static PathMotion m55276w(Context context, @AttrRes int i) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.type;
        if (i2 != 16) {
            if (i2 == 3) {
                return new PatternPathMotion(PathParser.createPathFromPathData(String.valueOf(typedValue.string)));
            }
            throw new IllegalArgumentException("Motion path theme attribute must either be an enum value or path data string");
        }
        int i3 = typedValue.data;
        if (i3 == 0) {
            return null;
        }
        if (i3 == 1) {
            return new MaterialArcMotion();
        }
        throw new IllegalArgumentException("Invalid motion path type: " + i3);
    }

    /* renamed from: x */
    public static int m55277x(Canvas canvas, Rect rect, int i) {
        RectF rectF = f75643e;
        rectF.set(rect);
        return canvas.saveLayerAlpha(rectF, i);
    }

    /* renamed from: y */
    public static void m55278y(Canvas canvas, Rect rect, float f, float f2, float f3, int i, CanvasCompat.CanvasOperation canvasOperation) {
        if (i <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        if (i < 255) {
            m55277x(canvas, rect, i);
        }
        canvasOperation.run(canvas);
        canvas.restoreToCount(save);
    }

    /* renamed from: z */
    public static ShapeAppearanceModel m55279z(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, InterfaceC14004b interfaceC14004b) {
        return (m55264k(shapeAppearanceModel, rectF) ? shapeAppearanceModel : shapeAppearanceModel2).toBuilder().setTopLeftCornerSize(interfaceC14004b.mo55280a(shapeAppearanceModel.getTopLeftCornerSize(), shapeAppearanceModel2.getTopLeftCornerSize())).setTopRightCornerSize(interfaceC14004b.mo55280a(shapeAppearanceModel.getTopRightCornerSize(), shapeAppearanceModel2.getTopRightCornerSize())).setBottomLeftCornerSize(interfaceC14004b.mo55280a(shapeAppearanceModel.getBottomLeftCornerSize(), shapeAppearanceModel2.getBottomLeftCornerSize())).setBottomRightCornerSize(interfaceC14004b.mo55280a(shapeAppearanceModel.getBottomRightCornerSize(), shapeAppearanceModel2.getBottomRightCornerSize())).build();
    }
}
