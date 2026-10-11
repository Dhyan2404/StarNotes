package com.onyx.android.sdk.geometry.extractor;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/GeometryArgsExtractorFactory;", "", "", "type", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", BaiduYunConstant.CREATE, "", "a", "Ljava/util/Map;", "extractors", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class GeometryArgsExtractorFactory {

    @NotNull
    public static final GeometryArgsExtractorFactory INSTANCE = new GeometryArgsExtractorFactory();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, IGeometryArgsExtractor> extractors;

    static {
        Map<String, IGeometryArgsExtractor> mapOf;
        Locale locale = Locale.ROOT;
        String lowerCase = GeometryType.LINE.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to = TuplesKt.m61535to(lowerCase, LineArgsExtractor.INSTANCE);
        String lowerCase2 = "Curve".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to2 = TuplesKt.m61535to(lowerCase2, CurveArgsExtractor.INSTANCE);
        String lowerCase3 = "Arc".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase3, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to3 = TuplesKt.m61535to(lowerCase3, ArcArgsExtractor.INSTANCE);
        String lowerCase4 = GeometryType.PARABOLA.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase4, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to4 = TuplesKt.m61535to(lowerCase4, ParabolaArgsExtractor.INSTANCE);
        String lowerCase5 = GeometryType.DASH_LINE.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase5, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to5 = TuplesKt.m61535to(lowerCase5, DashLineArgsExtractor.INSTANCE);
        String lowerCase6 = GeometryType.BI_LINE.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase6, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to6 = TuplesKt.m61535to(lowerCase6, BiLineArgsExtractor.INSTANCE);
        String lowerCase7 = GeometryType.WAVE_LINE.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase7, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to7 = TuplesKt.m61535to(lowerCase7, WaveLineArgsExtractor.INSTANCE);
        String lowerCase8 = GeometryType.ARROW.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase8, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to8 = TuplesKt.m61535to(lowerCase8, ArrowArgsExtractor.INSTANCE);
        String lowerCase9 = GeometryType.ARROW_CURVY.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase9, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to9 = TuplesKt.m61535to(lowerCase9, CurvyArrowArgsExtractor.INSTANCE);
        String lowerCase10 = GeometryType.BI_ARROW.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase10, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to10 = TuplesKt.m61535to(lowerCase10, BiArrowArgsExtractor.INSTANCE);
        String lowerCase11 = GeometryType.BI_ARROW_CURVY.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase11, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to11 = TuplesKt.m61535to(lowerCase11, BiCurvyArrowArgsExtractor.INSTANCE);
        String lowerCase12 = GeometryType.ANGLE.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase12, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to12 = TuplesKt.m61535to(lowerCase12, AngleArgsExtractor.INSTANCE);
        String lowerCase13 = GeometryType.ELLIPSE.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase13, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to13 = TuplesKt.m61535to(lowerCase13, EllipseArgsExtractor.INSTANCE);
        String lowerCase14 = "Circle".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase14, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to14 = TuplesKt.m61535to(lowerCase14, CircleArgsExtractor.INSTANCE);
        String lowerCase15 = "Triangle".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase15, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to15 = TuplesKt.m61535to(lowerCase15, TriangleArgsExtractor.INSTANCE);
        String lowerCase16 = GeometryType.TRIANGLE_RIGHT.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase16, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to16 = TuplesKt.m61535to(lowerCase16, RightTriangleArgsExtractor.INSTANCE);
        String lowerCase17 = GeometryType.TRIANGLE_ISOSCELES.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase17, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to17 = TuplesKt.m61535to(lowerCase17, IsoscelesTriangleArgsExtractor.INSTANCE);
        String lowerCase18 = GeometryType.TRIANGLE_REGULAR.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase18, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to18 = TuplesKt.m61535to(lowerCase18, RegularTriangleArgsExtractor.INSTANCE);
        String lowerCase19 = "Rectangle".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase19, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to19 = TuplesKt.m61535to(lowerCase19, RectangleArgsExtractor.INSTANCE);
        String lowerCase20 = GeometryType.SQUARE.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase20, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to20 = TuplesKt.m61535to(lowerCase20, SquareArgsExtractor.INSTANCE);
        String lowerCase21 = "Rhombus".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase21, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to21 = TuplesKt.m61535to(lowerCase21, RhombusArgsExtractor.INSTANCE);
        String lowerCase22 = "Parallelogram".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase22, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to22 = TuplesKt.m61535to(lowerCase22, ParallelogramArgsExtractor.INSTANCE);
        String lowerCase23 = "Trapezoid".toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase23, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to23 = TuplesKt.m61535to(lowerCase23, TrapezoidArgsExtractor.INSTANCE);
        String lowerCase24 = GeometryType.TRAPEZOID_ISOSCELES.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase24, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to24 = TuplesKt.m61535to(lowerCase24, IsoscelesTrapezoidArgsExtractor.INSTANCE);
        String lowerCase25 = GeometryType.TRAPEZOID_RIGHT.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase25, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to25 = TuplesKt.m61535to(lowerCase25, RightTrapezoidArgsExtractor.INSTANCE);
        String lowerCase26 = GeometryType.PENTAGON.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase26, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to26 = TuplesKt.m61535to(lowerCase26, PentagonArgsExtractor.INSTANCE);
        String lowerCase27 = GeometryType.HEXAGON.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase27, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to27 = TuplesKt.m61535to(lowerCase27, HexagonArgsExtractor.INSTANCE);
        String lowerCase28 = GeometryType.OCTAGON.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase28, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to28 = TuplesKt.m61535to(lowerCase28, OctagonArgsExtractor.INSTANCE);
        String lowerCase29 = GeometryType.PENTAGRAM.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase29, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to29 = TuplesKt.m61535to(lowerCase29, PentagramArgsExtractor.INSTANCE);
        String lowerCase30 = GeometryType.ASTERISK.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase30, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Pair m61535to30 = TuplesKt.m61535to(lowerCase30, AsteriskArgsExtractor.INSTANCE);
        String lowerCase31 = GeometryType.BRACKET_CURLY.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase31, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        mapOf = MapsKt__MapsKt.mapOf(m61535to, m61535to2, m61535to3, m61535to4, m61535to5, m61535to6, m61535to7, m61535to8, m61535to9, m61535to10, m61535to11, m61535to12, m61535to13, m61535to14, m61535to15, m61535to16, m61535to17, m61535to18, m61535to19, m61535to20, m61535to21, m61535to22, m61535to23, m61535to24, m61535to25, m61535to26, m61535to27, m61535to28, m61535to29, m61535to30, TuplesKt.m61535to(lowerCase31, CurvyBracketArgsExtractor.INSTANCE));
        extractors = mapOf;
    }

    @NotNull
    public final IGeometryArgsExtractor create(@NotNull String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        Map<String, IGeometryArgsExtractor> map = extractors;
        String lowerCase = type.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        IGeometryArgsExtractor iGeometryArgsExtractor = map.get(lowerCase);
        return iGeometryArgsExtractor == null ? EmptyArgsExtractor.INSTANCE : iGeometryArgsExtractor;
    }
}
