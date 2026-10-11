package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b:\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u0004J\u000e\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0004J\u000e\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u0004J\u000e\u0010D\u001a\u00020B2\u0006\u0010E\u001a\u00020\u0004J\u000e\u0010F\u001a\u00020B2\u0006\u0010G\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006H"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeType;", "", "()V", "SELECTION_LINK_MODEL", "", "SHAPE_ANNOTATION", "SHAPE_AREA_ERASE", "SHAPE_ARROW_LINE", "SHAPE_ATTACHMENT", "SHAPE_AUDIO", "SHAPE_BALLPOINT_SCRIBBLE", "SHAPE_BRUSH_SCRIBBLE", "SHAPE_CALLIGRAPHY_SCRIBBLE", "SHAPE_CHARCOAL_SCRIBBLE", "SHAPE_CIRCLE", "SHAPE_EDIT_TEXT_SHAPE", "SHAPE_ERASER", "SHAPE_ERASE_OVERLAY", "SHAPE_EXCERPT", "SHAPE_FILL", "SHAPE_FORM_TEXT", "SHAPE_FOUNTAIN_PEN_SCRIBBLE", "SHAPE_FREE", "SHAPE_HWR_TEXT_SHAPE", "SHAPE_IMAGE", "SHAPE_INVALID", "SHAPE_LASER", "SHAPE_LINE", "SHAPE_LINK", "SHAPE_MARKER_SCRIBBLE", "SHAPE_NEO_BRUSH", "SHAPE_NEXT_TYPE", "SHAPE_OILY_PEN_SCRIBBLE", "SHAPE_PENCIL_SCRIBBLE", "SHAPE_POLYGON", "SHAPE_POLYLINE", "SHAPE_QUOTE", "SHAPE_RECTANGLE", "SHAPE_REFERENCE", "SHAPE_REGULAR_HEXAGON", "SHAPE_REGULAR_POLYGON", "SHAPE_RESOURCE", "SHAPE_RHOMBUS", "SHAPE_RICH_TEXT", "SHAPE_SOFT_PAINT_SCRIBBLE", "SHAPE_STAMP", "SHAPE_SVG", "SHAPE_SVG_DRAWABLE", "SHAPE_TAG", "SHAPE_TAPE", "SHAPE_TEXT", "SHAPE_TEXT_EXCERPT", "SHAPE_TIMESTAMP", "SHAPE_TRAPEZOID", "SHAPE_TRIANGLE", "SHAPE_TRIANGLE_45", "SHAPE_TRIANGLE_60", "SHAPE_TRIANGLE_90", "SHAPE_UNIVERSAL", "SHAPE_WAVE_LINE", "eraseShapeType", ApiBroadCastReceiver.ARGS_ERASE_TYPE, "getDefaultSizeList", "Lcom/onyx/android/sdk/base/extension/IntList;", "penType", "isBitmapRenderShape", "", "shape", "isSupportSerializeData", "type", "isValid", "shapeType", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeType {

    @NotNull
    public static final ShapeType INSTANCE = new ShapeType();
    public static final int SELECTION_LINK_MODEL = 100;
    public static final int SHAPE_ANNOTATION = 9;
    public static final int SHAPE_AREA_ERASE = 20;
    public static final int SHAPE_ARROW_LINE = 28;
    public static final int SHAPE_ATTACHMENT = 34;
    public static final int SHAPE_AUDIO = 23;
    public static final int SHAPE_BALLPOINT_SCRIBBLE = 2;
    public static final int SHAPE_BRUSH_SCRIBBLE = 5;
    public static final int SHAPE_CALLIGRAPHY_SCRIBBLE = 47;
    public static final int SHAPE_CHARCOAL_SCRIBBLE = 22;
    public static final int SHAPE_CIRCLE = 0;
    public static final int SHAPE_EDIT_TEXT_SHAPE = 16;
    public static final int SHAPE_ERASER = 1000;
    public static final int SHAPE_ERASE_OVERLAY = 14;
    public static final int SHAPE_EXCERPT = 41;
    public static final int SHAPE_FILL = 37;
    public static final int SHAPE_FORM_TEXT = 13;
    public static final int SHAPE_FOUNTAIN_PEN_SCRIBBLE = 4;
    public static final int SHAPE_FREE = 36;
    public static final int SHAPE_HWR_TEXT_SHAPE = 48;
    public static final int SHAPE_IMAGE = 19;
    public static final int SHAPE_INVALID = -1;
    public static final int SHAPE_LASER = 1003;
    public static final int SHAPE_LINE = 7;
    public static final int SHAPE_LINK = 33;
    public static final int SHAPE_MARKER_SCRIBBLE = 15;
    public static final int SHAPE_NEO_BRUSH = 21;
    public static final int SHAPE_NEXT_TYPE = 2066087194;
    public static final int SHAPE_OILY_PEN_SCRIBBLE = 3;
    public static final int SHAPE_PENCIL_SCRIBBLE = 46;
    public static final int SHAPE_POLYGON = 17;
    public static final int SHAPE_POLYLINE = 31;
    public static final int SHAPE_QUOTE = 42;
    public static final int SHAPE_RECTANGLE = 1;
    public static final int SHAPE_REFERENCE = 2000;
    public static final int SHAPE_REGULAR_HEXAGON = 27;
    public static final int SHAPE_REGULAR_POLYGON = 24;
    public static final int SHAPE_RESOURCE = 30;
    public static final int SHAPE_RHOMBUS = 18;
    public static final int SHAPE_RICH_TEXT = 29;
    public static final int SHAPE_SOFT_PAINT_SCRIBBLE = 49;
    public static final int SHAPE_STAMP = 32;
    public static final int SHAPE_SVG = 35;
    public static final int SHAPE_SVG_DRAWABLE = 43;
    public static final int SHAPE_TAG = 45;
    public static final int SHAPE_TAPE = 39;
    public static final int SHAPE_TEXT = 6;
    public static final int SHAPE_TEXT_EXCERPT = 44;
    public static final int SHAPE_TIMESTAMP = 38;
    public static final int SHAPE_TRAPEZOID = 26;
    public static final int SHAPE_TRIANGLE = 8;
    public static final int SHAPE_TRIANGLE_45 = 10;
    public static final int SHAPE_TRIANGLE_60 = 11;
    public static final int SHAPE_TRIANGLE_90 = 12;
    public static final int SHAPE_UNIVERSAL = 40;
    public static final int SHAPE_WAVE_LINE = 25;

    public final int eraseShapeType(int eraseType) {
        return (eraseType == 1 || eraseType != 2) ? 14 : 20;
    }

    @NotNull
    public final IntList getDefaultSizeList(int penType) {
        return TypeExtKt.toIntList(ResManager.INSTANCE.getIntArray(penType != 2 ? penType != 5 ? penType != 15 ? penType != 1000 ? penType != 1003 ? penType != 39 ? penType != 40 ? penType != 46 ? penType != 47 ? C7485R.array.shape_size_list_default : C7485R.array.shape_square_pen_size_list_default : C7485R.array.shape_pencil_size_list_default : C7485R.array.shape_graph_size_list_default : C7485R.array.shape_tape_size_list_default : C7485R.array.shape_laser_pen_size_list_default : C7485R.array.shape_eraser_size_list_default : C7485R.array.shape_marker_pen_size_list_default : C7485R.array.shape_ink_pen_size_list_default : C7485R.array.shape_ball_point_pen_size_list_default));
    }

    public final boolean isBitmapRenderShape(int shape) {
        return shape == 19 || shape == 32 || shape == 37 || shape == 22 || shape == 46;
    }

    public final boolean isSupportSerializeData(int type) {
        return (type == 23 || type == 34) ? false : true;
    }

    public final boolean isValid(int shapeType) {
        return shapeType != -1;
    }
}
