package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TypeEvaluator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import com.sunia.HTREnginev2.w4o;

/* renamed from: androidx.transition.d */
/* loaded from: classes3.dex */
public class C1514d {

    /* renamed from: a */
    public static final int f10791a = 1048576;

    /* renamed from: b */
    public static final boolean f10792b = true;

    @RequiresApi(28)
    /* renamed from: androidx.transition.d$a */
    /* loaded from: classes3.dex */
    public static class a {
        @DoNotInline
        /* renamed from: a */
        public static Bitmap m6667a(Picture picture) {
            return Bitmap.createBitmap(picture);
        }
    }

    /* renamed from: androidx.transition.d$b */
    /* loaded from: classes3.dex */
    public static class b implements TypeEvaluator<Matrix> {

        /* renamed from: a */
        public final float[] f10793a = new float[9];

        /* renamed from: b */
        public final float[] f10794b = new float[9];

        /* renamed from: c */
        public final Matrix f10795c = new Matrix();

        @Override // android.animation.TypeEvaluator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            matrix.getValues(this.f10793a);
            matrix2.getValues(this.f10794b);
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f10794b;
                float f2 = fArr[i];
                float f3 = this.f10793a[i];
                fArr[i] = f3 + ((f2 - f3) * f);
            }
            this.f10795c.setValues(this.f10794b);
            return this.f10795c;
        }
    }

    /* renamed from: a */
    public static View m6664a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        w4o.m57935h(view, matrix);
        w4o.m57936i(viewGroup, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int round = Math.round(rectF.left);
        int round2 = Math.round(rectF.top);
        int round3 = Math.round(rectF.right);
        int round4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap m6665b = m6665b(view, matrix, rectF, viewGroup);
        if (m6665b != null) {
            imageView.setImageBitmap(m6665b);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(round3 - round, 1073741824), View.MeasureSpec.makeMeasureSpec(round4 - round2, 1073741824));
        imageView.layout(round, round2, round3, round4);
        return imageView;
    }

    /* renamed from: b */
    public static Bitmap m6665b(View view, Matrix matrix, RectF rectF, ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        boolean z = !view.isAttachedToWindow();
        int i = 0;
        boolean z2 = viewGroup != null && viewGroup.isAttachedToWindow();
        Bitmap bitmap = null;
        if (!z) {
            viewGroup2 = null;
        } else {
            if (!z2) {
                return null;
            }
            viewGroup2 = (ViewGroup) view.getParent();
            i = viewGroup2.indexOfChild(view);
            viewGroup.getOverlay().add(view);
        }
        int round = Math.round(rectF.width());
        int round2 = Math.round(rectF.height());
        if (round > 0 && round2 > 0) {
            float min = Math.min(1.0f, 1048576.0f / (round * round2));
            int round3 = Math.round(round * min);
            int round4 = Math.round(round2 * min);
            matrix.postTranslate(-rectF.left, -rectF.top);
            matrix.postScale(min, min);
            if (f10792b) {
                Picture picture = new Picture();
                Canvas beginRecording = picture.beginRecording(round3, round4);
                beginRecording.concat(matrix);
                view.draw(beginRecording);
                picture.endRecording();
                bitmap = a.m6667a(picture);
            } else {
                bitmap = Bitmap.createBitmap(round3, round4, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap);
                canvas.concat(matrix);
                view.draw(canvas);
            }
        }
        if (z) {
            viewGroup.getOverlay().remove(view);
            viewGroup2.addView(view, i);
        }
        return bitmap;
    }

    /* renamed from: c */
    public static Animator m6666c(Animator animator, Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator, animator2);
        return animatorSet;
    }
}
