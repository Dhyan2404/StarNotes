package com.onyx.android.sdk.hwr.service.predictor.impl;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
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
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurvyBracketVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "", "shapeName", "", "similarObjectTypes", "", "verify", "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "a", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "arrowPoint", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCurvyBracketVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CurvyBracketVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/CurvyBracketVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n2310#2,14:57\n1940#2,14:71\n1940#2,14:85\n1549#2:99\n1620#2,3:100\n1549#2:103\n1620#2,3:104\n*S KotlinDebug\n*F\n+ 1 CurvyBracketVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/CurvyBracketVerification\n*L\n34#1:57,14\n35#1:71,14\n37#1:85,14\n48#1:99\n48#1:100,3\n53#1:103\n53#1:104,3\n*E\n"})
/* loaded from: classes7.dex */
public final class CurvyBracketVerification extends BaseShapeVerification {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public TouchPoint arrowPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public VerificationResult output() {
        int collectionSizeOrDefault;
        double averageOfFloat;
        List listOf;
        int collectionSizeOrDefault2;
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents());
        RectF boundRect = GeometryUtils.INSTANCE.boundRect(touchPointList);
        List<TouchPoint> list = touchPointList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(((TouchPoint) it2.next()).getX()));
        }
        averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList);
        float f = (float) averageOfFloat;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{new TouchPoint(this.arrowPoint.getX(), boundRect.centerY()), new TouchPoint(f, boundRect.top), new TouchPoint(f, boundRect.bottom)});
        List list2 = listOf;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(HWRDataUtils.INSTANCE.toPointerEvent((TouchPoint) it3.next()));
        }
        return new VerificationResult(shapeName(), arrayList2);
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public String shapeName() {
        return GeometryType.BRACKET_CURLY;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GeometryType.BRACKET_CURLY, "big ben", "underwear", "hairbrush", "daisy", "cricket bat", "skirt", "goalpost", "snake", "cloud", "knee", "nose", "leg", "fork", "broom", "line"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        Object first;
        Object last;
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents());
        if (touchPointList.size() < 2) {
            return false;
        }
        List<TouchPoint> list = touchPointList;
        Iterator<T> it2 = list.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            float x = ((TouchPoint) next).getX();
            do {
                Object next2 = it2.next();
                float x2 = ((TouchPoint) next2).getX();
                if (Float.compare(x, x2) > 0) {
                    next = next2;
                    x = x2;
                }
            } while (it2.hasNext());
        }
        TouchPoint touchPoint = (TouchPoint) next;
        Iterator<T> it3 = list.iterator();
        if (!it3.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next3 = it3.next();
        if (it3.hasNext()) {
            float x3 = ((TouchPoint) next3).getX();
            do {
                Object next4 = it3.next();
                float x4 = ((TouchPoint) next4).getX();
                if (Float.compare(x3, x4) < 0) {
                    next3 = next4;
                    x3 = x4;
                }
            } while (it3.hasNext());
        }
        TouchPoint touchPoint2 = (TouchPoint) next3;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) touchPointList);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) touchPointList);
        TouchPointPair touchPointPair = new TouchPointPair((TouchPoint) first, (TouchPoint) last);
        Iterator<T> it4 = list.iterator();
        if (!it4.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next5 = it4.next();
        if (it4.hasNext()) {
            float distance = touchPointPair.distance((TouchPoint) next5);
            do {
                Object next6 = it4.next();
                float distance2 = touchPointPair.distance((TouchPoint) next6);
                if (Float.compare(distance, distance2) < 0) {
                    next5 = next6;
                    distance = distance2;
                }
            } while (it4.hasNext());
        }
        this.arrowPoint = (TouchPoint) next5;
        RectF boundRect = GeometryUtils.INSTANCE.boundRect(touchPointList);
        float height = boundRect.height() / boundRect.width();
        HWRConfigurations hWRConfigurations = HWRConfigurations.INSTANCE;
        return ((height > hWRConfigurations.getBracketMinRatio() ? 1 : (height == hWRConfigurations.getBracketMinRatio() ? 0 : -1)) > 0) && (Intrinsics.areEqual(this.arrowPoint, touchPoint) || Intrinsics.areEqual(this.arrowPoint, touchPoint2)) && (((Math.abs(this.arrowPoint.getY() - boundRect.centerY()) / boundRect.height()) > hWRConfigurations.getBracketArrowHeightMistakenPercent() ? 1 : ((Math.abs(this.arrowPoint.getY() - boundRect.centerY()) / boundRect.height()) == hWRConfigurations.getBracketArrowHeightMistakenPercent() ? 0 : -1)) < 0);
    }
}
