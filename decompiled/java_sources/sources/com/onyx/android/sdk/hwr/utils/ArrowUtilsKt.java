package com.onyx.android.sdk.hwr.utils;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.hwr.data.constant.HWRConfigurations;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0000\u001a2\u0010\u0004\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0000¨\u0006\u000b"}, m61528d2 = {"checkArrowFeature", "Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "isArrowDistanceEnough", "", "arrowStartIndex", "", "arrowEndIndex", "lineStartIndex", "lineEndIndex", "sdk-hwr_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nArrowUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrowUtils.kt\ncom/onyx/android/sdk/hwr/utils/ArrowUtilsKt\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n41#2,5:86\n41#2,5:91\n1#3:96\n*S KotlinDebug\n*F\n+ 1 ArrowUtils.kt\ncom/onyx/android/sdk/hwr/utils/ArrowUtilsKt\n*L\n60#1:86,5\n63#1:91,5\n*E\n"})
/* loaded from: classes7.dex */
public final class ArrowUtilsKt {
    /* JADX WARN: Removed duplicated region for block: B:22:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.onyx.android.sdk.hwr.utils.ArrowFeature checkArrowFeature(@org.jetbrains.annotations.NotNull java.util.List<com.onyx.android.sdk.base.data.TouchPoint> r14) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.hwr.utils.ArrowUtilsKt.checkArrowFeature(java.util.List):com.onyx.android.sdk.hwr.utils.ArrowFeature");
    }

    public static final boolean isArrowDistanceEnough(@NotNull List<TouchPoint> list, int i, int i2, int i3, int i4) {
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(list, "<this>");
        int[] swapIndexAsc = CollectionKt.swapIndexAsc(i, i2);
        List safelySubList = CollectionKt.safelySubList(list, swapIndexAsc[0], swapIndexAsc[1] + 1);
        int[] swapIndexAsc2 = CollectionKt.swapIndexAsc(i3, i4);
        List safelySubList2 = CollectionKt.safelySubList(list, swapIndexAsc2[0], swapIndexAsc2[1] + 1);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) safelySubList2);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) safelySubList2);
        TouchPointPair touchPointPair = new TouchPointPair((TouchPoint) first, (TouchPoint) last);
        Iterator it2 = safelySubList.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        float distance = touchPointPair.distance((TouchPoint) it2.next());
        while (it2.hasNext()) {
            distance = Math.max(distance, touchPointPair.distance((TouchPoint) it2.next()));
        }
        return distance > HWRConfigurations.INSTANCE.getArrowMinimumDistanceToLine();
    }
}
