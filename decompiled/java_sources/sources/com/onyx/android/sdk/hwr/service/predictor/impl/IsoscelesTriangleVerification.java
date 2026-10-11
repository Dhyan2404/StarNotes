package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.AnglePoints;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
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
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/IsoscelesTriangleVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "()V", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", "shapeName", "", "similarObjectTypes", "", "verify", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nIsoscelesTriangleVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsoscelesTriangleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/IsoscelesTriangleVerification\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1#2:36\n1549#3:37\n1620#3,3:38\n*S KotlinDebug\n*F\n+ 1 IsoscelesTriangleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/IsoscelesTriangleVerification\n*L\n32#1:37\n32#1:38,3\n*E\n"})
/* loaded from: classes7.dex */
public final class IsoscelesTriangleVerification extends BaseShapeVerification {
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
        return GeometryType.TRIANGLE_ISOSCELES;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GeometryType.TRIANGLE_ISOSCELES, "triangle", "tennis player", "constellation", "anvil", "football field", "party hat", "colosseum", "graduation cap", "queen", "teddy-bear", "cap", "vest", "cupcake", "hat", "sushi"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        List kneePoints$default = BaseShapeVerification.kneePoints$default(this, true, false, false, null, 14, null);
        if (kneePoints$default.size() != 3 || !likeHeadToTail() || !BaseShapeVerification.isAllSegmentsStraight$default(this, null, 1, null)) {
            return false;
        }
        Iterator it2 = GeometryUtils.findAllAngles$default(GeometryUtils.INSTANCE, kneePoints$default, false, 1, null).iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        float sideLengthDifferRate = ((AnglePoints) it2.next()).sideLengthDifferRate();
        while (it2.hasNext()) {
            sideLengthDifferRate = Math.min(sideLengthDifferRate, ((AnglePoints) it2.next()).sideLengthDifferRate());
        }
        return sideLengthDifferRate < 0.2f;
    }
}
