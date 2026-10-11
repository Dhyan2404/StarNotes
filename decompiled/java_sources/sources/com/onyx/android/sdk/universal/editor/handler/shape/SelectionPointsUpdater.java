package com.onyx.android.sdk.universal.editor.handler.shape;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.genericshape.FeatureCollection;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;", "", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "args", "", "update", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SelectionPointsUpdater {
    /* renamed from: a */
    public final void m41033a(UniversalShape shape, GeometryArgs args) {
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<TouchPoint> rotationTransform = geometryUtils.rotationTransform(args.getPoints(), new TouchPoint(args.getRotateX(), args.getRotateY()), -args.getRotation());
        RectF boundRect = geometryUtils.boundRect(rotationTransform);
        Matrix matrix = new Matrix();
        matrix.postTranslate(-boundRect.left, -boundRect.top);
        shape.updateBySelectionPoints(geometryUtils.transform(rotationTransform, matrix), true);
    }

    public final void update(@NotNull UniversalShape shape, @NotNull GeometryArgs args) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(args, "args");
        FeatureCollection featureCollection = shape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType != null) {
            int hashCode = universalShapeType.hashCode();
            if (hashCode != 513358239) {
                if (hashCode != 517845893) {
                    if (hashCode != 1186556563 || !universalShapeType.equals(UniversalShapeTypeConst.ISOSCELES_TRAPEZOID)) {
                        return;
                    }
                } else if (!universalShapeType.equals(UniversalShapeTypeConst.RIGHT_TRAPEZOID)) {
                    return;
                }
            } else if (!universalShapeType.equals("parallelogram")) {
                return;
            }
            m41033a(shape, args);
        }
    }
}
