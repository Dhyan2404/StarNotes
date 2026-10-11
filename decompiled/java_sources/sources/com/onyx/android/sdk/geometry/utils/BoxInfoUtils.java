package com.onyx.android.sdk.geometry.utils;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0006\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0007\u001a\u00020\b*\u00020\tJ\u0012\u0010\n\u001a\u00020\t*\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0005J\u0012\u0010\f\u001a\u00020\t*\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0005J\u0012\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0005J\f\u0010\u000e\u001a\u00020\u0004*\u0004\u0018\u00010\u0005J\n\u0010\u000f\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0010\u001a\u00020\u0004*\u00020\u0005J\f\u0010\u0011\u001a\u00020\u0004*\u0004\u0018\u00010\u0005J\n\u0010\u0012\u001a\u00020\u0004*\u00020\u0005J\f\u0010\u0013\u001a\u00020\u0004*\u0004\u0018\u00010\u0005J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015*\b\u0012\u0004\u0012\u00020\u00050\u0017¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;", "", "()V", "contentNormalizeMatrix", "Landroid/graphics/Matrix;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "contentRenderMatrix", "getScreenRectAspectScale", "", "Landroid/graphics/RectF;", "mapToPageDisplayRectF", "virtualPageBoxInfo", "mapToScreenRectF", "mapToShapeRect", "normalizeMatrix", "normalizeUnRotatedMatrix", "noteNormalizeMatrix", "notePageRenderMatrix", "noteRenderMatrix", "renderMatrix", "toBoxIdSet", "", "", "", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nBoxInfoUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxInfoUtils.kt\ncom/onyx/android/sdk/geometry/utils/BoxInfoUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1549#2:101\n1620#2,3:102\n*S KotlinDebug\n*F\n+ 1 BoxInfoUtils.kt\ncom/onyx/android/sdk/geometry/utils/BoxInfoUtils\n*L\n98#1:101\n98#1:102,3\n*E\n"})
/* loaded from: classes7.dex */
public final class BoxInfoUtils {

    @NotNull
    public static final BoxInfoUtils INSTANCE = new BoxInfoUtils();

    @NotNull
    public final Matrix contentNormalizeMatrix(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<this>");
        BoxInfo contentInfo = boxInfo.getContentInfo();
        if (contentInfo == null) {
            return new Matrix();
        }
        Matrix matrix = new Matrix();
        matrix.postConcat(INSTANCE.normalizeMatrix(contentInfo));
        matrix.postConcat(BoxInfo.INSTANCE.rotate(contentInfo.copy(), -contentInfo.getRotation()));
        return matrix;
    }

    @NotNull
    public final Matrix contentRenderMatrix(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<this>");
        return MatrixKt.invertMatrix(contentNormalizeMatrix(boxInfo));
    }

    public final float getScreenRectAspectScale(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        if (!rectF.isEmpty()) {
            return RectFKt.scaleToPage(RectFKt.copy(rectF), ResManager.INSTANCE.getScreenRectF());
        }
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        return FLOAT_ONE.floatValue();
    }

    @NotNull
    public final RectF mapToPageDisplayRectF(@NotNull RectF rectF, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        RectF copy = RectFKt.copy(rectF);
        notePageRenderMatrix(virtualPageBoxInfo.getNoteInfo()).mapRect(copy);
        return copy;
    }

    @NotNull
    public final RectF mapToScreenRectF(@NotNull RectF rectF, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        RectF copy = RectFKt.copy(rectF);
        renderMatrix(virtualPageBoxInfo).mapRect(copy);
        return copy;
    }

    @NotNull
    public final RectF mapToShapeRect(@NotNull RectF rectF, @NotNull BoxInfo virtualPageBoxInfo) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        RectF copy = RectFKt.copy(rectF);
        normalizeMatrix(virtualPageBoxInfo).mapRect(copy);
        return copy;
    }

    @NotNull
    public final Matrix normalizeMatrix(@Nullable BoxInfo boxInfo) {
        if (boxInfo == null) {
            return new Matrix();
        }
        Matrix matrix = new Matrix();
        matrix.postTranslate((-boxInfo.getVisibleRect().left) + (boxInfo.getOriginRectFWithMargin().left * boxInfo.getActualScale()), (-boxInfo.getVisibleRect().top) + (boxInfo.getOriginRectFWithMargin().top * boxInfo.getActualScale()));
        float actualScale = 1 / boxInfo.getActualScale();
        matrix.postScale(actualScale, actualScale);
        return matrix;
    }

    @NotNull
    public final Matrix normalizeUnRotatedMatrix(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<this>");
        Matrix matrix = new Matrix();
        matrix.postConcat(INSTANCE.normalizeMatrix(boxInfo));
        matrix.postConcat(BoxInfo.INSTANCE.getUnRotatedMatrix(boxInfo));
        return matrix;
    }

    @NotNull
    public final Matrix noteNormalizeMatrix(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<this>");
        return normalizeMatrix(boxInfo.getNoteInfo());
    }

    @NotNull
    public final Matrix notePageRenderMatrix(@Nullable BoxInfo boxInfo) {
        if (boxInfo == null) {
            return new Matrix();
        }
        Matrix matrix = new Matrix();
        matrix.postScale(boxInfo.getActualScale(), boxInfo.getActualScale());
        return matrix;
    }

    @NotNull
    public final Matrix noteRenderMatrix(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<this>");
        return renderMatrix(boxInfo.getNoteInfo());
    }

    @NotNull
    public final Matrix renderMatrix(@Nullable BoxInfo boxInfo) {
        Matrix normalizeMatrix = normalizeMatrix(boxInfo);
        Matrix matrix = new Matrix();
        normalizeMatrix.invert(matrix);
        return matrix;
    }

    @NotNull
    public final Set<String> toBoxIdSet(@NotNull List<BoxInfo> list) {
        int collectionSizeOrDefault;
        HashSet hashSet;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<BoxInfo> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((BoxInfo) it2.next()).getId());
        }
        hashSet = CollectionsKt___CollectionsKt.toHashSet(arrayList);
        return hashSet;
    }
}
