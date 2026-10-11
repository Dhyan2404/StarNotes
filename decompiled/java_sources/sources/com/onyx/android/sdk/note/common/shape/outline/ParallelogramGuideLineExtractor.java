package com.onyx.android.sdk.note.common.shape.outline;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor;", "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;", "()V", "extract", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "shape", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nParallelogramGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParallelogramGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,23:1\n1549#2:24\n1620#2,3:25\n1549#2:28\n1620#2,3:29\n37#3,2:32\n*S KotlinDebug\n*F\n+ 1 ParallelogramGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor\n*L\n17#1:24\n17#1:25,3\n18#1:28\n18#1:29,3\n20#1:32,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ParallelogramGuideLineExtractor implements GuideLineExtractor {
    @Override // com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractor
    @NotNull
    public List<Guideline> extract(@NotNull UniversalShape shape) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List<Guideline> listOf;
        Intrinsics.checkNotNullParameter(shape, "shape");
        List<TouchPoint> vertexPoints = shape.getVertexPoints(4);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        RectF boundRect = geometryUtils.boundRect(vertexPoints);
        List<TouchPoint> transform = geometryUtils.transform(vertexPoints, shape.getShapeMatrix());
        List<TouchPoint> transform2 = geometryUtils.transform(geometryUtils.vertexPoints(boundRect), shape.getShapeMatrix());
        List<TouchPointPair> findAllSides$default = GeometryUtils.findAllSides$default(geometryUtils, transform, false, 1, null);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findAllSides$default, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPointPair touchPointPair : findAllSides$default) {
            arrayList.add(new Guideline(shape.getShapeUniqueId(), touchPointPair.getP1(), touchPointPair.getP2(), null, 8, null));
        }
        List<TouchPointPair> findAllSides$default2 = GeometryUtils.findAllSides$default(GeometryUtils.INSTANCE, transform2, false, 1, null);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(findAllSides$default2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (TouchPointPair touchPointPair2 : findAllSides$default2) {
            arrayList2.add(new Guideline(shape.getShapeUniqueId(), touchPointPair2.getP1(), touchPointPair2.getP2(), null, 8, null));
        }
        GuideLineExtractorKt.configStandardAlignment(arrayList2, false, false);
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(arrayList.toArray(new Guideline[0]));
        spreadBuilder.addSpread(arrayList2.toArray(new Guideline[0]));
        listOf = CollectionsKt__CollectionsKt.listOf(spreadBuilder.toArray(new Guideline[spreadBuilder.size()]));
        return listOf;
    }
}
