package com.onyx.android.sdk.data.couchbase;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.data.account.OnyxAccountProvider;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\b\u0010\u0012\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;", "", "()V", "couchHolderManager", "Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;", "onyxAccountProvider", "Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;", "getOnyxAccountProvider", "()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;", "onyxAccountProvider$delegate", "Lkotlin/Lazy;", "closeCouchHolder", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", "dumpCouchDB", "", "getCouchHolder", "newOnyxAccountProvider", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CouchDBManager {

    @NotNull
    public static final CouchDBManager INSTANCE = new CouchDBManager();

    @NotNull
    private static CouchHolderManager couchHolderManager = new CouchHolderManager();

    /* renamed from: onyxAccountProvider$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy onyxAccountProvider;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<OnyxAccountProvider>() { // from class: com.onyx.android.sdk.data.couchbase.CouchDBManager$onyxAccountProvider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final OnyxAccountProvider invoke() {
                OnyxAccountProvider newOnyxAccountProvider;
                newOnyxAccountProvider = CouchDBManager.INSTANCE.newOnyxAccountProvider();
                return newOnyxAccountProvider;
            }
        });
        onyxAccountProvider = lazy;
    }

    private CouchDBManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OnyxAccountProvider newOnyxAccountProvider() {
        return new OnyxAccountProvider(getCouchHolder(ProviderInfoUtils.INSTANCE.getAppProviderInfo()));
    }

    @Nullable
    public final CouchHolder closeCouchHolder(@NotNull ProviderInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return couchHolderManager.closeCouchHolder(info);
    }

    public final void dumpCouchDB() {
        couchHolderManager.dumpCouchDB();
    }

    @NotNull
    public final CouchHolder getCouchHolder(@NotNull ProviderInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return couchHolderManager.getCouchHolder(info);
    }

    @NotNull
    public final OnyxAccountProvider getOnyxAccountProvider() {
        return (OnyxAccountProvider) onyxAccountProvider.getValue();
    }
}
