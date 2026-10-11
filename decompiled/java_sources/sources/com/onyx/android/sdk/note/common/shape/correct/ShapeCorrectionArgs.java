package com.onyx.android.sdk.note.common.shape.correct;

import android.graphics.Matrix;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b0\u00101R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR4\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000b0\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R4\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000b0\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000e\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;", "", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "a", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V", "shape", "", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "b", "Ljava/util/List;", "getAlignedPairs", "()Ljava/util/List;", "setAlignedPairs", "(Ljava/util/List;)V", "alignedPairs", "c", "getParalleledPairs", "setParalleledPairs", "paralleledPairs", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "d", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "getTransformAction", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "setTransformAction", "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V", "transformAction", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "e", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTransformPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setTransformPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "transformPoint", "Landroid/graphics/Matrix;", C6997f.f39671c, "Landroid/graphics/Matrix;", "getRenderMatrix", "()Landroid/graphics/Matrix;", "setRenderMatrix", "(Landroid/graphics/Matrix;)V", "renderMatrix", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShapeCorrectionArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public UniversalShape shape = new UniversalShape();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<Pair<Guideline, Guideline>> alignedPairs = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<Pair<Guideline, Guideline>> paralleledPairs = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public ShapeTransformAction transformAction = ShapeTransformAction.Undefined;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public TouchPoint transformPoint = TouchPoint.INSTANCE.getEmpty();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Matrix renderMatrix = new Matrix();

    @NotNull
    public final List<Pair<Guideline, Guideline>> getAlignedPairs() {
        return this.alignedPairs;
    }

    @NotNull
    public final List<Pair<Guideline, Guideline>> getParalleledPairs() {
        return this.paralleledPairs;
    }

    @NotNull
    public final Matrix getRenderMatrix() {
        return this.renderMatrix;
    }

    @NotNull
    public final UniversalShape getShape() {
        return this.shape;
    }

    @NotNull
    public final ShapeTransformAction getTransformAction() {
        return this.transformAction;
    }

    @NotNull
    public final TouchPoint getTransformPoint() {
        return this.transformPoint;
    }

    public final void setAlignedPairs(@NotNull List<Pair<Guideline, Guideline>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.alignedPairs = list;
    }

    public final void setParalleledPairs(@NotNull List<Pair<Guideline, Guideline>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.paralleledPairs = list;
    }

    public final void setRenderMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.renderMatrix = matrix;
    }

    public final void setShape(@NotNull UniversalShape universalShape) {
        Intrinsics.checkNotNullParameter(universalShape, "<set-?>");
        this.shape = universalShape;
    }

    public final void setTransformAction(@NotNull ShapeTransformAction shapeTransformAction) {
        Intrinsics.checkNotNullParameter(shapeTransformAction, "<set-?>");
        this.transformAction = shapeTransformAction;
    }

    public final void setTransformPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.transformPoint = touchPoint;
    }
}
