package com.onyx.android.sdk.data.account.bean;

import androidx.core.app.NotificationCompat;
import androidx.transition.Transition;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.utils.EncryptUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\u0004J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;", "", "()V", "category", "", "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "hash", "getHash", "setHash", Transition.f10629M0, "getItemId", "setItemId", "quota", "", "getQuota", "()I", "setQuota", "(I)V", "subCategory", "getSubCategory", "setSubCategory", NotificationCompat.CarExtender.f4980p, "", "getTimestamp", "()J", "setTimestamp", "(J)V", "toDataString", "updateHash", "secret", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WithHoldQuotasData {

    @Nullable
    private String itemId;
    private int quota;
    private long timestamp;

    @NotNull
    private String category = "";

    @NotNull
    private String subCategory = "";

    @NotNull
    private String hash = "";

    @NotNull
    public final String getCategory() {
        return this.category;
    }

    @NotNull
    public final String getHash() {
        return this.hash;
    }

    @Nullable
    public final String getItemId() {
        return this.itemId;
    }

    public final int getQuota() {
        return this.quota;
    }

    @NotNull
    public final String getSubCategory() {
        return this.subCategory;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final void setCategory(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.category = str;
    }

    public final void setHash(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.hash = str;
    }

    public final void setItemId(@Nullable String str) {
        this.itemId = str;
    }

    public final void setQuota(int i) {
        this.quota = i;
    }

    public final void setSubCategory(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.subCategory = str;
    }

    public final void setTimestamp(long j) {
        this.timestamp = j;
    }

    @NotNull
    public final String toDataString() {
        String str = "category=" + this.category + '&';
        if (StringKt.isNotBlank(this.itemId)) {
            str = str + "itemId=" + this.itemId + '&';
        }
        return str + "quota=" + this.quota + "&subCategory=" + this.subCategory + "&timestamp=" + this.timestamp;
    }

    @NotNull
    public final WithHoldQuotasData updateHash(@NotNull String secret) {
        Intrinsics.checkNotNullParameter(secret, "secret");
        this.timestamp = System.currentTimeMillis();
        this.hash = EncryptUtils.INSTANCE.encrypt(toDataString(), secret, EncryptUtils.HMACSHA256);
        return this;
    }
}
