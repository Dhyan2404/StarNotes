package com.onyx.android.sdk.cloudstorage.event;

import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;", "Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "b", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "getProvider", "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudStorageRefreshTokenFailedEvent extends BaseCloudStorageEvent {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Provider provider;

    public CloudStorageRefreshTokenFailedEvent(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
    }

    @NotNull
    public final Provider getProvider() {
        return this.provider;
    }
}
