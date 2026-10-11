package com.onyx.android.sdk.cloudstorage.provider.ynote.utils;

import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/utils/YNoteUtils;", "", "()V", "getAccessToken", "", "accountId", "logoutAccount", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class YNoteUtils {

    @NotNull
    public static final YNoteUtils INSTANCE = new YNoteUtils();

    @Nullable
    public final String getAccessToken(@Nullable String accountId) {
        ProviderAccountModel queryAccount;
        if ((accountId == null || accountId.length() == 0) || (queryAccount = ProviderAccountModelUtils.INSTANCE.queryAccount(Provider.YNOTE.getTitle(), accountId)) == null) {
            return null;
        }
        return queryAccount.getAccountCredentialJson();
    }

    public final long logoutAccount(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return ProviderAccountModelUtils.INSTANCE.deleteAccount(Provider.YNOTE.getTitle(), accountId);
    }
}
