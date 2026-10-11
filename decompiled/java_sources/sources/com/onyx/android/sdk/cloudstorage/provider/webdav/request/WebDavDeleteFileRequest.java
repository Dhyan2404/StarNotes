package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0014J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavDeleteFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;", "", CouchFieldKey.KEY_PARENT_ID, "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchCloudFileList", "", "dataList", "", "deleteCloudFileList", "pathList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "deleteByPathList", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWebDavDeleteFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDavDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavDeleteFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n766#2:76\n857#2,2:77\n1549#2:79\n1620#2,3:80\n*S KotlinDebug\n*F\n+ 1 WebDavDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavDeleteFileRequest\n*L\n46#1:76\n46#1:77,2\n47#1:79\n47#1:80,3\n*E\n"})
/* loaded from: classes7.dex */
public final class WebDavDeleteFileRequest extends DeleteCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebDavDeleteFileRequest(@NotNull WebDavProvider webDavProvider, @NotNull CloudFileOperation args) {
        super(webDavProvider, args);
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.webDavProvider = webDavProvider;
        setProvider(webDavProvider.getProviderType());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public QueryListResult<CloudFileBean> deleteByPathList(@NotNull List<String> pathList) {
        Intrinsics.checkNotNullParameter(pathList, "pathList");
        QueryListResult<CloudFileBean> queryListResult = new QueryListResult<>();
        for (String str : pathList) {
            WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
            String webDavURL = this.webDavProvider.getWebDavClient().getWebDavURL();
            Intrinsics.checkNotNull(webDavURL);
            String combineUrl = webDavUtils.combineUrl(webDavURL, str);
            Debug.INSTANCE.m32035d(WebDavDeleteFileRequest.class, "delete item:" + combineUrl, new Object[0]);
            this.webDavProvider.getWebDavClient().delete(combineUrl);
            CollectionKt.safeAdd(queryListResult.ensureList(), this.webDavProvider.getCloudStorageRecordProvider().queryFileInfo(this.webDavProvider.getCloudStorageRecordProvider().getCloudFileLocalPath(this.webDavProvider, str)));
        }
        queryListResult.setCount(queryListResult.ensureList().size());
        return queryListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    public void deleteCloudFileList(@NotNull List<CloudFileBean> dataList) {
        int collectionSizeOrDefault;
        String cloudFilePath;
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        ArrayList<CloudFileBean> arrayList = new ArrayList();
        for (Object obj : dataList) {
            if (StringKt.isNotBlank(((CloudFileBean) obj).getCloudFilePath())) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (CloudFileBean cloudFileBean : arrayList) {
            if (cloudFileBean.getDir()) {
                String cloudFilePath2 = cloudFileBean.getCloudFilePath();
                Intrinsics.checkNotNull(cloudFilePath2);
                String separator = File.separator;
                Intrinsics.checkNotNullExpressionValue(separator, "separator");
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(cloudFilePath2, separator, false, 2, null);
                if (!endsWith$default) {
                    cloudFilePath = cloudFileBean.getCloudFilePath() + separator;
                    arrayList2.add(cloudFilePath);
                }
            }
            cloudFilePath = cloudFileBean.getCloudFilePath();
            Intrinsics.checkNotNull(cloudFilePath);
            arrayList2.add(cloudFilePath);
        }
        processDeleteResponse(deleteByPathList(arrayList2));
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@Nullable String parentId) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(getProvider().getTitle());
        cloudFileQueryArgs.setParentId(parentId);
        return WebDavUtils.INSTANCE.toCloudFiles(this.webDavProvider.getCloudStorageRecordProvider(), new WebDavFetchFileListRequest(this.webDavProvider, cloudFileQueryArgs).execute().ensureList(), this.webDavProvider.getAccountId());
    }
}
