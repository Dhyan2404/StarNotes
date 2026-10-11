package com.onyx.android.sdk.universal.editor.data;

import android.graphics.Matrix;
import android.view.ScaleGestureDetector;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000e¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;", "", "()V", "action", "", "getAction", "()I", "setAction", "(I)V", "displayScale", "", "getDisplayScale", "()F", "setDisplayScale", "(F)V", "focusX", "getFocusX", "setFocusX", "focusY", "getFocusY", "setFocusY", "matrix", "Landroid/graphics/Matrix;", "getMatrix", "()Landroid/graphics/Matrix;", "setMatrix", "(Landroid/graphics/Matrix;)V", "scaleFactor", "getScaleFactor", "setScaleFactor", "updateArgsByDetector", "", "detector", "Landroid/view/ScaleGestureDetector;", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ScalingArgs {
    public static final int ACTION_SCALE_BEGIN = 0;
    public static final int ACTION_SCALE_END = 2;
    public static final int ACTION_SCALING = 1;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int action;
    private float displayScale;
    private float focusX;
    private float focusY;

    @NotNull
    private Matrix matrix = new Matrix();
    private float scaleFactor;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs$Companion;", "", "()V", "ACTION_SCALE_BEGIN", "", "ACTION_SCALE_END", "ACTION_SCALING", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;", "detector", "Landroid/view/ScaleGestureDetector;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ScalingArgs create(@NotNull ScaleGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
            ScalingArgs scalingArgs = new ScalingArgs();
            scalingArgs.updateArgsByDetector(detector);
            return scalingArgs;
        }

        private Companion() {
        }
    }

    public final int getAction() {
        return this.action;
    }

    public final float getDisplayScale() {
        return this.displayScale;
    }

    public final float getFocusX() {
        return this.focusX;
    }

    public final float getFocusY() {
        return this.focusY;
    }

    @NotNull
    public final Matrix getMatrix() {
        return this.matrix;
    }

    public final float getScaleFactor() {
        return this.scaleFactor;
    }

    public final void setAction(int i) {
        this.action = i;
    }

    public final void setDisplayScale(float f) {
        this.displayScale = f;
    }

    public final void setFocusX(float f) {
        this.focusX = f;
    }

    public final void setFocusY(float f) {
        this.focusY = f;
    }

    public final void setMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.matrix = matrix;
    }

    public final void setScaleFactor(float f) {
        this.scaleFactor = f;
    }

    public final void updateArgsByDetector(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        this.focusX = detector.getFocusX();
        this.focusY = detector.getFocusY();
        this.scaleFactor = detector.getScaleFactor();
    }
}
