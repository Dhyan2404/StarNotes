package com.onyx.android.sdk.base.data;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\u001f\u0010\u0018\u001a\u00020\u00002\u0012\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u001a\"\u00020\u0005¢\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u0000J)\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\b\u0010\"\u001a\u00020\u0007H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/SelectionRegion;", "", "rect", "Landroid/graphics/RectF;", "matrix", "Landroid/graphics/Matrix;", "type", "", "(Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/String;)V", "getMatrix", "()Landroid/graphics/Matrix;", "setMatrix", "(Landroid/graphics/Matrix;)V", "getRect", "()Landroid/graphics/RectF;", "setRect", "(Landroid/graphics/RectF;)V", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "component1", "component2", "component3", "concatTransform", "matrices", "", "([Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/SelectionRegion;", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class SelectionRegion {

    @Nullable
    private Matrix matrix;

    @NotNull
    private RectF rect;

    @NotNull
    private String type;

    public SelectionRegion() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ SelectionRegion copy$default(SelectionRegion selectionRegion, RectF rectF, Matrix matrix, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            rectF = selectionRegion.rect;
        }
        if ((i & 2) != 0) {
            matrix = selectionRegion.matrix;
        }
        if ((i & 4) != 0) {
            str = selectionRegion.type;
        }
        return selectionRegion.copy(rectF, matrix, str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final RectF getRect() {
        return this.rect;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Matrix getMatrix() {
        return this.matrix;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getType() {
        return this.type;
    }

    @NotNull
    public final SelectionRegion concatTransform(@NotNull Matrix... matrices) {
        Intrinsics.checkNotNullParameter(matrices, "matrices");
        SelectionRegion copy = copy();
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(copy.matrix);
        spreadBuilder.addSpread(matrices);
        copy.matrix = MatrixKt.concat((Matrix[]) spreadBuilder.toArray(new Matrix[spreadBuilder.size()]));
        return copy;
    }

    @NotNull
    public final SelectionRegion copy(@NotNull RectF rect, @Nullable Matrix matrix, @NotNull String type) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(type, "type");
        return new SelectionRegion(rect, matrix, type);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SelectionRegion)) {
            return false;
        }
        SelectionRegion selectionRegion = (SelectionRegion) other;
        return Intrinsics.areEqual(this.rect, selectionRegion.rect) && Intrinsics.areEqual(this.matrix, selectionRegion.matrix) && Intrinsics.areEqual(this.type, selectionRegion.type);
    }

    @Nullable
    public final Matrix getMatrix() {
        return this.matrix;
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = this.rect.hashCode() * 31;
        Matrix matrix = this.matrix;
        return ((hashCode + (matrix == null ? 0 : matrix.hashCode())) * 31) + this.type.hashCode();
    }

    public final void setMatrix(@Nullable Matrix matrix) {
        this.matrix = matrix;
    }

    public final void setRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.rect = rectF;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @NotNull
    public String toString() {
        return this.rect + ' ' + this.matrix + ' ' + this.type;
    }

    public SelectionRegion(@NotNull RectF rect, @Nullable Matrix matrix, @NotNull String type) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(type, "type");
        this.rect = rect;
        this.matrix = matrix;
        this.type = type;
    }

    @NotNull
    public final SelectionRegion copy() {
        SelectionRegion selectionRegion = new SelectionRegion(null, null, null, 7, null);
        selectionRegion.rect = RectFKt.copy(this.rect);
        selectionRegion.matrix = MatrixKt.copy(this.matrix);
        selectionRegion.type = this.type;
        return selectionRegion;
    }

    public /* synthetic */ SelectionRegion(RectF rectF, Matrix matrix, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new RectF() : rectF, (i & 2) != 0 ? null : matrix, (i & 4) != 0 ? "" : str);
    }
}
