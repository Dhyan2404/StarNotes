package com.onyx.android.sdk.universal.editor.data;

import android.graphics.Matrix;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\nHÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;", "", "boxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "renderTemplate", "", "renderTape", "renderPageMargin", "renderExcerptIndicator", "rotationMatrix", "Landroid/graphics/Matrix;", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;)V", "getBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getRenderExcerptIndicator", Constants.BOOLEAN_VALUE_SIG, "getRenderPageMargin", "getRenderTape", "getRenderTemplate", "getRotationMatrix", "()Landroid/graphics/Matrix;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class RenderPageThumbnailArgs {

    @NotNull
    private final BoxInfo boxInfo;
    private final boolean renderExcerptIndicator;
    private final boolean renderPageMargin;
    private final boolean renderTape;
    private final boolean renderTemplate;

    @NotNull
    private final Matrix rotationMatrix;

    public RenderPageThumbnailArgs(@NotNull BoxInfo boxInfo, boolean z, boolean z2, boolean z3, boolean z4, @NotNull Matrix rotationMatrix) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        Intrinsics.checkNotNullParameter(rotationMatrix, "rotationMatrix");
        this.boxInfo = boxInfo;
        this.renderTemplate = z;
        this.renderTape = z2;
        this.renderPageMargin = z3;
        this.renderExcerptIndicator = z4;
        this.rotationMatrix = rotationMatrix;
    }

    public static /* synthetic */ RenderPageThumbnailArgs copy$default(RenderPageThumbnailArgs renderPageThumbnailArgs, BoxInfo boxInfo, boolean z, boolean z2, boolean z3, boolean z4, Matrix matrix, int i, Object obj) {
        if ((i & 1) != 0) {
            boxInfo = renderPageThumbnailArgs.boxInfo;
        }
        if ((i & 2) != 0) {
            z = renderPageThumbnailArgs.renderTemplate;
        }
        boolean z5 = z;
        if ((i & 4) != 0) {
            z2 = renderPageThumbnailArgs.renderTape;
        }
        boolean z6 = z2;
        if ((i & 8) != 0) {
            z3 = renderPageThumbnailArgs.renderPageMargin;
        }
        boolean z7 = z3;
        if ((i & 16) != 0) {
            z4 = renderPageThumbnailArgs.renderExcerptIndicator;
        }
        boolean z8 = z4;
        if ((i & 32) != 0) {
            matrix = renderPageThumbnailArgs.rotationMatrix;
        }
        return renderPageThumbnailArgs.copy(boxInfo, z5, z6, z7, z8, matrix);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getRenderTemplate() {
        return this.renderTemplate;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getRenderTape() {
        return this.renderTape;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getRenderPageMargin() {
        return this.renderPageMargin;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getRenderExcerptIndicator() {
        return this.renderExcerptIndicator;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final Matrix getRotationMatrix() {
        return this.rotationMatrix;
    }

    @NotNull
    public final RenderPageThumbnailArgs copy(@NotNull BoxInfo boxInfo, boolean renderTemplate, boolean renderTape, boolean renderPageMargin, boolean renderExcerptIndicator, @NotNull Matrix rotationMatrix) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        Intrinsics.checkNotNullParameter(rotationMatrix, "rotationMatrix");
        return new RenderPageThumbnailArgs(boxInfo, renderTemplate, renderTape, renderPageMargin, renderExcerptIndicator, rotationMatrix);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RenderPageThumbnailArgs)) {
            return false;
        }
        RenderPageThumbnailArgs renderPageThumbnailArgs = (RenderPageThumbnailArgs) other;
        return Intrinsics.areEqual(this.boxInfo, renderPageThumbnailArgs.boxInfo) && this.renderTemplate == renderPageThumbnailArgs.renderTemplate && this.renderTape == renderPageThumbnailArgs.renderTape && this.renderPageMargin == renderPageThumbnailArgs.renderPageMargin && this.renderExcerptIndicator == renderPageThumbnailArgs.renderExcerptIndicator && Intrinsics.areEqual(this.rotationMatrix, renderPageThumbnailArgs.rotationMatrix);
    }

    @NotNull
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    public final boolean getRenderExcerptIndicator() {
        return this.renderExcerptIndicator;
    }

    public final boolean getRenderPageMargin() {
        return this.renderPageMargin;
    }

    public final boolean getRenderTape() {
        return this.renderTape;
    }

    public final boolean getRenderTemplate() {
        return this.renderTemplate;
    }

    @NotNull
    public final Matrix getRotationMatrix() {
        return this.rotationMatrix;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.boxInfo.hashCode() * 31;
        boolean z = this.renderTemplate;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.renderTape;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.renderPageMargin;
        int i5 = z3;
        if (z3 != 0) {
            i5 = 1;
        }
        int i6 = (i4 + i5) * 31;
        boolean z4 = this.renderExcerptIndicator;
        return ((i6 + (z4 ? 1 : z4 ? 1 : 0)) * 31) + this.rotationMatrix.hashCode();
    }

    @NotNull
    public String toString() {
        return "RenderPageThumbnailArgs(boxInfo=" + this.boxInfo + ", renderTemplate=" + this.renderTemplate + ", renderTape=" + this.renderTape + ", renderPageMargin=" + this.renderPageMargin + ", renderExcerptIndicator=" + this.renderExcerptIndicator + ", rotationMatrix=" + this.rotationMatrix + ')';
    }

    public /* synthetic */ RenderPageThumbnailArgs(BoxInfo boxInfo, boolean z, boolean z2, boolean z3, boolean z4, Matrix matrix, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(boxInfo, (i & 2) != 0 ? true : z, (i & 4) != 0 ? true : z2, (i & 8) != 0 ? true : z3, (i & 16) == 0 ? z4 : true, (i & 32) != 0 ? new Matrix() : matrix);
    }
}
