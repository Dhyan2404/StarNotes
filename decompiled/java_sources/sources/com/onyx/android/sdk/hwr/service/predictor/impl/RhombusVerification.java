package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.AnglePoints;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification;
import com.onyx.android.sdk.hwr.service.predictor.VerificationResult;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\u000b\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002J\u0012\u0010\f\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/RhombusVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "", "shapeName", "", "similarObjectTypes", "", "verify", "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "c", "b", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRhombusVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RhombusVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/RhombusVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1549#2:64\n1620#2,3:65\n*S KotlinDebug\n*F\n+ 1 RhombusVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/RhombusVerification\n*L\n60#1:64\n60#1:65,3\n*E\n"})
/* loaded from: classes7.dex */
public final class RhombusVerification extends BaseShapeVerification {
    /* renamed from: b */
    public final boolean m33380b(List<TouchPoint> list) {
        TouchPoint touchPoint = list.get(0);
        TouchPoint touchPoint2 = list.get(1);
        TouchPoint touchPoint3 = list.get(2);
        TouchPoint touchPoint4 = list.get(3);
        return GeometryUtils.isAngleRight$default(GeometryUtils.INSTANCE, new AnglePoints(new TouchPointPair(touchPoint, touchPoint3).findCrossPoint(new TouchPointPair(touchPoint2, touchPoint4)), touchPoint3, touchPoint4), null, 1, null);
    }

    /* renamed from: c */
    public final boolean m33381c(List<TouchPoint> list) {
        TouchPointPair touchPointPair = new TouchPointPair(list.get(0), list.get(1));
        TouchPointPair touchPointPair2 = new TouchPointPair(list.get(1), list.get(2));
        TouchPointPair touchPointPair3 = new TouchPointPair(list.get(3), list.get(2));
        TouchPointPair touchPointPair4 = new TouchPointPair(list.get(0), list.get(3));
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        return GeometryUtils.isParallelTo$default(geometryUtils, touchPointPair, touchPointPair3, null, false, 6, null) && GeometryUtils.isParallelTo$default(geometryUtils, touchPointPair2, touchPointPair4, null, false, 6, null);
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public VerificationResult output() {
        int collectionSizeOrDefault;
        List kneePoints$default = BaseShapeVerification.kneePoints$default(this, true, false, false, null, 14, null);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(kneePoints$default, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = kneePoints$default.iterator();
        while (it2.hasNext()) {
            arrayList.add(HWRDataUtils.INSTANCE.toPointerEvent((TouchPoint) it2.next()));
        }
        return new VerificationResult(shapeName(), arrayList);
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public String shapeName() {
        return "Rhombus";
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Rhombus", "football jersey", "party hat", "safety cone", "kayak", "cricket bat", "lawn mower", "dress", UniversalShapeTypeConst.HEXAGON, "clipboard", "vest", "tie", "constellation", "hula hoop", "graduation cap", "basketball player"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        List<TouchPoint> kneePoints$default = BaseShapeVerification.kneePoints$default(this, true, false, false, null, 14, null);
        if (kneePoints$default.size() != 4 || !likeHeadToTail() || !m33381c(kneePoints$default)) {
            return false;
        }
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        return GeometryUtils.findMatchedAngleCount$default(geometryUtils, kneePoints$default, false, new Function1<AnglePoints, Boolean>() { // from class: com.onyx.android.sdk.hwr.service.predictor.impl.RhombusVerification$verify$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AnglePoints findMatchedAngleCount) {
                Intrinsics.checkNotNullParameter(findMatchedAngleCount, "$this$findMatchedAngleCount");
                return Boolean.valueOf(GeometryUtils.isAngleRight$default(GeometryUtils.INSTANCE, findMatchedAngleCount, null, 1, null));
            }
        }, 1, null) == 0 && geometryUtils.differRate(GeometryUtils.findAllSides$default(geometryUtils, kneePoints$default, false, 1, null)) < 0.3f && m33380b(kneePoints$default);
    }
}
