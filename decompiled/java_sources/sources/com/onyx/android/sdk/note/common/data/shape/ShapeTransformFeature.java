package com.onyx.android.sdk.note.common.data.shape;

import android.graphics.Matrix;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformFeature;", "", "", "component1", "Landroid/graphics/Matrix;", "component2", "featureStr", "featureMatrix", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFeatureStr", "()Ljava/lang/String;", "setFeatureStr", "(Ljava/lang/String;)V", "b", "Landroid/graphics/Matrix;", "getFeatureMatrix", "()Landroid/graphics/Matrix;", "setFeatureMatrix", "(Landroid/graphics/Matrix;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroid/graphics/Matrix;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ShapeTransformFeature {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String featureStr;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public Matrix featureMatrix;

    /* JADX WARN: Multi-variable type inference failed */
    public ShapeTransformFeature() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ ShapeTransformFeature copy$default(ShapeTransformFeature shapeTransformFeature, String str, Matrix matrix, int i, Object obj) {
        if ((i & 1) != 0) {
            str = shapeTransformFeature.featureStr;
        }
        if ((i & 2) != 0) {
            matrix = shapeTransformFeature.featureMatrix;
        }
        return shapeTransformFeature.copy(str, matrix);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getFeatureStr() {
        return this.featureStr;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final Matrix getFeatureMatrix() {
        return this.featureMatrix;
    }

    @NotNull
    public final ShapeTransformFeature copy(@NotNull String featureStr, @NotNull Matrix featureMatrix) {
        Intrinsics.checkNotNullParameter(featureStr, "featureStr");
        Intrinsics.checkNotNullParameter(featureMatrix, "featureMatrix");
        return new ShapeTransformFeature(featureStr, featureMatrix);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShapeTransformFeature)) {
            return false;
        }
        ShapeTransformFeature shapeTransformFeature = (ShapeTransformFeature) other;
        return Intrinsics.areEqual(this.featureStr, shapeTransformFeature.featureStr) && Intrinsics.areEqual(this.featureMatrix, shapeTransformFeature.featureMatrix);
    }

    @NotNull
    public final Matrix getFeatureMatrix() {
        return this.featureMatrix;
    }

    @NotNull
    public final String getFeatureStr() {
        return this.featureStr;
    }

    public int hashCode() {
        return (this.featureStr.hashCode() * 31) + this.featureMatrix.hashCode();
    }

    public final void setFeatureMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.featureMatrix = matrix;
    }

    public final void setFeatureStr(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.featureStr = str;
    }

    @NotNull
    public String toString() {
        return "ShapeTransformFeature(featureStr=" + this.featureStr + ", featureMatrix=" + this.featureMatrix + ')';
    }

    public ShapeTransformFeature(@NotNull String featureStr, @NotNull Matrix featureMatrix) {
        Intrinsics.checkNotNullParameter(featureStr, "featureStr");
        Intrinsics.checkNotNullParameter(featureMatrix, "featureMatrix");
        this.featureStr = featureStr;
        this.featureMatrix = featureMatrix;
    }

    public /* synthetic */ ShapeTransformFeature(String str, Matrix matrix, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? new Matrix() : matrix);
    }
}
