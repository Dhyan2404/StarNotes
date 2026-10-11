package com.onyx.galaxy.note.member.data;

import com.onyx.android.sdk.genericshape.GeoConstant;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.sod;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cR*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;", "", "", "Lcom/onyx/galaxy/note/member/data/Feature;", "a", "Ljava/util/List;", "getFeatures", "()Ljava/util/List;", "setFeatures", "(Ljava/util/List;)V", GeoConstant.KEY_Features, "Lcom/onyx/galaxy/note/member/data/ChargeGuide;", "b", "Lcom/onyx/galaxy/note/member/data/ChargeGuide;", "getGuide", "()Lcom/onyx/galaxy/note/member/data/ChargeGuide;", "setGuide", "(Lcom/onyx/galaxy/note/member/data/ChargeGuide;)V", "guide", "Lcom/onyx/galaxy/note/member/data/ChargeProduct;", "c", "Lcom/onyx/galaxy/note/member/data/ChargeProduct;", "getProduct", "()Lcom/onyx/galaxy/note/member/data/ChargeProduct;", "setProduct", "(Lcom/onyx/galaxy/note/member/data/ChargeProduct;)V", sod.f84370x, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ChargeFeatureBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public List<Feature> features;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public ChargeGuide guide;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public ChargeProduct product;

    @Nullable
    public final List<Feature> getFeatures() {
        return this.features;
    }

    @Nullable
    public final ChargeGuide getGuide() {
        return this.guide;
    }

    @Nullable
    public final ChargeProduct getProduct() {
        return this.product;
    }

    public final void setFeatures(@Nullable List<Feature> list) {
        this.features = list;
    }

    public final void setGuide(@Nullable ChargeGuide chargeGuide) {
        this.guide = chargeGuide;
    }

    public final void setProduct(@Nullable ChargeProduct chargeProduct) {
        this.product = chargeProduct;
    }
}
