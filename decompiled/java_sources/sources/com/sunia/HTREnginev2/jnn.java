package com.sunia.HTREnginev2;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.transition.PathMotion;
import android.transition.PatternPathMotion;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.PathParser;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.transition.platform.MaterialArcMotion;

@RequiresApi(21)
/* loaded from: classes6.dex */
public class jnn {

    /* renamed from: a */
    public static final int f74510a = -1;

    /* renamed from: b */
    @AttrRes
    public static final int f74511b = 0;

    /* renamed from: c */
    public static final int f74512c = 0;

    /* renamed from: d */
    public static final int f74513d = 1;

    /* renamed from: e */
    public static final RectF f74514e = new RectF();

    /* renamed from: com.sunia.HTREnginev2.jnn$a */
    /* loaded from: classes6.dex */
    public class C13941a implements InterfaceC13942b {

        /* renamed from: a */
        public final /* synthetic */ RectF f74515a;

        /* renamed from: b */
        public final /* synthetic */ RectF f74516b;

        /* renamed from: c */
        public final /* synthetic */ float f74517c;

        /* renamed from: d */
        public final /* synthetic */ float f74518d;

        /* renamed from: e */
        public final /* synthetic */ float f74519e;

        public C13941a(RectF rectF, RectF rectF2, float f, float f2, float f3) {
            this.f74515a = rectF;
            this.f74516b = rectF2;
            this.f74517c = f;
            this.f74518d = f2;
            this.f74519e = f3;
        }

        @Override // com.sunia.HTREnginev2.jnn.InterfaceC13942b
        @NonNull
        /* renamed from: a */
        public CornerSize mo55010a(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2) {
            return new AbsoluteCornerSize(jnn.m54997n(cornerSize.getCornerSize(this.f74515a), cornerSize2.getCornerSize(this.f74516b), this.f74517c, this.f74518d, this.f74519e));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.jnn$b */
    /* loaded from: classes6.dex */
    public interface InterfaceC13942b {
        @NonNull
        /* renamed from: a */
        CornerSize mo55010a(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2);
    }

    /* renamed from: b */
    public static float m54985b(@NonNull RectF rectF) {
        return rectF.width() * rectF.height();
    }

    /* renamed from: c */
    public static ShapeAppearanceModel m54986c(ShapeAppearanceModel shapeAppearanceModel, final RectF rectF) {
        return shapeAppearanceModel.withTransformedCornerSizes(new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.sunia.HTREnginev2.hnn
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public final CornerSize apply(CornerSize cornerSize) {
                CornerSize createFromCornerSize;
                createFromCornerSize = RelativeCornerSize.createFromCornerSize(rectF, cornerSize);
                return createFromCornerSize;
            }
        });
    }

