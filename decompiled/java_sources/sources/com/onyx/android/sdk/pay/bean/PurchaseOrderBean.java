package com.onyx.android.sdk.pay.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/bean/PurchaseOrderBean;", "", "", "a", Constants.STRING_SIG, "getOrderNo", "()Ljava/lang/String;", "setOrderNo", "(Ljava/lang/String;)V", "orderNo", "b", "getPurchaseToken", "setPurchaseToken", "purchaseToken", "c", "getProductId", "setProductId", com.onyx.android.sdk.pay.constants.Constants.KEY_GOOGLE_PRODUCT_ID, "", "d", "I", "getProductType", "()I", "setProductType", "(I)V", "productType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PurchaseOrderBean {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String orderNo = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String purchaseToken = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String productId = "";

    /* renamed from: d, reason: from kotlin metadata */
    public int productType;

    @NotNull
    public final String getOrderNo() {
        return this.orderNo;
    }

    @NotNull
    public final String getProductId() {
        return this.productId;
    }

    public final int getProductType() {
        return this.productType;
    }

    @NotNull
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final void setOrderNo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.orderNo = str;
    }

    public final void setProductId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.productId = str;
    }

    public final void setProductType(int i) {
        this.productType = i;
    }

    public final void setPurchaseToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.purchaseToken = str;
    }
}
