package com.onyx.android.sdk.note.common.shape.outline;

import android.graphics.Matrix;
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

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/outline/PolygonGuideLineExtractor;", "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;", "()V", "extract", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "shape", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPolygonGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/PolygonGuideLineExtractor\n+ 2 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPairKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,16:1\n262#2:17\n252#2:21\n1549#3:18\n1620#3,2:19\n1622#3:22\n1549#3:23\n1620#3,3:24\n*S KotlinDebug\n*F\n+ 1 PolygonGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/PolygonGuideLineExtractor\n*L\n12#1:17\n12#1:21\n12#1:18\n12#1:19,2\n12#1:22\n13#1:23\n13#1:24,3\n*E\n"})
/* loaded from: classes8.dex */
public final class PolygonGuideLineExtractor implements GuideLineExtractor {
    @Override // com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractor
    @NotNull
    public List<Guideline> extract(@NotNull UniversalShape shape) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(shape, "shape");
        List findAllSides$default = GeometryUtils.findAllSides$default(GeometryUtils.INSTANCE, shape.getSelectionPoints(), false, 1, null);
        Matrix shapeMatrix = shape.getShapeMatrix();
        List<TouchPointPair> list = findAllSides$default;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList<TouchPointPair> arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPointPair touchPointPair : list) {
            arrayList.add(new TouchPointPair(touchPointPair.getP1().transform(shapeMatrix), touchPointPair.getP2().transform(shapeMatrix)));
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (TouchPointPair touchPointPair2 : arrayList) {
            arrayList2.add(new Guideline(shape.getShapeUniqueId(), touchPointPair2.getP1(), touchPointPair2.getP2(), null, 8, null));
        }
        return arrayList2;
    }
}
