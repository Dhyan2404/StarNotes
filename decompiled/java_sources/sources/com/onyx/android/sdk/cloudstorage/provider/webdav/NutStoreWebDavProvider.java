package com.onyx.android.sdk.cloudstorage.provider.webdav;

import android.content.Context;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.provider.webdav.bean.NutStoreSearchBody;
import com.onyx.android.sdk.cloudstorage.provider.webdav.bean.SearchBuilder;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import java.io.File;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.http.POST;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\b\u0010\n\u001a\u00020\u0006H\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/NutStoreWebDavProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "()V", "createSearchBuilder", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/SearchBuilder;", "keyword", "", "getEnableFeatures", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getWebDavSearchUrl", "initProvider", "", "context", "Landroid/content/Context;", "providerContext", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NutStoreWebDavProvider extends WebDavProvider {
    public NutStoreWebDavProvider() {
        setProvider(Provider.NUT_STORE);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider
    @NotNull
    public SearchBuilder createSearchBuilder(@Nullable String keyword) {
        SearchBuilder createSearchBuilder = super.createSearchBuilder(keyword);
        String concat = FilenameUtils.concat(FilenameUtils.concat(CloudStorageConstants.DAV_PREFIX, ""), File.separator);
        WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
        String url = createSearchBuilder.getUrl();
        Intrinsics.checkNotNull(url);
        createSearchBuilder.setUrl(webDavUtils.combineUrl(url, "search"));
        String simpleName = POST.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        createSearchBuilder.setMethod(simpleName);
        createSearchBuilder.setBody(new NutStoreSearchBody(concat, keyword));
        return createSearchBuilder;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Set<ProviderFeature> getEnableFeatures() {
        Set<ProviderFeature> of;
        if (getProviderAccountModel() == null) {
            of = SetsKt__SetsKt.setOf((Object[]) new ProviderFeature[]{ProviderFeature.Note, ProviderFeature.Document});
            return of;
        }
        ProviderAccountModel providerAccountModel = getProviderAccountModel();
        Intrinsics.checkNotNull(providerAccountModel);
        return providerAccountModel.getEnableFeatures();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider
    @NotNull
    public String getWebDavSearchUrl() {
        return CloudStorageConstants.NUT_STORE_NSDAV_URL;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        super.initProvider(context, providerContext);
        getWebDavClient().setWebDavURL(CloudStorageConstants.NUT_STORE_DAV_URL);
    }
}
