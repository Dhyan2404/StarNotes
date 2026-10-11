package com.onyx.android.sdk.note.common.shape.outline;

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

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor;", "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;", "()V", "extract", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "shape", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSquareGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SquareGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,27:1\n1549#2:28\n1620#2,3:29\n1855#2,2:32\n1549#2:34\n1620#2,3:35\n37#3,2:38\n*S KotlinDebug\n*F\n+ 1 SquareGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor\n*L\n15#1:28\n15#1:29,3\n16#1:32,2\n23#1:34\n23#1:35,3\n24#1:38,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SquareGuideLineExtractor implements GuideLineExtractor {
    @Override // com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractor
    @NotNull
    public List<Guideline> extract(@NotNull UniversalShape shape) {
        int collectionSizeOrDefault;
        List listOf;
        int collectionSizeOrDefault2;
        List<Guideline> listOf2;
        Intrinsics.checkNotNullParameter(shape, "shape");
        List<TouchPoint> selectionPoints = shape.getSelectionPoints();
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List findAllSides$default = GeometryUtils.findAllSides$default(geometryUtils, geometryUtils.transform(selectionPoints, shape.getShapeMatrix()), false, 1, null);
        List<TouchPointPair> list = findAllSides$default;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList<Guideline> arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPointPair touchPointPair : list) {
            arrayList.add(new Guideline(shape.getShapeUniqueId(), touchPointPair.getP1(), touchPointPair.getP2(), null, 8, null));
        }
        for (Guideline guideline : arrayList) {
            guideline.setSupportHorizontalAlignment(false);
            guideline.setSupportVerticalAlignment(false);
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPointPair[]{new TouchPointPair(((TouchPointPair) findAllSides$default.get(0)).center(), ((TouchPointPair) findAllSides$default.get(2)).center()), new TouchPointPair(((TouchPointPair) findAllSides$default.get(1)).center(), ((TouchPointPair) findAllSides$default.get(3)).center())});
        List<TouchPointPair> list2 = listOf;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (TouchPointPair touchPointPair2 : list2) {
            arrayList2.add(new Guideline(shape.getShapeUniqueId(), touchPointPair2.getP1(), touchPointPair2.getP2(), null, 8, null));
        }
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(arrayList.toArray(new Guideline[0]));
        spreadBuilder.addSpread(arrayList2.toArray(new Guideline[0]));
        listOf2 = CollectionsKt__CollectionsKt.listOf(spreadBuilder.toArray(new Guideline[spreadBuilder.size()]));
        return listOf2;
    }
}
