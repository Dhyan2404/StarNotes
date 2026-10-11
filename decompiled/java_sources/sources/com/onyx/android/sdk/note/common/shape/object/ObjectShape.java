package com.onyx.android.sdk.note.common.shape.object;

import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.note.common.shape.BaseShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTests;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/shape/BaseShape;", "()V", "hitTest", "", "x", "", "y", "radius", "testData", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class ObjectShape extends BaseShape {
    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        float[] fArr = {x, y};
        MatrixKt.invertMatrix(getShapeMatrix()).mapPoints(fArr);
        return HitTestUtils.INSTANCE.circleRectHitTest(getOriginRect(), fArr[0], fArr[1], radius);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTest
    @NotNull
    public Shape testData() {
        ShapeTests.INSTANCE.addTestPoints(this, 2);
        return super.testData();
    }
}
