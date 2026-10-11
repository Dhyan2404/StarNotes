package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import android.graphics.RectF;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J0\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0016\u0010\u001e\u001a\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u000e0!H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n\u0000¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/WaveLine;", "Lcom/onyx/android/sdk/genericshape/Feature;", "lineString", "Lcom/onyx/android/sdk/genericshape/LineString;", "(Lcom/onyx/android/sdk/genericshape/LineString;)V", GeoConstant.KEY_Geometry, "Lcom/onyx/android/sdk/genericshape/Geometry;", "getGeometry", "()Lcom/onyx/android/sdk/genericshape/Geometry;", "setGeometry", "(Lcom/onyx/android/sdk/genericshape/Geometry;)V", "maxWaveCount", "", "computeWavePoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "axis", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "waveCycle", "", "waveHeight", "position", TypedValues.CycleType.S_WAVE_OFFSET, "getBoundingRect", "Landroid/graphics/RectF;", "loadRenderPath", "Landroid/graphics/Path;", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "", "latestPoints", "", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WaveLine extends Feature {

    @Nullable
    private Geometry geometry;

    @NotNull
    private final LineString lineString;
    private final int maxWaveCount;

    public WaveLine(@NotNull LineString lineString) {
        Intrinsics.checkNotNullParameter(lineString, "lineString");
        this.lineString = lineString;
        this.geometry = lineString;
        this.maxWaveCount = 5000;
        getProperties().setSubType(GeoConstant.WaveLine);
    }

    private final TouchPoint computeWavePoint(TouchPointPair axis, float waveCycle, float waveHeight, float position, float offset) {
        return axis.findPointByDistance(((float) Math.sin((((position % waveCycle) + offset) / waveCycle) * 6.2831855f)) * waveHeight, GeometryUtils.INSTANCE.findPointByDistance(axis.getP1(), Float.valueOf(position), Float.valueOf(axis.direction())));
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public RectF getBoundingRect() {
        WaveAttr waveAttr;
        RectF rectF = new RectF();
        float[][] coordinates = this.lineString.getCoordinates();
        if (coordinates == null || (waveAttr = getProperties().getWaveAttr()) == null) {
            return rectF;
        }
        int length = coordinates.length;
        float[] fArr = coordinates[0];
        TouchPoint touchPoint = new TouchPoint(fArr[0], fArr[1]);
        float[] fArr2 = coordinates[length - 1];
        TouchPoint touchPoint2 = new TouchPoint(fArr2[0], fArr2[1]);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        return geometryUtils.boundRect(geometryUtils.computeRectByHeight(new TouchPointPair(touchPoint, touchPoint2), Float.valueOf(waveAttr.getWavyPeak() * 2)));
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    @Nullable
    public Geometry getGeometry() {
        return this.geometry;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        WaveAttr waveAttr;
        Path path = new Path();
        float[][] coordinates = this.lineString.getCoordinates();
        if (coordinates == null || (waveAttr = getProperties().getWaveAttr()) == null) {
            return path;
        }
        int length = coordinates.length;
        float[] fArr = coordinates[0];
        TouchPoint touchPoint = new TouchPoint(fArr[0], fArr[1]);
        float[] fArr2 = coordinates[length - 1];
        TouchPoint touchPoint2 = new TouchPoint(fArr2[0], fArr2[1]);
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, touchPoint2);
        float wavyLength = waveAttr.getWavyLength();
        float wavyPeak = waveAttr.getWavyPeak();
        float wavyOffset = (waveAttr.getWavyOffset() / 6.2831855f) * wavyLength;
        float length2 = new TouchPointPair(GeometryUtils.INSTANCE.findPointByDistance(touchPoint, Float.valueOf(-wavyOffset), Float.valueOf(touchPointPair.direction())), touchPoint2).length();
        int ceil = (int) Math.ceil(length2 / wavyLength);
        if (wavyLength < 0.001f || wavyPeak < 0.001f || length2 < 0.001f || ceil > this.maxWaveCount) {
            path.moveTo(touchPoint.getX(), touchPoint.getY());
            path.lineTo(touchPoint2.getX(), touchPoint2.getY());
            return path;
        }
        float length3 = touchPointPair.length();
        float f = (length3 / ceil) / 180;
        float f2 = 0.0f;
        TouchPoint computeWavePoint = computeWavePoint(touchPointPair, wavyLength, wavyPeak, 0.0f, wavyOffset);
        path.moveTo(computeWavePoint.getX(), computeWavePoint.getY());
        do {
            f2 = ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(f2 + f), Float.valueOf(length3))).floatValue();
            TouchPoint computeWavePoint2 = computeWavePoint(touchPointPair, wavyLength, wavyPeak, f2, wavyOffset);
            path.lineTo(computeWavePoint2.getX(), computeWavePoint2.getY());
        } while (f2 < length3);
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    public void setGeometry(@Nullable Geometry geometry) {
        this.geometry = geometry;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return UniversalShapeSplitterKt.splitShape(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> latestPoints) {
        WaveAttr waveAttr;
        Object last;
        Object last2;
        Object first;
        Object last3;
        Object first2;
        Object last4;
        Intrinsics.checkNotNullParameter(latestPoints, "latestPoints");
        List<TouchPoint> loadSelectionPoints = loadSelectionPoints();
        if ((loadSelectionPoints.size() == 2 || latestPoints.size() == 2) && (waveAttr = getProperties().getWaveAttr()) != null) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) loadSelectionPoints);
            last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) latestPoints);
            if (((TouchPoint) last).equalXY((TouchPoint) last2)) {
                GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) loadSelectionPoints);
                last3 = CollectionsKt___CollectionsKt.last((List<? extends Object>) loadSelectionPoints);
                float wavyOffset = waveAttr.getWavyOffset() + ((geometryUtils.distanceTo((TouchPoint) first, (TouchPoint) last3) / waveAttr.getWavyLength()) * 6.2831855f);
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) latestPoints);
                last4 = CollectionsKt___CollectionsKt.last((List<? extends Object>) latestPoints);
                waveAttr.setWavyOffset(geometryUtils.toUnsignedRad(wavyOffset - ((geometryUtils.distanceTo((TouchPoint) first2, (TouchPoint) last4) / waveAttr.getWavyLength()) * 6.2831855f)));
            }
            super.updateBySelectionPoints(latestPoints);
        }
    }
}
