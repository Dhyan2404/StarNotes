package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.common.FetchPolicy;
import com.onyx.android.sdk.cloudstorage.model.common.SyncStatus;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyLocalFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.request.RenameLocalCloudFileRequest;
import com.onyx.android.sdk.data.common.data.QueryResult;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\r\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b.\u0010/J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0002H$J\b\u0010\u0007\u001a\u00020\u0006H$J*\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0004J\u001e\u0010\u0011\u001a\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\u0016\u0010\u0015\u001a\u00020\u00142\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\rH\u0002J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J,\u0010\u0019\u001a\u00020\u00142\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0018\u001a\u00020\u0006H\u0002J \u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J \u0010 \u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0006H\u0002J\u001c\u0010$\u001a\u00020#2\b\u0010!\u001a\u0004\u0018\u00010\u00062\b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002J$\u0010%\u001a\u00020\u00142\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J$\u0010&\u001a\b\u0012\u0004\u0012\u00020\t0\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010'\u001a\u00020\u0002H\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u001e\u0010*\u001a\u00020\u00022\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00060\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u001a\u0010\u0010\u001a\u00020\u000f8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0010\u0010+\u001a\u0004\b,\u0010-¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "fetchCloud", "", "getCloudPrefixPath", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFileList", "localFileList", "getInvalidLocalFileData", "", "idList", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "fetchLocalFileListById", GoogleApiAvailabilityLight.f29016b, "list", "", "w", "cloudListResult", "t", "cloudPrefixPath", "u", "fileBean", "destDir", "name", "m", "localFile", "cloudFile", "v", "originPath", "destPath", "", "s", "l", "p", C4921e.f26528e, "q", "pathList", "r", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "getQueryArgs", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFetchFileInfoListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchFileInfoListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,326:1\n1855#2,2:327\n1603#2,9:329\n1855#2:338\n1856#2:340\n1612#2:341\n1855#2,2:342\n1855#2,2:344\n766#2:346\n857#2,2:347\n766#2:349\n857#2,2:350\n1603#2,9:352\n1855#2:361\n1856#2:363\n1612#2:364\n1603#2,9:365\n1855#2:374\n1856#2:376\n1612#2:377\n1549#2:378\n1620#2,3:379\n1855#2,2:382\n1549#2:384\n1620#2,3:385\n1855#2,2:388\n1855#2,2:390\n1855#2,2:392\n1774#2,4:394\n1855#2,2:398\n1#3:339\n1#3:362\n1#3:375\n*S KotlinDebug\n*F\n+ 1 FetchFileInfoListAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction\n*L\n53#1:327,2\n94#1:329,9\n94#1:338\n94#1:340\n94#1:341\n126#1:342,2\n135#1:344,2\n208#1:346\n208#1:347,2\n209#1:349\n209#1:350,2\n223#1:352,9\n223#1:361\n223#1:363\n223#1:364\n224#1:365,9\n224#1:374\n224#1:376\n224#1:377\n228#1:378\n228#1:379,3\n230#1:382,2\n235#1:384\n235#1:385,3\n237#1:388,2\n241#1:390,2\n247#1:392,2\n276#1:394,4\n286#1:398,2\n94#1:339\n223#1:362\n224#1:375\n*E\n"})
/* loaded from: classes7.dex */
public abstract class FetchFileInfoListAction extends BaseCloudStorageAction<CloudFileListResult> {

