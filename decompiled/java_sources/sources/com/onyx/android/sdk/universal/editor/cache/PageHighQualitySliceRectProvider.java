package com.onyx.android.sdk.universal.editor.cache;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.universal.editor.cache.SliceRectProviderManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/cache/PageHighQualitySliceRectProvider;", "Lcom/onyx/android/sdk/universal/editor/cache/SliceRectProviderManager$SliceRectProvider;", "()V", "collectVisibleContentSliceRect", "Landroid/graphics/RectF;", "child", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "viewport", "collectVisibleNoteSliceRect", "virtualPage", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageHighQualitySliceRectProvider implements SliceRectProviderManager.SliceRectProvider {
    @Override // com.onyx.android.sdk.universal.editor.cache.SliceRectProviderManager.SliceRectProvider
    @NotNull
    public RectF collectVisibleContentSliceRect(@NotNull BoxInfo child, @NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        RectF copy = RectFKt.copy(viewport);
        copy.offsetTo(0.0f, 0.0f);
        RectF copy2 = RectFKt.copy(child.getVisibleRect());
        if (!copy2.intersect(copy)) {
            return new RectF();
        }
        BoxInfoUtils.INSTANCE.normalizeMatrix(child).mapRect(copy2);
        RectFKt.scaleRect(copy2, child.getActualScale());
        return copy2;
    }

    @Override // com.onyx.android.sdk.universal.editor.cache.SliceRectProviderManager.SliceRectProvider
    @NotNull
    public RectF collectVisibleNoteSliceRect(@NotNull BoxInfo virtualPage, @NotNull RectF viewport) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        BoxInfo noteInfo = virtualPage.getNoteInfo();
        if (noteInfo == null) {
            return new RectF();
        }
        RectF copy = RectFKt.copy(viewport);
        copy.offsetTo(0.0f, 0.0f);
        RectF copy2 = RectFKt.copy(virtualPage.getVisibleRect());
        if (!copy2.intersect(copy)) {
            return new RectF();
        }
        BoxInfoUtils.INSTANCE.normalizeMatrix(noteInfo).mapRect(copy2);
        RectFKt.scaleRect(copy2, noteInfo.getActualScale());
        return copy2;
    }
}
