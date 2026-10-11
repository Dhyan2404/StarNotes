package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/thegrizzlylabs/sardineandroid/DavResource;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavRenameFileRequest extends RxBaseRequest<DavResource> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileOperation fileOperation;

    public WebDavRenameFileRequest(@NotNull WebDavProvider webDavProvider, @NotNull CloudFileOperation fileOperation) {
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.webDavProvider = webDavProvider;
        this.fileOperation = fileOperation;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public DavResource execute() throws Exception {
        Object first;
        boolean endsWith$default;
        Object first2;
        boolean endsWith$default2;
        String webDavURL = this.webDavProvider.getWebDavClient().getWebDavURL();
        Object parseObject = JSONUtils.INSTANCE.parseObject(this.fileOperation.getDataJson(), new TypeReference<List<? extends CloudFileOperation.OperationData>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavRenameFileRequest$execute$list$1
        });
        Intrinsics.checkNotNull(parseObject);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) parseObject);
        CloudFileOperation.OperationData operationData = (CloudFileOperation.OperationData) first;
        CloudStorageRecordProvider cloudStorageRecordProvider = this.webDavProvider.getCloudStorageRecordProvider();
        String origin = operationData.getOrigin();
        String path = operationData.getPath();
        Intrinsics.checkNotNull(path);
        String cloudFilePath = cloudStorageRecordProvider.getCloudFilePath(origin, path, true);
        WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
        Intrinsics.checkNotNull(webDavURL);
        String path2 = cloudFilePath == null ? operationData.getPath() : cloudFilePath;
        Intrinsics.checkNotNull(path2);
        String combineUrl = webDavUtils.combineUrl(webDavURL, path2);
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (cloudFilePath == null) {
            cloudFilePath = operationData.getPath();
        }
        String concat = FilenameUtils.concat(fileUtils.getParent(cloudFilePath), operationData.getNewName());
        Intrinsics.checkNotNullExpressionValue(concat, "concat(...)");
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(combineUrl, separator, false, 2, null);
        if (endsWith$default) {
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            endsWith$default2 = StringsKt__StringsJVMKt.endsWith$default(concat, separator, false, 2, null);
            if (!endsWith$default2) {
                concat = concat + separator;
            }
        }
        String combineUrl2 = webDavUtils.combineUrl(webDavURL, concat);
        Debug.INSTANCE.m32035d(WebDavRenameFileRequest.class, combineUrl + " rename to " + combineUrl2, new Object[0]);
        this.webDavProvider.getWebDavClient().move(combineUrl, combineUrl2, false);
        List<DavResource> list = this.webDavProvider.getWebDavClient().list(combineUrl2, 0);
        Intrinsics.checkNotNullExpressionValue(list, "list(...)");
        first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        Intrinsics.checkNotNullExpressionValue(first2, "first(...)");
        return (DavResource) first2;
    }
}
