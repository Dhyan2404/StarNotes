package com.onyx.android.sdk.cloudstorage.provider.common.request;

import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.SelectionModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.SelectionHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000f\b&\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b,\u0010-J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0003H$J\u0016\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH$J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\tH$J&\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\r\u001a\u00020\tH\u0002J$\u0010\u0014\u001a\u00020\u000b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u0006H\u0002R\u001a\u0010\u0016\u001a\u00020\u00158\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001b\u001a\u00020\u001a8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R(\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "execute", "parent", "", "fetchCloudFileList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "dataList", "", "copy", "targetFolder", "", "getTargetCloudPath", CouchFieldKey.KEY_PARENT_ID, "excludeList", "a", "list", "b", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getProvider", "()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "getArgs", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "", "cut", Constants.HASIDCALL_INDEX_SIG, "getCut", Constants.BOOLEAN_VALUE_SIG, "setCut", "(Z)V", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "getResult", "()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "setResult", "(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCopyCloudFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n215#2,2:136\n1#3:138\n1549#4:139\n1620#4,3:140\n*S KotlinDebug\n*F\n+ 1 CopyCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest\n*L\n64#1:136,2\n103#1:139\n103#1:140,3\n*E\n"})
/* loaded from: classes7.dex */
public abstract class CopyCloudFileRequest extends RxBaseRequest<QueryListResult<CloudFileBean>> {

    @NotNull
    private final CloudFileOperation args;
    private boolean cut;

    @NotNull
    private final BaseCloudStorageProvider provider;
    protected QueryListResult<CloudFileBean> result;

    public CopyCloudFileRequest(@NotNull BaseCloudStorageProvider provider, @NotNull CloudFileOperation args) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.provider = provider;
        this.args = args;
    }

    /* renamed from: a */
    public final void m32604a(String parentId, List<CloudFileOperation.OperationData> excludeList, CloudFileOperation.OperationData targetFolder) throws Exception {
        int collectionSizeOrDefault;
        CloudFileBean queryFileInfo = this.provider.getCloudStorageRecordProvider().queryFileInfo(parentId);
        List<CloudFileBean> fetchCloudFileList = queryFileInfo != null ? fetchCloudFileList(queryFileInfo) : null;
        if (CollectionKt.isNullOrEmpty(fetchCloudFileList)) {
            return;
        }
        m32605b(fetchCloudFileList, excludeList);
        List<CloudFileBean> list = fetchCloudFileList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            CloudFileOperation.OperationData operationData = new CloudFileOperation.OperationData(null, ((CloudFileBean) it2.next()).getCloudFilePath());
            operationData.setDest(targetFolder.getPath());
            operationData.setNewName(FilenameUtils.getName(operationData.getPath()));
            arrayList.add(operationData);
        }
        copy(arrayList);
        if (getResult().isSuccessful()) {
            m32604a(parentId, excludeList, targetFolder);
        }
    }

    /* renamed from: b */
    public final void m32605b(List<CloudFileBean> list, final List<CloudFileOperation.OperationData> excludeList) {
        CollectionKt.safelyRemove(list, new Comparable<CloudFileBean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest$removeExcludeList$1
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

    public abstract void copy(@NotNull List<CloudFileOperation.OperationData> dataList) throws Exception;

    @NotNull
    public abstract List<CloudFileBean> fetchCloudFileList(@NotNull CloudFileBean parent) throws Exception;

    @NotNull
    public final CloudFileOperation getArgs() {
        return this.args;
    }

    public final boolean getCut() {
        return this.cut;
    }

    @NotNull
    public final BaseCloudStorageProvider getProvider() {
        return this.provider;
    }

    @NotNull
    public final QueryListResult<CloudFileBean> getResult() {
        QueryListResult<CloudFileBean> queryListResult = this.result;
        if (queryListResult != null) {
            return queryListResult;
        }
        Intrinsics.throwUninitializedPropertyAccessException(com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING);
        return null;
    }

    @Nullable
    public abstract String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder);

    public final void setCut(boolean z) {
        this.cut = z;
    }

    public final void setResult(@NotNull QueryListResult<CloudFileBean> queryListResult) {
        Intrinsics.checkNotNullParameter(queryListResult, "<set-?>");
        this.result = queryListResult;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<CloudFileBean> execute() {
        setResult(new QueryListResult<>());
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Map map = (Map) jSONUtils.parseObject(this.args.getDataJson(), new TypeReference<Map<String, ? extends String>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest$execute$map$1
        });
        final CloudFileOperation.OperationData operationData = (CloudFileOperation.OperationData) jSONUtils.parseObject(map != null ? (String) map.get("target") : null, CloudFileOperation.OperationData.class);
        if (operationData != null) {
            String path = operationData.getPath();
            if (path == null || path.length() == 0) {
                operationData.setPath(getTargetCloudPath(operationData));
            }
        }
        Object parseObject = jSONUtils.parseObject(map != null ? (String) map.get(Constant.MAP_TAG) : null, new TypeReference<SelectionHelper<JSONObject>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest$execute$selectionHelper$1
        });
        Intrinsics.checkNotNull(parseObject);
        for (Map.Entry entry : ((SelectionHelper) parseObject).getSelectedItemMap(new Function1<JSONObject, CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest$execute$selectedItemMap$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CloudFileOperation.OperationData invoke(@NotNull JSONObject it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Object parseObject2 = JSONUtils.INSTANCE.parseObject(it2.toJSONString(new JSONWriter.Feature[0]), new TypeReference<CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest$execute$selectedItemMap$1$operationData$1
                });
                Intrinsics.checkNotNull(parseObject2);
                CloudFileOperation.OperationData operationData2 = (CloudFileOperation.OperationData) parseObject2;
                CloudFileOperation.OperationData operationData3 = CloudFileOperation.OperationData.this;
                operationData2.setOrigin(null);
                operationData2.setDest(operationData3 != null ? operationData3.getPath() : null);
                operationData2.setNewName(FilenameUtils.getName(operationData2.getPath()));
                return operationData2;
            }
        }).entrySet()) {
            String str = (String) entry.getKey();
            SelectionModel selectionModel = (SelectionModel) entry.getValue();
            if (!getResult().isSuccessful()) {
                return getResult();
            }
            if (!selectionModel.getIsSelectedAllMode()) {
                copy(selectionModel.getSelectedList());
            } else if (operationData != null) {
                m32604a(str, selectionModel.getSelectedList(), operationData);
            }
        }
        return getResult();
    }
}
