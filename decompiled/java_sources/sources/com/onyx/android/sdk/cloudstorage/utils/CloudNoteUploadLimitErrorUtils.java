package com.onyx.android.sdk.cloudstorage.utils;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/utils/CloudNoteUploadLimitErrorUtils;", "", "()V", "getUploadLimitErrorString", "", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CloudNoteUploadLimitErrorUtils {

    @NotNull
    public static final CloudNoteUploadLimitErrorUtils INSTANCE = new CloudNoteUploadLimitErrorUtils();

    @NotNull
    public final String getUploadLimitErrorString(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C7153R.string.app_async_fail_accounting_uploadlimit, Provider.INSTANCE.getNameByProvider(resManager.getAppContext(), provider));
        Intrinsics.checkNotNull(string);
        return string;
    }
}
