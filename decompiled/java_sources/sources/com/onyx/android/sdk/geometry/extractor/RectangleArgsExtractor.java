package com.onyx.android.sdk.geometry.extractor;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.algorithm.MinimumBoundingRectAlgorithm;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.RotatedRect;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/RectangleArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RectangleArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final RectangleArgsExtractor INSTANCE = new RectangleArgsExtractor();

    /* renamed from: a */
    public final void m33289a(GeometryArgs geometryArgs) {
        TouchPoint touchPoint = new TouchPoint(geometryArgs.getCx(), geometryArgs.getCy());
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        RectF boundRect = geometryUtils.boundRect(geometryUtils.rotationTransform(geometryArgs.getPoints(), touchPoint, -geometryArgs.getRotation()));
        geometryArgs.setWidth(boundRect.width());
        geometryArgs.setHeight(boundRect.height());
        geometryArgs.updateCorners();
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        Intrinsics.checkNotNullParameter(outline, "outline");
        RotatedRect correctDirection = GeometryUtils.INSTANCE.correctDirection(MinimumBoundingRectAlgorithm.INSTANCE.findMinimumBoundingRect(outline));
        TouchPoint center = correctDirection.getCenter();
        List<TouchPoint> realPoints = correctDirection.getRealPoints();
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(center.getX());
        geometryArgs.setCy(center.getY());
        geometryArgs.setRotateX(center.getX());
        geometryArgs.setRotateY(center.getY());
        geometryArgs.setRotation(correctDirection.getRotationInRad());
        geometryArgs.setPoints(realPoints);
        geometryArgs.setExtras(CollectionKt.mergeList(realPoints, CollectionKt.asList(center)));
        m33289a(geometryArgs);
        return geometryArgs;
    }
}
