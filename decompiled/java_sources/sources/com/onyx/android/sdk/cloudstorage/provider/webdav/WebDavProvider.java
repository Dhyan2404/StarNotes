package com.onyx.android.sdk.cloudstorage.provider.webdav;

import android.content.Context;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxSimpleAction;
import com.onyx.android.sdk.cloudstorage.common.AuthorizationInvalidInterceptor;
import com.onyx.android.sdk.cloudstorage.common.utils.CloudStorageMMKVHelper;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.AsyncResult;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.model.CloudAnnotation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.CloudFolderTreeEntry;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.PasteLocalFileOperation;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.PasteLocalFileToWebDavAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavAuthenticateAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavCopyFileAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavCreateFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavDeleteFileAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavDownloadAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavFetchFileInfoAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavFetchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavLoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavRefreshFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavRenameFileAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSaveAnnotationAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSaveNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavSearchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavUploadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.bean.SearchBuilder;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavFetchAccountInfoRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.net.TrustAllHostnameVerifier;
import com.onyx.android.sdk.data.common.net.X509TrustAllSSLSocketFactory;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.model.p028v2.WebDAVAuthAccount;
import com.onyx.android.sdk.data.utils.HttpUtils;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\"\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0#0\u00102\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001c0#H\u0016J\u0016\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0016\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020*H\u0016J\u000e\u0010+\u001a\b\u0012\u0004\u0012\u00020,0#H\u0016J\u0012\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020 H\u0016J\n\u00100\u001a\u0004\u0018\u00010 H\u0016J\n\u00101\u001a\u0004\u0018\u00010 H\u0016J\u0018\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u00105\u001a\u000203H\u0014J\b\u00106\u001a\u000207H\u0016J\u001c\u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020:090\u00102\u0006\u0010'\u001a\u00020(H\u0016J\u0010\u0010;\u001a\u0002032\u0006\u00104\u001a\u00020\u0015H\u0016J\u0016\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010>\u001a\u00020?H\u0016J\u0016\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010'\u001a\u00020(H\u0016J\u0016\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010B\u001a\b\u0012\u0004\u0012\u00020C0\u00102\u0006\u0010D\u001a\u00020.2\u0006\u0010E\u001a\u00020 H\u0016J\u0016\u0010F\u001a\b\u0012\u0004\u0012\u00020G0\u00102\u0006\u0010H\u001a\u00020IH\u0016J\u0016\u0010J\u001a\b\u0012\u0004\u0012\u00020G0\u00102\u0006\u0010K\u001a\u00020LH\u0016J\u0016\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010'\u001a\u00020(H\u0016J\u0012\u0010N\u001a\u0002032\b\u0010D\u001a\u0004\u0018\u00010.H\u0016J\"\u0010O\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0#0\u00102\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001c0#H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006P"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "()V", "providerContext", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "getProviderContext", "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "setProviderContext", "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V", "webDavClient", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "getWebDavClient", "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "setWebDavClient", "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;)V", "authenticate", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", Constant.USER_INFO, "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", "activityContext", "Landroid/content/Context;", "copyFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "args", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "createFolder", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "createSearchBuilder", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/SearchBuilder;", "keyword", "", "deleteFile", "downloadFiles", "", "fileBeans", "fetchFileInfo", "fetchFileInfoList", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "getAccountInfo", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getSupportFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getWebDavAuthAccount", "Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;", "accountId", "getWebDavSearchUrl", "getWebDavUrl", "initProvider", "", "context", "initWebDavClient", "isAuth", "", "loadFolderTree", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "logOut", "moveFile", "pasteLocalFileToCloud", "operation", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "refreshFileInfoList", "renameFile", "saveAccountInfo", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "authAccount", CouchFieldKey.KEY_PROVIDER_NAME, "saveAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "cloudAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "saveNote", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "searchFileInfoList", "setClientCredentials", "uploadFiles", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class WebDavProvider extends BaseCloudStorageProvider {
    protected ProviderContext providerContext;
    public WebDavClient webDavClient;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider$a */
    /* loaded from: classes7.dex */
    public static final class C7337a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ WebDavDownloadAction f41896e;

        public C7337a(WebDavDownloadAction webDavDownloadAction) {
            this.f41896e = webDavDownloadAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41896e.getFileBeans();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider$b */
    /* loaded from: classes7.dex */
    public static final class C7338b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f41897e;

        /* renamed from: f */
        public final /* synthetic */ WebDAVAuthAccount f41898f;

        public C7338b(String str, WebDAVAuthAccount webDAVAuthAccount) {
            this.f41897e = str;
            this.f41898f = webDAVAuthAccount;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProviderAccountModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudStorageMMKVHelper.INSTANCE.saveWebDAVAuthAccount(this.f41897e, this.f41898f);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider$c */
    /* loaded from: classes7.dex */
    public static final class C7339c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CloudFileBean> f41899e;

        public C7339c(List<CloudFileBean> list) {
            this.f41899e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41899e;
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AuthResult> authenticate(@NotNull UserInfo userInfo, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        return new WebDavAuthenticateAction(this, activityContext).build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new WebDavCopyFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new WebDavCreateFolderAction(this, cloudFile).create();
    }

    @NotNull
    public SearchBuilder createSearchBuilder(@Nullable String keyword) {
        SearchBuilder searchBuilder = new SearchBuilder();
        searchBuilder.setUrl(getWebDavUrl());
        return searchBuilder;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new WebDavDeleteFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> downloadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        WebDavDownloadAction webDavDownloadAction = new WebDavDownloadAction(this, fileBeans);
        Observable map = webDavDownloadAction.create().map(new C7337a(webDavDownloadAction));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new WebDavFetchFileInfoAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new WebDavFetchFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        WebDAVAuthAccount webDavAuthAccount = getWebDavAuthAccount(getAccountId());
        AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
        accountInfoBean.setAccountName(webDavAuthAccount != null ? webDavAuthAccount.getUsername() : null);
        accountInfoBean.setNickName(webDavAuthAccount != null ? webDavAuthAccount.getUsername() : null);
        accountInfoBean.setId(webDavAuthAccount != null ? webDavAuthAccount.getObjectId() : null);
        return accountInfoBean;
    }

    @NotNull
    public final ProviderContext getProviderContext() {
        ProviderContext providerContext = this.providerContext;
        if (providerContext != null) {
            return providerContext;
        }
        Intrinsics.throwUninitializedPropertyAccessException("providerContext");
        return null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public List<ProviderFeature> getSupportFeatures() {
        List<ProviderFeature> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ProviderFeature.Document);
        return listOf;
    }

    @Nullable
    public WebDAVAuthAccount getWebDavAuthAccount(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return WebDavUtils.INSTANCE.getWebDavAuthAccount(getProviderType().getTitle(), accountId);
    }

    @NotNull
    public final WebDavClient getWebDavClient() {
        WebDavClient webDavClient = this.webDavClient;
        if (webDavClient != null) {
            return webDavClient;
        }
        Intrinsics.throwUninitializedPropertyAccessException("webDavClient");
        return null;
    }

    @Nullable
    public String getWebDavSearchUrl() {
        return getWebDavUrl();
    }

    @Nullable
    public String getWebDavUrl() {
        WebDAVAuthAccount webDavAuthAccount;
        if ((getAccountId().length() == 0) || (webDavAuthAccount = WebDavUtils.INSTANCE.getWebDavAuthAccount(getProviderType().getTitle(), getAccountId())) == null) {
            return null;
        }
        return webDavAuthAccount.getWebDAVUrl();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        setProviderContext(providerContext);
        initWebDavClient();
        setClientCredentials(getWebDavAuthAccount(getAccountId()));
    }

    public void initWebDavClient() {
        AuthorizationInvalidInterceptor authorizationInvalidInterceptor = new AuthorizationInvalidInterceptor(this);
        authorizationInvalidInterceptor.setHeaderKey("");
        X509TrustAllSSLSocketFactory x509TrustAllSSLSocketFactory = new X509TrustAllSSLSocketFactory();
        OkHttpClient.Builder addInterceptor = HttpUtils.INSTANCE.createOkHttpBuilder().addInterceptor(authorizationInvalidInterceptor);
        if (x509TrustAllSSLSocketFactory.isValid()) {
            SSLSocketFactory sslSocketFactory = x509TrustAllSSLSocketFactory.getSslSocketFactory();
            Intrinsics.checkNotNull(sslSocketFactory);
            X509TrustManager trustManager = x509TrustAllSSLSocketFactory.getTrustManager();
            Intrinsics.checkNotNull(trustManager);
            addInterceptor.sslSocketFactory(sslSocketFactory, trustManager).hostnameVerifier(new TrustAllHostnameVerifier());
        }
        setWebDavClient(new WebDavClient(addInterceptor.build()));
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public boolean isAuth() {
        WebDAVAuthAccount webDavAuthAccount = getWebDavAuthAccount(getAccountId());
        return webDavAuthAccount != null && StringKt.isNotBlank(webDavAuthAccount.getUsername()) && StringKt.isNotBlank(webDavAuthAccount.getPassword());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new WebDavLoadFolderTreeAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.logOut(context);
        WebDavUtils.INSTANCE.logoutAccount(getProviderType().getTitle(), getAccountId());
        setClientCredentials(null);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        WebDavCopyFileAction webDavCopyFileAction = new WebDavCopyFileAction(this, args);
        webDavCopyFileAction.setCut(true);
        return webDavCopyFileAction.create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> pasteLocalFileToCloud(@NotNull PasteLocalFileOperation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        PasteLocalFileToWebDavAction pasteLocalFileToWebDavAction = new PasteLocalFileToWebDavAction(this);
        pasteLocalFileToWebDavAction.setCloudStorageProvider(this);
        pasteLocalFileToWebDavAction.setOperation(operation);
        pasteLocalFileToWebDavAction.setWorkScheduler(getObserveOn());
        return pasteLocalFileToWebDavAction.build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new WebDavRefreshFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new WebDavRenameFileAction(this, args).create();
    }

    @NotNull
    public Observable<ProviderAccountModel> saveAccountInfo(@NotNull WebDAVAuthAccount authAccount, @NotNull String providerName) {
        Intrinsics.checkNotNullParameter(authAccount, "authAccount");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Observable<ProviderAccountModel> doOnNext = new RxSimpleAction(new WebDavFetchAccountInfoRequest(this, providerName, authAccount), getObserveOn()).build().observeOn(getObserveOn()).doOnNext(new C7338b(providerName, authAccount));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        return flatMap(new WebDavSaveAnnotationAction(this, cloudAnnotation).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        return flatMap(new WebDavSaveNoteAction(this, cloudNote).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new WebDavSearchFileListAction(this, queryArgs).create();
    }

    public void setClientCredentials(@Nullable WebDAVAuthAccount authAccount) {
        if (authAccount != null) {
            getWebDavClient().setCredentials(authAccount.getUsername(), authAccount.getPassword());
        } else {
            getWebDavClient().setCredentials(null, null);
        }
    }

    public final void setProviderContext(@NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(providerContext, "<set-?>");
        this.providerContext = providerContext;
    }

    public final void setWebDavClient(@NotNull WebDavClient webDavClient) {
        Intrinsics.checkNotNullParameter(webDavClient, "<set-?>");
        this.webDavClient = webDavClient;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> uploadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new WebDavUploadFileAction(this, fileBeans).create().map(new C7339c(fileBeans));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
