package com.onyx.android.sdk.universal.editor.events.note;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ShowUniversalShapeSelectionEvent;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "b", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", "Landroid/graphics/RectF;", "c", "Landroid/graphics/RectF;", "getRectF", "()Landroid/graphics/RectF;", "rectF", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Landroid/graphics/RectF;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShowUniversalShapeSelectionEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualPageBoxInfo;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final RectF rectF;

    /* JADX WARN: Multi-variable type inference failed */
    public ShowUniversalShapeSelectionEvent(@NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapes, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.shapes = shapes;
        this.rectF = rectF;
    }

    @NotNull
    public final RectF getRectF() {
        return this.rectF;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }
}
