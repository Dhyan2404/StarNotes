package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b2\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/UniversalShapeType;", "", "type", "", "iconResId", "", "textResId", "(Ljava/lang/String;ILjava/lang/String;II)V", "getIconResId", "()I", "setIconResId", "(I)V", "getTextResId", "setTextResId", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "LINE", "WAVE_LINE", "CURVE", "DASH_LINE", "DIRECTION_LINE", "BIDIRECTIONAL_LINE", "CURVY_ARROW", "BIDIRECTIONAL_CURVY_ARROW", "AXIS", "THREE_DIMENSIONAL_COORDINATE", "BRACKET", "IRREGULAR_TRIANGLE", "ISOSCELES_TRIANGLE", "REGULAR_TRIANGLE", "RIGHT_TRIANGLE", "SQUARE", HWRValues.DIAGRAM_KIND_RECTANGLE, "IRREGULAR_TRAPEZOID", "ISOSCELES_TRAPEZOID", "RIGHT_TRAPEZOID", "PARALLELOGRAM", "RHOMBUS", "PENTAGON", "HEXAGON", "OCTAGON", "CIRCLE", "OVAL", "STAR", "CONE", "TRIANGULAR_PYRAMID", "TRIANGULAR_PRISM", "CUBE", "SQUARE_PYRAMID", "CYLINDER", "SPHERE", "REGULAR_SPHERE", "HEMISPHEROID", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class UniversalShapeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ UniversalShapeType[] $VALUES;
    private int iconResId;
    private int textResId;

    @NotNull
    private String type;
    public static final UniversalShapeType LINE = new UniversalShapeType("LINE", 0, "line", C10651R.drawable.ic_note_shape_slanted_line, C10651R.string.line);
    public static final UniversalShapeType WAVE_LINE = new UniversalShapeType("WAVE_LINE", 1, UniversalShapeTypeConst.WAVE_LINE, C10651R.drawable.ic_note_shape_wave, C10651R.string.wavy_line);
    public static final UniversalShapeType CURVE = new UniversalShapeType("CURVE", 2, UniversalShapeTypeConst.CURVE, C10651R.drawable.ic_note_shape_curve, C10651R.string.curve);
    public static final UniversalShapeType DASH_LINE = new UniversalShapeType("DASH_LINE", 3, UniversalShapeTypeConst.DASH_LINE, C10651R.drawable.ic_note_shape_dash_line, C10651R.string.dash_line);
    public static final UniversalShapeType DIRECTION_LINE = new UniversalShapeType("DIRECTION_LINE", 4, UniversalShapeTypeConst.DIRECTION_LINE, C10651R.drawable.ic_note_shape_direction_line, C10651R.string.direction_line);
    public static final UniversalShapeType BIDIRECTIONAL_LINE = new UniversalShapeType("BIDIRECTIONAL_LINE", 5, UniversalShapeTypeConst.BIDIRECTIONAL_LINE, C10651R.drawable.ic_note_shape_bidirectional_line, C10651R.string.bidirectional_line);
    public static final UniversalShapeType CURVY_ARROW = new UniversalShapeType("CURVY_ARROW", 6, UniversalShapeTypeConst.CURVY_ARROW, C10651R.drawable.ic_note_shape_curvy_arrow, C10651R.string.curvy_arrow);
    public static final UniversalShapeType BIDIRECTIONAL_CURVY_ARROW = new UniversalShapeType("BIDIRECTIONAL_CURVY_ARROW", 7, UniversalShapeTypeConst.BIDIRECTIONAL_CURVY_ARROW, C10651R.drawable.ic_note_shape_bidirectional_curvy_arrow, C10651R.string.bidirectional_curvy_arrow);
    public static final UniversalShapeType AXIS = new UniversalShapeType("AXIS", 8, UniversalShapeTypeConst.AXIS, C10651R.drawable.ic_note_shape_axis, C10651R.string.axis);
    public static final UniversalShapeType THREE_DIMENSIONAL_COORDINATE = new UniversalShapeType("THREE_DIMENSIONAL_COORDINATE", 9, UniversalShapeTypeConst.THREE_DIMENSIONAL_COORDINATE, C10651R.drawable.ic_note_shape_three_dimensional_coordinate, C10651R.string.three_dimensional_coordinate);
    public static final UniversalShapeType BRACKET = new UniversalShapeType("BRACKET", 10, UniversalShapeTypeConst.BRACKET, C10651R.drawable.ic_note_shape_bracket, C10651R.string.big_bracket);
    public static final UniversalShapeType IRREGULAR_TRIANGLE = new UniversalShapeType("IRREGULAR_TRIANGLE", 11, "triangle", C10651R.drawable.ic_note_shape_triangle_irregular, C10651R.string.triangle);
    public static final UniversalShapeType ISOSCELES_TRIANGLE = new UniversalShapeType("ISOSCELES_TRIANGLE", 12, UniversalShapeTypeConst.ISOSCELES_TRIANGLE, C10651R.drawable.ic_note_shape_triangle_isosceles, C10651R.string.triangle);
    public static final UniversalShapeType REGULAR_TRIANGLE = new UniversalShapeType("REGULAR_TRIANGLE", 13, UniversalShapeTypeConst.REGULAR_TRIANGLE, C10651R.drawable.ic_note_shape_triangle_regular, C10651R.string.regular_triangle);
    public static final UniversalShapeType RIGHT_TRIANGLE = new UniversalShapeType("RIGHT_TRIANGLE", 14, UniversalShapeTypeConst.RIGHT_TRIANGLE, C10651R.drawable.ic_note_shape_right_triangle, C10651R.string.right_triangle);
    public static final UniversalShapeType SQUARE = new UniversalShapeType("SQUARE", 15, "square", C10651R.drawable.ic_note_shape_square, C10651R.string.square);
    public static final UniversalShapeType RECTANGLE = new UniversalShapeType(HWRValues.DIAGRAM_KIND_RECTANGLE, 16, UniversalShapeTypeConst.RECTANGLE, C10651R.drawable.ic_note_shape_rectangle, C10651R.string.rectangle);
    public static final UniversalShapeType IRREGULAR_TRAPEZOID = new UniversalShapeType("IRREGULAR_TRAPEZOID", 17, UniversalShapeTypeConst.TRAPEZOID, C10651R.drawable.ic_note_shape_trapezoid_irregular, C10651R.string.trapezoid);
    public static final UniversalShapeType ISOSCELES_TRAPEZOID = new UniversalShapeType("ISOSCELES_TRAPEZOID", 18, UniversalShapeTypeConst.ISOSCELES_TRAPEZOID, C10651R.drawable.ic_note_shape_trapezoid_isosceles, C10651R.string.isosceles_trapezoid);
    public static final UniversalShapeType RIGHT_TRAPEZOID = new UniversalShapeType("RIGHT_TRAPEZOID", 19, UniversalShapeTypeConst.RIGHT_TRAPEZOID, C10651R.drawable.ic_note_shape_right_trapezoid, C10651R.string.right_trapezoid);
    public static final UniversalShapeType PARALLELOGRAM = new UniversalShapeType("PARALLELOGRAM", 20, "parallelogram", C10651R.drawable.ic_note_shape_parallelogram, C10651R.string.parallelogram);
    public static final UniversalShapeType RHOMBUS = new UniversalShapeType("RHOMBUS", 21, "rhombus", C10651R.drawable.ic_note_shape_rhombus, C10651R.string.rhombus);
    public static final UniversalShapeType PENTAGON = new UniversalShapeType("PENTAGON", 22, UniversalShapeTypeConst.PENTAGON, C10651R.drawable.ic_note_shape_pentagon, C10651R.string.pentagon);
    public static final UniversalShapeType HEXAGON = new UniversalShapeType("HEXAGON", 23, UniversalShapeTypeConst.HEXAGON, C10651R.drawable.ic_note_shape_hexagon, C10651R.string.hexagon);
    public static final UniversalShapeType OCTAGON = new UniversalShapeType("OCTAGON", 24, UniversalShapeTypeConst.OCTAGON, C10651R.drawable.ic_note_shape_octagon, C10651R.string.octagon);
    public static final UniversalShapeType CIRCLE = new UniversalShapeType("CIRCLE", 25, "circle", C10651R.drawable.ic_note_shape_circle, C10651R.string.circle);
    public static final UniversalShapeType OVAL = new UniversalShapeType("OVAL", 26, UniversalShapeTypeConst.OVAL, C10651R.drawable.ic_note_shape_oval, C10651R.string.oval);
    public static final UniversalShapeType STAR = new UniversalShapeType("STAR", 27, UniversalShapeTypeConst.STAR, C10651R.drawable.ic_note_shape_star, C10651R.string.star);
    public static final UniversalShapeType CONE = new UniversalShapeType("CONE", 28, UniversalShapeTypeConst.CONE, C10651R.drawable.ic_note_shape_cone, C10651R.string.cone);
    public static final UniversalShapeType TRIANGULAR_PYRAMID = new UniversalShapeType("TRIANGULAR_PYRAMID", 29, UniversalShapeTypeConst.TRIANGULAR_PYRAMID, C10651R.drawable.ic_note_shape_triangular_pyramid, C10651R.string.triangular_pyramid);
    public static final UniversalShapeType TRIANGULAR_PRISM = new UniversalShapeType("TRIANGULAR_PRISM", 30, UniversalShapeTypeConst.TRIANGULAR_PRISM, C10651R.drawable.ic_note_shape_triangular_prism, C10651R.string.triangular_prism);
    public static final UniversalShapeType CUBE = new UniversalShapeType("CUBE", 31, UniversalShapeTypeConst.CUBE, C10651R.drawable.ic_note_shape_cube, C10651R.string.cube);
    public static final UniversalShapeType SQUARE_PYRAMID = new UniversalShapeType("SQUARE_PYRAMID", 32, UniversalShapeTypeConst.SQUARE_PYRAMID, C10651R.drawable.ic_note_shape_square_pyramid, C10651R.string.square_pyramid);
    public static final UniversalShapeType CYLINDER = new UniversalShapeType("CYLINDER", 33, UniversalShapeTypeConst.CYLINDER, C10651R.drawable.ic_note_shape_cylinder, C10651R.string.cylinder);
    public static final UniversalShapeType SPHERE = new UniversalShapeType("SPHERE", 34, UniversalShapeTypeConst.SPHERE, C10651R.drawable.ic_note_shape_sphere, C10651R.string.sphere);
    public static final UniversalShapeType REGULAR_SPHERE = new UniversalShapeType("REGULAR_SPHERE", 35, UniversalShapeTypeConst.REGULAR_SPHERE, C10651R.drawable.ic_note_shape_sphere_regular, C10651R.string.regular_sphere);
    public static final UniversalShapeType HEMISPHEROID = new UniversalShapeType("HEMISPHEROID", 36, UniversalShapeTypeConst.HEMISPHEROID, C10651R.drawable.ic_note_shape_hemispheroid, C10651R.string.hemispheroid);

    private static final /* synthetic */ UniversalShapeType[] $values() {
        return new UniversalShapeType[]{LINE, WAVE_LINE, CURVE, DASH_LINE, DIRECTION_LINE, BIDIRECTIONAL_LINE, CURVY_ARROW, BIDIRECTIONAL_CURVY_ARROW, AXIS, THREE_DIMENSIONAL_COORDINATE, BRACKET, IRREGULAR_TRIANGLE, ISOSCELES_TRIANGLE, REGULAR_TRIANGLE, RIGHT_TRIANGLE, SQUARE, RECTANGLE, IRREGULAR_TRAPEZOID, ISOSCELES_TRAPEZOID, RIGHT_TRAPEZOID, PARALLELOGRAM, RHOMBUS, PENTAGON, HEXAGON, OCTAGON, CIRCLE, OVAL, STAR, CONE, TRIANGULAR_PYRAMID, TRIANGULAR_PRISM, CUBE, SQUARE_PYRAMID, CYLINDER, SPHERE, REGULAR_SPHERE, HEMISPHEROID};
    }

    static {
        UniversalShapeType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private UniversalShapeType(String str, int i, String str2, int i2, int i3) {
        this.type = str2;
        this.iconResId = i2;
        this.textResId = i3;
    }

    @NotNull
    public static EnumEntries<UniversalShapeType> getEntries() {
        return $ENTRIES;
    }

    public static UniversalShapeType valueOf(String str) {
        return (UniversalShapeType) Enum.valueOf(UniversalShapeType.class, str);
    }

    public static UniversalShapeType[] values() {
        return (UniversalShapeType[]) $VALUES.clone();
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setIconResId(int i) {
        this.iconResId = i;
    }

    public final void setTextResId(int i) {
        this.textResId = i;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }
}
