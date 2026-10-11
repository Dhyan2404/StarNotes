package com.onyx.android.sdk.note.common.shape.graphical;

import android.graphics.Matrix;
import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\"\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/RhombusShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;", "", "x", "y", "radius", "", "hitTest", "Landroid/graphics/Path;", "getPath", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRhombusShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RhombusShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/RhombusShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"})
/* loaded from: classes8.dex */
public final class RhombusShape extends GraphicalShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 18;

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        List<TouchPoint> points = getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        Path path = new Path();
        if (CollectionKt.getSize(points) < 4) {
            return path;
        }
        path.moveTo(points.get(0).getX(), points.get(0).getY());
        path.lineTo(points.get(1).getX(), points.get(1).getY());
        path.lineTo(points.get(2).getX(), points.get(2).getY());
        path.lineTo(points.get(3).getX(), points.get(3).getY());
        path.lineTo(points.get(0).getX(), points.get(0).getY());
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            path.transform(shapeMatrix);
        }
        return path;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        if (getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size() < 4) {
            return false;
        }
        List<TouchPoint> points = getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        float[] fArr = {points.get(0).getX(), points.get(0).getY(), points.get(1).getX(), points.get(1).getY(), points.get(2).getX(), points.get(2).getY(), points.get(3).getX(), points.get(3).getY()};
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapPoints(fArr);
        }
        HitTestUtils hitTestUtils = HitTestUtils.INSTANCE;
        return hitTestUtils.hitTestLine(fArr[0], fArr[1], fArr[2], fArr[3], x, y, radius) || hitTestUtils.hitTestLine(fArr[2], fArr[3], fArr[4], fArr[5], x, y, radius) || hitTestUtils.hitTestLine(fArr[4], fArr[5], fArr[6], fArr[7], x, y, radius) || hitTestUtils.hitTestLine(fArr[6], fArr[7], fArr[0], fArr[1], x, y, radius);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }
}