    /* renamed from: d */
    public static Shader m54987d(@ColorInt int i) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i, i, Shader.TileMode.CLAMP);
    }

    @NonNull
    /* renamed from: e */
    public static <T> T m54988e(@Nullable T t, @NonNull T t2) {
        return t != null ? t : t2;
    }

    /* renamed from: f */
    public static View m54989f(View view, @IdRes int i) {
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
    public static View m54990g(View view, @IdRes int i) {
        View findViewById = view.findViewById(i);
        return findViewById != null ? findViewById : m54989f(view, i);
    }

    /* renamed from: h */
    public static RectF m54991h(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    /* renamed from: i */
    public static RectF m54992i(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: j */
    public static Rect m54993j(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: k */
    public static boolean m54994k(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return (shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getTopRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomRightCornerSize().getCornerSize(rectF) == 0.0f && shapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(rectF) == 0.0f) ? false : true;
    }

    /* renamed from: m */
    public static float m54996m(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: n */
    public static float m54997n(float f, float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3, @FloatRange(from = 0.0d, m280to = 1.0d) float f4, @FloatRange(from = 0.0d, m280to = 1.0d) float f5) {
        return m54998o(f, f2, f3, f4, f5, false);
    }

    /* renamed from: o */
    public static float m54998o(float f, float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3, @FloatRange(from = 0.0d, m280to = 1.0d) float f4, @FloatRange(from = 0.0d) float f5, boolean z) {
        return (!z || (f5 >= 0.0f && f5 <= 1.0f)) ? f5 < f3 ? f : f5 > f4 ? f2 : m54996m(f, f2, (f5 - f3) / (f4 - f3)) : m54996m(f, f2, f5);
    }

    /* renamed from: p */
    public static int m54999p(int i, int i2, @FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3) {
        return f3 < f ? i : f3 > f2 ? i2 : (int) m54996m(i, i2, (f3 - f) / (f2 - f));
    }

    /* renamed from: q */
    public static ShapeAppearanceModel m55000q(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, @FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, @FloatRange(from = 0.0d, m280to = 1.0d) float f3) {
        return f3 < f ? shapeAppearanceModel : f3 > f2 ? shapeAppearanceModel2 : m55009z(shapeAppearanceModel, shapeAppearanceModel2, rectF, new C13941a(rectF, rectF2, f, f2, f3));
    }

    /* renamed from: r */
    public static void m55001r(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    /* renamed from: s */
    public static boolean m55002s(Transition transition, Context context, @AttrRes int i) {
        int resolveThemeDuration;
        if (i == 0 || transition.getDuration() != -1 || (resolveThemeDuration = MotionUtils.resolveThemeDuration(context, i, -1)) == -1) {
            return false;
        }
        transition.setDuration(resolveThemeDuration);
        return true;
    }

    /* renamed from: t */
    public static boolean m55003t(Transition transition, Context context, @AttrRes int i, TimeInterpolator timeInterpolator) {
        if (i == 0 || transition.getInterpolator() != null) {
            return false;
        }
        transition.setInterpolator(MotionUtils.resolveThemeInterpolator(context, i, timeInterpolator));
        return true;
    }

    /* renamed from: u */
    public static boolean m55004u(Transition transition, Context context, @AttrRes int i) {
        PathMotion m55006w;
        if (i == 0 || (m55006w = m55006w(context, i)) == null) {
            return false;
        }
        transition.setPathMotion(m55006w);
        return true;
    }

    /* renamed from: v */
    public static void m55005v(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }

    @Nullable
    /* renamed from: w */
    public static PathMotion m55006w(Context context, @AttrRes int i) {
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
    public static int m55007x(Canvas canvas, Rect rect, int i) {
        RectF rectF = f74514e;
        rectF.set(rect);
        return canvas.saveLayerAlpha(rectF, i);
    }

    /* renamed from: y */
    public static void m55008y(Canvas canvas, Rect rect, float f, float f2, float f3, int i, CanvasCompat.CanvasOperation canvasOperation) {
        if (i <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(f, f2);
        canvas.scale(f3, f3);
        if (i < 255) {
            m55007x(canvas, rect, i);
        }
        canvasOperation.run(canvas);
        canvas.restoreToCount(save);
    }

    /* renamed from: z */
    public static ShapeAppearanceModel m55009z(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, InterfaceC13942b interfaceC13942b) {
        return (m54994k(shapeAppearanceModel, rectF) ? shapeAppearanceModel : shapeAppearanceModel2).toBuilder().setTopLeftCornerSize(interfaceC13942b.mo55010a(shapeAppearanceModel.getTopLeftCornerSize(), shapeAppearanceModel2.getTopLeftCornerSize())).setTopRightCornerSize(interfaceC13942b.mo55010a(shapeAppearanceModel.getTopRightCornerSize(), shapeAppearanceModel2.getTopRightCornerSize())).setBottomLeftCornerSize(interfaceC13942b.mo55010a(shapeAppearanceModel.getBottomLeftCornerSize(), shapeAppearanceModel2.getBottomLeftCornerSize())).setBottomRightCornerSize(interfaceC13942b.mo55010a(shapeAppearanceModel.getBottomRightCornerSize(), shapeAppearanceModel2.getBottomRightCornerSize())).build();
    }
}
