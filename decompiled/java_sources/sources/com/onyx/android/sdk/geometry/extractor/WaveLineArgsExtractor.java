package com.onyx.android.sdk.geometry.extractor;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.algorithm.MinimumBoundingRectAlgorithm;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.RotatedRect;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.geometry.utils.WaveLineFeatureValidator;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWaveLineArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaveLineArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1549#2:50\n1620#2,3:51\n1549#2:54\n1620#2,3:55\n1045#2:58\n*S KotlinDebug\n*F\n+ 1 WaveLineArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor\n*L\n21#1:50\n21#1:51,3\n22#1:54\n22#1:55,3\n26#1:58\n*E\n"})
/* loaded from: classes7.dex */
public final class WaveLineArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final WaveLineArgsExtractor INSTANCE = new WaveLineArgsExtractor();

    /* renamed from: a */
    public final void m33294a(GeometryArgs geometryArgs) {
        Object first;
        Object last;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) geometryArgs.getPoints());
        TouchPoint touchPoint = (TouchPoint) first;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) geometryArgs.getPoints());
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, (TouchPoint) last);
        geometryArgs.setLeft(touchPoint.getX());
        geometryArgs.setTop(touchPoint.getY());
        geometryArgs.setRotateX(touchPoint.getX());
        geometryArgs.setRotateY(touchPoint.getY());
        geometryArgs.setRotation(touchPointPair.direction());
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull final List<TouchPoint> outline) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        double averageOfFloat;
        List listOf;
        List<TouchPoint> sortedWith;
        Object first;
        Intrinsics.checkNotNullParameter(outline, "outline");
        RotatedRect swapWidthAndHeightIfNeeded = MinimumBoundingRectAlgorithm.INSTANCE.findMinimumBoundingRect(outline).swapWidthAndHeightIfNeeded();
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<List<TouchPoint>> groupByDirection = WaveLineFeatureValidator.INSTANCE.groupByDirection(geometryUtils.rotationTransform(outline, swapWidthAndHeightIfNeeded.getCenter(), -swapWidthAndHeightIfNeeded.getRotationInRad()), swapWidthAndHeightIfNeeded);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(groupByDirection, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = groupByDirection.iterator();
        while (it2.hasNext()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2.next());
            arrayList.add((TouchPoint) first);
        }
        List<TouchPoint> rotationTransform = geometryUtils.rotationTransform(arrayList, swapWidthAndHeightIfNeeded.getCenter(), swapWidthAndHeightIfNeeded.getRotationInRad());
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(groupByDirection, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = groupByDirection.iterator();
        while (it3.hasNext()) {
            arrayList2.add(Float.valueOf(GeometryUtils.INSTANCE.boundRect((List<TouchPoint>) it3.next()).width()));
        }
        averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList2);
        float f = 2;
        float f2 = ((float) averageOfFloat) * f;
        float height = swapWidthAndHeightIfNeeded.getHeight() / f;
        GeometryUtils geometryUtils2 = GeometryUtils.INSTANCE;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{geometryUtils2.findPointByDistance(swapWidthAndHeightIfNeeded.getCenter(), Float.valueOf((-swapWidthAndHeightIfNeeded.getWidth()) / f), Float.valueOf(swapWidthAndHeightIfNeeded.getRotationInRad())), geometryUtils2.findPointByDistance(swapWidthAndHeightIfNeeded.getCenter(), Float.valueOf(swapWidthAndHeightIfNeeded.getWidth() / f), Float.valueOf(swapWidthAndHeightIfNeeded.getRotationInRad()))});
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(listOf, new Comparator() { // from class: com.onyx.android.sdk.geometry.extractor.WaveLineArgsExtractor$extractArgs$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Object first2;
                Object first3;
                int compareValues;
                GeometryUtils geometryUtils3 = GeometryUtils.INSTANCE;
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) outline);
                Float valueOf = Float.valueOf(geometryUtils3.distanceTo((TouchPoint) t, (TouchPoint) first2));
                first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) outline);
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Float.valueOf(geometryUtils3.distanceTo((TouchPoint) t2, (TouchPoint) first3)));
                return compareValues;
            }
        });
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setWidth(swapWidthAndHeightIfNeeded.getWidth());
        geometryArgs.setHeight(swapWidthAndHeightIfNeeded.getHeight());
        MathUtils mathUtils = MathUtils.INSTANCE;
        geometryArgs.setCycle(((Number) mathUtils.atLeast(Float.valueOf(f2), Float.valueOf(1.0f))).floatValue());
        geometryArgs.setPeak(((Number) mathUtils.atLeast(Float.valueOf(height), Float.valueOf(1.0f))).floatValue());
        geometryArgs.setPoints(sortedWith);
        geometryArgs.setExtras(rotationTransform);
        m33294a(geometryArgs);
        return geometryArgs;
    }
}
