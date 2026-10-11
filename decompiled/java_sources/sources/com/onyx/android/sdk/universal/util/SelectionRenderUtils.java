package com.onyx.android.sdk.universal.util;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007J$\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/util/SelectionRenderUtils;", "", "()V", "convertFromPageToRender", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPointInPage", "virtualBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "convertFromRenderToPage", "touchPointInRender", "getMatrixFromSelectionToRender", "Landroid/graphics/Matrix;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getSelectionGuideLines", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "lassoId", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SelectionRenderUtils {

    @NotNull
    public static final SelectionRenderUtils INSTANCE = new SelectionRenderUtils();

    @NotNull
    public final TouchPoint convertFromPageToRender(@NotNull TouchPoint touchPointInPage, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        BoxInfo noteInfo = virtualBoxInfo.getNoteInfo();
        return touchPointInPage.transform(noteInfo != null ? BoxInfoUtils.INSTANCE.renderMatrix(noteInfo) : null);
    }

    @NotNull
    public final TouchPoint convertFromRenderToPage(@NotNull TouchPoint touchPointInRender, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchPointInRender, "touchPointInRender");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        BoxInfo noteInfo = virtualBoxInfo.getNoteInfo();
        return touchPointInRender.transform(MatrixKt.invertMatrix(noteInfo != null ? BoxInfoUtils.INSTANCE.renderMatrix(noteInfo) : null));
    }

    @NotNull
    public final Matrix getMatrixFromSelectionToRender(@NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        SelectionRect selectionRect = renderContext.getSelectionRect();
        Matrix matrix = selectionRect != null ? selectionRect.getMatrix() : null;
        BoxInfo noteInfo = virtualBoxInfo.getNoteInfo();
        return MatrixKt.concat(matrix, noteInfo != null ? BoxInfoUtils.INSTANCE.renderMatrix(noteInfo) : null);
    }

    @NotNull
    public final List<Guideline> getSelectionGuideLines(@NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull String lassoId) {
        List<Guideline> listOf;
        List<Guideline> emptyList;
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(lassoId, "lassoId");
        SelectionRect selectionRect = renderContext.getSelectionRect();
        if (selectionRect == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        RectF copy = RectFKt.copy(selectionRect.getOriginRect());
        Matrix matrixFromSelectionToRender = getMatrixFromSelectionToRender(renderContext, virtualBoxInfo);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Guideline[]{new Guideline(lassoId, new TouchPoint(copy.left, copy.centerY()).transform(matrixFromSelectionToRender), new TouchPoint(copy.right, copy.centerY()).transform(matrixFromSelectionToRender), lassoId + "-1"), new Guideline(lassoId, new TouchPoint(copy.centerX(), copy.top).transform(matrixFromSelectionToRender), new TouchPoint(copy.centerX(), copy.bottom).transform(matrixFromSelectionToRender), lassoId + "-2")});
        return listOf;
    }
}
