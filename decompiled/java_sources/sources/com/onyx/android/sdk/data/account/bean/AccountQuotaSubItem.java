package com.onyx.android.sdk.data.account.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000eR\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000e¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;", "", "()V", "category", "", "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "dailyQuota", "", "getDailyQuota", "()J", "setDailyQuota", "(J)V", "dailyUsedQuota", "getDailyUsedQuota", "setDailyUsedQuota", "title", "getTitle", "setTitle", "totalQuota", "getTotalQuota", "setTotalQuota", "totalUsedQuota", "getTotalUsedQuota", "setTotalUsedQuota", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountQuotaSubItem {
    private long dailyQuota;
    private long dailyUsedQuota;
    private long totalQuota;
    private long totalUsedQuota;

    @NotNull
    private String category = "";

    @NotNull
    private String title = "";

    @NotNull
    public final String getCategory() {
        return this.category;
    }

    public final long getDailyQuota() {
        return this.dailyQuota;
    }

    public final long getDailyUsedQuota() {
        return this.dailyUsedQuota;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final long getTotalQuota() {
        return this.totalQuota;
    }

    public final long getTotalUsedQuota() {
        return this.totalUsedQuota;
    }

    public final void setCategory(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.category = str;
    }

    public final void setDailyQuota(long j) {
        this.dailyQuota = j;
    }

    public final void setDailyUsedQuota(long j) {
        this.dailyUsedQuota = j;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setTotalQuota(long j) {
        this.totalQuota = j;
    }

    public final void setTotalUsedQuota(long j) {
        this.totalUsedQuota = j;
    }
}
