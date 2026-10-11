package com.onyx.android.sdk.cloudstorage.provider.common.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\n\b&\u0018\u0000 *2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001*B\u0019\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b(\u0010)J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010\u0004\u001a\u00020\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0004J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0014J\u0014\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006H$J\n\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0002R\"\u0010\u000f\u001a\u00020\u000e8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR$\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\"\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "execute", "executeSafety", "loadFromCache", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "loadAccountModelFromCache", "accountInfo", "", "saveAccountInfo", "providerAccountModel", "loadFromCloud", "a", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "getProvider", "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "setProvider", "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V", "", "forceLoadFromCloud", Constants.HASIDCALL_INDEX_SIG, "getForceLoadFromCloud", Constants.BOOLEAN_VALUE_SIG, "setForceLoadFromCloud", "(Z)V", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "getProviderAccountModel", "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "setProviderAccountModel", "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V", "", "accountId", Constants.STRING_SIG, "getAccountId", "()Ljava/lang/String;", "setAccountId", "(Ljava/lang/String;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class LoadAccountInfoRequest extends RxBaseRequest<AccountInfoBean> {
    private static final int retryCount = 3;

    @Nullable
    private String accountId;
    private boolean forceLoadFromCloud;

    @NotNull
    private Provider provider;

    @Nullable
    private ProviderAccountModel providerAccountModel;

    public /* synthetic */ LoadAccountInfoRequest(Provider provider, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(provider, (i & 2) != 0 ? false : z);
    }

    /* renamed from: a */
    public final AccountInfoBean m32619a() {
        AccountInfoBean loadFromCloud;
        for (int i = 0; i < 3; i++) {
            try {
                loadFromCloud = loadFromCloud(loadAccountModelFromCache());
            } catch (Exception e) {
                Debug.INSTANCE.m32048e(e);
            }
            if (loadFromCloud != null) {
                return loadFromCloud;
            }
        }
        return null;
    }

    @NotNull
    public final AccountInfoBean executeSafety() {
        try {
            AccountInfoBean execute = execute();
            return execute == null ? new AccountInfoBean(null, null, "", 3, null) : execute;
        } catch (Exception unused) {
            return new AccountInfoBean(null, null, "", 3, null);
        }
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    public final boolean getForceLoadFromCloud() {
        return this.forceLoadFromCloud;
    }

    @NotNull
    public final Provider getProvider() {
        return this.provider;
    }

    @Nullable
    public final ProviderAccountModel getProviderAccountModel() {
        return this.providerAccountModel;
    }

    @Nullable
    public final ProviderAccountModel loadAccountModelFromCache() {
        ProviderAccountModel providerAccountModel = this.providerAccountModel;
        if (providerAccountModel != null) {
            return providerAccountModel;
        }
        String str = this.accountId;
        if (str != null) {
            return ProviderAccountModelUtils.INSTANCE.queryAccount(this.provider.getTitle(), str);
        }
        return null;
    }

    @Nullable
    public final AccountInfoBean loadFromCache() {
        ProviderAccountModel loadAccountModelFromCache = loadAccountModelFromCache();
        this.providerAccountModel = loadAccountModelFromCache;
        if (loadAccountModelFromCache == null) {
            return null;
        }
        Intrinsics.checkNotNull(loadAccountModelFromCache);
        return loadAccountModelFromCache.getAccountInfoBean();
    }

    @Nullable
    public abstract AccountInfoBean loadFromCloud(@Nullable ProviderAccountModel providerAccountModel) throws Exception;

    public void saveAccountInfo(@NotNull AccountInfoBean accountInfo) throws Exception {
        List<ProviderAccountModel> listOf;
        Intrinsics.checkNotNullParameter(accountInfo, "accountInfo");
        ProviderAccountModel providerAccountModel = this.providerAccountModel;
        if (providerAccountModel != null) {
            providerAccountModel.setAccountInfoBean(accountInfo);
            ProviderAccountModelUtils providerAccountModelUtils = ProviderAccountModelUtils.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(providerAccountModel);
            providerAccountModelUtils.saveAccount(listOf, this.provider.getTitle());
        }
    }

    public final void setAccountId(@Nullable String str) {
        this.accountId = str;
    }

    public final void setForceLoadFromCloud(boolean z) {
        this.forceLoadFromCloud = z;
    }

    public final void setProvider(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "<set-?>");
        this.provider = provider;
    }

    public final void setProviderAccountModel(@Nullable ProviderAccountModel providerAccountModel) {
        this.providerAccountModel = providerAccountModel;
    }

    public LoadAccountInfoRequest(@NotNull Provider provider, boolean z) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
        this.forceLoadFromCloud = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @Nullable
    public AccountInfoBean execute() throws Exception {
        AccountInfoBean loadFromCache = !this.forceLoadFromCloud ? loadFromCache() : null;
        if (loadFromCache != null && StringUtils.isNoneBlank(loadFromCache.getId())) {
            return loadFromCache;
        }
        AccountInfoBean m32619a = m32619a();
        if (m32619a == null) {
            return null;
        }
        saveAccountInfo(m32619a);
        return m32619a;
    }
}
