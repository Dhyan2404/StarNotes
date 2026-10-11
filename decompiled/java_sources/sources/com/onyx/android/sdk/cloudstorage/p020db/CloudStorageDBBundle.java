package com.onyx.android.sdk.cloudstorage.p020db;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;", "", "", Constant.TAG_USER_ID, "", "initProviderAccountProvider", "Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;", "providerAccountProvider", "Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;", "getProviderAccountProvider", "()Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;", "setProviderAccountProvider", "(Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;)V", "a", Constants.STRING_SIG, "PROVIDER_ACCOUNT_DB_NAME", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudStorageDBBundle {

    @NotNull
    public static final CloudStorageDBBundle INSTANCE = new CloudStorageDBBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String PROVIDER_ACCOUNT_DB_NAME = "provider_account_db_name";
    public static ProviderAccountProvider providerAccountProvider;

    @NotNull
    public final ProviderAccountProvider getProviderAccountProvider() {
        ProviderAccountProvider providerAccountProvider2 = providerAccountProvider;
        if (providerAccountProvider2 != null) {
            return providerAccountProvider2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("providerAccountProvider");
        return null;
    }

    public final void initProviderAccountProvider(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        setProviderAccountProvider(new ProviderAccountProvider(CouchDBManager.INSTANCE.getCouchHolder(ProviderInfoUtils.INSTANCE.getUserScopeProviderInfo(userId, PROVIDER_ACCOUNT_DB_NAME))));
    }

    public final void setProviderAccountProvider(@NotNull ProviderAccountProvider providerAccountProvider2) {
        Intrinsics.checkNotNullParameter(providerAccountProvider2, "<set-?>");
        providerAccountProvider = providerAccountProvider2;
    }
}
