package com.onyx.android.sdk.geometry.data;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.C7400R;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\bC\n\u0002\u0010\b\n\u0002\b\u0016\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0006R\u0011\u0010\n\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0006R\u0011\u0010\f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0006R\u0011\u0010\u000e\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0006R\u0011\u0010\u0010\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0006R\u0011\u0010\u0012\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0006R\u0011\u0010\u0014\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0006R\u0011\u0010\u0016\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0006R\u0011\u0010\u0018\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0006R\u0011\u0010\u001a\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0006R\u0011\u0010\u001c\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0006R\u0011\u0010\u001e\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0006R\u0011\u0010 \u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0006R\u0011\u0010\"\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0006R\u0011\u0010$\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0006R\u0011\u0010&\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0006R\u0011\u0010(\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0006R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u0006R\u0011\u0010.\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u0006R\u0011\u00100\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u0006R\u0011\u00102\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u0006R\u0011\u00104\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\u0006R\u0011\u00106\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\u0006R\u0011\u00108\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\u0006R\u0011\u0010:\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010\u0006R\u0011\u0010<\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010\u0006R\u0011\u0010>\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010\u0006R\u0011\u0010@\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u0010\u0006R\u0011\u0010B\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010\u0006R\u0011\u0010D\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bE\u0010\u0006R\u000e\u0010F\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020HX\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010I\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010\u0006R\u0011\u0010K\u001a\u00020H¢\u0006\b\n\u0000\u001a\u0004\bL\u0010MR\u0011\u0010N\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010\u0006R\u0011\u0010P\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010\u0006R\u0011\u0010R\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bS\u0010\u0006R\u0011\u0010T\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bU\u0010\u0006R\u0011\u0010V\u001a\u00020H¢\u0006\b\n\u0000\u001a\u0004\bW\u0010MR\u0011\u0010X\u001a\u00020H¢\u0006\b\n\u0000\u001a\u0004\bY\u0010MR\u0011\u0010Z\u001a\u00020H¢\u0006\b\n\u0000\u001a\u0004\b[\u0010MR\u0011\u0010\\\u001a\u00020H¢\u0006\b\n\u0000\u001a\u0004\b]\u0010M¨\u0006^"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;", "", "()V", "angleAdjustRangeForEllipse", "", "getAngleAdjustRangeForEllipse", "()F", "angleDefaultMistakePercent", "angleDefaultRadius", "getAngleDefaultRadius", "angleDefaultStrokeWidth", "getAngleDefaultStrokeWidth", "angleDefaultTextSize", "getAngleDefaultTextSize", "angleRadiusMaxPercent", "getAngleRadiusMaxPercent", "angleSingleRadiusMaxPercent", "getAngleSingleRadiusMaxPercent", "circleOvalDifferThreshold", "getCircleOvalDifferThreshold", "circleOvalDifferThresholdPercent", "getCircleOvalDifferThresholdPercent", "curlyBracketMaxHeightPercent", "getCurlyBracketMaxHeightPercent", "guidelineAlignThreshold", "getGuidelineAlignThreshold", "guidelineExtendLengthForAlign", "getGuidelineExtendLengthForAlign", "guidelineExtendLengthForParallel", "getGuidelineExtendLengthForParallel", "guidelineNearThreshold", "getGuidelineNearThreshold", "guidelineParallelDegThreshold", "getGuidelineParallelDegThreshold", "guidelineParallelDistanceThreshold", "getGuidelineParallelDistanceThreshold", "guidelineStickyDistance", "getGuidelineStickyDistance", "guidelineStickyDistanceForStandards", "getGuidelineStickyDistanceForStandards", "guidelineVelocityTriggerThreshold", "getGuidelineVelocityTriggerThreshold", "kneePointDeltaDegreeDefault", "kneePointDeltaDegreeSmall", "lineDefaultMistakePercent", "getLineDefaultMistakePercent", "lineMaxMistakenDistance", "getLineMaxMistakenDistance", "lineMinMistakenDistance", "getLineMinMistakenDistance", "lineMistakeDegree", "getLineMistakeDegree", "linePointResampleSpacing", "getLinePointResampleSpacing", "minArrowWidthPercent", "getMinArrowWidthPercent", "parallelDefaultMistakeThreshold", "getParallelDefaultMistakeThreshold", "parallelMistakenRad", "getParallelMistakenRad", "pathResampleMaxSpacingPercent", "getPathResampleMaxSpacingPercent", "pathResampleMinSpacing", "getPathResampleMinSpacing", "pathResampleSpacing", "getPathResampleSpacing", "pathResampleSpacingPercent", "getPathResampleSpacingPercent", "pentagramInnerPointDistancePercent", "getPentagramInnerPointDistancePercent", "pointCleanDefaultPercent", "pointCleanMinSize", "", "polygonKneePointMinSpacing", "getPolygonKneePointMinSpacing", "polylineToWaveLineThreshold", "getPolylineToWaveLineThreshold", "()I", "rectanglePolygonSimilarThreshold", "getRectanglePolygonSimilarThreshold", "triangleStraightMinThreshold", "getTriangleStraightMinThreshold", "triangleStraightThresholdPercent", "getTriangleStraightThresholdPercent", "turningPointThresholdPercent", "getTurningPointThresholdPercent", "waveLineDeviationFactor", "getWaveLineDeviationFactor", "waveLineExpectationFactor", "getWaveLineExpectationFactor", "waveLineMinTurningPointCount", "getWaveLineMinTurningPointCount", "waveLinePeakFactor", "getWaveLinePeakFactor", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeometryConfigurations {

    @NotNull
    public static final GeometryConfigurations INSTANCE = new GeometryConfigurations();
    private static final float angleAdjustRangeForEllipse;
    public static final float angleDefaultMistakePercent = 0.1f;
    private static final float angleDefaultRadius;
    private static final float angleDefaultStrokeWidth;
    private static final float angleDefaultTextSize;
    private static final float angleRadiusMaxPercent;
    private static final float angleSingleRadiusMaxPercent;
    private static final float circleOvalDifferThreshold;
    private static final float circleOvalDifferThresholdPercent;
    private static final float curlyBracketMaxHeightPercent;
    private static final float guidelineAlignThreshold;
    private static final float guidelineExtendLengthForAlign;
    private static final float guidelineExtendLengthForParallel;
    private static final float guidelineNearThreshold;
    private static final float guidelineParallelDegThreshold;
    private static final float guidelineParallelDistanceThreshold;
    private static final float guidelineStickyDistance;
    private static final float guidelineStickyDistanceForStandards;
    private static final float guidelineVelocityTriggerThreshold;
    public static final float kneePointDeltaDegreeDefault = 15.0f;
    public static final float kneePointDeltaDegreeSmall = 10.0f;
    private static final float lineDefaultMistakePercent;
    private static final float lineMaxMistakenDistance;
    private static final float lineMinMistakenDistance;
    private static final float lineMistakeDegree;
    private static final float linePointResampleSpacing;
    private static final float minArrowWidthPercent;
    private static final float parallelDefaultMistakeThreshold;
    private static final float parallelMistakenRad;
    private static final float pathResampleMaxSpacingPercent;
    private static final float pathResampleMinSpacing;
    private static final float pathResampleSpacing;
    private static final float pathResampleSpacingPercent;
    private static final float pentagramInnerPointDistancePercent;
    public static final float pointCleanDefaultPercent = 0.1f;
    public static final int pointCleanMinSize = 10;
    private static final float polygonKneePointMinSpacing;
    private static final int polylineToWaveLineThreshold;
    private static final float rectanglePolygonSimilarThreshold;
    private static final float triangleStraightMinThreshold;
    private static final float triangleStraightThresholdPercent;
    private static final float turningPointThresholdPercent;
    private static final int waveLineDeviationFactor;
    private static final int waveLineExpectationFactor;
    private static final int waveLineMinTurningPointCount;
    private static final int waveLinePeakFactor;

    static {
        ResManager resManager = ResManager.INSTANCE;
        pathResampleSpacing = resManager.getDimension(C7400R.dimen.path_resample_spacing);
        pathResampleMinSpacing = resManager.getDimension(C7400R.dimen.path_resample_min_spacing);
        pathResampleSpacingPercent = resManager.getFloat(C7400R.fraction.path_resample_spacing_percent);
        pathResampleMaxSpacingPercent = resManager.getFloat(C7400R.fraction.path_resample_max_spacing_percent);
        lineDefaultMistakePercent = 0.1f;
        lineMinMistakenDistance = resManager.getDimension(C7400R.dimen.line_min_mistaken_distance);
        lineMaxMistakenDistance = resManager.getDimension(C7400R.dimen.line_max_mistaken_distance);
        linePointResampleSpacing = resManager.getDimension(C7400R.dimen.line_point_resample_spacing);
        lineMistakeDegree = resManager.getFloat(C7400R.fraction.line_mistake_degree);
        parallelMistakenRad = resManager.getFloat(C7400R.fraction.parallel_mistaken_percent) * 3.1415927f;
        rectanglePolygonSimilarThreshold = resManager.getFloat(C7400R.fraction.rectangle_polygon_similar_threshold);
        guidelineExtendLengthForAlign = resManager.getDimension(C7400R.dimen.guideline_extend_length_for_align);
        guidelineExtendLengthForParallel = resManager.getDimension(C7400R.dimen.guideline_extend_length_for_parallel);
        guidelineStickyDistance = resManager.getDimension(C7400R.dimen.guideline_sticky_distance);
        guidelineStickyDistanceForStandards = resManager.getDimension(C7400R.dimen.guideline_sticky_distance_for_standards);
        guidelineVelocityTriggerThreshold = resManager.getDimension(C7400R.dimen.guideline_velocity_trigger_threshold);
        guidelineAlignThreshold = resManager.getDimension(C7400R.dimen.guideline_align_threshold);
        guidelineNearThreshold = resManager.getDimension(C7400R.dimen.guideline_near_threshold);
        guidelineParallelDistanceThreshold = resManager.getFloat(C7400R.fraction.guideline_parallel_distance_threshold);
        guidelineParallelDegThreshold = resManager.getFloat(C7400R.fraction.guideline_parallel_deg_threshold);
        angleRadiusMaxPercent = resManager.getFloat(C7400R.fraction.angle_radius_max_percent);
        angleSingleRadiusMaxPercent = resManager.getFloat(C7400R.fraction.angle_single_radius_max_percent);
        angleDefaultRadius = resManager.getDimension(C7400R.dimen.angle_default_radius);
        angleDefaultStrokeWidth = resManager.getFloat(C7400R.fraction.angle_default_stroke_width);
        angleDefaultTextSize = resManager.getFloat(C7400R.fraction.angle_default_text_size);
        triangleStraightMinThreshold = resManager.getDimension(C7400R.dimen.triangle_straight_min_threshold);
        triangleStraightThresholdPercent = resManager.getFloat(C7400R.fraction.triangle_straight_threshold_percent);
        circleOvalDifferThreshold = resManager.getDimension(C7400R.dimen.circle_oval_diff_threshold);
        circleOvalDifferThresholdPercent = resManager.getFloat(C7400R.fraction.circle_oval_diff_threshold_percent);
        pentagramInnerPointDistancePercent = resManager.getFloat(C7400R.fraction.pentagram_inner_point_distance_percent);
        curlyBracketMaxHeightPercent = resManager.getFloat(C7400R.fraction.curly_bracket_max_height_percent);
        turningPointThresholdPercent = resManager.getFloat(C7400R.fraction.turning_point_threshold_percent);
        minArrowWidthPercent = resManager.getFloat(C7400R.fraction.min_arrow_width_percent);
        waveLineExpectationFactor = resManager.getInteger(C7400R.integer.wave_line_expectation_factor);
        waveLineDeviationFactor = resManager.getInteger(C7400R.integer.wave_line_deviation_factor);
        waveLinePeakFactor = resManager.getInteger(C7400R.integer.wave_line_peak_factor);
        waveLineMinTurningPointCount = resManager.getInteger(C7400R.integer.wave_line_min_turning_point_count);
        polylineToWaveLineThreshold = resManager.getInteger(C7400R.integer.polyline_to_wave_line_threshold);
        polygonKneePointMinSpacing = resManager.getDimension(C7400R.dimen.polygon_knee_point_min_spacing);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        angleAdjustRangeForEllipse = geometryUtils.degreeToRad(15.0f);
        parallelDefaultMistakeThreshold = geometryUtils.degreeToRad(3.0f);
    }

    private GeometryConfigurations() {
    }

    public final float getAngleAdjustRangeForEllipse() {
        return angleAdjustRangeForEllipse;
    }

    public final float getAngleDefaultRadius() {
        return angleDefaultRadius;
    }

    public final float getAngleDefaultStrokeWidth() {
        return angleDefaultStrokeWidth;
    }

    public final float getAngleDefaultTextSize() {
        return angleDefaultTextSize;
    }

    public final float getAngleRadiusMaxPercent() {
        return angleRadiusMaxPercent;
    }

    public final float getAngleSingleRadiusMaxPercent() {
        return angleSingleRadiusMaxPercent;
    }

    public final float getCircleOvalDifferThreshold() {
        return circleOvalDifferThreshold;
    }

    public final float getCircleOvalDifferThresholdPercent() {
        return circleOvalDifferThresholdPercent;
    }

    public final float getCurlyBracketMaxHeightPercent() {
        return curlyBracketMaxHeightPercent;
    }

    public final float getGuidelineAlignThreshold() {
        return guidelineAlignThreshold;
    }

    public final float getGuidelineExtendLengthForAlign() {
        return guidelineExtendLengthForAlign;
    }

    public final float getGuidelineExtendLengthForParallel() {
        return guidelineExtendLengthForParallel;
    }

    public final float getGuidelineNearThreshold() {
        return guidelineNearThreshold;
    }

    public final float getGuidelineParallelDegThreshold() {
        return guidelineParallelDegThreshold;
    }

    public final float getGuidelineParallelDistanceThreshold() {
        return guidelineParallelDistanceThreshold;
    }

    public final float getGuidelineStickyDistance() {
        return guidelineStickyDistance;
    }

    public final float getGuidelineStickyDistanceForStandards() {
        return guidelineStickyDistanceForStandards;
    }

    public final float getGuidelineVelocityTriggerThreshold() {
        return guidelineVelocityTriggerThreshold;
    }

    public final float getLineDefaultMistakePercent() {
        return lineDefaultMistakePercent;
    }

    public final float getLineMaxMistakenDistance() {
        return lineMaxMistakenDistance;
    }

    public final float getLineMinMistakenDistance() {
        return lineMinMistakenDistance;
    }

    public final float getLineMistakeDegree() {
        return lineMistakeDegree;
    }

    public final float getLinePointResampleSpacing() {
        return linePointResampleSpacing;
    }

    public final float getMinArrowWidthPercent() {
        return minArrowWidthPercent;
    }

    public final float getParallelDefaultMistakeThreshold() {
        return parallelDefaultMistakeThreshold;
    }

    public final float getParallelMistakenRad() {
        return parallelMistakenRad;
    }

    public final float getPathResampleMaxSpacingPercent() {
        return pathResampleMaxSpacingPercent;
    }

    public final float getPathResampleMinSpacing() {
        return pathResampleMinSpacing;
    }

    public final float getPathResampleSpacing() {
        return pathResampleSpacing;
    }

    public final float getPathResampleSpacingPercent() {
        return pathResampleSpacingPercent;
    }

    public final float getPentagramInnerPointDistancePercent() {
        return pentagramInnerPointDistancePercent;
    }

    public final float getPolygonKneePointMinSpacing() {
        return polygonKneePointMinSpacing;
    }

    public final int getPolylineToWaveLineThreshold() {
        return polylineToWaveLineThreshold;
    }

    public final float getRectanglePolygonSimilarThreshold() {
        return rectanglePolygonSimilarThreshold;
    }

    public final float getTriangleStraightMinThreshold() {
        return triangleStraightMinThreshold;
    }

    public final float getTriangleStraightThresholdPercent() {
        return triangleStraightThresholdPercent;
    }

    public final float getTurningPointThresholdPercent() {
        return turningPointThresholdPercent;
    }

    public final int getWaveLineDeviationFactor() {
        return waveLineDeviationFactor;
    }

    public final int getWaveLineExpectationFactor() {
        return waveLineExpectationFactor;
    }

    public final int getWaveLineMinTurningPointCount() {
        return waveLineMinTurningPointCount;
    }

    public final int getWaveLinePeakFactor() {
        return waveLinePeakFactor;
    }
}
