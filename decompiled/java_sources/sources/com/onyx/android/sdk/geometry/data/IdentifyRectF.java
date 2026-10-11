package com.onyx.android.sdk.geometry.data;

import android.graphics.RectF;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;", "", "id", "", "rectF", "Landroid/graphics/RectF;", "(Ljava/lang/String;Landroid/graphics/RectF;)V", "getId", "()Ljava/lang/String;", "getRectF", "()Landroid/graphics/RectF;", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class IdentifyRectF {

    @NotNull
    private final String id;

    @NotNull
    private final RectF rectF;

    public IdentifyRectF(@NotNull String id, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        this.id = id;
        this.rectF = rectF;
    }

    public static /* synthetic */ IdentifyRectF copy$default(IdentifyRectF identifyRectF, String str, RectF rectF, int i, Object obj) {
        if ((i & 1) != 0) {
            str = identifyRectF.id;
        }
        if ((i & 2) != 0) {
            rectF = identifyRectF.rectF;
        }
        return identifyRectF.copy(str, rectF);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final RectF getRectF() {
        return this.rectF;
    }

    @NotNull
    public final IdentifyRectF copy(@NotNull String id, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return new IdentifyRectF(id, rectF);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IdentifyRectF)) {
            return false;
        }
        IdentifyRectF identifyRectF = (IdentifyRectF) other;
        return Intrinsics.areEqual(this.id, identifyRectF.id) && Intrinsics.areEqual(this.rectF, identifyRectF.rectF);
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final RectF getRectF() {
        return this.rectF;
    }

    public int hashCode() {
        return (this.id.hashCode() * 31) + this.rectF.hashCode();
    }

    @NotNull
    public String toString() {
        return "IdentifyRectF(id=" + this.id + ", rectF=" + this.rectF + ')';
    }
}
