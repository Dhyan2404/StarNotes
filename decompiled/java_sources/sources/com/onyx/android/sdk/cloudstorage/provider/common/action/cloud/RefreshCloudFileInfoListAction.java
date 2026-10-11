package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyLocalFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.request.RenameLocalCloudFileRequest;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0007\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b,\u0010-J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H$J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H$J\b\u0010\n\u001a\u00020\tH$J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\u0016\u0010\u0010\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH\u0002J*\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH\u0002J\u001c\u0010\u0015\u001a\u00020\f2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0016\u0010\u0019\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH\u0002J*\u0010\u001b\u001a\u00020\f2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u00132\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J,\u0010\u001d\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u0010\u001c\u001a\u00020\tH\u0002J \u0010!\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0002J \u0010$\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\tH\u0002J\u001c\u0010(\u001a\u00020'2\b\u0010%\u001a\u0004\u0018\u00010\t2\b\u0010&\u001a\u0004\u0018\u00010\tH\u0002R\u001a\u0010\u0017\u001a\u00020\u00168\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0017\u0010)\u001a\u0004\b*\u0010+¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "fetchByQueryArgs", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchAllByRecursive", "", "getCloudPrefixPath", "t", "", "y", "", "cloudFileList", GoogleApiAvailabilityLight.f29016b, "localFileList", "getInvalidLocalFileData", "", "folderMap", "p", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "s", "v", "list", "z", "cloudPrefixPath", "w", "fileBean", "destDir", "name", "r", "localFile", "cloudFile", "x", "originPath", "destPath", "", "u", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "getQueryArgs", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRefreshCloudFileInfoListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefreshCloudFileInfoListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1855#2,2:237\n1855#2,2:239\n1603#2,9:241\n1855#2:250\n1856#2:252\n1612#2:253\n766#2:254\n857#2,2:255\n1855#2,2:257\n1855#2,2:259\n1855#2,2:261\n1#3:251\n*S KotlinDebug\n*F\n+ 1 RefreshCloudFileInfoListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction\n*L\n59#1:237,2\n91#1:239,2\n112#1:241,9\n112#1:250\n112#1:252\n112#1:253\n119#1:254\n119#1:255,2\n145#1:257,2\n159#1:259,2\n168#1:261,2\n112#1:251\n*E\n"})
/* loaded from: classes7.dex */
public abstract class RefreshCloudFileInfoListAction extends BaseCloudStorageAction<CloudFileListResult> {

    @NotNull
    private final CloudFileQueryArgs queryArgs;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction$a */
    /* loaded from: classes7.dex */
    public static final class C7258a<T, R> implements Function {
        public C7258a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RefreshCloudFileInfoListAction.this.m32550t();
        }
    }

    public RefreshCloudFileInfoListAction(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.queryArgs = queryArgs;
    }

    /* renamed from: o */
    public static final void m32544o(RefreshCloudFileInfoListAction this$0, CloudFileQueryArgs args) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(args, "args");
        this$0.m32549s(args);
    }

    /* renamed from: q */
    public static final void m32545q(RefreshCloudFileInfoListAction this$0, CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this$0.m32549s(queryArgs);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable flatMap = createObservableWithUpdateClusterInfo().flatMap(new C7258a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public abstract List<CloudFileBean> fetchAllByRecursive() throws Exception;

    @NotNull
    public abstract Observable<CloudFileListResult> fetchByQueryArgs();

    @NotNull
    public abstract String getCloudPrefixPath();

    public final Collection<CloudFileBean> getInvalidLocalFileData(Collection<CloudFileBean> cloudFileList, Collection<CloudFileBean> localFileList) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (CloudFileBean cloudFileBean : localFileList) {
            if (cloudFileBean.getUniqueId() != null) {
                String uniqueId = cloudFileBean.getUniqueId();
                Intrinsics.checkNotNull(uniqueId);
                linkedHashMap.put(uniqueId, cloudFileBean);
            }
        }
        for (CloudFileBean cloudFileBean2 : cloudFileList) {
            if (linkedHashMap.isEmpty()) {
                break;
            }
            CloudFileBean cloudFileBean3 = (CloudFileBean) linkedHashMap.get(cloudFileBean2.getUniqueId());
            if (cloudFileBean3 != null && cloudFileBean3.getSize() == cloudFileBean2.getSize()) {
                linkedHashMap.remove(cloudFileBean3.getUniqueId());
            }
        }
        return linkedHashMap.values();
    }

    @NotNull
    public final CloudFileQueryArgs getQueryArgs() {
        return this.queryArgs;
    }

    /* renamed from: n */
    public final void m32546n(Collection<CloudFileBean> cloudFileList) {
        CloudStorageRecordProvider cloudStorageRecordProvider = getHuaweiYunProvider().getCloudStorageRecordProvider();
        cloudStorageRecordProvider.delete(getInvalidLocalFileData(cloudFileList, cloudStorageRecordProvider.queryAllFileResult(this.queryArgs.getProvider(), this.queryArgs.getAccountId(), new Consumer() { // from class: com.sunia.HTREnginev2.hjl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RefreshCloudFileInfoListAction.m32544o(RefreshCloudFileInfoListAction.this, (CloudFileQueryArgs) obj);
            }
        }).ensureList()));
    }

    /* renamed from: p */
    public final void m32547p(Map<String, CloudFileBean> folderMap) {
        Collection<CloudFileBean> values = folderMap.values();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = values.iterator();
        while (it2.hasNext()) {
            String uniqueId = ((CloudFileBean) it2.next()).getUniqueId();
            if (uniqueId != null) {
                arrayList.add(uniqueId);
            }
        }
        CloudStorageRecordProvider cloudStorageRecordProvider = getHuaweiYunProvider().getCloudStorageRecordProvider();
        List<CloudFileBean> ensureList = cloudStorageRecordProvider.queryAllFolderResult(this.queryArgs.getProvider(), this.queryArgs.getAccountId(), new Consumer() { // from class: com.sunia.HTREnginev2.ijl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RefreshCloudFileInfoListAction.m32545q(RefreshCloudFileInfoListAction.this, (CloudFileQueryArgs) obj);
            }
        }).ensureList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : ensureList) {
            if (!arrayList.contains(((CloudFileBean) obj).getUniqueId())) {
                arrayList2.add(obj);
            }
        }
        cloudStorageRecordProvider.delete(arrayList2);
    }

    /* renamed from: r */
    public final void m32548r(CloudFileBean fileBean, String destDir, String name) {
        try {
            CopyLocalFileRequest copyLocalFileRequest = new CopyLocalFileRequest(fileBean, destDir, name);
            copyLocalFileRequest.setCut(true);
            copyLocalFileRequest.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: s */
    public final void m32549s(CloudFileQueryArgs queryArgs) {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        queryArgs.andWith(cBQueryArgs.andWith(couchUtils.notEqualExpression(CouchFieldKey.KEY_SYNC_STATUS, Integer.valueOf(SyncStatus.NEW_FROM_LOCAL.getId()))));
        queryArgs.andWith(new CBQueryArgs().andWith(couchUtils.notEqualExpression(CouchFieldKey.KEY_SYNC_STATUS, Integer.valueOf(SyncStatus.UPLOAD.getId()))));
    }

    /* renamed from: t */
    public final Observable<CloudFileListResult> m32550t() {
        try {
            m32555y();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return fetchByQueryArgs();
    }

    /* renamed from: u */
    public final boolean m32551u(String originPath, String destPath) {
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (StringKt.equals(fileUtils.getParent(originPath), fileUtils.getParent(destPath))) {
            return !FilenameUtils.getName(originPath).equals(FilenameUtils.getName(destPath));
        }
        return false;
    }

    /* renamed from: v */
    public final void m32552v(Collection<CloudFileBean> cloudFileList) throws Exception {
        CloudStorageRecordProvider cloudStorageRecordProvider = getHuaweiYunProvider().getCloudStorageRecordProvider();
        List<CloudFileBean> ensureList = cloudStorageRecordProvider.queryAllFolderResult(this.queryArgs.getProvider(), this.queryArgs.getAccountId()).ensureList();
        CollectionKt.safeAddAll(ensureList, cloudStorageRecordProvider.queryAllFileResult(this.queryArgs.getProvider(), this.queryArgs.getAccountId()).ensureList());
        m32553w(cloudFileList, ensureList, getCloudPrefixPath());
    }

    /* renamed from: w */
    public final void m32553w(Collection<CloudFileBean> cloudFileList, Collection<CloudFileBean> localFileList, String cloudPrefixPath) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (CloudFileBean cloudFileBean : localFileList) {
            if (StringKt.isNotBlank(cloudFileBean.getUniqueId())) {
                String uniqueId = cloudFileBean.getUniqueId();
                Intrinsics.checkNotNull(uniqueId);
                linkedHashMap.put(uniqueId, cloudFileBean);
            }
            if (StringKt.isNotBlank(cloudFileBean.getCloudFilePath())) {
                String cloudFilePath = cloudFileBean.getCloudFilePath();
                Intrinsics.checkNotNull(cloudFilePath);
                linkedHashMap2.put(cloudFilePath, cloudFileBean);
            }
        }
        for (CloudFileBean cloudFileBean2 : cloudFileList) {
            CloudFileBean cloudFileBean3 = (CloudFileBean) linkedHashMap.get(cloudFileBean2.getUniqueId());
            if (cloudFileBean3 == null) {
                cloudFileBean3 = (CloudFileBean) linkedHashMap2.get(cloudFileBean2.getCloudFilePath());
            }
            if (cloudFileBean3 != null) {
                if (!cloudFileBean3.getDir() && FileUtils.INSTANCE.fileExist(cloudFileBean3.getLocalFilePath())) {
                    if (!getHuaweiYunProvider().isFileConflict(cloudFileBean2, cloudFileBean3) || cloudFileBean3.getSyncStatus() == SyncStatus.UPLOAD_CONFLICT) {
                        cloudFileBean2.setSyncStatus(cloudFileBean3.getSyncStatus());
                    } else {
                        cloudFileBean2.setSyncStatus(SyncStatus.NEW_VERSION_FROM_CLOUD);
                    }
                }
                String localFilePath = cloudFileBean3.getLocalFilePath();
                String localFilePath2 = cloudFileBean2.getLocalFilePath();
                if (m32551u(localFilePath, localFilePath2)) {
                    m32554x(cloudFileBean3, cloudFileBean2, cloudPrefixPath);
                } else {
                    String parent = FileUtils.INSTANCE.getParent(localFilePath2);
                    if (!StringKt.equals(localFilePath, localFilePath2) && parent != null && cloudFileBean2.getName() != null) {
                        String name = cloudFileBean2.getName();
                        Intrinsics.checkNotNull(name);
                        m32548r(cloudFileBean3, parent, name);
                    }
                }
            }
        }
    }

    /* renamed from: x */
    public final void m32554x(CloudFileBean localFile, CloudFileBean cloudFile, String cloudPrefixPath) throws Exception {
        if (FileUtils.INSTANCE.fileExist(localFile.getLocalFilePath())) {
            BaseCloudStorageProvider huaweiYunProvider = getHuaweiYunProvider();
            String name = cloudFile.getName();
            Intrinsics.checkNotNull(name);
            RenameLocalCloudFileRequest renameLocalCloudFileRequest = new RenameLocalCloudFileRequest(huaweiYunProvider, localFile, name);
            renameLocalCloudFileRequest.setCloudPrefixPath(cloudPrefixPath);
            renameLocalCloudFileRequest.execute();
        }
    }

    /* renamed from: y */
    public final void m32555y() throws Exception {
        List<CloudFileBean> fetchAllByRecursive = fetchAllByRecursive();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (CloudFileBean cloudFileBean : fetchAllByRecursive) {
            if (cloudFileBean.getCloudFilePath() != null) {
                if (cloudFileBean.getDir()) {
                    String cloudFilePath = cloudFileBean.getCloudFilePath();
                    Intrinsics.checkNotNull(cloudFilePath);
                    linkedHashMap.put(cloudFilePath, cloudFileBean);
                    Debug.INSTANCE.m32035d(getClass(), cloudFileBean.getCloudFilePath(), new Object[0]);
                } else {
                    String uniqueId = cloudFileBean.getUniqueId();
                    Intrinsics.checkNotNull(uniqueId);
                    linkedHashMap2.put(uniqueId, cloudFileBean);
                }
            }
        }
        m32556z(linkedHashMap, fetchAllByRecursive);
        List<CloudFileBean> list = fetchAllByRecursive;
        m32552v(list);
        m32547p(linkedHashMap);
        m32546n(linkedHashMap2.values());
        getHuaweiYunProvider().getCloudStorageRecordProvider().saveCloudFiles(list);
    }

    /* renamed from: z */
    public final void m32556z(Map<String, CloudFileBean> folderMap, List<CloudFileBean> list) {
        for (CloudFileBean cloudFileBean : list) {
            CloudFileBean cloudFileBean2 = folderMap.get(FileUtils.INSTANCE.getParent(cloudFileBean.getCloudFilePath()));
            if (cloudFileBean2 != null) {
                cloudFileBean.setParentId(cloudFileBean2.getUniqueId());
            }
        }
    }
}
