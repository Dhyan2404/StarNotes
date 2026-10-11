package com.onyx.android.sdk.pay.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\b¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;", "", "", "a", Constants.STRING_SIG, "getFinalAmount", "()Ljava/lang/String;", "setFinalAmount", "(Ljava/lang/String;)V", "finalAmount", "b", "getTotalAmount", "setTotalAmount", "totalAmount", "c", "getProductId", "setProductId", com.onyx.android.sdk.pay.constants.Constants.KEY_GOOGLE_PRODUCT_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ProductInfoBean {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String finalAmount = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String totalAmount = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String productId = "";

    @NotNull
    public final String getFinalAmount() {
        return this.finalAmount;
    }

    @NotNull
    public final String getProductId() {
        return this.productId;
    }

    @NotNull
    public final String getTotalAmount() {
        return this.totalAmount;
    }

    public final void setFinalAmount(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.finalAmount = str;
    }

    public final void setProductId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.productId = str;
    }

    public final void setTotalAmount(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.totalAmount = str;
    }
}
