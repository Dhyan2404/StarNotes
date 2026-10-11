package com.onyx.android.sdk.pay.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/PurchaseTokenArgs;", "", "", "a", Constants.STRING_SIG, "getPurchaseToken", "()Ljava/lang/String;", "purchaseToken", "b", "getProductId", com.onyx.android.sdk.pay.constants.Constants.KEY_GOOGLE_PRODUCT_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PurchaseTokenArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String purchaseToken;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String productId;

    public PurchaseTokenArgs(@NotNull String purchaseToken, @NotNull String productId) {
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Intrinsics.checkNotNullParameter(productId, "productId");
        this.purchaseToken = purchaseToken;
        this.productId = productId;
    }

    @NotNull
    public final String getProductId() {
        return this.productId;
    }

    @NotNull
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }
}
