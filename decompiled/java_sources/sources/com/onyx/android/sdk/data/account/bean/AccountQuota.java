package com.onyx.android.sdk.data.account.bean;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountQuota;", "", "()V", "quotaMap", "", "", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;", "getQuotaMap", "()Ljava/util/Map;", "setQuotaMap", "(Ljava/util/Map;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountQuota {

    @NotNull
    private Map<String, AccountQuotaItem> quotaMap = new LinkedHashMap();

    @NotNull
    public final Map<String, AccountQuotaItem> getQuotaMap() {
        return this.quotaMap;
    }

    public final void setQuotaMap(@NotNull Map<String, AccountQuotaItem> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.quotaMap = map;
    }
}
