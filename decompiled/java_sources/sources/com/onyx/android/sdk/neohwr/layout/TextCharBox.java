package com.onyx.android.sdk.neohwr.layout;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001d\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\rJ\u0006\u0010&\u001a\u00020\u0005J\b\u0010'\u001a\u00020\u0003H\u0016R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;", "", "text", "", "region", "Landroid/graphics/RectF;", "sourcePointGroup", "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "matrix", "Landroid/graphics/Matrix;", "textColor", "", "tag", "(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;Landroid/graphics/Matrix;ILjava/lang/Object;)V", "getMatrix", "()Landroid/graphics/Matrix;", "setMatrix", "(Landroid/graphics/Matrix;)V", "getRegion", "()Landroid/graphics/RectF;", "setRegion", "(Landroid/graphics/RectF;)V", "getSourcePointGroup", "()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;", "setSourcePointGroup", "(Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V", "getTag", "()Ljava/lang/Object;", "setTag", "(Ljava/lang/Object;)V", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "getTextColor", "()I", "setTextColor", "(I)V", "sourcePointRect", "toString", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextCharBox {

    @NotNull
    private Matrix matrix;

    @NotNull
    private RectF region;

    @NotNull
    private SourcePointGroup sourcePointGroup;

    @Nullable
    private Object tag;

    @NotNull
    private String text;
    private int textColor;

    public TextCharBox() {
        this(null, null, null, null, 0, null, 63, null);
    }

    @NotNull
    public final Matrix getMatrix() {
        return this.matrix;
    }

    @NotNull
    public final RectF getRegion() {
        return this.region;
    }

    @NotNull
    public final SourcePointGroup getSourcePointGroup() {
        return this.sourcePointGroup;
    }

    @Nullable
    public final Object getTag() {
        return this.tag;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final void setMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.matrix = matrix;
    }

    public final void setRegion(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.region = rectF;
    }

    public final void setSourcePointGroup(@NotNull SourcePointGroup sourcePointGroup) {
        Intrinsics.checkNotNullParameter(sourcePointGroup, "<set-?>");
        this.sourcePointGroup = sourcePointGroup;
    }

    public final void setTag(@Nullable Object obj) {
        this.tag = obj;
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    public final void setTextColor(int i) {
        this.textColor = i;
    }

    @NotNull
    public final RectF sourcePointRect() {
        return GeometryUtils.INSTANCE.boundRect(this.sourcePointGroup.getPoints());
    }

    @NotNull
    public String toString() {
        return "text=" + this.text + " region=" + this.region + " rotation=" + MatrixKt.getMatrixRotateAngel(this.matrix);
    }

    public TextCharBox(@NotNull String text, @NotNull RectF region, @NotNull SourcePointGroup sourcePointGroup, @NotNull Matrix matrix, int i, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(sourcePointGroup, "sourcePointGroup");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        this.text = text;
        this.region = region;
        this.sourcePointGroup = sourcePointGroup;
        this.matrix = matrix;
        this.textColor = i;
        this.tag = obj;
    }

    public /* synthetic */ TextCharBox(String str, RectF rectF, SourcePointGroup sourcePointGroup, Matrix matrix, int i, Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? new RectF() : rectF, (i2 & 4) != 0 ? new SourcePointGroup(null, null, 0, 0, 15, null) : sourcePointGroup, (i2 & 8) != 0 ? new Matrix() : matrix, (i2 & 16) != 0 ? -16777216 : i, (i2 & 32) != 0 ? null : obj);
    }
}
