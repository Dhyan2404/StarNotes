package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0006J\u001e\u0010\r\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0011J \u0010\u0012\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011J\u001e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011J\u0012\u0010\u0014\u001a\u00020\b*\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016J\u0018\u0010\u0014\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010\u0015\u001a\u00020\u0016J\u0012\u0010\r\u001a\u00020\b*\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\r\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00060\u0011J\n\u0010\u0017\u001a\u00020\b*\u00020\u0006J\u0010\u0010\u0017\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00060\u0011J\u0012\u0010\u0018\u001a\u00020\b*\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016J\u0018\u0010\u0018\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010\u0015\u001a\u00020\u0016J\u0018\u0010\u0019\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010\u0015\u001a\u00020\u0016J\n\u0010\u001a\u001a\u00020\b*\u00020\u0006¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;", "", "()V", "expandShapeRectWithWidth", "", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeRect", "Landroid/graphics/RectF;", "matrix", "Landroid/graphics/Matrix;", "widthExtraScale", "", "getBoundingRect", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "shapes", "", "getRenderBoundingRect", "roundBoundingRectWithWidth", "getBoundingPageDisplayRectFWithWidth", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getBoundingRectWithWidth", "getBoundingScreenRectWithWidth", "getOriginBoundingScreenRect", "getShapeOriginRectWithWidth", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeRectUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeRectUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeRectUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n1549#2:136\n1620#2,3:137\n*S KotlinDebug\n*F\n+ 1 ShapeRectUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeRectUtils\n*L\n62#1:136\n62#1:137,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeRectUtils {

    @NotNull
    public static final ShapeRectUtils INSTANCE = new ShapeRectUtils();

    public static /* synthetic */ void expandShapeRectWithWidth$default(ShapeRectUtils shapeRectUtils, Shape shape, RectF rectF, Matrix matrix, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            matrix = ShapeTypes.INSTANCE.getTargetShape(shape).getShapeMatrix();
        }
        if ((i & 8) != 0) {
            f = ShapeScales.INSTANCE.getShapeWidthExtraScale(ShapeTypes.INSTANCE.getTargetType(shape));
        }
        shapeRectUtils.expandShapeRectWithWidth(shape, rectF, matrix, f);
    }

    public final void expandShapeRectWithWidth(@NotNull Shape shape, @Nullable RectF shapeRect, @Nullable Matrix matrix, float widthExtraScale) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (shapeRect != null) {
            RectKt.expand(shapeRect, (shape.getStrokeWidth() / 2.0f) * MatrixKt.getMaxScale(matrix) * widthExtraScale);
        }
    }

    @NotNull
    public final RectF getBoundingPageDisplayRectFWithWidth(@NotNull Shape shape, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        return BoxInfoUtils.INSTANCE.mapToPageDisplayRectF(getBoundingRectWithWidth(shape), virtualPageBoxInfo);
    }

    @NotNull
    public final RectF getBoundingRect(@NotNull Shape shape, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        RectF rectF = new RectF(shape.getBoundingRect());
        renderContext.getMatrix().mapRect(rectF);
        RectKt.expand(rectF, ShapeRenders.INSTANCE.getRenderStrokeWidth(shape, renderContext));
        return rectF;
    }

    @NotNull
    public final RectF getBoundingRectWithWidth(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        RectF rectF = new RectF(shape.getBoundingRect());
        expandShapeRectWithWidth$default(this, shape, rectF, null, ShapeScales.INSTANCE.getShapeWidthExtraScale(ShapeTypes.INSTANCE.getTargetType(shape)), 4, null);
        return rectF;
    }

    @NotNull
    public final RectF getBoundingScreenRectWithWidth(@NotNull Shape shape, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        return BoxInfoUtils.INSTANCE.mapToScreenRectF(getBoundingRectWithWidth(shape), virtualPageBoxInfo);
    }

    @NotNull
    public final RectF getOriginBoundingScreenRect(@NotNull List<? extends Shape> list, @NotNull BoxInfo virtualPageBoxInfo) {
        RectF mapToScreenRectF;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        RectF rectF = null;
        for (Shape shape : list) {
            RectF rectF2 = new RectF(shape.getOriginRect());
            Matrix shapeMatrix = shape.getShapeMatrix();
            if (shapeMatrix != null) {
                shapeMatrix.mapRect(rectF2);
            }
            if (rectF == null) {
                rectF = RectFKt.copy(rectF2);
            } else {
                rectF.union(rectF2.left, rectF2.top);
                rectF.union(rectF2.right, rectF2.bottom);
            }
        }
        return (rectF == null || (mapToScreenRectF = BoxInfoUtils.INSTANCE.mapToScreenRectF(rectF, virtualPageBoxInfo)) == null) ? new RectF() : mapToScreenRectF;
    }

    @Nullable
    public final RectF getRenderBoundingRect(@NotNull RenderContext renderContext, @Nullable List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        List<? extends Shape> list = shapes;
        RectF rectF = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        for (Shape shape : shapes) {
            RectF boundingRectWithWidth = getBoundingRectWithWidth(shape);
            RectKt.expand(boundingRectWithWidth, ShapeRenders.INSTANCE.getRenderStrokeWidth(shape, renderContext));
            renderContext.getRenderMeasure().getMatrix().mapRect(boundingRectWithWidth);
            rectF = RectFKt.unionOrCopy(rectF, boundingRectWithWidth);
        }
        return rectF;
    }

    @NotNull
    public final RectF getShapeOriginRectWithWidth(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        RectF rectF = new RectF(shape.getOriginRect());
        RectKt.expand(rectF, shape.getStrokeWidth() / 2.0f);
        return rectF;
    }

    @NotNull
    public final RectF roundBoundingRectWithWidth(@NotNull RenderContext renderContext, @Nullable List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        RectUtils rectUtils = RectUtils.INSTANCE;
        RectF renderBoundingRect = getRenderBoundingRect(renderContext, shapes);
        if (renderBoundingRect == null) {
            renderBoundingRect = new RectF();
        }
        return rectUtils.roundExpandRectF(renderBoundingRect);
    }

    @NotNull
    public final RectF getBoundingPageDisplayRectFWithWidth(@NotNull List<? extends Shape> list, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        return BoxInfoUtils.INSTANCE.mapToPageDisplayRectF(getBoundingRectWithWidth(list), virtualPageBoxInfo);
    }

    @NotNull
    public final RectF getBoundingScreenRectWithWidth(@NotNull List<? extends Shape> list, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        return BoxInfoUtils.INSTANCE.mapToScreenRectF(getBoundingRectWithWidth(list), virtualPageBoxInfo);
    }

    @NotNull
    public final RectF getBoundingRect(@NotNull RenderContext renderContext, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(shape, "shape");
        RectF rectF = new RectF(shape.getBoundingRect());
        renderContext.getMatrix().mapRect(rectF);
        RectKt.expand(rectF, ShapeRenders.INSTANCE.getRenderStrokeWidth(shape, renderContext));
        return rectF;
    }

    @NotNull
    public final RectF getBoundingRectWithWidth(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        RectF rectF = new RectF();
        Iterator<? extends Shape> it2 = list.iterator();
        while (it2.hasNext()) {
            rectF = RectFKt.unionOrCopy(rectF, getBoundingRectWithWidth(it2.next()));
        }
        return rectF;
    }

    @Nullable
    public final RectF getBoundingRect(@NotNull RenderContext renderContext, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Iterator<? extends Shape> it2 = shapes.iterator();
        RectF rectF = null;
        while (it2.hasNext()) {
            rectF = RectFKt.unionOrCopy(rectF, getBoundingRect(renderContext, it2.next()));
        }
        return rectF;
    }

    @NotNull
    public final RectF getBoundingRect(@NotNull List<? extends Shape> list) {
        int collectionSizeOrDefault;
        List list2;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends Shape> list3 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list3.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Shape) it2.next()).getBoundingRect());
        }
        list2 = CollectionsKt___CollectionsKt.toList(arrayList);
        return (RectF) AnyKt.transform(list2, new Function1<List<? extends RectF>, RectF>() { // from class: com.onyx.android.sdk.note.common.utils.ShapeRectUtils$getBoundingRect$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RectF invoke(@NotNull List<? extends RectF> it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return RectUtils.INSTANCE.boundingRect(it3);
            }
        });
    }
}
