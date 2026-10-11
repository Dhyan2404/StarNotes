package com.onyx.android.sdk.geometry.extractor;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "()V", "extractArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "outline", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPentagonArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PentagonArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,33:1\n1549#2:34\n1620#2,3:35\n1549#2:38\n1620#2,3:39\n37#3,2:42\n*S KotlinDebug\n*F\n+ 1 PentagonArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor\n*L\n13#1:34\n13#1:35,3\n14#1:38\n14#1:39,3\n30#1:42,2\n*E\n"})
/* loaded from: classes7.dex */
public final class PentagonArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final PentagonArgsExtractor INSTANCE = new PentagonArgsExtractor();

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        int collectionSizeOrDefault;
        double averageOfFloat;
        int collectionSizeOrDefault2;
        double averageOfFloat2;
        Object first;
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(outline, "outline");
        List<TouchPoint> list = outline;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(((TouchPoint) it2.next()).getX()));
        }
        averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList);
        float f = (float) averageOfFloat;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list.iterator();
        while (it3.hasNext()) {
            arrayList2.add(Float.valueOf(((TouchPoint) it3.next()).getY()));
        }
        averageOfFloat2 = CollectionsKt___CollectionsKt.averageOfFloat(arrayList2);
        TouchPoint touchPoint = new TouchPoint(f, (float) averageOfFloat2);
        float averageDistance = GeometryUtils.INSTANCE.averageDistance(touchPoint, outline);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) outline);
        float direction = new TouchPointPair(touchPoint, (TouchPoint) first).direction();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < 5; i++) {
            arrayList3.add(GeometryUtils.INSTANCE.findPointByDistance(touchPoint, Float.valueOf(averageDistance), Float.valueOf((float) (direction + (i * 1.2566370614359172d)))));
        }
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(touchPoint.getX());
        geometryArgs.setCy(touchPoint.getY());
        geometryArgs.setR(averageDistance);
        geometryArgs.setStartAngle(direction);
        geometryArgs.setPoints(arrayList3);
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(touchPoint);
        spreadBuilder.addSpread(arrayList3.toArray(new TouchPoint[0]));
        listOf = CollectionsKt__CollectionsKt.listOf(spreadBuilder.toArray(new TouchPoint[spreadBuilder.size()]));
        geometryArgs.setExtras(listOf);
        return geometryArgs;
    }
}
