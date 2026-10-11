package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.constant.HWRConfigurations;
import com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification;
import com.onyx.android.sdk.hwr.service.predictor.VerificationResult;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "", "shapeName", "", "similarObjectTypes", "", "verify", "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "a", "Ljava/util/List;", "turningPoints", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAngleVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AngleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1549#2:66\n1620#2,3:67\n*S KotlinDebug\n*F\n+ 1 AngleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification\n*L\n63#1:66\n63#1:67,3\n*E\n"})
/* loaded from: classes7.dex */
public final class AngleVerification extends BaseShapeVerification {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<TouchPoint> turningPoints;

    public AngleVerification() {
        List<TouchPoint> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.turningPoints = emptyList;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public VerificationResult output() {
        int collectionSizeOrDefault;
        String shapeName = shapeName();
        List<TouchPoint> list = this.turningPoints;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(HWRDataUtils.INSTANCE.toPointerEvent((TouchPoint) it2.next()));
        }
        return new VerificationResult(shapeName, arrayList);
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public String shapeName() {
        return GeometryType.ANGLE;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GeometryType.ANGLE, "cap", "shirt", "queen", "kayak", "castle", "triangle", "box", "constellation", "party hat", "graduation cap", "deer", "male symbol", "vest", "cooler", "dress", "glove", "robot", "race car", "school", "diploma", "cap", "graduation cap", "bird", "stroller", "diploma", "football stadium", "elbow", "stairs", "hockey stick", "leg", "scooter", "golf club", "arm", "socks", "ramen", "sewing machine"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents());
        HWRConfigurations hWRConfigurations = HWRConfigurations.INSTANCE;
        float angleTurningPointThresholdPercent = hWRConfigurations.getAngleTurningPointThresholdPercent() * 3.1415927f;
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<TouchPoint> findAllTurningPoints = geometryUtils.findAllTurningPoints(touchPointList, Float.valueOf(angleTurningPointThresholdPercent), true, Float.valueOf(hWRConfigurations.getArrowMinimumLength()), true, true);
        this.turningPoints = findAllTurningPoints;
        List<TouchPoint> cleanClosePoints = geometryUtils.cleanClosePoints(findAllTurningPoints, Float.valueOf(geometryUtils.length(touchPointList) * hWRConfigurations.getAngleTurningPointMinSpacingPercent()));
        this.turningPoints = cleanClosePoints;
        if (cleanClosePoints.size() != 3) {
            return false;
        }
        int indexOf = touchPointList.indexOf(this.turningPoints.get(1));
        List<TouchPoint> subList = touchPointList.subList(0, indexOf);
        List<TouchPoint> subList2 = touchPointList.subList(indexOf, touchPointList.size());
        float length = new TouchPointPair(this.turningPoints.get(0), this.turningPoints.get(1)).length();
        float length2 = new TouchPointPair(this.turningPoints.get(1), this.turningPoints.get(2)).length();
        if (isClosurePath()) {
            return false;
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        return geometryUtils.isSegmentStraight(subList, (Number) mathUtils.atLeast(Float.valueOf(hWRConfigurations.getLineMistakenThreshold()), Float.valueOf(hWRConfigurations.getAngleLineStraightThresholdPercent() * length))) && geometryUtils.isSegmentStraight(subList2, (Number) mathUtils.atLeast(Float.valueOf(hWRConfigurations.getLineMistakenThreshold()), Float.valueOf(hWRConfigurations.getAngleLineStraightThresholdPercent() * length2))) && mathUtils.differRateToShorter(Float.valueOf(length), Float.valueOf(length2)) < hWRConfigurations.getAngleSideDifferRateMax();
    }
}
