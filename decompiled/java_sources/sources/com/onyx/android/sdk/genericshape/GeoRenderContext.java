package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoRenderContext;", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "(Landroid/graphics/Canvas;)V", "getCanvas", "()Landroid/graphics/Canvas;", "renderMatrix", "Landroid/graphics/Matrix;", "getRenderMatrix", "()Landroid/graphics/Matrix;", "setRenderMatrix", "(Landroid/graphics/Matrix;)V", "shapeMatrix", "getShapeMatrix", "setShapeMatrix", "getMatrix", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeoRenderContext {

    @NotNull
    private final Canvas canvas;

    @Nullable
    private Matrix renderMatrix;

    @Nullable
    private Matrix shapeMatrix;

    public GeoRenderContext(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.canvas = canvas;
    }

    @NotNull
    public final Canvas getCanvas() {
        return this.canvas;
    }

    @NotNull
    public final Matrix getMatrix() {
        Matrix matrix = new Matrix();
        Matrix matrix2 = this.shapeMatrix;
        if (matrix2 != null) {
            matrix.postConcat(matrix2);
        }
        Matrix matrix3 = this.renderMatrix;
        if (matrix3 != null) {
            matrix.postConcat(matrix3);
        }
        return matrix;
    }

    @Nullable
    public final Matrix getRenderMatrix() {
        return this.renderMatrix;
    }

    @Nullable
    public final Matrix getShapeMatrix() {
        return this.shapeMatrix;
    }

    public final void setRenderMatrix(@Nullable Matrix matrix) {
        this.renderMatrix = matrix;
    }

    public final void setShapeMatrix(@Nullable Matrix matrix) {
        this.shapeMatrix = matrix;
    }
}
