package com.onyx.android.sdk.geometry.extractor;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/LineArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "line", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class LineArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final LineArgsExtractor INSTANCE = new LineArgsExtractor();

    /* renamed from: a */
    public final void m33286a(GeometryArgs geometryArgs) {
        Object first;
        Object last;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) geometryArgs.getPoints());
        TouchPoint touchPoint = (TouchPoint) first;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) geometryArgs.getPoints());
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, (TouchPoint) last);
        geometryArgs.setLeft(touchPoint.getX());
        geometryArgs.setTop(touchPoint.getY());
        geometryArgs.setWidth(touchPointPair.length());
        geometryArgs.setRotateX(touchPoint.getX());
        geometryArgs.setRotateY(touchPoint.getY());
        geometryArgs.setRotation(touchPointPair.direction());
    }

    /* renamed from: b */
    public final void m33287b(TouchPointPair line) {
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        if (GeometryUtils.isHorizontal$default(geometryUtils, line, null, 1, null)) {
            line.getP1().setY(line.getP2().getY());
        }
        if (GeometryUtils.isVertical$default(geometryUtils, line, null, 1, null)) {
            line.getP1().setX(line.getP2().getX());
        }
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(outline, "outline");
        TouchPointPair farthestPointPair = GeometryUtils.INSTANCE.farthestPointPair(outline);
        GeometryArgs geometryArgs = new GeometryArgs();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{farthestPointPair.getP1(), farthestPointPair.getP2()});
        geometryArgs.setPoints(listOf);
        m33286a(geometryArgs);
        return geometryArgs;
    }
}
