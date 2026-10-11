package com.onyx.android.sdk.universal.editor.data;

import android.graphics.Matrix;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;", "", "()V", "initialFocusX", "", "getInitialFocusX", "()F", "setInitialFocusX", "(F)V", "initialFocusY", "getInitialFocusY", "setInitialFocusY", "lastScaleFactor", "getLastScaleFactor", "setLastScaleFactor", "lastScalingDisplayMatrix", "Landroid/graphics/Matrix;", "getLastScalingDisplayMatrix", "()Landroid/graphics/Matrix;", "setLastScalingDisplayMatrix", "(Landroid/graphics/Matrix;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PinchZoomDataInfo {
    private float initialFocusX;
    private float initialFocusY;

    @NotNull
    private Matrix lastScalingDisplayMatrix = new Matrix();
    private float lastScaleFactor = 1.0f;

    public final float getInitialFocusX() {
        return this.initialFocusX;
    }

    public final float getInitialFocusY() {
        return this.initialFocusY;
    }

    public final float getLastScaleFactor() {
        return this.lastScaleFactor;
    }

    @NotNull
    public final Matrix getLastScalingDisplayMatrix() {
        return this.lastScalingDisplayMatrix;
    }

    public final void setInitialFocusX(float f) {
        this.initialFocusX = f;
    }

    public final void setInitialFocusY(float f) {
        this.initialFocusY = f;
    }

    public final void setLastScaleFactor(float f) {
        this.lastScaleFactor = f;
    }

    public final void setLastScalingDisplayMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.lastScalingDisplayMatrix = matrix;
    }
}
