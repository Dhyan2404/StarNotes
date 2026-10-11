package com.onyx.android.sdk.cloudstorage.provider.common.request;

import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.data.common.data.SelectionModel;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.SelectionHelper;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b1\u00102J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u001a\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H$J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\tH$J\u0016\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\tH\u0014J\u0016\u0010\u0010\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\u0016\u0010\u0011\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\tH\u0002J\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00120\tH\u0002J\u001e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007H\u0002J$\u0010\u0017\u001a\u00020\r2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007H\u0002R\u001a\u0010\u0019\u001a\u00020\u00188\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u00020\u001d8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R(\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010)\u001a\u00020(8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "execute", "", CouchFieldKey.KEY_PARENT_ID, "", "fetchCloudFileList", "", "pathList", "deleteByPathList", "dataList", "", "deleteCloudFileList", AbstractLogger.RESPONSE, "processDeleteResponse", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "c", "excludeList", "a", "list", "d", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "cloudStorageProvider", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getCloudStorageProvider", "()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "getArgs", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "responseBody", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "getResponseBody", "()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "setResponseBody", "(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;)V", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "getProvider", "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "setProvider", "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V", "newFromLocalBeans", "Ljava/util/List;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteCloudFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n215#2,2:156\n1603#3,9:158\n1855#3:167\n1856#3:169\n1612#3:170\n1855#3,2:171\n1603#3,9:173\n1855#3:182\n1856#3:184\n1612#3:185\n1#4:168\n1#4:183\n1#4:186\n*S KotlinDebug\n*F\n+ 1 DeleteCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest\n*L\n47#1:156,2\n69#1:158,9\n69#1:167\n69#1:169\n69#1:170\n90#1:171,2\n112#1:173,9\n112#1:182\n112#1:184\n112#1:185\n69#1:168\n112#1:183\n*E\n"})
/* loaded from: classes7.dex */
public abstract class DeleteCloudFileRequest extends RxBaseRequest<QueryListResult<CloudFileBean>> {

    @NotNull
    private final CloudFileOperation args;

    @NotNull
    private final BaseCloudStorageProvider cloudStorageProvider;

    @NotNull
    private final List<CloudFileBean> newFromLocalBeans;

    @NotNull
    private Provider provider;
    protected QueryListResult<CloudFileBean> responseBody;

