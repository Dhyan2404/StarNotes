package com.onyx.android.sdk.cloudstorage.provider.webdav;

import android.content.Context;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.provider.webdav.bean.SearchBuilder;
import com.onyx.android.sdk.cloudstorage.provider.webdav.bean.WebDavCloudSearchBody;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0016J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\u0012\u0010\u0012\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\bH\u0002R\u001f\u0010\u0018\u001a\n \u0014*\u0004\u0018\u00010\u00130\u00138\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavCloudProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "providerContext", "", "initProvider", "", "getWebDavSearchUrl", "logOut", "keyword", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/SearchBuilder;", "createSearchBuilder", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getEnableFeatures", "webDavUrl", "a", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "Ljava/util/regex/Pattern;", "getDAV_PATTERN", "()Ljava/util/regex/Pattern;", "DAV_PATTERN", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavCloudProvider extends WebDavProvider {

    /* renamed from: a, reason: from kotlin metadata */
    public final Pattern DAV_PATTERN = Pattern.compile("^http[s]?://.+/dav/.*", 2);

    public WebDavCloudProvider() {
        setProvider(Provider.WEBDAV);
    }

    /* renamed from: a */
    public final String m32813a(String webDavUrl) {
        if (webDavUrl == null || webDavUrl.length() == 0) {
            String separator = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            return separator;
        }
        Matcher matcher = this.DAV_PATTERN.matcher(webDavUrl);
        Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
        if (!matcher.find()) {
            String separator2 = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator2, "separator");
            return separator2;
        }
        String substringAfter = StringUtils.substringAfter(webDavUrl, CloudStorageConstants.DAV_PREFIX);
        if (!(substringAfter == null || substringAfter.length() == 0)) {
            Intrinsics.checkNotNull(substringAfter);
            return substringAfter;
        }
        String separator3 = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator3, "separator");
        return separator3;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider
    @NotNull
    public SearchBuilder createSearchBuilder(@Nullable String keyword) {
        SearchBuilder createSearchBuilder = super.createSearchBuilder(keyword);
        createSearchBuilder.setBody(new WebDavCloudSearchBody(m32813a(getWebDavUrl()), keyword));
        return createSearchBuilder;
    }

    public final Pattern getDAV_PATTERN() {
        return this.DAV_PATTERN;
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
    @Nullable
    public String getWebDavSearchUrl() {
        boolean contains$default;
        int indexOf$default;
        String webDavSearchUrl = super.getWebDavSearchUrl();
        if (webDavSearchUrl == null || webDavSearchUrl.length() == 0) {
            return webDavSearchUrl;
        }
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) webDavSearchUrl, (CharSequence) CloudStorageConstants.DAV_PREFIX, false, 2, (Object) null);
        if (!contains$default) {
            return webDavSearchUrl;
        }
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) webDavSearchUrl, CloudStorageConstants.DAV_PREFIX, 0, false, 6, (Object) null);
        String substring = webDavSearchUrl.substring(0, indexOf$default + 5);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        super.initProvider(context, providerContext);
        String webDavUrl = getWebDavUrl();
        if ((webDavUrl == null || webDavUrl.length() == 0) && Debug.INSTANCE.getDebug()) {
            webDavUrl = CloudStorageConstants.ONYX_WEBDAV_CLOUD_TEST_DAV_URL;
        }
        getWebDavClient().setWebDavURL(webDavUrl);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider, com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        getWebDavClient().setWebDavURL(null);
        super.logOut(context);
    }
}
