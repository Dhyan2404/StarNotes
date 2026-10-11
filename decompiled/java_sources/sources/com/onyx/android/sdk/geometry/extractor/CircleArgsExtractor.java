package com.onyx.android.sdk.geometry.extractor;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCircleArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1549#2:31\n1620#2,3:32\n1549#2:35\n1620#2,3:36\n*S KotlinDebug\n*F\n+ 1 CircleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor\n*L\n10#1:31\n10#1:32,3\n11#1:35\n11#1:36,3\n*E\n"})
/* loaded from: classes7.dex */
public final class CircleArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final CircleArgsExtractor INSTANCE = new CircleArgsExtractor();

    /* renamed from: a */
    public final void m33282a(GeometryArgs geometryArgs) {
        float f = 2;
        geometryArgs.setWidth(geometryArgs.getR() * f);
        geometryArgs.setHeight(geometryArgs.getR() * f);
        geometryArgs.updateCorners();
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        int collectionSizeOrDefault;
        double averageOfFloat;
        int collectionSizeOrDefault2;
        double averageOfFloat2;
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
        float f2 = (float) averageOfFloat2;
        float averageDistance = GeometryUtils.INSTANCE.averageDistance(new TouchPoint(f, f2), outline);
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(f);
        geometryArgs.setCy(f2);
        geometryArgs.setR(averageDistance);
        geometryArgs.setRx(averageDistance);
        geometryArgs.setRy(averageDistance);
        m33282a(geometryArgs);
        return geometryArgs;
    }
}
