package com.onyx.android.sdk.hwr.service.comparator;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.service.comparator.CandidateSort;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ(\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;", "", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;", "candidates", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "originPoints", "", "compareAndSort", "Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;", "a", "Ljava/util/List;", "comparators", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CandidateSort {

    @NotNull
    public static final CandidateSort INSTANCE = new CandidateSort();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final List<ShapeCandidateComparator> comparators;

    static {
        List<ShapeCandidateComparator> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ShapeCandidateComparator[]{AreaComparator.INSTANCE, LineSubclassComparator.INSTANCE, OvalSubclassComparator.INSTANCE, TriangleSubclassComparator.INSTANCE, QuadPolygonSubclassComparator.INSTANCE});
        comparators = listOf;
    }

    /* renamed from: b */
    public static final int m33367b(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    @NotNull
    public final List<HWRCandidate> compareAndSort(@NotNull List<HWRCandidate> candidates, @NotNull final List<TouchPoint> originPoints) {
        List sortedWith;
        List<HWRCandidate> mutableList;
        Intrinsics.checkNotNullParameter(candidates, "candidates");
        Intrinsics.checkNotNullParameter(originPoints, "originPoints");
        final Function2<HWRCandidate, HWRCandidate, Integer> function2 = new Function2<HWRCandidate, HWRCandidate, Integer>() { // from class: com.onyx.android.sdk.hwr.service.comparator.CandidateSort$compareAndSort$sorted$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(HWRCandidate hWRCandidate, HWRCandidate hWRCandidate2) {
                List<ShapeCandidateComparator> list;
                int compare;
                list = CandidateSort.comparators;
                List<TouchPoint> list2 = originPoints;
                for (ShapeCandidateComparator shapeCandidateComparator : list) {
                    List<String> supportedShapes = shapeCandidateComparator.getSupportedShapes();
                    if (!(!supportedShapes.contains(hWRCandidate.getShapeType())) && !(!supportedShapes.contains(hWRCandidate2.getShapeType())) && (compare = shapeCandidateComparator.compare(hWRCandidate.getShapeType(), hWRCandidate2.getShapeType(), hWRCandidate.getShapeArgs(), hWRCandidate2.getShapeArgs(), list2)) != 0) {
                        return Integer.valueOf(compare);
                    }
                }
                return 0;
            }
        };
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(candidates, new Comparator() { // from class: com.sunia.HTREnginev2.hnd
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m33367b;
                m33367b = CandidateSort.m33367b(Function2.this, obj, obj2);
                return m33367b;
            }
        });
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) sortedWith);
        return mutableList;
    }
}
