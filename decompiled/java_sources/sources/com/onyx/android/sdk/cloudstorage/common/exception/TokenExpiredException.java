package com.onyx.android.sdk.cloudstorage.common.exception;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.C7153R;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/exception/TokenExpiredException;", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V", "getProvider", "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TokenExpiredException extends CloudNoteException {

    @NotNull
    private final Provider provider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenExpiredException(@NotNull Provider provider) {
        super(401, ResManager.INSTANCE.getString(C7153R.string.third_party_cloud_token_invalid_tip, provider.getTitle()));
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
    }

    @NotNull
    public final Provider getProvider() {
        return this.provider;
    }
}
