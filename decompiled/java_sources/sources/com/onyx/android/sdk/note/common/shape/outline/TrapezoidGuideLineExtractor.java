package com.onyx.android.sdk.note.common.shape.outline;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0004*\b\u0012\u0004\u0012\u00020\u00070\u0004H\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/outline/TrapezoidGuideLineExtractor;", "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "extract", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTrapezoidGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrapezoidGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/TrapezoidGuideLineExtractor\n+ 2 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPairKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,45:1\n262#2:46\n252#2:50\n1549#3:47\n1620#3,2:48\n1622#3:51\n1549#3:52\n1620#3,3:53\n1855#3,2:56\n1549#3:58\n1620#3,3:59\n1855#3:64\n1855#3,2:65\n1856#3:67\n1655#3,8:68\n37#4,2:62\n*S KotlinDebug\n*F\n+ 1 TrapezoidGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/TrapezoidGuideLineExtractor\n*L\n21#1:46\n21#1:50\n21#1:47\n21#1:48,2\n21#1:51\n23#1:52\n23#1:53,3\n24#1:56,2\n28#1:58\n28#1:59,3\n36#1:64\n37#1:65,2\n36#1:67\n43#1:68,8\n29#1:62,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TrapezoidGuideLineExtractor implements GuideLineExtractor {
    /* renamed from: a */
    public final List<TouchPointPair> m33888a(List<TouchPoint> list) {
        ArrayList arrayList = new ArrayList();
        List<TouchPointPair> findAllSides$default = GeometryUtils.findAllSides$default(GeometryUtils.INSTANCE, list, false, 1, null);
        for (TouchPointPair touchPointPair : CollectionKt.copy(findAllSides$default)) {
            for (TouchPointPair touchPointPair2 : findAllSides$default) {
                if ((!Intrinsics.areEqual(touchPointPair, touchPointPair2) && GeometryUtils.isParallelTo$default(GeometryUtils.INSTANCE, touchPointPair, touchPointPair2, null, false, 6, null)) || GeometryUtils.isPerpendicularTo$default(GeometryUtils.INSTANCE, touchPointPair, touchPointPair2, null, 2, null)) {
                    arrayList.add(touchPointPair);
                }
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (hashSet.add((TouchPointPair) obj)) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    @Override // com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractor
    @NotNull
    public List<Guideline> extract(@NotNull UniversalShape shape) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        List<Guideline> listOf;
        Intrinsics.checkNotNullParameter(shape, "shape");
        List<TouchPoint> vertexPoints = shape.getVertexPoints(4);
        RectF boundRect = GeometryUtils.INSTANCE.boundRect(vertexPoints);
        List<TouchPointPair> m33888a = m33888a(vertexPoints);
        Matrix shapeMatrix = shape.getShapeMatrix();
        List<TouchPointPair> list = m33888a;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList<TouchPointPair> arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPointPair touchPointPair : list) {
            arrayList.add(new TouchPointPair(touchPointPair.getP1().transform(shapeMatrix), touchPointPair.getP2().transform(shapeMatrix)));
        }
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<TouchPoint> transform = geometryUtils.transform(geometryUtils.vertexPoints(boundRect), shape.getShapeMatrix());
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList<Guideline> arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (TouchPointPair touchPointPair2 : arrayList) {
            arrayList2.add(new Guideline(shape.getShapeUniqueId(), touchPointPair2.getP1(), touchPointPair2.getP2(), null, 8, null));
        }
        for (Guideline guideline : arrayList2) {
            guideline.setSupportHorizontalAlignment(false);
            guideline.setSupportVerticalAlignment(false);
        }
        List<TouchPointPair> findAllSides$default = GeometryUtils.findAllSides$default(GeometryUtils.INSTANCE, transform, false, 1, null);
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(findAllSides$default, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
        for (TouchPointPair touchPointPair3 : findAllSides$default) {
            arrayList3.add(new Guideline(shape.getShapeUniqueId(), touchPointPair3.getP1(), touchPointPair3.getP2(), null, 8, null));
        }
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(arrayList2.toArray(new Guideline[0]));
        spreadBuilder.addSpread(arrayList3.toArray(new Guideline[0]));
        listOf = CollectionsKt__CollectionsKt.listOf(spreadBuilder.toArray(new Guideline[spreadBuilder.size()]));
        return listOf;
    }
}
