package com.onyx.android.sdk.data.common.data;

import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;", "", "()V", "options", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "getComposedKey", "", "func", LoginAuthConst.ACCOUNT_AUTH, "hasSynced", "", "invalidateSyncState", "", "markAsSynced", Constants.RESET, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SyncStateOptions {

    @NotNull
    public static final SyncStateOptions INSTANCE = new SyncStateOptions();

    @NotNull
    private static final OptionsRepo options = new OptionsRepo();

    private SyncStateOptions() {
    }

    public static /* synthetic */ String getComposedKey$default(SyncStateOptions syncStateOptions, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        return syncStateOptions.getComposedKey(str, str2);
    }

    @NotNull
    public final String getComposedKey(@NotNull String func, @NotNull String account) {
        Intrinsics.checkNotNullParameter(func, "func");
        Intrinsics.checkNotNullParameter(account, "account");
        return func + '/' + account;
    }

    public final boolean hasSynced(@NotNull String func) {
        Intrinsics.checkNotNullParameter(func, "func");
        return options.getBoolean(getComposedKey$default(this, func, null, 2, null), false);
    }

    public final void invalidateSyncState(@NotNull String func) {
        Intrinsics.checkNotNullParameter(func, "func");
        options.put(getComposedKey$default(this, func, null, 2, null), Boolean.FALSE);
    }

    public final void markAsSynced(@NotNull String func) {
        Intrinsics.checkNotNullParameter(func, "func");
        options.put(getComposedKey$default(this, func, null, 2, null), Boolean.TRUE);
    }

    public final void reset() {
        options.clear();
    }
}
