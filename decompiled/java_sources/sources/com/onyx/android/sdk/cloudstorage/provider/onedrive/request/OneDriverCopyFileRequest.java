package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverErrorBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverOperationStatus;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014J \u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\fH\u0002J\u001a\u0010\u0012\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\fH\u0002J\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\fH\u0002J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0002J \u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\fH\u0002J\b\u0010\u0019\u001a\u00020\u0017H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverCopyFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "parent", "", "fetchCloudFileList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "dataList", "", "copy", "targetFolder", "", "getTargetCloudPath", "id", "name", "targetFolderId", "d", C6999h.f39688c, "location", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverOperationStatus;", "c", C6998g.f39679a, "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", C6997f.f39671c, "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "rootFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverCopyFileRequest extends CopyCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public OneDriverFileInfo rootFolder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneDriverCopyFileRequest(@NotNull OneDriveProvider oneDriveProvider, @NotNull CloudFileOperation args) {
        super(oneDriveProvider, args);
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.oneDriveProvider = oneDriveProvider;
    }

    /* renamed from: c */
    public final OneDriverOperationStatus m32767c(String location) throws Exception {
        OneDriverOperationStatus body;
        if (location == null || location.length() == 0) {
            return null;
        }
        Debug.INSTANCE.m32052i(OneDriverCopyFileRequest.class, "monitor operation result:" + location, new Object[0]);
        do {
            Thread.sleep(500L);
            Response<OneDriverOperationStatus> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveService(CloudStorageConstants.ONE_DRIVE_BASE_URL).getOperationStatus(location).execute();
            body = execute.body();
            if (!execute.isSuccessful()) {
                return null;
            }
            if (body == null) {
                break;
            }
        } while (!body.isComplete());
        return body;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    public void copy(@NotNull List<CloudFileOperation.OperationData> dataList) {
        String id;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        for (CloudFileOperation.OperationData operationData : dataList) {
            Debug.INSTANCE.m32035d(OneDriverCopyFileRequest.class, "operationData:" + JSONUtils.INSTANCE.toJson(operationData), new Object[0]);
            String dest = operationData.getDest();
            if ((dest == null || dest.length() == 0) || StringKt.equals(operationData.getDest(), "/")) {
                id = m32769e().getId();
            } else {
                CloudStorageRecordProvider cloudStorageRecordProvider = this.oneDriveProvider.getCloudStorageRecordProvider();
                OneDriveProvider oneDriveProvider = this.oneDriveProvider;
                String dest2 = operationData.getDest();
                Intrinsics.checkNotNull(dest2);
                CloudFileBean queryFileInfoByLocalPath = this.oneDriveProvider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(cloudStorageRecordProvider.getCloudFileLocalPath(oneDriveProvider, dest2));
                id = queryFileInfoByLocalPath != null ? queryFileInfoByLocalPath.getUniqueId() : null;
            }
            String origin = operationData.getOrigin();
            if (origin == null) {
                CloudStorageRecordProvider cloudStorageRecordProvider2 = this.oneDriveProvider.getCloudStorageRecordProvider();
                OneDriveProvider oneDriveProvider2 = this.oneDriveProvider;
                String path = operationData.getPath();
                Intrinsics.checkNotNull(path);
                CloudFileBean queryFileInfoByLocalPath2 = this.oneDriveProvider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(cloudStorageRecordProvider2.getCloudFileLocalPath(oneDriveProvider2, path));
                origin = queryFileInfoByLocalPath2 != null ? queryFileInfoByLocalPath2.getUniqueId() : null;
            }
            if (getCut()) {
                Intrinsics.checkNotNull(origin);
                String newName = operationData.getNewName();
                Intrinsics.checkNotNull(newName);
                Intrinsics.checkNotNull(id);
                m32770f(origin, newName, id);
            } else {
                Intrinsics.checkNotNull(origin);
                String newName2 = operationData.getNewName();
                Intrinsics.checkNotNull(newName2);
                Intrinsics.checkNotNull(id);
                m32768d(origin, newName2, id);
            }
        }
    }

    /* renamed from: d */
    public final void m32768d(String id, String name, String targetFolderId) throws Exception {
        OneDriverFileInfo.Parent parent = new OneDriverFileInfo.Parent();
        parent.setId(targetFolderId);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("name", m32771g(name));
        linkedHashMap.put(OneDriverConstants.PARENT_REFERENCE, parent);
        Response<ResponseBody> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveService().copyFile(id, linkedHashMap).execute();
        if (!execute.isSuccessful()) {
            OneDriverErrorBody.Companion companion = OneDriverErrorBody.INSTANCE;
            Intrinsics.checkNotNull(execute);
            throw companion.parseError(execute);
        }
        if (execute.code() == 200) {
            return;
        }
        OneDriverOperationStatus m32767c = execute.code() == 202 ? m32767c(execute.headers().get("Location")) : null;
        if (m32767c != null) {
            try {
                m32772h(m32767c.getResourceId(), name);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: e */
    public final OneDriverFileInfo m32769e() throws Exception {
        if (this.rootFolder == null) {
            this.rootFolder = new EnsureCreateRootFolderRequest(this.oneDriveProvider.getOneDriveClient()).execute();
        }
        OneDriverFileInfo oneDriverFileInfo = this.rootFolder;
        Intrinsics.checkNotNull(oneDriverFileInfo);
        return oneDriverFileInfo;
    }

    /* renamed from: f */
    public final OneDriverFileInfo m32770f(String id, String name, String targetFolderId) throws Exception {
        Map<String, Object> fileUpdateMap = OneDriverUtils.INSTANCE.getFileUpdateMap(name);
        OneDriverFileInfo.Parent parent = new OneDriverFileInfo.Parent();
        parent.setId(targetFolderId);
        fileUpdateMap.put(OneDriverConstants.PARENT_REFERENCE, parent);
        fileUpdateMap.put(OneDriverConstants.GRAPH_CONFLICT_BEHAVIOR, "replace");
        Response<OneDriverFileInfo> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveService().moveFile(id, fileUpdateMap).execute();
        if (execute.isSuccessful()) {
            OneDriverFileInfo body = execute.body();
            Intrinsics.checkNotNullExpressionValue(body, "body(...)");
            return body;
        }
        OneDriverErrorBody.Companion companion = OneDriverErrorBody.INSTANCE;
        Intrinsics.checkNotNull(execute);
        throw companion.parseError(execute);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@NotNull CloudFileBean parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        String uniqueId = parent.getUniqueId();
        if (uniqueId == null || uniqueId.length() == 0) {
            uniqueId = m32769e().getId();
        }
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setParentId(uniqueId);
        return OneDriverFileInfo.INSTANCE.toCloudFiles(this.oneDriveProvider.getCloudStorageRecordProvider(), new OneDriverFetchFileListRequest(this.oneDriveProvider, cloudFileQueryArgs).execute().ensureList(), this.oneDriveProvider.getAccountId());
    }

    /* renamed from: g */
    public final String m32771g(String name) {
        String combine = FileUtils.INSTANCE.combine(FilenameUtils.getBaseName(name) + '-' + System.currentTimeMillis(), FilenameUtils.getExtension(name));
        return combine == null ? name : combine;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.oneDriveProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "/");
    }

    /* renamed from: h */
    public final void m32772h(String id, String name) throws Exception {
        List listOf;
        CloudFileOperation.OperationData operationData = new CloudFileOperation.OperationData();
        operationData.setOrigin(id);
        operationData.setNewName(name);
        CloudFileOperation cloudFileOperation = new CloudFileOperation();
        cloudFileOperation.setStrategy(CloudFileOperation.OperationStrategy.OVERWRITE);
        cloudFileOperation.setProvider(Provider.ONE_DRIVE);
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(operationData);
        cloudFileOperation.setDataJson(jSONUtils.toJson(listOf));
        new OneDriverRenameFileRequest(this.oneDriveProvider.getOneDriveClient(), cloudFileOperation).execute();
    }
}
