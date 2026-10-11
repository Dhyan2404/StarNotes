package com.onyx.android.sdk.geometry.utils;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.algorithm.ExpectationAndVariance;
import com.onyx.android.sdk.geometry.algorithm.MinimumBoundingRectAlgorithm;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.RotatedRect;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J(\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;", "", "()V", "checkWaveLineFeature", "", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "groupByDirection", "rotatedRect", "Lcom/onyx/android/sdk/geometry/data/RotatedRect;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nWaveLineFeatureValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaveLineFeatureValidator.kt\ncom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1855#2,2:75\n766#2:77\n857#2,2:78\n*S KotlinDebug\n*F\n+ 1 WaveLineFeatureValidator.kt\ncom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator\n*L\n52#1:75,2\n71#1:77\n71#1:78,2\n*E\n"})
/* loaded from: classes7.dex */
public final class WaveLineFeatureValidator {

    @NotNull
    public static final WaveLineFeatureValidator INSTANCE = new WaveLineFeatureValidator();

    public final boolean checkWaveLineFeature(@NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        RotatedRect swapWidthAndHeightIfNeeded = MinimumBoundingRectAlgorithm.INSTANCE.findMinimumBoundingRect(points).swapWidthAndHeightIfNeeded();
        List<TouchPoint> rotationTransform = GeometryUtils.INSTANCE.rotationTransform(points, swapWidthAndHeightIfNeeded.getCenter(), -swapWidthAndHeightIfNeeded.getRotationInRad());
        ExpectationAndVariance expectationAndVariance = ExpectationAndVariance.INSTANCE;
        float expectation = expectationAndVariance.getExpectation(rotationTransform, new Function1<TouchPoint, Float>() { // from class: com.onyx.android.sdk.geometry.utils.WaveLineFeatureValidator$checkWaveLineFeature$expectationOfX$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getX());
            }
        });
        float expectation2 = expectationAndVariance.getExpectation(rotationTransform, new Function1<TouchPoint, Float>() { // from class: com.onyx.android.sdk.geometry.utils.WaveLineFeatureValidator$checkWaveLineFeature$expectationOfY$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getY());
            }
        });
        float standardDeviation = expectationAndVariance.getStandardDeviation(rotationTransform, new Function1<TouchPoint, Float>() { // from class: com.onyx.android.sdk.geometry.utils.WaveLineFeatureValidator$checkWaveLineFeature$deviationOfX$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getX());
            }
        });
        float standardDeviation2 = expectationAndVariance.getStandardDeviation(rotationTransform, new Function1<TouchPoint, Float>() { // from class: com.onyx.android.sdk.geometry.utils.WaveLineFeatureValidator$checkWaveLineFeature$deviationOfY$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getY());
            }
        });
        float abs = Math.abs(expectation - swapWidthAndHeightIfNeeded.getCenter().getX());
        float width = swapWidthAndHeightIfNeeded.getWidth();
        GeometryConfigurations geometryConfigurations = GeometryConfigurations.INSTANCE;
        return ((abs > (width / ((float) geometryConfigurations.getWaveLineExpectationFactor())) ? 1 : (abs == (width / ((float) geometryConfigurations.getWaveLineExpectationFactor())) ? 0 : -1)) < 0 && (Math.abs(expectation2 - swapWidthAndHeightIfNeeded.getCenter().getY()) > (swapWidthAndHeightIfNeeded.getHeight() / ((float) geometryConfigurations.getWaveLineExpectationFactor())) ? 1 : (Math.abs(expectation2 - swapWidthAndHeightIfNeeded.getCenter().getY()) == (swapWidthAndHeightIfNeeded.getHeight() / ((float) geometryConfigurations.getWaveLineExpectationFactor())) ? 0 : -1)) < 0 && (standardDeviation > (swapWidthAndHeightIfNeeded.getWidth() / ((float) geometryConfigurations.getWaveLineDeviationFactor())) ? 1 : (standardDeviation == (swapWidthAndHeightIfNeeded.getWidth() / ((float) geometryConfigurations.getWaveLineDeviationFactor())) ? 0 : -1)) > 0 && (standardDeviation2 > (swapWidthAndHeightIfNeeded.getHeight() / ((float) geometryConfigurations.getWaveLineDeviationFactor())) ? 1 : (standardDeviation2 == (swapWidthAndHeightIfNeeded.getHeight() / ((float) geometryConfigurations.getWaveLineDeviationFactor())) ? 0 : -1)) > 0) && groupByDirection(rotationTransform, swapWidthAndHeightIfNeeded).size() >= geometryConfigurations.getWaveLineMinTurningPointCount();
    }

    @NotNull
    public final List<List<TouchPoint>> groupByDirection(@NotNull List<TouchPoint> points, @NotNull RotatedRect rotatedRect) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(rotatedRect, "rotatedRect");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Float f = null;
        for (TouchPoint touchPoint : points) {
            TouchPoint touchPoint2 = (TouchPoint) CollectionKt.getNextItem(points, touchPoint);
            if (touchPoint2 != null) {
                MathUtils mathUtils = MathUtils.INSTANCE;
                if (!MathUtils.areApproximatelyEqual$default(mathUtils, touchPoint.getX(), touchPoint2.getX(), 0.0f, 4, null) && !MathUtils.areApproximatelyEqual$default(mathUtils, touchPoint.getY(), touchPoint2.getY(), 0.0f, 4, null)) {
                    float signum = Math.signum(touchPoint2.getY() - touchPoint.getY());
                    if (Intrinsics.areEqual(signum, f)) {
                        arrayList.add(touchPoint);
                    } else {
                        arrayList.add(touchPoint);
                        arrayList = new ArrayList();
                        arrayList.add(touchPoint);
                        arrayList2.add(arrayList);
                        f = Float.valueOf(signum);
                    }
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (GeometryUtils.INSTANCE.boundRect((List<TouchPoint>) obj).height() > rotatedRect.getHeight() / ((float) GeometryConfigurations.INSTANCE.getWaveLinePeakFactor())) {
                arrayList3.add(obj);
            }
        }
        return arrayList3;
    }
}
