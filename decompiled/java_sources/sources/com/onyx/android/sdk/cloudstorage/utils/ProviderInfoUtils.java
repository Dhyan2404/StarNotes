package com.onyx.android.sdk.cloudstorage.utils;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/utils/ProviderInfoUtils;", "", "()V", "getProviderInfo", "Lcom/onyx/android/sdk/cloudstorage/utils/ProviderInfo;", CouchFieldKey.KEY_UID, "", CouchFieldKey.KEY_PROVIDER_NAME, "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ProviderInfoUtils {

    @NotNull
    public static final ProviderInfoUtils INSTANCE = new ProviderInfoUtils();

    @NotNull
    public final ProviderInfo getProviderInfo(@NotNull String uid, @NotNull String providerName) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        return new ProviderInfo(uid, "drive/" + providerName, providerName, "drive/" + providerName + '/' + uid);
    }
}
