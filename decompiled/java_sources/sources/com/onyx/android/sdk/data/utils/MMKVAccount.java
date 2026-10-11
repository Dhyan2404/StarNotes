package com.onyx.android.sdk.data.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007J\u0012\u0010\b\u001a\u00020\t*\u00020\u00072\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/MMKVAccount;", "", "()V", MMKVAccount.LAST_TOKEN_UPDATE_TIME, "", "getLastTokenUpdateTime", "", "Lcom/onyx/android/sdk/data/utils/MMKVUtils;", "setLastTokenUpdateTime", "", "time", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MMKVAccount {

    @NotNull
    public static final MMKVAccount INSTANCE = new MMKVAccount();

    @NotNull
    private static final String LAST_TOKEN_UPDATE_TIME = "LAST_TOKEN_UPDATE_TIME";

    private MMKVAccount() {
    }

    public final long getLastTokenUpdateTime(@NotNull MMKVUtils mMKVUtils) {
        Intrinsics.checkNotNullParameter(mMKVUtils, "<this>");
        return mMKVUtils.getLong(LAST_TOKEN_UPDATE_TIME, 0L);
    }

    public final void setLastTokenUpdateTime(@NotNull MMKVUtils mMKVUtils, long j) {
        Intrinsics.checkNotNullParameter(mMKVUtils, "<this>");
        mMKVUtils.putLong(LAST_TOKEN_UPDATE_TIME, j);
    }
}
