package com.onyx.android.sdk.hwr.service.predictor;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.service.predictor.impl.AngleVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.ArcVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.ArrowVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.AsteriskVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.BiArrowVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.BiCurvyArrowVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.BiLineVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.CircleVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.CurveVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.CurvyArrowVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.CurvyBracketVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.DashLineVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.EllipseVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.HexagonVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.IsoscelesTrapezoidVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.IsoscelesTriangleVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.LineVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.OctagonVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.ParabolaVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.ParallelogramVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.PentagonVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.PentagramVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.RectangleVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.RegularTriangleVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.RhombusVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.RightTrapezoidVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.RightTriangleVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.SquareVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.TrapezoidVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.TriangleVerification;
import com.onyx.android.sdk.hwr.service.predictor.impl.WaveLineVerification;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;", "", "()V", "allVerifications", "", "Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;", BaiduYunConstant.CREATE, "shape", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ShapeVerificationFactory {

    @NotNull
    public static final ShapeVerificationFactory INSTANCE = new ShapeVerificationFactory();

    @NotNull
    public final List<IShapeVerification> allVerifications() {
        List<IShapeVerification> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new BaseShapeVerification[]{new LineVerification(), new CurveVerification(), new EllipseVerification(), new CircleVerification(), new RectangleVerification(), new SquareVerification(), new ParallelogramVerification(), new TrapezoidVerification(), new IsoscelesTrapezoidVerification(), new RightTrapezoidVerification(), new TriangleVerification(), new PentagonVerification(), new HexagonVerification(), new OctagonVerification(), new DashLineVerification(), new BiLineVerification(), new WaveLineVerification(), new ArrowVerification(), new CurvyArrowVerification(), new BiArrowVerification(), new BiCurvyArrowVerification(), new AngleVerification(), new AsteriskVerification(), new PentagramVerification(), new CurvyBracketVerification()});
        return listOf;
    }

    @NotNull
    public final IShapeVerification create(@NotNull String shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        switch (shape.hashCode()) {
            case -1813852672:
                if (shape.equals(GeometryType.HEXAGON)) {
                    return new HexagonVerification();
                }
                break;
            case -1810807491:
                if (shape.equals(GeometryType.SQUARE)) {
                    return new SquareVerification();
                }
                break;
            case -1534430409:
                if (shape.equals(GeometryType.TRAPEZOID_RIGHT)) {
                    return new RightTrapezoidVerification();
                }
                break;
            case -1450821812:
                if (shape.equals("Rhombus")) {
                    return new RhombusVerification();
                }
                break;
            case -1193408056:
                if (shape.equals("Trapezoid")) {
                    return new TrapezoidVerification();
                }
                break;
            case -1169699505:
                if (shape.equals("Rectangle")) {
                    return new RectangleVerification();
                }
                break;
            case -888178941:
                if (shape.equals(GeometryType.BI_ARROW)) {
                    return new BiArrowVerification();
                }
                break;
            case -794114488:
                if (shape.equals(GeometryType.WAVE_LINE)) {
                    return new WaveLineVerification();
                }
                break;
            case -686476673:
                if (shape.equals(GeometryType.ARROW_CURVY)) {
                    return new CurvyArrowVerification();
                }
                break;
            case -677350275:
                if (shape.equals(GeometryType.PENTAGRAM)) {
                    return new PentagramVerification();
                }
                break;
            case -526804263:
                if (shape.equals(GeometryType.TRIANGLE_RIGHT)) {
                    return new RightTriangleVerification();
                }
                break;
            case -279979118:
                if (shape.equals(GeometryType.ASTERISK)) {
                    return new AsteriskVerification();
                }
                break;
            case 66098:
                if (shape.equals("Arc")) {
                    return new ArcVerification();
                }
                break;
            case 2368532:
                if (shape.equals(GeometryType.LINE)) {
                    return new LineVerification();
                }
                break;
            case 8172478:
                if (shape.equals(GeometryType.ELLIPSE)) {
                    return new EllipseVerification();
                }
                break;
            case 42753413:
                if (shape.equals(GeometryType.OCTAGON)) {
                    return new OctagonVerification();
                }
                break;
            case 63408307:
                if (shape.equals(GeometryType.ANGLE)) {
                    return new AngleVerification();
                }
                break;
            case 63538153:
                if (shape.equals(GeometryType.ARROW)) {
                    return new ArrowVerification();
                }
                break;
            case 65474767:
                if (shape.equals("Curve")) {
                    return new CurveVerification();
                }
                break;
            case 260094475:
                if (shape.equals(GeometryType.TRIANGLE_ISOSCELES)) {
                    return new IsoscelesTriangleVerification();
                }
                break;
            case 262486632:
                if (shape.equals(GeometryType.BRACKET_CURLY)) {
                    return new CurvyBracketVerification();
                }
                break;
            case 393791904:
                if (shape.equals(GeometryType.PENTAGON)) {
                    return new PentagonVerification();
                }
                break;
            case 906125647:
                if (shape.equals(GeometryType.DASH_LINE)) {
                    return new DashLineVerification();
                }
                break;
            case 1077602841:
                if (shape.equals(GeometryType.BI_ARROW_CURVY)) {
                    return new BiCurvyArrowVerification();
                }
                break;
            case 1235751554:
                if (shape.equals(GeometryType.PARABOLA)) {
                    return new ParabolaVerification();
                }
                break;
            case 1312319871:
                if (shape.equals("Parallelogram")) {
                    return new ParallelogramVerification();
                }
                break;
            case 1384593989:
                if (shape.equals(GeometryType.TRAPEZOID_ISOSCELES)) {
                    return new IsoscelesTrapezoidVerification();
                }
                break;
            case 1495688634:
                if (shape.equals(GeometryType.BI_LINE)) {
                    return new BiLineVerification();
                }
                break;
            case 1562406440:
                if (shape.equals("Triangle")) {
                    return new TriangleVerification();
                }
                break;
            case 1977476441:
                if (shape.equals(GeometryType.TRIANGLE_REGULAR)) {
                    return new RegularTriangleVerification();
                }
                break;
            case 2018617584:
                if (shape.equals("Circle")) {
                    return new CircleVerification();
                }
                break;
        }
        throw HWRException.INSTANCE.m33355of("Unknown Shape Type");
    }
}
