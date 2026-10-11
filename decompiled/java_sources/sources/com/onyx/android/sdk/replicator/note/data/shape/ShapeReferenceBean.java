package com.onyx.android.sdk.replicator.note.data.shape;

import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0012\u001a\u00020\u0000H\u0016J\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;", "", "()V", "matrixValues", "", "getMatrixValues", "()[F", "setMatrixValues", "([F)V", CouchFieldKey.KEY_TOC_PAGE_ID, "", "getPageId", "()Ljava/lang/String;", "setPageId", "(Ljava/lang/String;)V", "shapeId", "getShapeId", "setShapeId", "clone", "isValid", "", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeReferenceBean implements Cloneable {

    @NotNull
    private String shapeId = "";

    @NotNull
    private String pageId = "";

    @NotNull
    private float[] matrixValues = new float[0];

    @NotNull
    public final float[] getMatrixValues() {
        return this.matrixValues;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    @NotNull
    public final String getShapeId() {
        return this.shapeId;
    }

    public final boolean isValid() {
        if (StringKt.isNotEmpty(this.shapeId) && StringKt.isNotEmpty(this.pageId)) {
            return (this.matrixValues.length == 0) ^ true;
        }
        return false;
    }

    public final void setMatrixValues(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<set-?>");
        this.matrixValues = fArr;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setShapeId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shapeId = str;
    }

    @NotNull
    public String toString() {
        return "shapeId:" + this.shapeId + ",pageId:" + this.pageId + ",matrix:" + MatrixKt.getMatrixByValues(this.matrixValues);
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeReferenceBean m72371clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean");
        return (ShapeReferenceBean) clone;
    }
}
