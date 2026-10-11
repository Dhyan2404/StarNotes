package com.onyx.android.sdk.pay.data;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\t\u0010\nR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/GoogleRetryVerifyPurchaseTokenArgs;", "", "", "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;", "a", "Ljava/util/List;", "getItems", "()Ljava/util/List;", FirebaseAnalytics.Param.ITEMS, Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GoogleRetryVerifyPurchaseTokenArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<GooglePurchaseTokenArgs> items;

    public GoogleRetryVerifyPurchaseTokenArgs(@NotNull List<GooglePurchaseTokenArgs> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    @NotNull
    public final List<GooglePurchaseTokenArgs> getItems() {
        return this.items;
    }
}
