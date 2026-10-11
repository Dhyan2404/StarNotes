package com.onyx.android.sdk.cloudstorage.utils;

import android.content.Intent;
import androidx.annotation.MainThread;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.event.CloudStorageRefreshTokenFailedEvent;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.CloudStorageProviderLogOutAction;
import com.onyx.android.sdk.data.config.cloudnote.AccountIntentAction;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.model.cloudnote.AccountChangedBean;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0016\u0010\n\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\b\u0010\u000b\u001a\u00020\u0006H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/utils/ThirdPartyAccountUtils;", "", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "cloudStorageProvider", "", CouchFieldKey.KEY_PROVIDER_NAME, "", "onProviderAuthFail", "appName", "accountId", "notifyThirdAccountLogout", "b", CouchFieldKey.KEY_PROVIDER, "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ThirdPartyAccountUtils {

    @NotNull
    public static final ThirdPartyAccountUtils INSTANCE = new ThirdPartyAccountUtils();

    /* renamed from: com.onyx.android.sdk.cloudstorage.utils.ThirdPartyAccountUtils$a */
    /* loaded from: classes7.dex */
    public static final class C7370a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BaseCloudStorageProvider f42034e;

        public C7370a(BaseCloudStorageProvider baseCloudStorageProvider) {
            this.f42034e = baseCloudStorageProvider;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ThirdPartyAccountUtils.INSTANCE.notifyThirdAccountLogout(this.f42034e.getProviderType().getTitle(), this.f42034e.getAccountId());
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.utils.ThirdPartyAccountUtils$b */
    /* loaded from: classes7.dex */
    public static final class C7371b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BaseCloudStorageProvider f42035e;

        public C7371b(BaseCloudStorageProvider baseCloudStorageProvider) {
            this.f42035e = baseCloudStorageProvider;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ThirdPartyAccountUtils.INSTANCE.m32931a(this.f42035e);
        }
    }

    /* renamed from: a */
    public final void m32931a(BaseCloudStorageProvider provider) {
        CloudStorageManager.INSTANCE.getOurInstance().postEvent(new CloudStorageRefreshTokenFailedEvent(provider.getProviderType()));
    }

    /* renamed from: b */
    public final void m32932b() {
        ResManager.INSTANCE.getAppContext().sendBroadcast(new Intent(AccountIntentAction.ACCOUNT_QUERY));
    }

    public final void notifyThirdAccountLogout(@NotNull String appName, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(appName, "appName");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Debug.INSTANCE.m32035d(ThirdPartyAccountUtils.class, "logout appName:" + appName, new Object[0]);
        String json = JSONUtils.INSTANCE.toJson(new AccountChangedBean(appName, 0, accountId));
        Intent intent = new Intent(AccountIntentAction.ACCOUNT_CHANGED);
        intent.putExtra("json", json);
        ResManager.INSTANCE.getAppContext().sendBroadcast(intent);
        m32932b();
    }

    @MainThread
    public final void onProviderAuthFail(@NotNull BaseCloudStorageProvider cloudStorageProvider, @NotNull String providerName) {
        Intrinsics.checkNotNullParameter(cloudStorageProvider, "cloudStorageProvider");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        if (Intrinsics.areEqual(providerName, cloudStorageProvider.getProviderType().getTitle())) {
            Debug.INSTANCE.m32052i(ThirdPartyAccountUtils.class, cloudStorageProvider.getProviderType().getTitle() + " auth invalid", new Object[0]);
            CloudStorageProviderLogOutAction cloudStorageProviderLogOutAction = new CloudStorageProviderLogOutAction(cloudStorageProvider);
            cloudStorageProviderLogOutAction.setWorkScheduler(CloudStorageManager.INSTANCE.getOurInstance().getRxScheduler().getObserveOn());
            cloudStorageProviderLogOutAction.build().doOnNext(new C7370a(cloudStorageProvider)).doOnNext(new C7371b(cloudStorageProvider)).subscribe();
        }
    }
}
