package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification;
import com.onyx.android.sdk.hwr.service.predictor.VerificationResult;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/AsteriskVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "()V", Constants.ELEMNAME_OUTPUT_STRING, "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", "shapeName", "", "similarObjectTypes", "", "verify", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AsteriskVerification extends BaseShapeVerification {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public VerificationResult output() {
        List take;
        Object first;
        Object last;
        Object first2;
        Object last2;
        Object first3;
        Object last3;
        List listOf;
        take = CollectionsKt___CollectionsKt.take(splitSubPath(), 3);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) take.get(0));
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) take.get(0));
        first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) take.get(1));
        last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) take.get(1));
        first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) take.get(2));
        last3 = CollectionsKt___CollectionsKt.last((List<? extends Object>) take.get(2));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HWRPointerEvent[]{first, last, first2, last2, first3, last3});
        return new VerificationResult(shapeName(), listOf);
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public String shapeName() {
        return GeometryType.ASTERISK;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GeometryType.ASTERISK, "snowflake", "tent", "arrow", "pinwheel hat", "stitches", "gear", "spider web", "ballerina", "wishbone", "safety cone", "The Eiffel Tower", "ceiling fan", "sword"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        return subPathCount(getPointerEvents()) >= 3 && !likeStraightLine(getPointerEvents());
    }
}
