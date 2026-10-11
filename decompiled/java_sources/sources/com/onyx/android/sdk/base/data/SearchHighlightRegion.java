package com.onyx.android.sdk.base.data;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001b\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;", "", "()V", "matrix", "Landroid/graphics/Matrix;", "getMatrix", "()Landroid/graphics/Matrix;", "setMatrix", "(Landroid/graphics/Matrix;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "", "getPageId", "()Ljava/lang/String;", "setPageId", "(Ljava/lang/String;)V", "pageIndex", "", "getPageIndex", "()I", "setPageIndex", "(I)V", "rect", "Landroid/graphics/RectF;", "getRect", "()Landroid/graphics/RectF;", "setRect", "(Landroid/graphics/RectF;)V", "transformedRect", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSearchHighlightRegion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHighlightRegion.kt\ncom/onyx/android/sdk/base/data/SearchHighlightRegion\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n364#2:85\n1#3:86\n*S KotlinDebug\n*F\n+ 1 SearchHighlightRegion.kt\ncom/onyx/android/sdk/base/data/SearchHighlightRegion\n*L\n22#1:85\n22#1:86\n*E\n"})
/* loaded from: classes7.dex */
public final class SearchHighlightRegion {

    @NotNull
    private String pageId = "";
    private int pageIndex = -1;

    @NotNull
    private RectF rect = new RectF();

    @NotNull
    private Matrix matrix = new Matrix();

    @NotNull
    public final Matrix getMatrix() {
        return this.matrix;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }

    public final void setMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.matrix = matrix;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.rect = rectF;
    }

    @NotNull
    public final RectF transformedRect() {
        RectF copy = RectFKt.copy(this.rect);
        this.matrix.mapRect(copy);
        return copy;
    }
}
