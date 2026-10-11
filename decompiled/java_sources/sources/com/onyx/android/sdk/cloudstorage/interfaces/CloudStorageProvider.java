package com.onyx.android.sdk.cloudstorage.interfaces;

import android.content.Context;
import com.onyx.android.sdk.base.data.SortBy;
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
import com.onyx.android.sdk.cloudstorage.model.ProviderContext;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.model.UserInfo;
import com.onyx.android.sdk.cloudstorage.model.common.ProviderFeature;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&J\"\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&J\u001e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0013\u001a\u00020\u0005H&J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\"\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0013\u001a\u00020\u0005H&J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0018\u001a\u00020\u0019H&J\b\u0010\u001a\u001a\u00020\u001bH&J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH&J\b\u0010\u001f\u001a\u00020 H&J\u000e\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0004H&J\u000e\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u0004H&J\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\r2\u0006\u0010'\u001a\u00020(H&J\b\u0010)\u001a\u00020*H&J\u001c\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0,0\u00032\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010.\u001a\u00020%2\u0006\u0010&\u001a\u00020\rH&J\u0016\u0010/\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0016\u00100\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u00101\u001a\u000202H&J\u0016\u00103\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0016\u00104\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0016\u00105\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0016\u00106\u001a\b\u0012\u0004\u0012\u0002070\u00032\u0006\u00108\u001a\u000209H&J\u001c\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&J\u0016\u0010;\u001a\b\u0012\u0004\u0012\u0002070\u00032\u0006\u0010<\u001a\u00020=H&J\u0016\u0010>\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0006\u0010\u0018\u001a\u00020\u0019H&J\"\u0010?\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&¨\u0006@"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;", "", "abortFileTransfer", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBeans", "appendFiles", "authenticate", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", Constant.USER_INFO, "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", "activityContext", "Landroid/content/Context;", "copyFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "args", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "createFolder", "cloudFile", "deleteFile", "downloadFiles", "fetchFileInfo", "fetchFileInfoList", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "getAccountInfo", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "getEnableFeatures", "", "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;", "getProviderType", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "getSupportFeatures", "getSupportSortByList", "Lcom/onyx/android/sdk/base/data/SortBy;", "initProvider", "", "context", "providerContext", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;", "isAuth", "", "loadFolderTree", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "logOut", "moveFile", "pasteLocalFileToCloud", "operation", "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "queryChildCount", "refreshFileInfoList", "renameFile", "saveAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "cloudAnnotation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;", "saveFileInfoList", "saveNote", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "searchFileInfoList", "uploadFiles", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface CloudStorageProvider {
    @NotNull
    Observable<List<CloudFileBean>> abortFileTransfer(@NotNull List<CloudFileBean> fileBeans);

    @NotNull
    Observable<List<CloudFileBean>> appendFiles(@NotNull List<CloudFileBean> fileBeans);

    @NotNull
    Observable<AuthResult> authenticate(@NotNull UserInfo userInfo, @NotNull Context activityContext);

    @NotNull
    Observable<CloudFileListResult> copyFile(@NotNull CloudFileOperation args);

    @NotNull
    Observable<CloudFileListResult> createFolder(@NotNull CloudFileBean cloudFile);

    @NotNull
    Observable<CloudFileListResult> deleteFile(@NotNull CloudFileOperation args);

    @NotNull
    Observable<List<CloudFileBean>> downloadFiles(@NotNull List<CloudFileBean> fileBeans);

    @NotNull
    Observable<CloudFileBean> fetchFileInfo(@NotNull CloudFileBean cloudFile);

    @NotNull
    Observable<CloudFileListResult> fetchFileInfoList(@NotNull CloudFileQueryArgs queryArgs);

    @NotNull
    AccountInfoBean getAccountInfo();

    @NotNull
    Set<ProviderFeature> getEnableFeatures();

    @NotNull
    Provider getProviderType();

    @NotNull
    List<ProviderFeature> getSupportFeatures();

    @NotNull
    List<SortBy> getSupportSortByList();

    void initProvider(@NotNull Context context, @NotNull ProviderContext providerContext);

    boolean isAuth();

    @NotNull
    Observable<QueryListResult<CloudFolderTreeEntry>> loadFolderTree(@NotNull CloudFileQueryArgs queryArgs);

    void logOut(@NotNull Context context);

    @NotNull
    Observable<CloudFileListResult> moveFile(@NotNull CloudFileOperation args);

    @NotNull
    Observable<CloudFileListResult> pasteLocalFileToCloud(@NotNull PasteLocalFileOperation operation);

    @NotNull
    Observable<CloudFileListResult> queryChildCount(@NotNull CloudFileQueryArgs queryArgs);

    @NotNull
    Observable<CloudFileListResult> refreshFileInfoList(@NotNull CloudFileQueryArgs queryArgs);

    @NotNull
    Observable<CloudFileListResult> renameFile(@NotNull CloudFileOperation args);

    @NotNull
    Observable<AsyncResult> saveAnnotation(@NotNull CloudAnnotation cloudAnnotation);

    @NotNull
    Observable<CloudFileListResult> saveFileInfoList(@NotNull List<CloudFileBean> fileBeans);

    @NotNull
    Observable<AsyncResult> saveNote(@NotNull CloudNote cloudNote);

    @NotNull
    Observable<CloudFileListResult> searchFileInfoList(@NotNull CloudFileQueryArgs queryArgs);

    @NotNull
    Observable<List<CloudFileBean>> uploadFiles(@NotNull List<CloudFileBean> fileBeans);
}
