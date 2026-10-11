package com.google.android.material.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public class ImageMatrixProperty extends Property<ImageView, Matrix> {

    /* renamed from: a */
    public final Matrix f30177a;

    public ImageMatrixProperty() {
        super(Matrix.class, "imageMatrixProperty");
        this.f30177a = new Matrix();
    }

    @Override // android.util.Property
    @NonNull
    public Matrix get(@NonNull ImageView imageView) {
        this.f30177a.set(imageView.getImageMatrix());
        return this.f30177a;
    }

    @Override // android.util.Property
    public void set(@NonNull ImageView imageView, @NonNull Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
