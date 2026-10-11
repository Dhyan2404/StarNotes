package com.onyx.galaxy.note.usercenter.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/data/VipPriceArgs;", "", "", "a", Constants.STRING_SIG, "getPriceTypeId", "()Ljava/lang/String;", "setPriceTypeId", "(Ljava/lang/String;)V", "priceTypeId", "b", "getPrice", "setPrice", FirebaseAnalytics.Param.PRICE, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class VipPriceArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(name = "id")
    @NotNull
    public String priceTypeId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(name = "data")
    @NotNull
    public String price = "";

    @NotNull
    public final String getPrice() {
        return this.price;
    }

    @NotNull
    public final String getPriceTypeId() {
        return this.priceTypeId;
    }

    public final void setPrice(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.price = str;
    }

    public final void setPriceTypeId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.priceTypeId = str;
    }
}
