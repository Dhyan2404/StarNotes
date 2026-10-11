package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.ResponeData;
import com.onyx.android.sdk.data.common.data.ResultCode;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\u0006\u001a\u00020\u0005H$J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001a\u0010\u000f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u001a\u0010\u0006\u001a\u00020\u00058\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "createFolder", "l", C4921e.f26528e, "m", "", "errno", "fileBean", GoogleApiAvailabilityLight.f29016b, "oldCloudFile", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "p", "oldFileBean", "", "newId", "", "q", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "getCloudFile", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateCloudFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCloudFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1855#2,2:132\n1855#2,2:134\n*S KotlinDebug\n*F\n+ 1 CreateCloudFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction\n*L\n58#1:132,2\n104#1:134,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class CreateCloudFolderAction extends BaseCloudStorageAction<CloudFileListResult> {

    @NotNull
    private final CloudFileBean cloudFile;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction$a */
    /* loaded from: classes7.dex */
    public static final class C7224a<T, R> implements Function {
        public C7224a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateCloudFolderAction createCloudFolderAction = CreateCloudFolderAction.this;
            return createCloudFolderAction.m32450o(createCloudFolderAction.getCloudFile());
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction$b */
    /* loaded from: classes7.dex */
    public static final class C7225b<T, R> implements Function {
        public C7225b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateCloudFolderAction.this.m32447l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction$c */
    /* loaded from: classes7.dex */
    public static final class C7226c<T, R> implements Function {
        public C7226c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileListResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            CreateCloudFolderAction createCloudFolderAction = CreateCloudFolderAction.this;
            return createCloudFolderAction.m32451p(createCloudFolderAction.getCloudFile(), result);
        }
    }

    public CreateCloudFolderAction(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.cloudFile = cloudFile;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable<CloudFileListResult> map = createObservableWithUpdateClusterInfo().map(new C7224a()).map(new C7225b()).map(new C7226c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public abstract ResponeData<CloudFileBean> createFolder(@NotNull CloudFileBean cloudFile) throws Exception;

    @NotNull
    public final CloudFileBean getCloudFile() {
        return this.cloudFile;
    }

    /* renamed from: l */
    public final CloudFileListResult m32447l(CloudFileBean cloudFile) throws Exception {
        String localFilePath = cloudFile.getLocalFilePath();
        CloudFileBean queryFileInfoByLocalPath = localFilePath != null ? getDropBoxProvider().getCloudStorageRecordProvider().queryFileInfoByLocalPath(localFilePath) : null;
        if (queryFileInfoByLocalPath != null) {
            if (StringUtils.isEmpty(cloudFile.getUniqueId())) {
                cloudFile.setUniqueId(queryFileInfoByLocalPath.getUniqueId());
            }
            if (!queryFileInfoByLocalPath.getSyncStatus().isNewFromLocal()) {
                return m32449n(0, queryFileInfoByLocalPath);
            }
        }
        return m32448m(cloudFile);
    }

    /* renamed from: m */
    public final CloudFileListResult m32448m(CloudFileBean cloudFile) throws Exception {
        if (StringUtils.isNotBlank(cloudFile.getLocalFilePath())) {
            getDropBoxProvider().getCloudStorageRecordProvider().setParentId(cloudFile);
        }
        if (StringUtils.isEmpty(cloudFile.getUniqueId())) {
            FileUtils fileUtils = FileUtils.INSTANCE;
            if (fileUtils.fileExist(cloudFile.getLocalFilePath())) {
                String computeMD5 = fileUtils.computeMD5(cloudFile.getLocalFilePath());
                if (computeMD5 == null) {
                    computeMD5 = "";
                }
                cloudFile.setUniqueId(computeMD5);
            }
        }
        ResponeData<CloudFileBean> createFolder = createFolder(cloudFile);
        return m32449n(createFolder.getCode(), ResultCode.INSTANCE.isSuccessful(createFolder.getCode()) ? createFolder.getData() : null);
    }

    /* renamed from: n */
    public final CloudFileListResult m32449n(int errno, CloudFileBean fileBean) {
        List mutableListOf;
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setCode(errno);
        if (cloudFileListResult.isSuccessful() && fileBean != null) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(fileBean);
            cloudFileListResult.setList(mutableListOf);
        }
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        return cloudFileListResult;
    }

    /* renamed from: o */
    public final CloudFileBean m32450o(CloudFileBean cloudFile) throws Exception {
        List<CloudFileBean> reversed;
        String localFilePath = cloudFile.getLocalFilePath();
        if (localFilePath != null) {
            reversed = CollectionsKt___CollectionsKt.reversed(getDropBoxProvider().getCloudStorageRecordProvider().queryParentFolderReverse(localFilePath));
            for (CloudFileBean cloudFileBean : reversed) {
                if (cloudFileBean.getDir() && cloudFileBean.getSyncStatus().isNewFromLocal()) {
                    Debug.INSTANCE.m32035d(getClass(), "ensure create parent folder:" + cloudFileBean.getCloudFilePath(), new Object[0]);
                    m32451p(cloudFileBean, m32448m(cloudFileBean));
                }
            }
        }
        return cloudFile;
    }

    /* renamed from: p */
    public final CloudFileListResult m32451p(CloudFileBean oldCloudFile, CloudFileListResult result) {
        if (result.isSuccessful() && CollectionKt.isNonBlank(result.getList())) {
            ArrayList arrayList = new ArrayList();
            List<CloudFileBean> list = result.getList();
            Intrinsics.checkNotNull(list);
            for (CloudFileBean cloudFileBean : list) {
                getDropBoxProvider().getCloudStorageRecordProvider().setParentId(cloudFileBean);
                if (!StringUtils.equals(CloudStorageConstants.INSTANCE.getCloudOnyxPath(cloudFileBean.getProvider()), cloudFileBean.getCloudFilePath()) || StringUtils.isNotBlank(cloudFileBean.getUniqueId())) {
                    oldCloudFile.setSyncStatus(SyncStatus.NEW_FROM_CLOUD);
                    String uniqueId = cloudFileBean.getUniqueId();
                    if (uniqueId != null) {
                        m32452q(oldCloudFile, uniqueId);
                    }
                    arrayList.add(cloudFileBean);
                }
            }
            getDropBoxProvider().getCloudStorageRecordProvider().saveCloudFiles(arrayList);
        }
        return result;
    }

    /* renamed from: q */
    public final void m32452q(CloudFileBean oldFileBean, String newId) {
        List listOf;
        CloudStorageRecordProvider cloudStorageRecordProvider = getDropBoxProvider().getCloudStorageRecordProvider();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(oldFileBean);
        cloudStorageRecordProvider.delete(listOf);
        if (oldFileBean.getUniqueId().length() == 0) {
            getDropBoxProvider().getCloudStorageRecordProvider().updateParentId(oldFileBean.getUniqueId(), newId);
        }
        Debug.INSTANCE.m32035d(getClass(), "delete " + oldFileBean.getUniqueId() + ",update " + newId, new Object[0]);
    }
}
