package com.onyx.android.sdk.note.common.utils;

import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.pen.PenConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\b*\u00020\t2\u0006\u0010\n\u001a\u00020\u0004¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeScales;", "", "()V", "getShapeWidthExtraScale", "", "shapeType", "", "scaleShapeCreateArgsDisplayScale", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "scale", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeScales {

    @NotNull
    public static final ShapeScales INSTANCE = new ShapeScales();

    public final float getShapeWidthExtraScale(int shapeType) {
        if (shapeType != 2 && shapeType != 5) {
            if (shapeType == 31) {
                return PenConstant.INSTANCE.getNORMAL_STROKE_WIDTH_EXTRA_SCALE();
            }
            if (shapeType == 40) {
                return PenConstant.INSTANCE.getUNIVERSAL_SHAPE_WIDTH_EXTRA_SCALE();
            }
            if (shapeType != 49 && shapeType != 21) {
                if (shapeType != 22 && shapeType != 46) {
                    if (shapeType != 47) {
                        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
                        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
                        return FLOAT_ONE.floatValue();
                    }
                }
                return PenConstant.INSTANCE.getCHARCOAL_STROKE_WIDTH_EXTRA_SCALE();
            }
        }
        return PenConstant.INSTANCE.getBRUSH_STROKE_WIDTH_EXTRA_SCALE();
    }

    public final void scaleShapeCreateArgsDisplayScale(@NotNull Shape shape, float f) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        if (shape.getShapeCreateArgs() == null || Float.compare(shape.getShapeCreateArgs().getDisplayScale(), 0.0f) == 0) {
            return;
        }
        shape.getShapeCreateArgs().setDisplayScale(shape.getShapeCreateArgs().getDisplayScale() * f);
    }
}
