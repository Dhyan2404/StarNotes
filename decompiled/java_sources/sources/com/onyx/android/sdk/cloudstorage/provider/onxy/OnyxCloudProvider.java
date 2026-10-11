package com.onyx.android.sdk.cloudstorage.provider.onxy;

import android.content.Context;
import android.content.Intent;
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
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxAppendAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxCopyFileAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxCreateFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxDeleteFileAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxDownloadAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxFetchFileInfoAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxFetchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxLoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxRefreshFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxRenameFileAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxSearchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxUploadAction;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.BroadCastConstant;
import com.onyx.android.sdk.data.common.oss.OssConfig;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b?\u0010@J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0016\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\b\u0010\u001c\u001a\u00020\u001bH\u0016J\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\"\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u00110\u000b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u0011H\u0016J\"\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u00110\u000b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u0011H\u0016J\"\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u00110\u000b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u0011H\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000b2\u0006\u0010(\u001a\u00020'H\u0016J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000b2\u0006\u0010*\u001a\u00020\"H\u0016J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000b2\u0006\u0010(\u001a\u00020'H\u0016J\u001c\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-0\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0016\u00100\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000b2\u0006\u0010(\u001a\u00020'H\u0016J\u0016\u00101\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000b2\u0006\u0010(\u001a\u00020'H\u0016J\u0016\u00102\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0016\u00103\u001a\b\u0012\u0004\u0012\u00020\"0\u000b2\u0006\u0010*\u001a\u00020\"H\u0016J\u000e\u00105\u001a\b\u0012\u0004\u0012\u00020\u001204H\u0016J\u000e\u00109\u001a\u0002082\u0006\u00107\u001a\u000206R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006A"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "providerContext", "", "initProvider", "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", Constant.USER_INFO, "activityContext", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "authenticate", "logOut", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getAccountInfo", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getSupportFeatures", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "cloudAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "saveAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "cloudNote", "saveNote", "", "isAuth", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "refreshFileInfoList", "fetchFileInfoList", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBeans", "downloadFiles", "uploadFiles", "appendFiles", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", "renameFile", "cloudFile", "createFolder", "deleteFile", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "loadFolderTree", "copyFile", "moveFile", "searchFileInfoList", "fetchFileInfo", "", "getEnableFeatures", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "clusterInfo", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "getOssManager", "a", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "b", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxCloudProvider extends BaseCloudStorageProvider {

    /* renamed from: a, reason: from kotlin metadata */
    public ProviderContext providerContext;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public RxOSSManager rxOSSManager;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider$a */
    /* loaded from: classes7.dex */
    public static final class C7332a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CloudFileBean> f41849e;

        public C7332a(List<CloudFileBean> list) {
            this.f41849e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41849e;
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider$b */
    /* loaded from: classes7.dex */
    public static final class C7333b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ OnyxDownloadAction f41850e;

        public C7333b(OnyxDownloadAction onyxDownloadAction) {
            this.f41850e = onyxDownloadAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41850e.cloudFileBeanList();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider$c */
    /* loaded from: classes7.dex */
    public static final class C7334c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<CloudFileBean> f41851e;

        public C7334c(List<CloudFileBean> list) {
            this.f41851e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41851e;
        }
    }

    public OnyxCloudProvider() {
        setProvider(Provider.ONYX_NOTE);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> appendFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new OnyxAppendAction(this, fileBeans).create().map(new C7332a(fileBeans));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AuthResult> authenticate(@NotNull UserInfo userInfo, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Observable<AuthResult> just = Observable.just(AuthResult.INSTANCE.authSuccess());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new OnyxCopyFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new OnyxCreateFolderAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new OnyxDeleteFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> downloadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        OnyxDownloadAction onyxDownloadAction = new OnyxDownloadAction(this, fileBeans);
        Observable map = onyxDownloadAction.create().map(new C7333b(onyxDownloadAction));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new OnyxFetchFileInfoAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new OnyxFetchFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        OnyxAccountModel accountModelFromDB = accountDataBundle.getAccountModelFromDB();
        if (accountModelFromDB != null) {
            accountDataBundle.setOnyxAccount(accountModelFromDB);
        }
        AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
        accountInfoBean.setAccountName(accountDataBundle.getDisplayName());
        accountInfoBean.setNickName(accountDataBundle.getDisplayName());
        accountInfoBean.setId(accountModelFromDB != null ? accountModelFromDB.getUniqueId() : null);
        return accountInfoBean;
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

    @NotNull
    public final RxOSSManager getOssManager(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        if (this.rxOSSManager == null) {
            this.rxOSSManager = new RxOSSManager(OssConfig.INSTANCE.noteOssConfig(clusterInfo));
        }
        RxOSSManager rxOSSManager = this.rxOSSManager;
        Intrinsics.checkNotNull(rxOSSManager);
        rxOSSManager.getOssConfig().setToken(AccountDataBundle.INSTANCE.getAccountToken());
        RxOSSManager rxOSSManager2 = this.rxOSSManager;
        Intrinsics.checkNotNull(rxOSSManager2);
        return rxOSSManager2;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public List<ProviderFeature> getSupportFeatures() {
        List<ProviderFeature> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        this.providerContext = providerContext;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public boolean isAuth() {
        return AccountDataBundle.INSTANCE.isAlreadyLogin();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new OnyxLoadFolderTreeAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.logOut(context);
        context.sendBroadcast(new Intent(BroadCastConstant.ACTION_TOKEN_INVALID_ACTION));
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        OnyxCopyFileAction onyxCopyFileAction = new OnyxCopyFileAction(this, args);
        onyxCopyFileAction.setCut(true);
        return onyxCopyFileAction.create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new OnyxRefreshFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new OnyxRenameFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        Observable<AsyncResult> just = Observable.just(AsyncResult.INSTANCE.fail());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        Observable<AsyncResult> just = Observable.just(AsyncResult.INSTANCE.fail());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new OnyxSearchFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> uploadFiles(@NotNull List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new OnyxUploadAction(this, fileBeans).create().map(new C7334c(fileBeans));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