    public DeleteCloudFileRequest(@NotNull BaseCloudStorageProvider cloudStorageProvider, @NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(cloudStorageProvider, "cloudStorageProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.cloudStorageProvider = cloudStorageProvider;
        this.args = args;
        this.provider = Provider.BAIDU_YUN;
        this.newFromLocalBeans = new ArrayList();
    }

    /* renamed from: a */
    public final void m32608a(String parentId, List<CloudFileOperation.OperationData> excludeList) throws Exception {
        CloudFileBean queryFileInfo = this.cloudStorageProvider.getCloudStorageRecordProvider().queryFileInfo(parentId);
        List<CloudFileBean> fetchCloudFileList = fetchCloudFileList(queryFileInfo != null ? queryFileInfo.getUniqueId() : null);
        if (fetchCloudFileList != null) {
            m32611d(fetchCloudFileList, excludeList);
        }
        List<CloudFileBean> list = fetchCloudFileList;
        if (list == null || list.isEmpty()) {
            return;
        }
        m32609b(fetchCloudFileList);
        if (getResponseBody().isSuccessful()) {
            m32608a(parentId, excludeList);
        }
    }

    /* renamed from: b */
    public final void m32609b(List<CloudFileBean> dataList) throws Exception {
        this.newFromLocalBeans.clear();
        ArrayList arrayList = new ArrayList();
        for (CloudFileBean cloudFileBean : dataList) {
            if (!cloudFileBean.getSyncStatus().isUploadSync()) {
                arrayList.add(cloudFileBean);
            }
            if (cloudFileBean.getSyncStatus().isNewFromLocal()) {
                this.newFromLocalBeans.add(cloudFileBean);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Debug.INSTANCE.m32035d(getClass(), "delete cloud file list:" + arrayList.size(), new Object[0]);
        deleteCloudFileList(arrayList);
    }

    /* renamed from: c */
    public final List<CloudFileBean> m32610c(List<CloudFileOperation.OperationData> dataList) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setFilterParent(true);
        cloudFileQueryArgs.setProvider(this.provider.getTitle());
        cloudFileQueryArgs.setLimit(Integer.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = dataList.iterator();
        while (it2.hasNext()) {
            String origin = ((CloudFileOperation.OperationData) it2.next()).getOrigin();
            if (origin != null) {
                arrayList.add(origin);
            }
        }
        cloudFileQueryArgs.setQueryIdList(arrayList);
        return this.cloudStorageProvider.getCloudStorageRecordProvider().queryFileInfoResult(cloudFileQueryArgs).ensureList();
    }

    /* renamed from: d */
    public final void m32611d(List<CloudFileBean> list, final List<CloudFileOperation.OperationData> excludeList) {
        CollectionKt.safelyRemove(list, new Comparable<CloudFileBean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest$removeExcludeList$1
            @Override // java.lang.Comparable
            public int compareTo(@NotNull CloudFileBean other) {
                List listOf;
                Intrinsics.checkNotNullParameter(other, "other");
                List<CloudFileOperation.OperationData> list2 = excludeList;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(new CloudFileOperation.OperationData(other.getUniqueId()));
                return (other.getDir() || list2.containsAll(listOf)) ? 0 : 1;
            }
        }, false);
    }

    @NotNull
    public abstract QueryListResult<CloudFileBean> deleteByPathList(@NotNull List<String> pathList) throws Exception;

    public void deleteCloudFileList(@NotNull List<CloudFileBean> dataList) throws Exception {
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = dataList.iterator();
        while (it2.hasNext()) {
            String cloudFilePath = ((CloudFileBean) it2.next()).getCloudFilePath();
            if (cloudFilePath != null) {
                arrayList.add(cloudFilePath);
            }
        }
        processDeleteResponse(deleteByPathList(arrayList));
    }

    @Nullable
    public abstract List<CloudFileBean> fetchCloudFileList(@Nullable String parentId) throws Exception;

    @NotNull
    public final CloudFileOperation getArgs() {
        return this.args;
    }

    @NotNull
    public final BaseCloudStorageProvider getCloudStorageProvider() {
        return this.cloudStorageProvider;
    }

    @NotNull
    public final Provider getProvider() {
        return this.provider;
    }

    @NotNull
    public final QueryListResult<CloudFileBean> getResponseBody() {
        QueryListResult<CloudFileBean> queryListResult = this.responseBody;
        if (queryListResult != null) {
            return queryListResult;
        }
        Intrinsics.throwUninitializedPropertyAccessException("responseBody");
        return null;
    }

    public void processDeleteResponse(@NotNull QueryListResult<CloudFileBean> response) throws Exception {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccessful()) {
            throw new Exception(response.getException());
        }
        getResponseBody().setCode(response.getCode());
        if (getResponseBody().isSuccessful()) {
            List<CloudFileBean> ensureList = getResponseBody().ensureList();
            CollectionKt.addAll(ensureList, response.getList());
            ensureList.addAll(this.newFromLocalBeans);
        }
    }

    public final void setProvider(@NotNull Provider provider) {
        Intrinsics.checkNotNullParameter(provider, "<set-?>");
        this.provider = provider;
    }

    public final void setResponseBody(@NotNull QueryListResult<CloudFileBean> queryListResult) {
        Intrinsics.checkNotNullParameter(queryListResult, "<set-?>");
        this.responseBody = queryListResult;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<CloudFileBean> execute() {
        setResponseBody(new QueryListResult<>());
        SelectionHelper selectionHelper = (SelectionHelper) JSONUtils.INSTANCE.parseObject(this.args.getDataJson(), new TypeReference<SelectionHelper<JSONObject>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest$execute$selectionHelper$1
        });
        Intrinsics.checkNotNull(selectionHelper);
        for (Map.Entry entry : selectionHelper.getSelectedItemMap(new Function1<JSONObject, CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest$execute$selectedItemMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CloudFileOperation.OperationData invoke(@NotNull JSONObject raw) {
                Intrinsics.checkNotNullParameter(raw, "raw");
                Object parseObject = JSONUtils.INSTANCE.parseObject(raw.toJSONString(new JSONWriter.Feature[0]), new TypeReference<CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest$execute$selectedItemMap$1.1
                });
                Intrinsics.checkNotNull(parseObject);
                return (CloudFileOperation.OperationData) parseObject;
            }
        }).entrySet()) {
            String str = (String) entry.getKey();
            SelectionModel selectionModel = (SelectionModel) entry.getValue();
            if (!getResponseBody().isSuccessful()) {
                return getResponseBody();
            }
            if (!selectionModel.getIsSelectedAllMode()) {
                m32609b(m32610c(selectionModel.getSelectedList()));
            } else {
                m32608a(str, selectionModel.getSelectedList());
            }
        }
        return getResponseBody();
    }
}