    @NotNull
    private final CloudFileQueryArgs queryArgs;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction$a */
    /* loaded from: classes7.dex */
    public static final class C7256a<T, R> implements Function {
        public C7256a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchFileInfoListAction.this.m32524n();
        }
    }

    public FetchFileInfoListAction(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.queryArgs = queryArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable map = createObservableWithUpdateClusterInfo().map(new C7256a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public abstract CloudFileListResult fetchCloud() throws Exception;

    @NotNull
    public CloudFileListResult fetchLocalFileListById(@NotNull List<String> idList, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(idList, "idList");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CloudFileQueryArgs copy = queryArgs.copy();
        copy.setLimit(Integer.MAX_VALUE);
        copy.setOffset(0L);
        copy.andWith(new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, idList)));
        return m32527q(copy);
    }

    @NotNull
    public abstract String getCloudPrefixPath();

    @NotNull
    public final Collection<CloudFileBean> getInvalidLocalFileData(@NotNull Collection<CloudFileBean> cloudFileList, @NotNull Collection<CloudFileBean> localFileList) {
        Intrinsics.checkNotNullParameter(cloudFileList, "cloudFileList");
        Intrinsics.checkNotNullParameter(localFileList, "localFileList");
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

    /* renamed from: l */
    public final void m32522l(Collection<CloudFileBean> cloudFileList, Collection<CloudFileBean> localFileList) {
        List mutableList;
        List mutableList2;
        ArrayList arrayList = new ArrayList();
        for (Object obj : cloudFileList) {
            if (!((CloudFileBean) obj).getDir()) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : localFileList) {
            if (!((CloudFileBean) obj2).getDir()) {
                arrayList2.add(obj2);
            }
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        getDropBoxProvider().getCloudStorageRecordProvider().delete(getInvalidLocalFileData(mutableList, mutableList2));
    }

    /* renamed from: m */
    public final void m32523m(CloudFileBean fileBean, String destDir, String name) {
        try {
            CopyLocalFileRequest copyLocalFileRequest = new CopyLocalFileRequest(fileBean, destDir, name);
            copyLocalFileRequest.setCut(true);
            copyLocalFileRequest.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: n */
    public final CloudFileListResult m32524n() throws Exception {
        if (FetchPolicy.INSTANCE.isDataFromMemDb(this.queryArgs.getFetchPolicy(), NetworkUtils.INSTANCE.isNetworkConnected(getAppContext()))) {
            CloudFileListResult m32527q = m32527q(this.queryArgs);
            if (StringKt.isNotBlank(this.queryArgs.getParentId()) || !m32527q.isContentEmpty() || this.queryArgs.getOffset() > 0) {
                return m32527q;
            }
        }
        CloudFileListResult m32525o = m32525o();
        m32530t(m32525o);
        m32533w(m32525o.ensureList());
        return m32525o;
    }

    /* renamed from: o */
    public final CloudFileListResult m32525o() throws Exception {
        CloudFileListResult fetchCloud = fetchCloud();
        CloudFileQueryArgs copy = this.queryArgs.copy();
        copy.andWith(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_SYNC_STATUS, Integer.valueOf(SyncStatus.NEW_FROM_LOCAL.getId()))));
        int i = 0;
        copy.setFilterParent(false);
        copy.setLimit(Integer.MAX_VALUE);
        if (this.queryArgs.getOffset() == 0) {
            List<CloudFileBean> ensureList = getDropBoxProvider().getCloudStorageRecordProvider().queryFileInfoResult(copy).ensureList();
            List<CloudFileBean> ensureList2 = fetchCloud.ensureList();
            if (!(ensureList2 instanceof Collection) || !ensureList2.isEmpty()) {
                Iterator<T> it2 = ensureList2.iterator();
                while (it2.hasNext()) {
                    if (((CloudFileBean) it2.next()).getDir() && (i = i + 1) < 0) {
                        CollectionsKt__CollectionsKt.throwCountOverflow();
                    }
                }
            }
            fetchCloud.ensureList().addAll(i, ensureList);
            fetchCloud.setCount(fetchCloud.getCount() + ensureList.size());
        } else if (this.queryArgs.getOffset() > 0) {
            CloudFileQueryArgs cloudFileQueryArgs = this.queryArgs;
            cloudFileQueryArgs.setOffset(cloudFileQueryArgs.getOffset() - getDropBoxProvider().getCloudStorageRecordProvider().queryFileInfoResult(copy).getCount());
        }
        Iterator<T> it3 = fetchCloud.ensureList().iterator();
        while (it3.hasNext()) {
            ((CloudFileBean) it3.next()).setParentId(this.queryArgs.getParentId());
        }
        return fetchCloud;
    }

    /* renamed from: p */
    public final List<CloudFileBean> m32526p(List<CloudFileBean> cloudFileList, CloudFileQueryArgs queryArgs) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Benchmark benchmark = new Benchmark();
        ArrayList arrayList = new ArrayList();
        ArrayList<CloudFileBean> arrayList2 = new ArrayList();
        ArrayList<CloudFileBean> arrayList3 = new ArrayList();
        List<CloudFileBean> list = cloudFileList;
        ArrayList arrayList4 = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            String localFilePath = ((CloudFileBean) it2.next()).getLocalFilePath();
            if (localFilePath != null) {
                arrayList4.add(localFilePath);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        Iterator<T> it3 = list.iterator();
        while (it3.hasNext()) {
            String uniqueId = ((CloudFileBean) it3.next()).getUniqueId();
            if (uniqueId != null) {
                arrayList5.add(uniqueId);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List split = CollectionKt.split(arrayList4, 50);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(split, 10);
        ArrayList arrayList6 = new ArrayList(collectionSizeOrDefault);
        Iterator it4 = split.iterator();
        while (it4.hasNext()) {
            arrayList6.add(m32528r((List) it4.next(), queryArgs).ensureList());
        }
        Iterator it5 = arrayList6.iterator();
        while (it5.hasNext()) {
            CollectionKt.safeAddAll(arrayList2, (List) it5.next());
        }
        List split2 = CollectionKt.split(arrayList5, 50);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(split2, 10);
        ArrayList arrayList7 = new ArrayList(collectionSizeOrDefault2);
        Iterator it6 = split2.iterator();
        while (it6.hasNext()) {
            arrayList7.add(fetchLocalFileListById((List) it6.next(), queryArgs).ensureList());
        }
        Iterator it7 = arrayList7.iterator();
        while (it7.hasNext()) {
            CollectionKt.safeAddAll(arrayList3, (List) it7.next());
        }
        for (CloudFileBean cloudFileBean : arrayList2) {
            if (cloudFileBean.getUniqueId() != null) {
                String uniqueId2 = cloudFileBean.getUniqueId();
                Intrinsics.checkNotNull(uniqueId2);
                linkedHashMap.put(uniqueId2, cloudFileBean);
            }
        }
        for (CloudFileBean cloudFileBean2 : arrayList3) {
            if (((CloudFileBean) linkedHashMap.get(cloudFileBean2.getUniqueId())) == null && cloudFileBean2.getUniqueId() != null) {
                String uniqueId3 = cloudFileBean2.getUniqueId();
                Intrinsics.checkNotNull(uniqueId3);
                linkedHashMap.put(uniqueId3, cloudFileBean2);
            }
        }
        CollectionKt.safeAddAll(arrayList, linkedHashMap.values());
        benchmark.reportDebug("fetchLocalAllFileList for " + queryArgs.getProvider() + ',' + queryArgs.getParentId() + ",size:" + arrayList.size());
        return arrayList;
    }

    /* renamed from: q */
    public final CloudFileListResult m32527q(CloudFileQueryArgs queryArgs) {
        QueryResult<CloudFileBean> queryFileInfoResult = getDropBoxProvider().getCloudStorageRecordProvider().queryFileInfoResult(queryArgs);
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setList(queryFileInfoResult.getList());
        cloudFileListResult.setCount(queryFileInfoResult.getCount());
        cloudFileListResult.setFetchSource(queryFileInfoResult.getFetchSource());
        return cloudFileListResult;
    }

    /* renamed from: r */
    public final CloudFileListResult m32528r(List<String> pathList, CloudFileQueryArgs queryArgs) {
        CloudFileQueryArgs copy = queryArgs.copy();
        copy.setLimit(Integer.MAX_VALUE);
        copy.setOffset(0L);
        copy.andWith(new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_LOCAL_FILE_PATH, pathList)));
        return m32527q(copy);
    }

    /* renamed from: s */
    public final boolean m32529s(String originPath, String destPath) {
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (StringKt.equals(fileUtils.getParent(originPath), fileUtils.getParent(destPath))) {
            return !FilenameUtils.getName(originPath).equals(FilenameUtils.getName(destPath));
        }
        return false;
    }

    /* renamed from: t */
    public final void m32530t(CloudFileListResult cloudListResult) throws Exception {
        if (cloudListResult.isContentEmpty()) {
            return;
        }
        List<CloudFileBean> m32526p = m32526p(cloudListResult.ensureList(), this.queryArgs);
        if (CollectionKt.isNullOrEmpty(m32526p)) {
            return;
        }
        m32522l(cloudListResult.ensureList(), m32526p);
        m32531u(cloudListResult.ensureList(), m32526p, getCloudPrefixPath());
    }

    /* renamed from: u */
    public final void m32531u(Collection<CloudFileBean> cloudFileList, Collection<CloudFileBean> localFileList, String cloudPrefixPath) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (CloudFileBean cloudFileBean : localFileList) {
            if (cloudFileBean.getUniqueId() != null) {
                String uniqueId = cloudFileBean.getUniqueId();
                Intrinsics.checkNotNull(uniqueId);
                linkedHashMap.put(uniqueId, cloudFileBean);
            }
            if (cloudFileBean.getCloudFilePath() != null) {
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
                    if (!getDropBoxProvider().isFileConflict(cloudFileBean2, cloudFileBean3) || cloudFileBean3.getSyncStatus() == SyncStatus.UPLOAD_CONFLICT) {
                        cloudFileBean2.setSyncStatus(cloudFileBean3.getSyncStatus());
                    } else {
                        cloudFileBean2.setSyncStatus(SyncStatus.NEW_VERSION_FROM_CLOUD);
                    }
                }
                String localFilePath = cloudFileBean3.getLocalFilePath();
                String localFilePath2 = cloudFileBean2.getLocalFilePath();
                if (m32529s(localFilePath, localFilePath2)) {
                    m32532v(cloudFileBean3, cloudFileBean2, cloudPrefixPath);
                } else {
                    String parent = FileUtils.INSTANCE.getParent(localFilePath2);
                    if (!StringKt.equals(localFilePath, localFilePath2) && parent != null && cloudFileBean2.getName() != null) {
                        String name = cloudFileBean2.getName();
                        Intrinsics.checkNotNull(name);
                        m32523m(cloudFileBean3, parent, name);
                    }
                }
            }
        }
    }

    /* renamed from: v */
    public final void m32532v(CloudFileBean localFile, CloudFileBean cloudFile, String cloudPrefixPath) throws Exception {
        if (FileUtils.INSTANCE.fileExist(localFile.getLocalFilePath())) {
            BaseCloudStorageProvider dropBoxProvider = getDropBoxProvider();
            String name = cloudFile.getName();
            Intrinsics.checkNotNull(name);
            RenameLocalCloudFileRequest renameLocalCloudFileRequest = new RenameLocalCloudFileRequest(dropBoxProvider, localFile, name);
            renameLocalCloudFileRequest.setCloudPrefixPath(cloudPrefixPath);
            renameLocalCloudFileRequest.execute();
        }
    }

    /* renamed from: w */
    public final void m32533w(List<CloudFileBean> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            String localFilePath = ((CloudFileBean) it2.next()).getLocalFilePath();
            if (localFilePath != null) {
                arrayList.add(localFilePath);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        getDropBoxProvider().getCloudStorageRecordProvider().deleteCloudFileList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_LOCAL_FILE_PATH, arrayList)));
        getDropBoxProvider().getCloudStorageRecordProvider().saveCloudFiles(list);
    }
}
