package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/PentagramVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "()V", "shapeName", "", "similarObjectTypes", "", "verify", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PentagramVerification extends BaseShapeVerification {
    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public String shapeName() {
        return GeometryType.PENTAGRAM;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GeometryType.PENTAGRAM, UniversalShapeTypeConst.STAR, "safety cone", "bowtie", "fish", "envelope", "skis", "sword", "sailboat", "pants", "party hat"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        List kneePoints$default = BaseShapeVerification.kneePoints$default(this, true, false, false, null, 14, null);
        return (kneePoints$default.size() == 5 || kneePoints$default.size() == 10) && likeHeadToTail();
    }
}
