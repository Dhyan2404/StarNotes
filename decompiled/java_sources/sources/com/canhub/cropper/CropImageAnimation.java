package com.canhub.cropper;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b*\u0010+J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0001H\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0001H\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0001H\u0016R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010%\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\"R\u0014\u0010'\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010\u001cR\u0014\u0010)\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010\u001c¨\u0006,"}, m61528d2 = {"Lcom/canhub/cropper/CropImageAnimation;", "Landroid/view/animation/Animation;", "Landroid/view/animation/Animation$AnimationListener;", "", "boundPoints", "Landroid/graphics/Matrix;", "imageMatrix", "", "setStartState", "setEndState", "", "interpolatedTime", "Landroid/view/animation/Transformation;", "t", "applyTransformation", GlideExecutor.f14795k, "onAnimationStart", "onAnimationEnd", "onAnimationRepeat", "Landroid/widget/ImageView;", "e", "Landroid/widget/ImageView;", "imageView", "Lcom/canhub/cropper/CropOverlayView;", C6997f.f39671c, "Lcom/canhub/cropper/CropOverlayView;", "cropOverlayView", C6998g.f39679a, "[F", "startBoundPoints", C6999h.f39688c, "endBoundPoints", "Landroid/graphics/RectF;", "i", "Landroid/graphics/RectF;", "startCropWindowRect", "j", "endCropWindowRect", C4921e.f26537n, "startImageMatrix", "l", "endImageMatrix", Constants.CONSTRUCTOR_NAME, "(Landroid/widget/ImageView;Lcom/canhub/cropper/CropOverlayView;)V", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CropImageAnimation extends Animation implements Animation.AnimationListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ImageView imageView;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CropOverlayView cropOverlayView;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final float[] startBoundPoints;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final float[] endBoundPoints;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final RectF startCropWindowRect;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final RectF endCropWindowRect;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final float[] startImageMatrix;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final float[] endImageMatrix;

    public CropImageAnimation(@NotNull ImageView imageView, @NotNull CropOverlayView cropOverlayView) {
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        Intrinsics.checkNotNullParameter(cropOverlayView, "cropOverlayView");
        this.imageView = imageView;
        this.cropOverlayView = cropOverlayView;
        this.startBoundPoints = new float[8];
        this.endBoundPoints = new float[8];
        this.startCropWindowRect = new RectF();
        this.endCropWindowRect = new RectF();
        this.startImageMatrix = new float[9];
        this.endImageMatrix = new float[9];
        setDuration(300L);
        setFillAfter(true);
        setInterpolator(new AccelerateDecelerateInterpolator());
        setAnimationListener(this);
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float interpolatedTime, @NotNull Transformation t) {
        Intrinsics.checkNotNullParameter(t, "t");
        RectF rectF = new RectF();
        RectF rectF2 = this.startCropWindowRect;
        float f = rectF2.left;
        RectF rectF3 = this.endCropWindowRect;
        rectF.left = f + ((rectF3.left - f) * interpolatedTime);
        float f2 = rectF2.top;
        rectF.top = f2 + ((rectF3.top - f2) * interpolatedTime);
        float f3 = rectF2.right;
        rectF.right = f3 + ((rectF3.right - f3) * interpolatedTime);
        float f4 = rectF2.bottom;
        rectF.bottom = f4 + ((rectF3.bottom - f4) * interpolatedTime);
        float[] fArr = new float[8];
        for (int i = 0; i < 8; i++) {
            float f5 = this.startBoundPoints[i];
            fArr[i] = f5 + ((this.endBoundPoints[i] - f5) * interpolatedTime);
        }
        CropOverlayView cropOverlayView = this.cropOverlayView;
        cropOverlayView.setCropWindowRect(rectF);
        cropOverlayView.setBounds(fArr, this.imageView.getWidth(), this.imageView.getHeight());
        cropOverlayView.invalidate();
        float[] fArr2 = new float[9];
        for (int i2 = 0; i2 < 9; i2++) {
            float f6 = this.startImageMatrix[i2];
            fArr2[i2] = f6 + ((this.endImageMatrix[i2] - f6) * interpolatedTime);
        }
        ImageView imageView = this.imageView;
        imageView.getImageMatrix().setValues(fArr2);
        imageView.invalidate();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(@NotNull Animation animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        this.imageView.clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(@NotNull Animation animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(@NotNull Animation animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
    }

    public final void setEndState(@NotNull float[] boundPoints, @NotNull Matrix imageMatrix) {
        Intrinsics.checkNotNullParameter(boundPoints, "boundPoints");
        Intrinsics.checkNotNullParameter(imageMatrix, "imageMatrix");
        System.arraycopy(boundPoints, 0, this.endBoundPoints, 0, 8);
        this.endCropWindowRect.set(this.cropOverlayView.getCropWindowRect());
        imageMatrix.getValues(this.endImageMatrix);
    }

    public final void setStartState(@NotNull float[] boundPoints, @NotNull Matrix imageMatrix) {
        Intrinsics.checkNotNullParameter(boundPoints, "boundPoints");
        Intrinsics.checkNotNullParameter(imageMatrix, "imageMatrix");
        reset();
        System.arraycopy(boundPoints, 0, this.startBoundPoints, 0, 8);
        this.startCropWindowRect.set(this.cropOverlayView.getCropWindowRect());
        imageMatrix.getValues(this.startImageMatrix);
    }
}
