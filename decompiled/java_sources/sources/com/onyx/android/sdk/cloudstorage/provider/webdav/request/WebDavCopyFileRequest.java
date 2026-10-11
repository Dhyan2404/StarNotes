package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCopyFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "parent", "", "fetchCloudFileList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "dataList", "", "copy", "targetFolder", "", "getTargetCloudPath", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWebDavCopyFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDavCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCopyFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1855#2,2:87\n*S KotlinDebug\n*F\n+ 1 WebDavCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavCopyFileRequest\n*L\n41#1:87,2\n*E\n"})
/* loaded from: classes7.dex */
public final class WebDavCopyFileRequest extends CopyCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebDavCopyFileRequest(@NotNull WebDavProvider webDavProvider, @NotNull CloudFileOperation args) {
        super(webDavProvider, args);
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.webDavProvider = webDavProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    public void copy(@NotNull List<CloudFileOperation.OperationData> dataList) {
        boolean endsWith$default;
        Object firstOrNull;
        boolean endsWith$default2;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        String webDavURL = this.webDavProvider.getWebDavClient().getWebDavURL();
        for (CloudFileOperation.OperationData operationData : dataList) {
            CloudStorageRecordProvider cloudStorageRecordProvider = this.webDavProvider.getCloudStorageRecordProvider();
            String origin = operationData.getOrigin();
            String path = operationData.getPath();
            Intrinsics.checkNotNull(path);
            String cloudFilePath = cloudStorageRecordProvider.getCloudFilePath(origin, path, true);
            WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
            Intrinsics.checkNotNull(webDavURL);
            if (cloudFilePath == null) {
                cloudFilePath = operationData.getPath();
            }
            Intrinsics.checkNotNull(cloudFilePath);
            String combineUrl = webDavUtils.combineUrl(webDavURL, cloudFilePath);
            String concat = FilenameUtils.concat(operationData.getDest(), operationData.getNewName());
            Intrinsics.checkNotNullExpressionValue(concat, "concat(...)");
            String combineUrl2 = webDavUtils.combineUrl(webDavURL, concat);
            String separator = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(combineUrl, separator, false, 2, null);
            if (endsWith$default) {
                Intrinsics.checkNotNullExpressionValue(separator, "separator");
                endsWith$default2 = StringsKt__StringsJVMKt.endsWith$default(combineUrl2, separator, false, 2, null);
                if (!endsWith$default2) {
                    combineUrl2 = combineUrl2 + separator;
                }
            }
            Debug.INSTANCE.m32035d(WebDavCopyFileRequest.class, combineUrl + " move/copy to:" + combineUrl2, new Object[0]);
            if (getCut()) {
                this.webDavProvider.getWebDavClient().move(combineUrl, combineUrl2);
            } else {
                this.webDavProvider.getWebDavClient().copy(combineUrl, combineUrl2);
            }
            List<DavResource> list = this.webDavProvider.getWebDavClient().list(combineUrl2, 0);
            Intrinsics.checkNotNullExpressionValue(list, "list(...)");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
            DavResource davResource = (DavResource) firstOrNull;
            if (davResource != null) {
                CollectionKt.safeAdd(getResult().ensureList(), webDavUtils.toCloudFile(this.webDavProvider.getCloudStorageRecordProvider(), davResource, this.webDavProvider.getAccountId()));
            }
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@NotNull CloudFileBean parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setParentId(parent.getUniqueId());
        return WebDavUtils.INSTANCE.toCloudFiles(this.webDavProvider.getCloudStorageRecordProvider(), new WebDavFetchFileListRequest(this.webDavProvider, cloudFileQueryArgs).execute().ensureList(), this.webDavProvider.getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.webDavProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "", true);
    }
}
