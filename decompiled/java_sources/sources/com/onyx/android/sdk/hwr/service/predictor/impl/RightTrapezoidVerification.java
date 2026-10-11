package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.AnglePoints;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification;
import com.onyx.android.sdk.hwr.service.predictor.VerificationResult;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\u000b\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/RightTrapezoidVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "", "shapeName", "", "similarObjectTypes", "", "verify", "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "b", "", "a", "Ljava/util/List;", "sortedPoints", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRightTrapezoidVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RightTrapezoidVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/RightTrapezoidVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1045#2:75\n1045#2:76\n1549#2:77\n1620#2,3:78\n*S KotlinDebug\n*F\n+ 1 RightTrapezoidVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/RightTrapezoidVerification\n*L\n49#1:75\n51#1:76\n71#1:77\n71#1:78,3\n*E\n"})
/* loaded from: classes7.dex */
public final class RightTrapezoidVerification extends BaseShapeVerification {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<TouchPoint> sortedPoints = new ArrayList();

    /* renamed from: b */
    public final boolean m33382b(List<TouchPoint> list) {
        List listOf;
        List sortedWith;
        Object first;
        Object last;
        Object first2;
        Object first3;
        Object first4;
        Object last2;
        Object last3;
        Object first5;
        Object first6;
        Object last4;
        Object last5;
        List listOf2;
        TouchPointPair touchPointPair = new TouchPointPair(list.get(0), list.get(1));
        TouchPointPair touchPointPair2 = new TouchPointPair(list.get(1), list.get(2));
        TouchPointPair touchPointPair3 = new TouchPointPair(list.get(3), list.get(2));
        TouchPointPair touchPointPair4 = new TouchPointPair(list.get(0), list.get(3));
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        if (GeometryUtils.isParallelTo$default(geometryUtils, touchPointPair, touchPointPair3, null, false, 6, null)) {
            listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPointPair[]{touchPointPair, touchPointPair3});
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(listOf2, new Comparator() { // from class: com.onyx.android.sdk.hwr.service.predictor.impl.RightTrapezoidVerification$filterPoints$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((TouchPointPair) t).length()), Float.valueOf(((TouchPointPair) t2).length()));
                    return compareValues;
                }
            });
        } else {
            if (!GeometryUtils.isParallelTo$default(geometryUtils, touchPointPair2, touchPointPair4, null, false, 6, null)) {
                return false;
            }
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPointPair[]{touchPointPair2, touchPointPair4});
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(listOf, new Comparator() { // from class: com.onyx.android.sdk.hwr.service.predictor.impl.RightTrapezoidVerification$filterPoints$$inlined$sortedBy$2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((TouchPointPair) t).length()), Float.valueOf(((TouchPointPair) t2).length()));
                    return compareValues;
                }
            });
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) sortedWith);
        TouchPoint p1 = ((TouchPointPair) first).getP1();
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) sortedWith);
        TouchPointPair touchPointPair5 = new TouchPointPair(p1, ((TouchPointPair) last).getP1());
        first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) sortedWith);
        if (GeometryUtils.isPerpendicularTo$default(geometryUtils, touchPointPair5, (TouchPointPair) first2, null, 2, null)) {
            List<TouchPoint> list2 = this.sortedPoints;
            first5 = CollectionsKt___CollectionsKt.first((List<? extends Object>) sortedWith);
            list2.add(((TouchPointPair) first5).getP1());
            List<TouchPoint> list3 = this.sortedPoints;
            first6 = CollectionsKt___CollectionsKt.first((List<? extends Object>) sortedWith);
            list3.add(((TouchPointPair) first6).getP2());
            List<TouchPoint> list4 = this.sortedPoints;
            last4 = CollectionsKt___CollectionsKt.last((List<? extends Object>) sortedWith);
            list4.add(((TouchPointPair) last4).getP2());
            List<TouchPoint> list5 = this.sortedPoints;
            last5 = CollectionsKt___CollectionsKt.last((List<? extends Object>) sortedWith);
            list5.add(((TouchPointPair) last5).getP1());
        } else {
            List<TouchPoint> list6 = this.sortedPoints;
            first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) sortedWith);
            list6.add(((TouchPointPair) first3).getP2());
            List<TouchPoint> list7 = this.sortedPoints;
            first4 = CollectionsKt___CollectionsKt.first((List<? extends Object>) sortedWith);
            list7.add(((TouchPointPair) first4).getP1());
            List<TouchPoint> list8 = this.sortedPoints;
            last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) sortedWith);
            list8.add(((TouchPointPair) last2).getP1());
            List<TouchPoint> list9 = this.sortedPoints;
            last3 = CollectionsKt___CollectionsKt.last((List<? extends Object>) sortedWith);
            list9.add(((TouchPointPair) last3).getP2());
        }
        return true;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public VerificationResult output() {
        int collectionSizeOrDefault;
        List<TouchPoint> list = this.sortedPoints;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(HWRDataUtils.INSTANCE.toPointerEvent((TouchPoint) it2.next()));
        }
        return new VerificationResult(shapeName(), arrayList);
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public String shapeName() {
        return GeometryType.TRAPEZOID_RIGHT;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GeometryType.TRAPEZOID_RIGHT, "cap", "tennis player", "anvil", "constellation", "basketball player", "queen", "taj mahal", "triangle", "robot", "box", "skirt", "party hat", "sushi", "hat", "comb", "bucket", "football field", "spyglass", "dress", "male symbol", "glove", "seal"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        List<TouchPoint> kneePoints$default = BaseShapeVerification.kneePoints$default(this, true, false, false, null, 14, null);
        return kneePoints$default.size() == 4 && likeHeadToTail() && BaseShapeVerification.isAllSegmentsStraight$default(this, null, 1, null) && GeometryUtils.findMatchedAngleCount$default(GeometryUtils.INSTANCE, kneePoints$default, false, new Function1<AnglePoints, Boolean>() { // from class: com.onyx.android.sdk.hwr.service.predictor.impl.RightTrapezoidVerification$verify$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AnglePoints findMatchedAngleCount) {
                Intrinsics.checkNotNullParameter(findMatchedAngleCount, "$this$findMatchedAngleCount");
                return Boolean.valueOf(GeometryUtils.isAngleRight$default(GeometryUtils.INSTANCE, findMatchedAngleCount, null, 1, null));
            }
        }, 1, null) == 2 && m33382b(kneePoints$default);
    }
}
