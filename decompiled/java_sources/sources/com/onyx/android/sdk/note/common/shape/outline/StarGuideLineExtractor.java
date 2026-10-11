package com.onyx.android.sdk.note.common.shape.outline;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0004*\b\u0012\u0004\u0012\u00020\u00070\u0004H\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/outline/StarGuideLineExtractor;", "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "extract", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStarGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StarGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/StarGuideLineExtractor\n+ 2 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPairKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,28:1\n262#2:29\n252#2:33\n1549#3:30\n1620#3,2:31\n1622#3:34\n1549#3:35\n1620#3,3:36\n*S KotlinDebug\n*F\n+ 1 StarGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/StarGuideLineExtractor\n*L\n13#1:29\n13#1:33\n13#1:30\n13#1:31,2\n13#1:34\n14#1:35\n14#1:36,3\n*E\n"})
/* loaded from: classes8.dex */
public final class StarGuideLineExtractor implements GuideLineExtractor {
    /* renamed from: a */
    public final List<TouchPointPair> m33887a(List<TouchPoint> list) {
        IntRange until;
        IntProgression step;
        ArrayList arrayList = new ArrayList();
        until = RangesKt___RangesKt.until(0, 5);
        step = RangesKt___RangesKt.step(until, 1);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                arrayList.add(new TouchPointPair(list.get(first), list.get((first + 2) % 5)));
                if (first == last) {
                    break;
                }
                first += step2;
            }
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractor
    @NotNull
    public List<Guideline> extract(@NotNull UniversalShape shape) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(shape, "shape");
        List<TouchPointPair> m33887a = m33887a(shape.getSelectionPoints());
        Matrix shapeMatrix = shape.getShapeMatrix();
        List<TouchPointPair> list = m33887a;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList<TouchPointPair> arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPointPair touchPointPair : list) {
            arrayList.add(new TouchPointPair(touchPointPair.getP1().transform(shapeMatrix), touchPointPair.getP2().transform(shapeMatrix)));
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (TouchPointPair touchPointPair2 : arrayList) {
            arrayList2.add(new Guideline(shape.getShapeUniqueId(), touchPointPair2.getP1(), touchPointPair2.getP2(), null, 8, null));
        }
        return arrayList2;
    }
}
