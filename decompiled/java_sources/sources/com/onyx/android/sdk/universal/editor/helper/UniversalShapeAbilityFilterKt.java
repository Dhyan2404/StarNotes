package com.onyx.android.sdk.universal.editor.helper;

import com.onyx.android.sdk.genericshape.FeatureCollection;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.universal.editor.helper.UniversalShapeEditor;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0002\u001a\u001a\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f\u001a\n\u0010\r\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u000e\u001a\u00020\u0001*\u00020\u0002¨\u0006\u000f"}, m61528d2 = {"drawSingleAngleOnly", "", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "isCurveSerialShape", "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;", "isLineSerialShape", "shouldDrawAligns", "editMode", "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;", "shouldDrawAngle", "shouldDrawParallel", "transformAction", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "shouldPurifyAngles", "supportStraightCorner", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UniversalShapeAbilityFilterKt {
    public static final boolean drawSingleAngleOnly(@NotNull UniversalShape universalShape) {
        List listOf;
        Intrinsics.checkNotNullParameter(universalShape, "<this>");
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{UniversalShapeTypeConst.PENTAGON, UniversalShapeTypeConst.HEXAGON, UniversalShapeTypeConst.OCTAGON});
        return listOf.contains(universalShapeType);
    }

    public static final boolean isCurveSerialShape(@NotNull UniversalShapeAttr universalShapeAttr) {
        List listOf;
        Intrinsics.checkNotNullParameter(universalShapeAttr, "<this>");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{UniversalShapeTypeConst.CURVE, UniversalShapeTypeConst.CURVY_ARROW, UniversalShapeTypeConst.BIDIRECTIONAL_CURVY_ARROW});
        String type = universalShapeAttr.getType();
        if (type == null) {
            type = "";
        }
        return listOf.contains(type);
    }

    public static final boolean isLineSerialShape(@NotNull UniversalShape universalShape) {
        List listOf;
        Intrinsics.checkNotNullParameter(universalShape, "<this>");
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"line", UniversalShapeTypeConst.DIRECTION_LINE, UniversalShapeTypeConst.BIDIRECTIONAL_LINE, UniversalShapeTypeConst.WAVE_LINE, UniversalShapeTypeConst.DASH_LINE});
        return listOf.contains(universalShapeType);
    }

    public static final boolean shouldDrawAligns(@NotNull UniversalShape universalShape, @NotNull UniversalShapeEditor.Mode editMode) {
        Intrinsics.checkNotNullParameter(universalShape, "<this>");
        Intrinsics.checkNotNullParameter(editMode, "editMode");
        return editMode == UniversalShapeEditor.Mode.EDIT;
    }

    public static final boolean shouldDrawAngle(@NotNull UniversalShape universalShape) {
        List listOf;
        Intrinsics.checkNotNullParameter(universalShape, "<this>");
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"angle", "triangle", UniversalShapeTypeConst.RIGHT_TRIANGLE, UniversalShapeTypeConst.ISOSCELES_TRIANGLE, UniversalShapeTypeConst.REGULAR_TRIANGLE, UniversalShapeTypeConst.TRAPEZOID, UniversalShapeTypeConst.RIGHT_TRAPEZOID, UniversalShapeTypeConst.ISOSCELES_TRAPEZOID, "rhombus", "parallelogram", UniversalShapeTypeConst.PENTAGON, UniversalShapeTypeConst.HEXAGON, UniversalShapeTypeConst.OCTAGON});
        return listOf.contains(universalShapeType);
    }

    public static final boolean shouldDrawParallel(@NotNull UniversalShape universalShape, @NotNull UniversalShapeEditor.Mode editMode, @NotNull ShapeTransformAction transformAction) {
        List listOf;
        List listOf2;
        Intrinsics.checkNotNullParameter(universalShape, "<this>");
        Intrinsics.checkNotNullParameter(editMode, "editMode");
        Intrinsics.checkNotNullParameter(transformAction, "transformAction");
        if (editMode == UniversalShapeEditor.Mode.ADD) {
            return isLineSerialShape(universalShape);
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ShapeTransformAction[]{ShapeTransformAction.Translate, ShapeTransformAction.ScaleXY, ShapeTransformAction.ScaleX, ShapeTransformAction.ScaleY});
        if (listOf.contains(transformAction)) {
            return false;
        }
        listOf2 = CollectionsKt__CollectionsJVMKt.listOf("circle");
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        if (listOf2.contains(universalShapeType)) {
            return false;
        }
        return !Intrinsics.areEqual(universalShapeType, UniversalShapeTypeConst.BRACKET) || transformAction == ShapeTransformAction.Rotation;
    }

    public static final boolean shouldPurifyAngles(@NotNull UniversalShape universalShape) {
        List listOf;
        Intrinsics.checkNotNullParameter(universalShape, "<this>");
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"triangle", UniversalShapeTypeConst.ISOSCELES_TRIANGLE, UniversalShapeTypeConst.RIGHT_TRIANGLE});
        return listOf.contains(universalShapeType);
    }

    public static final boolean supportStraightCorner(@NotNull UniversalShape universalShape) {
        List listOf;
        Intrinsics.checkNotNullParameter(universalShape, "<this>");
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"line", UniversalShapeTypeConst.DASH_LINE, UniversalShapeTypeConst.CURVE, UniversalShapeTypeConst.WAVE_LINE});
        return listOf.contains(universalShapeType);
    }

    public static final boolean isLineSerialShape(@NotNull UniversalShapeAttr universalShapeAttr) {
        List listOf;
        Intrinsics.checkNotNullParameter(universalShapeAttr, "<this>");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"line", UniversalShapeTypeConst.DIRECTION_LINE, UniversalShapeTypeConst.WAVE_LINE, UniversalShapeTypeConst.BIDIRECTIONAL_LINE, UniversalShapeTypeConst.DASH_LINE});
        String type = universalShapeAttr.getType();
        if (type == null) {
            type = "";
        }
        return listOf.contains(type);
    }
}
