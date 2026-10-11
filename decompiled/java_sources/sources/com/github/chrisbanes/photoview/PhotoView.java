package com.github.chrisbanes.photoview;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;

/* loaded from: classes4.dex */
public class PhotoView extends ImageView {

    /* renamed from: e */
    public PhotoViewAttacher f21387e;

    public PhotoView(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final void m17325a() {
        this.f21387e = new PhotoViewAttacher(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
    }

    public PhotoViewAttacher getAttacher() {
        return this.f21387e;
    }

    public void getDisplayMatrix(Matrix matrix) {
        this.f21387e.getDisplayMatrix(matrix);
    }

    public RectF getDisplayRect() {
        return this.f21387e.getDisplayRect();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f21387e.getImageMatrix();
    }

    public float getMaximumScale() {
        return this.f21387e.getMaximumScale();
    }

    public float getMediumScale() {
        return this.f21387e.getMediumScale();
    }

    public float getMinimumScale() {
        return this.f21387e.getMinimumScale();
    }

    public float getScale() {
        return this.f21387e.getScale();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f21387e.getScaleType();
    }

    public boolean isZoomEnabled() {
        return this.f21387e.isZoomEnabled();
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.f21387e.setAllowParentInterceptOnEdge(z);
    }

    public boolean setDisplayMatrix(Matrix matrix) {
        return this.f21387e.setDisplayMatrix(matrix);
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (frame) {
            this.f21387e.update();
        }
        return frame;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        PhotoViewAttacher photoViewAttacher = this.f21387e;
        if (photoViewAttacher != null) {
            photoViewAttacher.update();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        PhotoViewAttacher photoViewAttacher = this.f21387e;
        if (photoViewAttacher != null) {
            photoViewAttacher.update();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        PhotoViewAttacher photoViewAttacher = this.f21387e;
        if (photoViewAttacher != null) {
            photoViewAttacher.update();
        }
    }

    public void setMaximumScale(float f) {
        this.f21387e.setMaximumScale(f);
    }

    public void setMediumScale(float f) {
        this.f21387e.setMediumScale(f);
    }

    public void setMinimumScale(float f) {
        this.f21387e.setMinimumScale(f);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f21387e.setOnClickListener(onClickListener);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f21387e.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f21387e.setOnLongClickListener(onLongClickListener);
    }

    public void setOnMatrixChangeListener(OnMatrixChangedListener onMatrixChangedListener) {
        this.f21387e.setOnMatrixChangeListener(onMatrixChangedListener);
    }

    public void setOnOutsidePhotoTapListener(OnOutsidePhotoTapListener onOutsidePhotoTapListener) {
        this.f21387e.setOnOutsidePhotoTapListener(onOutsidePhotoTapListener);
    }

    public void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.f21387e.setOnPhotoTapListener(onPhotoTapListener);
    }

    public void setOnScaleChangeListener(OnScaleChangedListener onScaleChangedListener) {
        this.f21387e.setOnScaleChangeListener(onScaleChangedListener);
    }

    public void setOnSingleFlingListener(OnSingleFlingListener onSingleFlingListener) {
        this.f21387e.setOnSingleFlingListener(onSingleFlingListener);
    }

    public void setRotationBy(float f) {
        this.f21387e.setRotationBy(f);
    }

    public void setRotationTo(float f) {
        this.f21387e.setRotationTo(f);
    }

    public void setScale(float f) {
        this.f21387e.setScale(f);
    }

    public void setScaleLevels(float f, float f2, float f3) {
        this.f21387e.setScaleLevels(f, f2, f3);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        PhotoViewAttacher photoViewAttacher = this.f21387e;
        if (photoViewAttacher != null) {
            photoViewAttacher.setScaleType(scaleType);
        }
    }

    public void setZoomTransitionDuration(int i) {
        this.f21387e.setZoomTransitionDuration(i);
    }

    public void setZoomable(boolean z) {
        this.f21387e.setZoomable(z);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setScale(float f, boolean z) {
        this.f21387e.setScale(f, z);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m17325a();
    }

    public void setScale(float f, float f2, float f3, boolean z) {
        this.f21387e.setScale(f, f2, f3, z);
    }

    @TargetApi(21)
    public PhotoView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m17325a();
    }
}
