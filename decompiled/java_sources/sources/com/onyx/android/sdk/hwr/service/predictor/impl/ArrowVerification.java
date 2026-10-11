package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.constant.HWRConfigurations;
import com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification;
import com.onyx.android.sdk.hwr.service.predictor.VerificationResult;
import com.onyx.android.sdk.hwr.utils.ArrowFeature;
import com.onyx.android.sdk.hwr.utils.ArrowUtilsKt;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.onyx.android.sdk.hwr.utils.LineUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "", "shapeName", "", "similarObjectTypes", "", "verify", "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;", "a", "Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;", "arrowFeature", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nArrowVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrowVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n673#2,2:57\n1549#3:59\n1620#3,3:60\n*S KotlinDebug\n*F\n+ 1 ArrowVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification\n*L\n52#1:57,2\n53#1:59\n53#1:60,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ArrowVerification extends BaseShapeVerification {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ArrowFeature arrowFeature = new ArrowFeature();

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public VerificationResult output() {
        List listOf;
        int collectionSizeOrDefault;
        Object last;
        Object first;
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents());
        TouchPoint startArrowPoint = this.arrowFeature.getStartArrowPoint();
        if (startArrowPoint == null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) touchPointList);
            startArrowPoint = (TouchPoint) first;
        }
        TouchPoint endArrowPoint = this.arrowFeature.getEndArrowPoint();
        if (endArrowPoint == null) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) touchPointList);
            endArrowPoint = (TouchPoint) last;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{startArrowPoint, endArrowPoint});
        if (this.arrowFeature.getHasStartArrow()) {
            listOf = CollectionsKt___CollectionsKt.reversed(listOf);
        }
        List list = listOf;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(HWRDataUtils.INSTANCE.toPointerEvent((TouchPoint) it2.next()));
        }
        return new VerificationResult(shapeName(), arrayList);
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public String shapeName() {
        return GeometryType.ARROW;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GeometryType.ARROW, "arrow", "tie", "shirt", "football yard marker", "daisy", "line", "kayak", "cricket bat", "male symbol", "vest", "lollipop", "party hat", "tennis player", "golfer", "glove", "constellation", "diving board", "magic wand", "toothbrush", "scroll", "satellite", "blouse"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents());
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        if (!LineUtils.INSTANCE.isLine(geometryUtils.findLongestSegment(geometryUtils.getSegmentsByTurningPoints(touchPointList)))) {
            return false;
        }
        this.arrowFeature = ArrowUtilsKt.checkArrowFeature(touchPointList);
        if (likeHeadToTail() || !this.arrowFeature.hasSingleArrow() || !this.arrowFeature.getIsMainSegmentEnoughLong() || !this.arrowFeature.getIsMainSegmentStraight()) {
            return false;
        }
        HWRConfigurations hWRConfigurations = HWRConfigurations.INSTANCE;
        return geometryUtils.hasTurningPoint(touchPointList, Float.valueOf(hWRConfigurations.getArrowTurningPointThreshold()), true, Float.valueOf(hWRConfigurations.getArrowMinimumLength()));
    }
}
