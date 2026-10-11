package com.onyx.android.sdk.pay.data;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/OrderProductArgs;", "", "", "a", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "id", "", "b", "I", "getQuantity", "()I", FirebaseAnalytics.Param.QUANTITY, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;I)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OrderProductArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String id;

    /* renamed from: b, reason: from kotlin metadata */
    public final int quantity;

    public OrderProductArgs(@NotNull String id, int i) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
        this.quantity = i;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    public final int getQuantity() {
        return this.quantity;
    }
}
