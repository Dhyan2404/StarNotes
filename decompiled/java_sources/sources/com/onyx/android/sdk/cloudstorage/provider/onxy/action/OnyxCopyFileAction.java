package com.onyx.android.sdk.cloudstorage.provider.onxy.action;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxCopyFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxFetchAllFileListRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.oss.GetListObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0004H\u0014J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\nH\u0014J\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u0014\u0010\u0014\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxCopyFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "copyCloudData", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "parentData", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchAllChildCloudFiles", "targetFolder", "", "getTargetCloudPath", "fileBean", "destDir", "", "copyLocalFile", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOnyxCopyFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxCopyFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxCopyFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1549#2:85\n1620#2,3:86\n*S KotlinDebug\n*F\n+ 1 OnyxCopyFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxCopyFileAction\n*L\n56#1:85\n56#1:86,3\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxCopyFileAction extends CopyCloudFileAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxCopyFileAction(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.onyxCloudProvider = onyxCloudProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public CloudFileListResult copyCloudData() {
        OnyxCloudProvider onyxCloudProvider = this.onyxCloudProvider;
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        OnyxCopyFileRequest onyxCopyFileRequest = new OnyxCopyFileRequest(onyxCloudProvider, onyxCloudProvider.getOssManager(clusterInfo), getFileOperation());
        onyxCopyFileRequest.setCut(getCut());
        QueryListResult<CloudFileBean> execute = onyxCopyFileRequest.execute();
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setCode(execute.getCode());
        cloudFileListResult.setList(execute.ensureList());
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    public void copyLocalFile(@NotNull CloudFileBean fileBean, @NotNull String destDir) {
        boolean equals$default;
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Intrinsics.checkNotNullParameter(destDir, "destDir");
        super.copyLocalFile(fileBean, destDir);
        if (getCut()) {
            String localFilePath = fileBean.getLocalFilePath();
            String name = fileBean.getName();
            Intrinsics.checkNotNull(name);
            equals$default = StringsKt__StringsJVMKt.equals$default(localFilePath, new File(destDir, name).getAbsolutePath(), false, 2, null);
            if (equals$default) {
                return;
            }
            this.onyxCloudProvider.getCloudStorageRecordProvider().delete(fileBean);
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public List<CloudFileBean> fetchAllChildCloudFiles(@NotNull CloudFileOperation.OperationData parentData) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(parentData, "parentData");
        ArrayList arrayList = new ArrayList();
        OnyxCloudProvider onyxCloudProvider = this.onyxCloudProvider;
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        final RxOSSManager ossManager = onyxCloudProvider.getOssManager(clusterInfo);
        OnyxFetchAllFileListRequest onyxFetchAllFileListRequest = new OnyxFetchAllFileListRequest(ossManager) { // from class: com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxCopyFileAction$fetchAllChildCloudFiles$request$1
            @Override // com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxFetchAllFileListRequest
            @NotNull
            public GetListObjectBean createGetListBean() {
                GetListObjectBean createGetListBean = super.createGetListBean();
                createGetListBean.setDelimiter(File.separator);
                return createGetListBean;
            }
        };
        onyxFetchAllFileListRequest.setPath(parentData.getPath());
        List<OSSObjectSummary> execute = onyxFetchAllFileListRequest.execute();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(execute, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = execute.iterator();
        while (it2.hasNext()) {
            arrayList2.add(OnyxCloudUtils.INSTANCE.toCloudFile(this.onyxCloudProvider.getCloudStorageRecordProvider(), (OSSObjectSummary) it2.next()));
        }
        CollectionKt.safeAddAll(arrayList, arrayList2);
        Debug.INSTANCE.m32035d(OnyxCopyFileAction.class, "fetch parent(%s) child files:%d", parentData.getPath(), Integer.valueOf(arrayList.size()));
        return arrayList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.onyxCloudProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "");
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OnyxCloudProvider getHuaweiYunProvider() {
        return this.onyxCloudProvider;
    }
}
