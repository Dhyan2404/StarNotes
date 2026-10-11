package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.constant.HWRConfigurations;
import com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/TriangleVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "()V", "shapeName", "", "similarObjectTypes", "", "verify", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTriangleVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TriangleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/TriangleVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1726#2,3:44\n*S KotlinDebug\n*F\n+ 1 TriangleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/TriangleVerification\n*L\n38#1:44,3\n*E\n"})
/* loaded from: classes7.dex */
public final class TriangleVerification extends BaseShapeVerification {
    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public String shapeName() {
        return "Triangle";
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Triangle", "triangle", UniversalShapeTypeConst.STAR, "constellation", "bird", "anvil", "sushi"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        boolean z;
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents());
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        float length = geometryUtils.length(touchPointList);
        HWRConfigurations hWRConfigurations = HWRConfigurations.INSTANCE;
        List<TouchPoint> cleanClosePoints = geometryUtils.cleanClosePoints(GeometryUtils.findAllTurningPoints$default(geometryUtils, touchPointList, Float.valueOf(hWRConfigurations.getTriangleTurningPointThresholdPercent() * 3.1415927f), false, null, true, true, 6, null), Float.valueOf(length * hWRConfigurations.getTriangleMinPointSpacingPercent()));
        List<List<TouchPoint>> segmentsBySplitPoints = geometryUtils.getSegmentsBySplitPoints(touchPointList, cleanClosePoints);
        if (!isClosurePath() || cleanClosePoints.size() != 4) {
            return false;
        }
        List<List<TouchPoint>> list = segmentsBySplitPoints;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (List<TouchPoint> list2 : list) {
                MathUtils mathUtils = MathUtils.INSTANCE;
                GeometryUtils geometryUtils2 = GeometryUtils.INSTANCE;
                float length2 = geometryUtils2.length(list2);
                GeometryConfigurations geometryConfigurations = GeometryConfigurations.INSTANCE;
                if (!geometryUtils2.isSegmentStraight(list2, Float.valueOf(((Number) mathUtils.atLeast(Float.valueOf(length2 * geometryConfigurations.getTriangleStraightThresholdPercent()), Float.valueOf(geometryConfigurations.getTriangleStraightMinThreshold()))).floatValue()))) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        return z;
    }
}
