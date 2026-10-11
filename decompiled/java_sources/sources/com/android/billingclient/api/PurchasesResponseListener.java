package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.List;

/* loaded from: classes3.dex */
public interface PurchasesResponseListener {
    void onQueryPurchasesResponse(@NonNull BillingResult billingResult, @NonNull List<Purchase> list);
}
