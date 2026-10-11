package com.onyx.android.sdk.geometry.data;

import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b'\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/GeometryType;", "", "()V", "ANGLE", "", "ANY", "ARC", "ARROW", "ARROW_CURVY", "ASTERISK", "BI_ARROW", "BI_ARROW_CURVY", "BI_LINE", "BRACKET_ANGLE", "BRACKET_CURLY", "BRACKET_ROUND", "BRACKET_SQUARE", "CIRCLE", "CURVE", "DASH_LINE", HWRValues.DIAGRAM_KIND_ELLIPSE, "HEXAGON", "LINE", "OCTAGON", "PARABOLA", "PARALLELOGRAM", "PENTAGON", "PENTAGRAM", "POINT", "POLYGON", "POLYLINE", HWRValues.DIAGRAM_KIND_RECTANGLE, "RHOMBUS", "SECTOR", "SQUARE", "TRAPEZOID", "TRAPEZOID_ISOSCELES", "TRAPEZOID_RIGHT", "TRIANGLE", "TRIANGLE_ISOSCELES", "TRIANGLE_REGULAR", "TRIANGLE_RIGHT", "WAVE_LINE", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeometryType {

    @NotNull
    public static final String ANGLE = "Angle";

    @NotNull
    public static final String ANY = "Any";

    @NotNull
    public static final String ARC = "Arc";

    @NotNull
    public static final String ARROW = "Arrow";

    @NotNull
    public static final String ARROW_CURVY = "Curvy-Arrow";

    @NotNull
    public static final String ASTERISK = "Asterisk";

    @NotNull
    public static final String BI_ARROW = "Bi-Arrow";

    @NotNull
    public static final String BI_ARROW_CURVY = "Bi-Curvy-Arrow";

    @NotNull
    public static final String BI_LINE = "Bi-Line";

    @NotNull
    public static final String BRACKET_ANGLE = "Angle-Bracket";

    @NotNull
    public static final String BRACKET_CURLY = "Curly-Bracket";

    @NotNull
    public static final String BRACKET_ROUND = "Round-Bracket";

    @NotNull
    public static final String BRACKET_SQUARE = "Square-Bracket";

    @NotNull
    public static final String CIRCLE = "Circle";

    @NotNull
    public static final String CURVE = "Curve";

    @NotNull
    public static final String DASH_LINE = "Dash-Line";

    @NotNull
    public static final String ELLIPSE = "Ellipse";

    @NotNull
    public static final String HEXAGON = "Hexagon";

    @NotNull
    public static final GeometryType INSTANCE = new GeometryType();

    @NotNull
    public static final String LINE = "Line";

    @NotNull
    public static final String OCTAGON = "Octagon";

    @NotNull
    public static final String PARABOLA = "Parabola";

    @NotNull
    public static final String PARALLELOGRAM = "Parallelogram";

    @NotNull
    public static final String PENTAGON = "Pentagon";

    @NotNull
    public static final String PENTAGRAM = "Pentagram";

    @NotNull
    public static final String POINT = "Point";

    @NotNull
    public static final String POLYGON = "Polygon";

    @NotNull
    public static final String POLYLINE = "Polyline";

    @NotNull
    public static final String RECTANGLE = "Rectangle";

    @NotNull
    public static final String RHOMBUS = "Rhombus";

    @NotNull
    public static final String SECTOR = "Sector";

    @NotNull
    public static final String SQUARE = "Square";

    @NotNull
    public static final String TRAPEZOID = "Trapezoid";

    @NotNull
    public static final String TRAPEZOID_ISOSCELES = "Isosceles-Trapezoid";

    @NotNull
    public static final String TRAPEZOID_RIGHT = "Right-Trapezoid";

    @NotNull
    public static final String TRIANGLE = "Triangle";

    @NotNull
    public static final String TRIANGLE_ISOSCELES = "Isosceles-Triangle";

    @NotNull
    public static final String TRIANGLE_REGULAR = "Regular-Triangle";

    @NotNull
    public static final String TRIANGLE_RIGHT = "Right-Triangle";

    @NotNull
    public static final String WAVE_LINE = "Wave-Line";

    private GeometryType() {
    }
}
