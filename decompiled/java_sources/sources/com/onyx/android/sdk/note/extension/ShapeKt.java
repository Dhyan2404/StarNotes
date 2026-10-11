package com.onyx.android.sdk.note.extension;

import android.graphics.RectF;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\n\u0010\u0007\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\b\u001a\u00020\u0004*\u00020\u0002\u001a\u0018\u0010\t\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\f\u001a\u00020\r\u001a\u0018\u0010\u000e\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004¨\u0006\u0011"}, m61528d2 = {"getPointsBoundingRect", "Landroid/graphics/RectF;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "isShapeOnCurrentLayer", "", "notePage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "isTagShape", "isTapeShape", "moveToLayer", "", "", "targetLayer", "", "setVisible", "", "visible", "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shape.kt\ncom/onyx/android/sdk/note/extension/ShapeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,38:1\n1855#2,2:39\n1855#2,2:41\n*S KotlinDebug\n*F\n+ 1 Shape.kt\ncom/onyx/android/sdk/note/extension/ShapeKt\n*L\n31#1:39,2\n35#1:41,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeKt {
    @NotNull
    public static final RectF getPointsBoundingRect(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getBoundingRect();
    }

    public static final boolean isShapeOnCurrentLayer(@NotNull Shape shape, @NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        return notePage.getPageInfo().getCurrentLayerId() == shape.getLayerId();
    }

    public static final boolean isTagShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 45;
    }

    public static final boolean isTapeShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 39;
    }

    public static final void moveToLayer(@NotNull Collection<? extends Shape> collection, int i) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).setLayerId(i);
        }
    }

    public static final void setVisible(@NotNull List<? extends Shape> list, boolean z) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ShapeOptions.INSTANCE.setVisible((Shape) it2.next(), z);
        }
    }
}
