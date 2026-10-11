package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.constant.HWRConfigurations;
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
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\f\u001a\u00020\u000b*\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/SquareVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "", "shapeName", "", "similarObjectTypes", "", "verify", "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "", "b", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSquareVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SquareVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/SquareVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1549#2:47\n1620#2,3:48\n*S KotlinDebug\n*F\n+ 1 SquareVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/SquareVerification\n*L\n36#1:47\n36#1:48,3\n*E\n"})
/* loaded from: classes7.dex */
public final class SquareVerification extends BaseShapeVerification {
    /* renamed from: b */
    public final float m33383b(List<TouchPoint> list) {
        return GeometryUtils.INSTANCE.lengthDifferRateToShorter(new TouchPointPair(list.get(0), list.get(1)), new TouchPointPair(list.get(1), list.get(2)));
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
        return GeometryType.SQUARE;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GeometryType.SQUARE, UniversalShapeTypeConst.RECTANGLE, "square", "piano", "pillow", "toothbrush", "bench", "pool", "keyboard", "bread", "chat", "box", "The Great Wall of China"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        List<TouchPoint> kneePoints$default = BaseShapeVerification.kneePoints$default(this, true, false, false, null, 14, null);
        return kneePoints$default.size() == 4 && likeHeadToTail() && GeometryUtils.isAllAngleRight$default(GeometryUtils.INSTANCE, kneePoints$default, false, null, 3, null) && m33383b(kneePoints$default) < HWRConfigurations.INSTANCE.getSquareSideDifferRateMax();
    }
}
