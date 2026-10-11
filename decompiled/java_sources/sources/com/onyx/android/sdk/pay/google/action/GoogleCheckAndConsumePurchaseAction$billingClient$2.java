package com.onyx.android.sdk.pay.google.action;

import android.app.Activity;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PurchasesUpdatedListener;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "Lcom/android/billingclient/api/BillingClient;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class GoogleCheckAndConsumePurchaseAction$billingClient$2 extends Lambda implements Function0<BillingClient> {
    final /* synthetic */ Activity $activity;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleCheckAndConsumePurchaseAction$billingClient$2(Activity activity) {
        super(0);
        this.$activity = activity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final BillingClient invoke() {
        BillingClient build = BillingClient.newBuilder(this.$activity).enablePendingPurchases().setListener(new PurchasesUpdatedListener() { // from class: com.onyx.android.sdk.pay.google.action.a
            @Override // com.android.billingclient.api.PurchasesUpdatedListener
            public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
            }
        }).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }
}
