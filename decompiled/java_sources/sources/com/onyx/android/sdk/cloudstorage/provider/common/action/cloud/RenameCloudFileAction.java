package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.alibaba.fastjson2.TypeReference;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.request.RenameLocalCloudFileRequest;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u000e\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b(\u0010)J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H$J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH$J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0014J\b\u0010\u000e\u001a\u00020\bH\u0002J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0002H\u0002J\u0018\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0002R\u001a\u0010\t\u001a\u00020\b8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\t\u0010\u001e\u001a\u0004\b\u001f\u0010 R(\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0016\u0010\u001b\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010'¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "createParentFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", "rename", "fileInfo", "", "isUnCreatedFolder", "p", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "l", "localListResult", "q", "listResult", "m", "cloudResult", "r", "localResult", "", "s", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "getFileOperation", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "operationDataList", "Ljava/util/List;", "getOperationDataList", "()Ljava/util/List;", "setOperationDataList", "(Ljava/util/List;)V", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenameCloudFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenameCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,188:1\n1855#2,2:189\n1855#2,2:191\n1855#2:193\n1856#2:195\n1855#2,2:196\n1855#2,2:198\n1855#2,2:200\n1855#2,2:202\n1#3:194\n*S KotlinDebug\n*F\n+ 1 RenameCloudFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction\n*L\n51#1:189,2\n78#1:191,2\n91#1:193\n91#1:195\n121#1:196,2\n136#1:198,2\n142#1:200,2\n159#1:202,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class RenameCloudFileAction extends BaseCloudStorageAction<CloudFileListResult> {

    @NotNull
    private final CloudFileOperation fileOperation;
    private CloudFileListResult localResult;

    @NotNull
    private List<CloudFileOperation.OperationData> operationDataList;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction$a */
    /* loaded from: classes7.dex */
    public static final class C7259a<T, R> implements Function {
        public C7259a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileOperation apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameCloudFileAction.this.m32562p();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction$b */
    /* loaded from: classes7.dex */
    public static final class C7260b<T, R> implements Function {
        public C7260b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileOperation it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameCloudFileAction.this.m32560n();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction$c */
    /* loaded from: classes7.dex */
    public static final class C7261c<T, R> implements Function {
        public C7261c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloudFileListResult> apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameCloudFileAction.this.m32558l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction$d */
    /* loaded from: classes7.dex */
    public static final class C7262d<T, R> implements Function {
        public C7262d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameCloudFileAction.this.m32563q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction$e */
    /* loaded from: classes7.dex */
    public static final class C7263e<T, R> implements Function {
        public C7263e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameCloudFileAction.this.m32564r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction$f */
    /* loaded from: classes7.dex */
    public static final class C7264f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CloudFileListResult f41472e;

        public C7264f(CloudFileListResult cloudFileListResult) {
            this.f41472e = cloudFileListResult;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull CloudFileListResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41472e;
        }
    }

    public RenameCloudFileAction(@NotNull CloudFileOperation fileOperation) {
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.fileOperation = fileOperation;
        this.operationDataList = m32561o();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable<CloudFileListResult> map = createObservableWithUpdateClusterInfo().map(new C7259a()).map(new C7260b()).flatMap(new C7261c()).map(new C7262d()).map(new C7263e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public abstract Observable<CloudFileListResult> createParentFolder(@NotNull CloudFileBean fileBean);

    @NotNull
    public final CloudFileOperation getFileOperation() {
        return this.fileOperation;
    }

    @NotNull
    public final List<CloudFileOperation.OperationData> getOperationDataList() {
        return this.operationDataList;
    }

    public boolean isUnCreatedFolder(@Nullable CloudFileBean fileInfo) {
        return fileInfo != null && fileInfo.getDir() && fileInfo.getSyncStatus().isNewFromLocal();
    }

    /* renamed from: l */
    public final Observable<CloudFileListResult> m32558l(CloudFileListResult result) {
        ArrayList arrayList = new ArrayList();
        for (CloudFileBean cloudFileBean : result.ensureList()) {
            if (NetworkUtils.INSTANCE.isNetworkConnected(getAppContext())) {
                CloudFileBean queryParentFolder = getHuaweiYunProvider().getCloudStorageRecordProvider().queryParentFolder(cloudFileBean.getLocalFilePath());
                if (isUnCreatedFolder(queryParentFolder) && queryParentFolder != null) {
                    arrayList.add(createParentFolder(queryParentFolder));
                }
                if (isUnCreatedFolder(cloudFileBean)) {
                    arrayList.add(createParentFolder(cloudFileBean));
                }
            }
        }
        if (arrayList.isEmpty()) {
            Observable<CloudFileListResult> just = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<CloudFileListResult> map = Observable.concat(arrayList).map(new C7264f(result));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final boolean m32559m(CloudFileListResult listResult) {
        Iterator<T> it2 = listResult.ensureList().iterator();
        while (it2.hasNext()) {
            if (!((CloudFileBean) it2.next()).getSyncStatus().isNewFromLocal()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    public final CloudFileListResult m32560n() {
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        Iterator<T> it2 = this.operationDataList.iterator();
        while (it2.hasNext()) {
            CloudFileBean queryFileInfo = getHuaweiYunProvider().getCloudStorageRecordProvider().queryFileInfo(((CloudFileOperation.OperationData) it2.next()).getOrigin());
            if (queryFileInfo != null) {
                cloudFileListResult.ensureList().add(queryFileInfo);
            }
        }
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        this.localResult = cloudFileListResult;
        return cloudFileListResult;
    }

    /* renamed from: o */
    public final List<CloudFileOperation.OperationData> m32561o() {
        List<CloudFileOperation.OperationData> emptyList;
        List<CloudFileOperation.OperationData> list = (List) JSONUtils.INSTANCE.parseObject(this.fileOperation.getDataJson(), new TypeReference<List<? extends CloudFileOperation.OperationData>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction$parseOperationDataList$1
        });
        if (list != null) {
            return list;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    /* renamed from: p */
    public final CloudFileOperation m32562p() {
        CloudFileBean queryFileInfo;
        List<CloudFileOperation.OperationData> m32561o = m32561o();
        this.operationDataList = m32561o;
        for (CloudFileOperation.OperationData operationData : m32561o) {
            String path = operationData.getPath();
            if (path == null || (queryFileInfo = getHuaweiYunProvider().getCloudStorageRecordProvider().queryFileInfoByLocalPath(path)) == null) {
                queryFileInfo = getHuaweiYunProvider().getCloudStorageRecordProvider().queryFileInfo(operationData.getOrigin());
            }
            if (queryFileInfo != null) {
                if (StringUtils.isEmpty(operationData.getOrigin())) {
                    operationData.setOrigin(queryFileInfo.getUniqueId());
                }
                operationData.setPath(queryFileInfo.getCloudFilePath());
            }
        }
        this.fileOperation.setDataJson(JSONUtils.INSTANCE.toJson(this.operationDataList));
        return this.fileOperation;
    }

    /* renamed from: q */
    public final CloudFileListResult m32563q(CloudFileListResult localListResult) throws Exception {
        Debug.INSTANCE.m32035d(getClass(), "rename for cloud file info", new Object[0]);
        if (m32559m(localListResult)) {
            return localListResult;
        }
        CloudFileListResult rename = rename(this.fileOperation);
        rename.setCount(rename.ensureList().size());
        return rename;
    }

    /* renamed from: r */
    public final CloudFileListResult m32564r(CloudFileListResult cloudResult) throws Exception {
        if (!cloudResult.isSuccessful()) {
            return cloudResult;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (CloudFileOperation.OperationData operationData : this.operationDataList) {
            String origin = operationData.getOrigin();
            if (origin != null) {
                linkedHashMap.put(origin, operationData);
            }
        }
        CloudFileListResult cloudFileListResult = this.localResult;
        CloudFileListResult cloudFileListResult2 = null;
        if (cloudFileListResult == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localResult");
            cloudFileListResult = null;
        }
        for (CloudFileBean cloudFileBean : cloudFileListResult.ensureList()) {
            CloudFileOperation.OperationData operationData2 = (CloudFileOperation.OperationData) linkedHashMap.get(cloudFileBean.getUniqueId());
            if (operationData2 != null && operationData2.getNewName() != null) {
                BaseCloudStorageProvider huaweiYunProvider = getHuaweiYunProvider();
                String newName = operationData2.getNewName();
                Intrinsics.checkNotNull(newName);
                RenameLocalCloudFileRequest renameLocalCloudFileRequest = new RenameLocalCloudFileRequest(huaweiYunProvider, cloudFileBean, newName);
                renameLocalCloudFileRequest.setCloudPrefixPath(CloudStorageConstants.INSTANCE.getCloudOnyxPath(cloudFileBean.getProvider()));
                renameLocalCloudFileRequest.setCheckDestFileInfo(true);
                renameLocalCloudFileRequest.execute();
            }
        }
        CloudFileListResult cloudFileListResult3 = this.localResult;
        if (cloudFileListResult3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localResult");
        } else {
            cloudFileListResult2 = cloudFileListResult3;
        }
        m32565s(cloudResult, cloudFileListResult2);
        return cloudResult;
    }

    @NotNull
    public abstract CloudFileListResult rename(@NotNull CloudFileOperation fileOperation) throws Exception;

    /* renamed from: s */
    public final void m32565s(CloudFileListResult cloudResult, CloudFileListResult localResult) {
        CloudFileBean cloudFileBean;
        Object obj;
        for (CloudFileBean cloudFileBean2 : cloudResult.ensureList()) {
            Iterator<T> it2 = localResult.ensureList().iterator();
            while (true) {
                cloudFileBean = null;
                if (it2.hasNext()) {
                    obj = it2.next();
                    if (StringUtils.equals(((CloudFileBean) obj).getLocalFilePath(), cloudFileBean2.getLocalFilePath())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            CloudFileBean cloudFileBean3 = (CloudFileBean) obj;
            if (cloudFileBean3 != null) {
                cloudFileBean2.setParentId(cloudFileBean3.getParentId());
                cloudFileBean = cloudFileBean3;
            }
            if (cloudFileBean != null && !StringUtils.equals(cloudFileBean.getUniqueId(), cloudFileBean2.getUniqueId())) {
                getHuaweiYunProvider().getCloudStorageRecordProvider().delete(cloudFileBean);
                if (cloudFileBean.getDir() && cloudFileBean.getParentId() != null && cloudFileBean2.getUniqueId() != null) {
                    CloudStorageRecordProvider cloudStorageRecordProvider = getHuaweiYunProvider().getCloudStorageRecordProvider();
                    String parentId = cloudFileBean.getParentId();
                    Intrinsics.checkNotNull(parentId);
                    String uniqueId = cloudFileBean2.getUniqueId();
                    Intrinsics.checkNotNull(uniqueId);
                    cloudStorageRecordProvider.updateParentId(parentId, uniqueId);
                }
                cloudFileBean.setUniqueId(cloudFileBean2.getUniqueId());
            }
        }
        getHuaweiYunProvider().getCloudStorageRecordProvider().saveCloudFiles(localResult.ensureList());
    }

    public final void setOperationDataList(@NotNull List<CloudFileOperation.OperationData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.operationDataList = list;
    }
}
