package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.C1514d;
import androidx.transition.Transition;
import com.sunia.HTREnginev2.jhi;
import com.sunia.HTREnginev2.pgj;
import java.util.Map;

/* loaded from: classes3.dex */
public class ChangeImageTransform extends Transition {

    /* renamed from: Q0 */
    public static final String f10524Q0 = "android:changeImageTransform:matrix";

    /* renamed from: R0 */
    public static final String f10525R0 = "android:changeImageTransform:bounds";

    /* renamed from: S0 */
    public static final String[] f10526S0 = {f10524Q0, f10525R0};

    /* renamed from: T0 */
    public static final TypeEvaluator<Matrix> f10527T0 = new C1470a();

    /* renamed from: U0 */
    public static final Property<ImageView, Matrix> f10528U0 = new C1471b(Matrix.class, "animatedTransform");

    /* renamed from: androidx.transition.ChangeImageTransform$a */
    /* loaded from: classes3.dex */
    public class C1470a implements TypeEvaluator<Matrix> {
        @Override // android.animation.TypeEvaluator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$b */
    /* loaded from: classes3.dex */
    public class C1471b extends Property<ImageView, Matrix> {
        public C1471b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Matrix get(ImageView imageView) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(ImageView imageView, Matrix matrix) {
            jhi.m54916a(imageView, matrix);
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$c */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C1472c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10529a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f10529a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10529a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$d */
    /* loaded from: classes3.dex */
    public static class C1473d extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: e */
        public final ImageView f10530e;

        /* renamed from: f */
        public final Matrix f10531f;

        /* renamed from: g */
        public final Matrix f10532g;

        /* renamed from: h */
        public boolean f10533h = true;

        public C1473d(ImageView imageView, Matrix matrix, Matrix matrix2) {
            this.f10530e = imageView;
            this.f10531f = matrix;
            this.f10532g = matrix2;
        }

        /* renamed from: a */
        public final void m6534a() {
            Matrix matrix = (Matrix) this.f10530e.getTag(C1486R.id.transition_image_transform);
            if (matrix != null) {
                jhi.m54916a(this.f10530e, matrix);
                this.f10530e.setTag(C1486R.id.transition_image_transform, null);
            }
        }

        /* renamed from: b */
        public final void m6535b(Matrix matrix) {
            this.f10530e.setTag(C1486R.id.transition_image_transform, matrix);
            jhi.m54916a(this.f10530e, this.f10532g);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator, boolean z) {
            this.f10533h = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            m6535b((Matrix) ((ObjectAnimator) animator).getAnimatedValue());
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            m6534a();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@NonNull Animator animator, boolean z) {
            this.f10533h = false;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            if (this.f10533h) {
                m6535b(this.f10531f);
            }
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            m6534a();
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f10533h = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f10533h = false;
        }
    }

    public ChangeImageTransform() {
    }

    /* renamed from: M */
    public static Matrix m6525M(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        float width = imageView.getWidth();
        float f = intrinsicWidth;
        int intrinsicHeight = drawable.getIntrinsicHeight();
        float height = imageView.getHeight();
        float f2 = intrinsicHeight;
        float max = Math.max(width / f, height / f2);
        int round = Math.round((width - (f * max)) / 2.0f);
        int round2 = Math.round((height - (f2 * max)) / 2.0f);
        Matrix matrix = new Matrix();
        matrix.postScale(max, max);
        matrix.postTranslate(round, round2);
        return matrix;
    }

    @NonNull
    /* renamed from: N */
    public static Matrix m6526N(@NonNull ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            return new Matrix(imageView.getImageMatrix());
        }
        int i = C1472c.f10529a[imageView.getScaleType().ordinal()];
        return i != 1 ? i != 2 ? new Matrix(imageView.getImageMatrix()) : m6525M(imageView) : m6527Q(imageView);
    }

    /* renamed from: Q */
    public static Matrix m6527Q(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        Matrix matrix = new Matrix();
        matrix.postScale(imageView.getWidth() / drawable.getIntrinsicWidth(), imageView.getHeight() / drawable.getIntrinsicHeight());
        return matrix;
    }

    /* renamed from: L */
    public final void m6528L(TransitionValues transitionValues, boolean z) {
        View view = transitionValues.view;
        if ((view instanceof ImageView) && view.getVisibility() == 0) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() == null) {
                return;
            }
            Map<String, Object> map = transitionValues.values;
            map.put(f10525R0, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            Matrix matrix = z ? (Matrix) imageView.getTag(C1486R.id.transition_image_transform) : null;
            if (matrix == null) {
                matrix = m6526N(imageView);
            }
            map.put(f10524Q0, matrix);
        }
    }

    /* renamed from: O */
    public final ObjectAnimator m6529O(ImageView imageView, Matrix matrix, Matrix matrix2) {
        return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) f10528U0, (TypeEvaluator) new C1514d.b(), (Object[]) new Matrix[]{matrix, matrix2});
    }

    @NonNull
    /* renamed from: P */
    public final ObjectAnimator m6530P(@NonNull ImageView imageView) {
        Property<ImageView, Matrix> property = f10528U0;
        TypeEvaluator<Matrix> typeEvaluator = f10527T0;
        Matrix matrix = pgj.f80772a;
        return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) property, (TypeEvaluator) typeEvaluator, (Object[]) new Matrix[]{matrix, matrix});
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m6528L(transitionValues, false);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m6528L(transitionValues, true);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues != null && transitionValues2 != null) {
            Rect rect = (Rect) transitionValues.values.get(f10525R0);
            Rect rect2 = (Rect) transitionValues2.values.get(f10525R0);
            if (rect != null && rect2 != null) {
                Matrix matrix = (Matrix) transitionValues.values.get(f10524Q0);
                Matrix matrix2 = (Matrix) transitionValues2.values.get(f10524Q0);
                boolean z = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
                if (rect.equals(rect2) && z) {
                    return null;
                }
                ImageView imageView = (ImageView) transitionValues2.view;
                Drawable drawable = imageView.getDrawable();
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                    return m6530P(imageView);
                }
                if (matrix == null) {
                    matrix = pgj.f80772a;
                }
                if (matrix2 == null) {
                    matrix2 = pgj.f80772a;
                }
                f10528U0.set(imageView, matrix);
                ObjectAnimator m6529O = m6529O(imageView, matrix, matrix2);
                C1473d c1473d = new C1473d(imageView, matrix, matrix2);
                m6529O.addListener(c1473d);
                m6529O.addPauseListener(c1473d);
                addListener(c1473d);
                return m6529O;
            }
        }
        return null;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public String[] getTransitionProperties() {
        return f10526S0;
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    public ChangeImageTransform(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
