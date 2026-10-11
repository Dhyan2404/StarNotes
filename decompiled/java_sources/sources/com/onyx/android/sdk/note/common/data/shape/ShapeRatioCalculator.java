package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.genericshape.GeoConstant;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;", "", "()V", "getShapeAspectRatio", "", GeoConstant.KEY_Universal_Shape_Type, "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeRatioCalculator {

    @NotNull
    public static final ShapeRatioCalculator INSTANCE = new ShapeRatioCalculator();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000e. Please report as an issue. */
    public final float getShapeAspectRatio(@Nullable String universalShapeType) {
        float cos;
        float f;
        float sin;
        float cos2;
        float f2;
        if (universalShapeType != null) {
            switch (universalShapeType.hashCode()) {
                case -1717769397:
                    if (universalShapeType.equals(UniversalShapeTypeConst.REGULAR_TRIANGLE)) {
                        cos = (float) Math.cos(0.5235988f);
                        f = 1;
                        return f / cos;
                    }
                    break;
                case 3540562:
                    if (universalShapeType.equals(UniversalShapeTypeConst.STAR)) {
                        sin = 2 * ((float) Math.sin(1.2566371f));
                        cos2 = (float) Math.cos(0.62831855f);
                        f2 = 1;
                        return sin / (cos2 + f2);
                    }
                    break;
                case 329147776:
                    if (universalShapeType.equals(UniversalShapeTypeConst.PENTAGON)) {
                        double d = 0.62831855f;
                        sin = 2 * ((float) Math.cos(d));
                        cos2 = (float) Math.cos(0.31415927f);
                        f2 = (float) Math.sin(d);
                        return sin / (cos2 + f2);
                    }
                    break;
                case 816461344:
                    if (universalShapeType.equals(UniversalShapeTypeConst.HEXAGON)) {
                        float f3 = 2;
                        double d2 = 0.5235988f;
                        f = ((float) Math.cos(d2)) * f3;
                        cos = (f3 * ((float) Math.sin(d2))) + 1;
                        return f / cos;
                    }
                    break;
            }
        }
        return 1.0f;
    }
}
