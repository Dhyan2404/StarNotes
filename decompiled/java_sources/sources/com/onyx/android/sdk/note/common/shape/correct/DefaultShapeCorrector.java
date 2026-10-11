package com.onyx.android.sdk.note.common.shape.correct;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.data.GuideLineKt;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.correct.DefaultShapeCorrector;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector;", "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;", "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;", "args", "", "correct", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DefaultShapeCorrector implements ShapeCorrector {
    /* renamed from: c */
    public static final int m33803c(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: b */
    public final Pair<Guideline, Guideline> m33804b(ShapeCorrectionArgs args) {
        Object firstOrNull;
        List mergeList = CollectionKt.mergeList(args.getParalleledPairs(), args.getAlignedPairs());
        final DefaultShapeCorrector$findCorrectPair$1 defaultShapeCorrector$findCorrectPair$1 = new Function2<Pair<? extends Guideline, ? extends Guideline>, Pair<? extends Guideline, ? extends Guideline>, Integer>() { // from class: com.onyx.android.sdk.note.common.shape.correct.DefaultShapeCorrector$findCorrectPair$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Pair<? extends Guideline, ? extends Guideline> pair, Pair<? extends Guideline, ? extends Guideline> pair2) {
                return invoke2((Pair<Guideline, Guideline>) pair, (Pair<Guideline, Guideline>) pair2);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Integer invoke2(Pair<Guideline, Guideline> pair, Pair<Guideline, Guideline> pair2) {
                if (!(GeometryUtils.INSTANCE.intersectionAngle(pair.getFirst(), pair.getSecond()) == 0.0f)) {
                    return -1;
                }
                if (!(pair.getFirst().componentAlongPerpendicularDirection(pair.getSecond()).length() == 0.0f)) {
                    return -1;
                }
                if (pair.getSecond().getIsShapeGuideLine() && !pair2.getSecond().getIsShapeGuideLine()) {
                    return -1;
                }
                return 0;
            }
        };
        CollectionsKt___CollectionsKt.sortedWith(mergeList, new Comparator() { // from class: com.sunia.HTREnginev2.i0f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m33803c;
                m33803c = DefaultShapeCorrector.m33803c(Function2.this, obj, obj2);
                return m33803c;
            }
        });
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) mergeList);
        return (Pair) firstOrNull;
    }

    @Override // com.onyx.android.sdk.note.common.shape.correct.ShapeCorrector
    public void correct(@NotNull ShapeCorrectionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Pair<Guideline, Guideline> m33804b = m33804b(args);
        if (m33804b == null) {
            return;
        }
        Matrix copy = MatrixKt.copy(args.getShape().getShapeMatrix());
        Matrix invertMatrix = MatrixKt.invertMatrix(args.getRenderMatrix());
        Guideline transform = GuideLineKt.transform(m33804b.getFirst(), invertMatrix);
        Guideline transform2 = GuideLineKt.transform(m33804b.getSecond(), invertMatrix);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        float radToDegree = geometryUtils.radToDegree(geometryUtils.rotationAngleForParallel(transform, transform2));
        TouchPoint center = transform.center();
        copy.postRotate(radToDegree, center.getX(), center.getY());
        if (m33804b.getSecond().getIsShapeGuideLine() && GuideLineKt.isAlign(m33804b.getFirst(), m33804b.getSecond())) {
            TouchPointPair touchPointPair = new TouchPointPair(transform.center(), transform2.findCrossPoint(transform.center()));
            copy.postTranslate(touchPointPair.m33278dx(), touchPointPair.m33279dy());
        }
        args.getShape().setShapeMatrix(copy);
    }
}
