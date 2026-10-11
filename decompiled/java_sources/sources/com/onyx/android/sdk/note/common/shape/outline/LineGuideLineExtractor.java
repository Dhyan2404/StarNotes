package com.onyx.android.sdk.note.common.shape.outline;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/outline/LineGuideLineExtractor;", "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;", "()V", "extract", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "shape", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LineGuideLineExtractor implements GuideLineExtractor {
    @Override // com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractor
    @NotNull
    public List<Guideline> extract(@NotNull UniversalShape shape) {
        Object first;
        Object last;
        List<Guideline> listOf;
        Intrinsics.checkNotNullParameter(shape, "shape");
        List<TouchPoint> transform = GeometryUtils.INSTANCE.transform(shape.getSelectionPoints(), shape.getShapeMatrix());
        String shapeUniqueId = shape.getShapeUniqueId();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) transform);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) transform);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new Guideline(shapeUniqueId, (TouchPoint) first, (TouchPoint) last, null, 8, null));
        return listOf;
    }
}
