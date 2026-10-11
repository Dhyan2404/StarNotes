package com.onyx.android.sdk.cloudstorage.provider.webdav.action;

import android.annotation.SuppressLint;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxSimpleAction;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavCopyFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavCreateFolderRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavFetchAllFileListRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavFetchFileRequest;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0004H\u0014J \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\nH\u0015J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u0007H\u0002R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavCopyFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "copyCloudData", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "parentData", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchAllChildCloudFiles", "targetFolder", "", "getTargetCloudPath", BreakpointSQLiteKey.FILENAME, "Lio/reactivex/rxjava3/core/Observable;", "searchFile", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "getProvider", "v", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavCopyFileAction extends CopyCloudFileAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavCopyFileAction$a */
    /* loaded from: classes7.dex */
    public static final class C7349a<T, R> implements Function {
        public C7349a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull Optional<DavResource> resourceOptional) {
            Intrinsics.checkNotNullParameter(resourceOptional, "resourceOptional");
            if (!resourceOptional.isPresent()) {
                return new CloudFileBean(null, null, null, null, false, 0L, null, null, null, null, null, null, 0L, 0L, 16383, null);
            }
            WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
            CloudStorageRecordProvider cloudStorageRecordProvider = WebDavCopyFileAction.this.webDavProvider.getCloudStorageRecordProvider();
            DavResource davResource = resourceOptional.get();
            Intrinsics.checkNotNullExpressionValue(davResource, "get(...)");
            return webDavUtils.toCloudFile(cloudStorageRecordProvider, davResource, WebDavCopyFileAction.this.webDavProvider.getAccountId());
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.webdav.action.WebDavCopyFileAction$b */
    /* loaded from: classes7.dex */
    public static final class C7350b<T, R> implements Function {

        /* renamed from: e */
        public static final C7350b<T, R> f41922e = new C7350b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileBean cloudFileBean) {
            List<CloudFileBean> listOf;
            Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
            CloudFileListResult.Companion companion = CloudFileListResult.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(cloudFileBean);
            return companion.create(listOf);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebDavCopyFileAction(@NotNull WebDavProvider webDavProvider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.webDavProvider = webDavProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public CloudFileListResult copyCloudData() {
        WebDavCopyFileRequest webDavCopyFileRequest = new WebDavCopyFileRequest(this.webDavProvider, getFileOperation());
        webDavCopyFileRequest.setCut(getCut());
        QueryListResult<CloudFileBean> execute = webDavCopyFileRequest.execute();
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setCode(execute.getCode());
        cloudFileListResult.setList(execute.ensureList());
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public List<CloudFileBean> fetchAllChildCloudFiles(@NotNull CloudFileOperation.OperationData parentData) {
        Intrinsics.checkNotNullParameter(parentData, "parentData");
        ArrayList arrayList = new ArrayList();
        CloudStorageRecordProvider cloudStorageRecordProvider = this.webDavProvider.getCloudStorageRecordProvider();
        String origin = parentData.getOrigin();
        String path = parentData.getPath();
        Intrinsics.checkNotNull(path);
        String cloudFilePath = cloudStorageRecordProvider.getCloudFilePath(origin, path, true);
        WebDavClient webDavClient = this.webDavProvider.getWebDavClient();
        Intrinsics.checkNotNull(cloudFilePath);
        WebDavFetchAllFileListRequest webDavFetchAllFileListRequest = new WebDavFetchAllFileListRequest(webDavClient, cloudFilePath);
        webDavFetchAllFileListRequest.setRecursive(false);
        webDavFetchAllFileListRequest.execute();
        CollectionKt.safeAddAll(arrayList, WebDavUtils.INSTANCE.toCloudFiles(this.webDavProvider.getCloudStorageRecordProvider(), webDavFetchAllFileListRequest.getFileList(), this.webDavProvider.getAccountId()));
        return arrayList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        boolean z = true;
        String cloudFilePath = this.webDavProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "", true);
        String origin = targetFolder.getOrigin();
        if (!(origin == null || origin.length() == 0)) {
            if (cloudFilePath != null && cloudFilePath.length() != 0) {
                z = false;
            }
            if (!z) {
                return cloudFilePath;
            }
        }
        try {
            CloudFileBean m32853v = m32853v();
            return StringUtils.substringBeforeLast(m32853v.getCloudFilePath(), m32853v.getName());
        } catch (Exception e) {
            e.printStackTrace();
            return cloudFilePath;
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @SuppressLint({"NewApi"})
    @NotNull
    public Observable<CloudFileListResult> searchFile(@Nullable CloudFileOperation.OperationData targetFolder, @NotNull String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        String concat = FilenameUtils.concat(targetFolder != null ? targetFolder.getPath() : null, filename);
        WebDavClient webDavClient = this.webDavProvider.getWebDavClient();
        Intrinsics.checkNotNull(concat);
        Observable<CloudFileListResult> map = new RxSimpleAction(new WebDavFetchFileRequest(webDavClient, concat), getObserveOn()).build().map(new C7349a()).map(C7350b.f41922e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: v */
    public final CloudFileBean m32853v() throws Exception {
        WebDavCreateFolderRequest webDavCreateFolderRequest = new WebDavCreateFolderRequest(this.webDavProvider.getWebDavClient(), "onyx");
        webDavCreateFolderRequest.setCheckExist(true);
        return WebDavUtils.INSTANCE.toCloudFile(this.webDavProvider.getCloudStorageRecordProvider(), webDavCreateFolderRequest.execute(), this.webDavProvider.getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public WebDavProvider getBaiduYunProvider() {
        return this.webDavProvider;
    }
}
