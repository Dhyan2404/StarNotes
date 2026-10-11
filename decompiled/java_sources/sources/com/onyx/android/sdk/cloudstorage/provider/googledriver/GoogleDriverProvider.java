package com.onyx.android.sdk.cloudstorage.provider.googledriver;

import android.content.Context;
import com.onyx.android.sdk.base.data.SortBy;
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
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleAuthenticateAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverCopyFileAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverCreateFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverDeleteFileAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverDownloadAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverFetchFileInfoAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverFetchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverLoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverRefreshFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverRenameFileAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverSaveAnnotationAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverSaveNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverSearchFileListAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverUploadAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriveLoadAccountRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.utils.GoogleDriverUtils;
import com.onyx.android.sdk.cloudstorage.utils.ThirdPartyAccountUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\f\u001a\u00020\rH\u0016J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\f\u001a\u00020\rH\u0016J\"\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00130\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013H\u0016J\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0013H\u0016J\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u0013H\u0016J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020'H\u0016J\u001c\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0)0\u00042\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010+\u001a\u00020\"2\u0006\u0010#\u001a\u00020\tH\u0016J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\f\u001a\u00020\rH\u0016J\u0006\u0010-\u001a\u00020\"J\u0016\u0010.\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0016\u0010/\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\f\u001a\u00020\rH\u0016J\u0016\u00100\u001a\b\u0012\u0004\u0012\u0002010\u00042\u0006\u00102\u001a\u000203H\u0016J\u0016\u00104\u001a\b\u0012\u0004\u0012\u0002010\u00042\u0006\u00105\u001a\u000206H\u0016J\u0016\u00107\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\"\u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00130\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013H\u0016¨\u00069"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "()V", "authenticate", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", Constant.USER_INFO, "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", "activityContext", "Landroid/content/Context;", "copyFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "args", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "createFolder", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "deleteFile", "downloadFiles", "", "fileBeans", "fetchFileInfo", "fetchFileInfoList", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "getAccountInfo", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getEnableFeatures", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getSupportFeatures", "getSupportSortByList", "Lcom/onyx/android/sdk/base/data/SortBy;", "initProvider", "", "context", "providerContext", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "isAuth", "", "loadFolderTree", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "logOut", "moveFile", "onProviderAuthFail", "refreshFileInfoList", "renameFile", "saveAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "cloudAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "saveNote", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "searchFileInfoList", "uploadFiles", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverProvider extends BaseCloudStorageProvider {
    public GoogleDriverProvider() {
        setProvider(Provider.GOOGLE_DRIVE);
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AuthResult> authenticate(@NotNull UserInfo userInfo, @NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        return new GoogleAuthenticateAction(this, activityContext).build();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new GoogleDriverCopyFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new GoogleDriverCreateFolderAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new GoogleDriverDeleteFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> downloadFiles(@NotNull final List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new GoogleDriverDownloadAction(this, fileBeans).create().map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider$downloadFiles$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final List<CloudFileBean> apply(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return fileBeans;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new GoogleDriverFetchFileInfoAction(this, cloudFile).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new GoogleDriverFetchFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public AccountInfoBean getAccountInfo() {
        GoogleDriveLoadAccountRequest googleDriveLoadAccountRequest = new GoogleDriveLoadAccountRequest(this);
        googleDriveLoadAccountRequest.setAccountId(getAccountId());
        return googleDriveLoadAccountRequest.executeSafety();
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

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public List<ProviderFeature> getSupportFeatures() {
        List<ProviderFeature> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ProviderFeature.Document);
        return listOf;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public List<SortBy> getSupportSortByList() {
        List<SortBy> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SortBy[]{SortBy.Name, SortBy.CreationTime});
        return listOf;
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(providerContext, "providerContext");
        GoogleDriveManager.INSTANCE.getOurInstance().setOnProviderAuthFailFunc(new Function0<Unit>() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider$initProvider$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                GoogleDriverProvider.this.onProviderAuthFail();
            }
        });
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public boolean isAuth() {
        return GoogleDriveManager.INSTANCE.isTokenExist(getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new GoogleDriverLoadFolderTreeAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    public void logOut(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.logOut(context);
        GoogleDriverUtils.INSTANCE.logoutAccount(getAccountId());
        GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
        companion.cleanTokenFile(getAccountId());
        companion.clearDefaultTokenFile();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        GoogleDriverCopyFileAction googleDriverCopyFileAction = new GoogleDriverCopyFileAction(this, args);
        googleDriverCopyFileAction.setCut(true);
        return googleDriverCopyFileAction.create();
    }

    public final void onProviderAuthFail() {
        ThirdPartyAccountUtils.INSTANCE.onProviderAuthFail(this, Provider.GOOGLE_DRIVE.getTitle());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new GoogleDriverRefreshFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return new GoogleDriverRenameFileAction(this, args).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation) {
        Intrinsics.checkNotNullParameter(cloudAnnotation, "cloudAnnotation");
        return flatMap(new GoogleDriverSaveAnnotationAction(this, cloudAnnotation).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote) {
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        return flatMap(new GoogleDriverSaveNoteAction(this, cloudNote).build());
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return new GoogleDriverSearchFileListAction(this, queryArgs).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider, com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider
    @NotNull
    public Observable<List<CloudFileBean>> uploadFiles(@NotNull final List<CloudFileBean> fileBeans) {
        Intrinsics.checkNotNullParameter(fileBeans, "fileBeans");
        Observable map = new GoogleDriverUploadAction(this, fileBeans).create().map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider$uploadFiles$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final List<CloudFileBean> apply(@NotNull BaseCloudStorageProvider it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return fileBeans;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
