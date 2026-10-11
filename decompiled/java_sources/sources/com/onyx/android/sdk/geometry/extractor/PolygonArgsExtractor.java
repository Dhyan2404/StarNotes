package com.onyx.android.sdk.geometry.extractor;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/PolygonArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "()V", "extractArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "outline", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PolygonArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final PolygonArgsExtractor INSTANCE = new PolygonArgsExtractor();

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        Intrinsics.checkNotNullParameter(outline, "outline");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        GeometryConfigurations geometryConfigurations = GeometryConfigurations.INSTANCE;
        List<TouchPoint> removeEqualsEndPoint = geometryUtils.removeEqualsEndPoint(GeometryUtils.findAllTurningPoints$default(geometryUtils, outline, null, true, Float.valueOf(geometryConfigurations.getPolygonKneePointMinSpacing()), true, true, 1, null), geometryConfigurations.getPolygonKneePointMinSpacing());
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setPoints(removeEqualsEndPoint);
        return geometryArgs;
    }
}
