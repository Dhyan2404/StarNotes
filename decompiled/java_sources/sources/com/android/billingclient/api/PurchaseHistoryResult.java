package com.android.billingclient.api;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, m61528d2 = {"Lcom/android/billingclient/api/PurchaseHistoryResult;", "", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "purchaseHistoryRecordList", "", "Lcom/android/billingclient/api/PurchaseHistoryRecord;", Constants.CONSTRUCTOR_NAME, "(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V", "getBillingResult", "()Lcom/android/billingclient/api/BillingResult;", "getPurchaseHistoryRecordList", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "java.com.google.android.libraries.play.billing.public.ktbilling_granule"}, m61529k = 1, m61530mv = {2, 0, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class PurchaseHistoryResult {

    /* renamed from: a, reason: from toString */
    @NotNull
    public final BillingResult billingResult;

    /* renamed from: b, reason: from toString */
    @Nullable
    public final List purchaseHistoryRecordList;

    public PurchaseHistoryResult(@RecentlyNonNull BillingResult billingResult, @Nullable List<? extends PurchaseHistoryRecord> list) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this.billingResult = billingResult;
        this.purchaseHistoryRecordList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RecentlyNonNull
    public static /* synthetic */ PurchaseHistoryResult copy$default(@RecentlyNonNull PurchaseHistoryResult purchaseHistoryResult, @RecentlyNonNull BillingResult billingResult, @RecentlyNonNull List list, int i, @RecentlyNonNull Object obj) {
        if ((i & 1) != 0) {
            billingResult = purchaseHistoryResult.billingResult;
        }
        if ((i & 2) != 0) {
            list = purchaseHistoryResult.purchaseHistoryRecordList;
        }
        return purchaseHistoryResult.copy(billingResult, list);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final BillingResult getBillingResult() {
        return this.billingResult;
    }

    @RecentlyNullable
    public final List<PurchaseHistoryRecord> component2() {
        return this.purchaseHistoryRecordList;
    }

    @NotNull
    public final PurchaseHistoryResult copy(@RecentlyNonNull BillingResult billingResult, @Nullable List<? extends PurchaseHistoryRecord> purchaseHistoryRecordList) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        return new PurchaseHistoryResult(billingResult, purchaseHistoryRecordList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurchaseHistoryResult)) {
            return false;
        }
        PurchaseHistoryResult purchaseHistoryResult = (PurchaseHistoryResult) other;
        return Intrinsics.areEqual(this.billingResult, purchaseHistoryResult.billingResult) && Intrinsics.areEqual(this.purchaseHistoryRecordList, purchaseHistoryResult.purchaseHistoryRecordList);
    }

    @NotNull
    public final BillingResult getBillingResult() {
        return this.billingResult;
    }

    @RecentlyNullable
    public final List<PurchaseHistoryRecord> getPurchaseHistoryRecordList() {
        return this.purchaseHistoryRecordList;
    }

    public int hashCode() {
        int hashCode = this.billingResult.hashCode() * 31;
        List list = this.purchaseHistoryRecordList;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        return "PurchaseHistoryResult(billingResult=" + this.billingResult + ", purchaseHistoryRecordList=" + this.purchaseHistoryRecordList + MotionUtils.f31762d;
    }
}
