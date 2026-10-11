package com.onyx.android.sdk.note.common.shape;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.MirrorType;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\fH&J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0018\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H&J \u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0018\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0012H&J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0003H&J\u0010\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u0012H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;", "", "shapeMatrix", "Landroid/graphics/Matrix;", "getShapeMatrix", "()Landroid/graphics/Matrix;", "setShapeMatrix", "(Landroid/graphics/Matrix;)V", "getRenderMatrix", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "isClosedShape", "", "onMirror", "", "type", "Lcom/onyx/android/sdk/geometry/data/MirrorType;", "translateDistance", "", "onPreRotate", "angle", "pivotPoint", "Landroid/graphics/PointF;", "onRotate", "onScale", "sx", "sy", "rectF", "Landroid/graphics/RectF;", "onTranslate", "dx", "dy", "postConcat", "matrix", "scaleDisplayScale", "scale", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeTransform {
    @NotNull
    Matrix getRenderMatrix(@NotNull RenderContext renderContext);

    @Nullable
    Matrix getShapeMatrix();

    boolean isClosedShape();

    void onMirror(@NotNull MirrorType type, float translateDistance);

    void onPreRotate(float angle, @NotNull PointF pivotPoint);

    void onRotate(float angle, @NotNull PointF pivotPoint);

    void onScale(float sx, float sy, @NotNull RectF rectF);

    void onTranslate(float dx, float dy);

    void postConcat(@NotNull Matrix matrix);

    void scaleDisplayScale(float scale);

    void setShapeMatrix(@Nullable Matrix matrix);
}
