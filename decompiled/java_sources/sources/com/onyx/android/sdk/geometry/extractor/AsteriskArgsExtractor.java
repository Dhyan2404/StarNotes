package com.onyx.android.sdk.geometry.extractor;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/AsteriskArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "()V", "extractArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "outline", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nAsteriskArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsteriskArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/AsteriskArgsExtractor\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,25:1\n37#2,2:26\n*S KotlinDebug\n*F\n+ 1 AsteriskArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/AsteriskArgsExtractor\n*L\n22#1:26,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AsteriskArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final AsteriskArgsExtractor INSTANCE = new AsteriskArgsExtractor();

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(outline, "outline");
        TouchPointPair touchPointPair = new TouchPointPair(outline.get(0), outline.get(1));
        TouchPointPair touchPointPair2 = new TouchPointPair(outline.get(2), outline.get(3));
        TouchPoint center = new TouchPointPair(touchPointPair.findCrossPoint(touchPointPair2), touchPointPair2.findCrossPoint(new TouchPointPair(outline.get(4), outline.get(5)))).center();
        float averageDistance = GeometryUtils.INSTANCE.averageDistance(center, outline);
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(center.getX());
        geometryArgs.setCy(center.getY());
        geometryArgs.setR(averageDistance);
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(center);
        spreadBuilder.addSpread(outline.toArray(new TouchPoint[0]));
        listOf = CollectionsKt__CollectionsKt.listOf(spreadBuilder.toArray(new TouchPoint[spreadBuilder.size()]));
        geometryArgs.setExtras(listOf);
        return geometryArgs;
    }
}
