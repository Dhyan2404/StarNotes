package com.sunia.HTREnginev2;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.Migration;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes8.dex */
public final class gfh implements Migration<HWRTextShape> {
    @Override // com.onyx.android.sdk.base.data.Migration
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void afterMigration(@NotNull HWRTextShape hWRTextShape) {
        Migration.DefaultImpls.afterMigration(this, hWRTextShape);
    }

    @Override // com.onyx.android.sdk.base.data.Migration
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void beforeMigration(@NotNull HWRTextShape hWRTextShape) {
        Migration.DefaultImpls.beforeMigration(this, hWRTextShape);
    }

    @Override // com.onyx.android.sdk.base.data.Migration
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void migrate(@NotNull HWRTextShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        RectF pointsBoundingRect = shape.getPointsBoundingRect();
        RectF unionFontRect = shape.loadRenderPath().getUnionFontRect();
        float f = 2;
        shape.updateShapeRect(new TouchPoint(pointsBoundingRect.right - unionFontRect.width(), pointsBoundingRect.centerY() - (unionFontRect.height() / f)), new TouchPoint(pointsBoundingRect.right, pointsBoundingRect.centerY() + (unionFontRect.height() / f)));
        ShapePersistOptionsKt.setHWRTextShapeLayoutVersion(shape, 2);
    }

    @Override // com.onyx.android.sdk.base.data.Migration
    public int getVersion() {
        return 1;
    }
}
