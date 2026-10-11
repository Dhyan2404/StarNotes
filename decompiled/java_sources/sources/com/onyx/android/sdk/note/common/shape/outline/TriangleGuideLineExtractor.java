package com.onyx.android.sdk.note.common.shape.outline;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/outline/TriangleGuideLineExtractor;", "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;", "()V", "extract", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "shape", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTriangleGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TriangleGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/TriangleGuideLineExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,17:1\n1549#2:18\n1620#2,3:19\n*S KotlinDebug\n*F\n+ 1 TriangleGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/TriangleGuideLineExtractor\n*L\n14#1:18\n14#1:19,3\n*E\n"})
/* loaded from: classes8.dex */
public final class TriangleGuideLineExtractor implements GuideLineExtractor {
    @Override // com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractor
    @NotNull
    public List<Guideline> extract(@NotNull UniversalShape shape) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(shape, "shape");
        List<TouchPoint> selectionPoints = shape.getSelectionPoints();
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<TouchPointPair> findAllSides$default = GeometryUtils.findAllSides$default(geometryUtils, geometryUtils.transform(selectionPoints, shape.getShapeMatrix()), false, 1, null);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findAllSides$default, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPointPair touchPointPair : findAllSides$default) {
            arrayList.add(new Guideline(shape.getShapeUniqueId(), touchPointPair.getP1(), touchPointPair.getP2(), null, 8, null));
        }
        return arrayList;
    }
}
