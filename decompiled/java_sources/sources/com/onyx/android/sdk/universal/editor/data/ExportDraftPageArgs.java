package com.onyx.android.sdk.universal.editor.data;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;", "", "()V", "boxInfoList", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getBoxInfoList", "()Ljava/util/List;", "setBoxInfoList", "(Ljava/util/List;)V", "originBoundingRect", "Landroid/graphics/RectF;", "getOriginBoundingRect", "()Landroid/graphics/RectF;", "setOriginBoundingRect", "(Landroid/graphics/RectF;)V", "pageIndexMap", "", "", "", "getPageIndexMap", "()Ljava/util/Map;", "pageRectF", "getPageRectF", "setPageRectF", "viewportBitmap", "Landroid/graphics/Bitmap;", "getViewportBitmap", "()Landroid/graphics/Bitmap;", "setViewportBitmap", "(Landroid/graphics/Bitmap;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExportDraftPageArgs {

    @NotNull
    private List<BoxInfo> boxInfoList;

    @NotNull
    private final Map<Integer, String> pageIndexMap;

    @Nullable
    private Bitmap viewportBitmap;

    @NotNull
    private RectF originBoundingRect = new RectF();

    @NotNull
    private RectF pageRectF = new RectF();

    public ExportDraftPageArgs() {
        List<BoxInfo> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.boxInfoList = emptyList;
        this.pageIndexMap = new LinkedHashMap();
    }

    @NotNull
    public final List<BoxInfo> getBoxInfoList() {
        return this.boxInfoList;
    }

    @NotNull
    public final RectF getOriginBoundingRect() {
        return this.originBoundingRect;
    }

    @NotNull
    public final Map<Integer, String> getPageIndexMap() {
        return this.pageIndexMap;
    }

    @NotNull
    public final RectF getPageRectF() {
        return this.pageRectF;
    }

    @Nullable
    public final Bitmap getViewportBitmap() {
        return this.viewportBitmap;
    }

    public final void setBoxInfoList(@NotNull List<BoxInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.boxInfoList = list;
    }

    public final void setOriginBoundingRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.originBoundingRect = rectF;
    }

    public final void setPageRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageRectF = rectF;
    }

    public final void setViewportBitmap(@Nullable Bitmap bitmap) {
        this.viewportBitmap = bitmap;
    }
}
