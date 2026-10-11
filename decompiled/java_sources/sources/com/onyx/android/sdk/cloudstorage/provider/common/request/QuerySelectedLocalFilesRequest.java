package com.onyx.android.sdk.cloudstorage.provider.common.request;

import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.data.common.data.SelectionModel;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.SelectionHelper;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00020\u0001B%\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "execute", "list", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "excludeList", "", "a", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "cloudStorageProvider", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "b", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/utils/SelectionHelper;", "Lcom/alibaba/fastjson2/JSONObject;", "c", "Lcom/onyx/android/sdk/data/utils/SelectionHelper;", "selectionHelper", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/data/utils/SelectionHelper;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nQuerySelectedLocalFilesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuerySelectedLocalFilesRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n372#2,7:86\n1603#3,9:93\n1855#3:102\n1856#3:104\n1612#3:105\n1#4:103\n*S KotlinDebug\n*F\n+ 1 QuerySelectedLocalFilesRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest\n*L\n38#1:86,7\n46#1:93,9\n46#1:102\n46#1:104\n46#1:105\n46#1:103\n*E\n"})
/* loaded from: classes7.dex */
public final class QuerySelectedLocalFilesRequest extends RxBaseRequest<Map<String, List<CloudFileBean>>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider cloudStorageProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Provider provider;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final SelectionHelper<JSONObject> selectionHelper;

    public QuerySelectedLocalFilesRequest(@NotNull BaseCloudStorageProvider cloudStorageProvider, @NotNull Provider provider, @NotNull SelectionHelper<JSONObject> selectionHelper) {
        Intrinsics.checkNotNullParameter(cloudStorageProvider, "cloudStorageProvider");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(selectionHelper, "selectionHelper");
        this.cloudStorageProvider = cloudStorageProvider;
        this.provider = provider;
        this.selectionHelper = selectionHelper;
    }

    /* renamed from: a */
    public final void m32621a(List<CloudFileBean> list, final List<CloudFileOperation.OperationData> excludeList) {
        CollectionKt.safelyRemove(list, new Comparable<CloudFileBean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.QuerySelectedLocalFilesRequest$removeExcludeList$1
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

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Map<String, List<CloudFileBean>> execute() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : this.selectionHelper.getSelectedItemMap(new Function1<JSONObject, CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.QuerySelectedLocalFilesRequest$execute$selectedItemMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CloudFileOperation.OperationData invoke(@NotNull JSONObject it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Object parseObject = JSONUtils.INSTANCE.parseObject(it2.toJSONString(new JSONWriter.Feature[0]), new TypeReference<CloudFileOperation.OperationData>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.request.QuerySelectedLocalFilesRequest$execute$selectedItemMap$1.1
                });
                Intrinsics.checkNotNull(parseObject);
                return (CloudFileOperation.OperationData) parseObject;
            }
        }).entrySet()) {
            String str = (String) entry.getKey();
            SelectionModel selectionModel = (SelectionModel) entry.getValue();
            Object obj = linkedHashMap.get(str);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(str, obj);
            }
            List list = (List) obj;
            CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
            cloudFileQueryArgs.setProvider(this.provider.getTitle());
            cloudFileQueryArgs.setParentId(str);
            cloudFileQueryArgs.setLimit(Integer.MAX_VALUE);
            if (!selectionModel.getIsSelectedAllMode()) {
                List selectedList = selectionModel.getSelectedList();
                ArrayList arrayList = new ArrayList();
                Iterator it2 = selectedList.iterator();
                while (it2.hasNext()) {
                    String origin = ((CloudFileOperation.OperationData) it2.next()).getOrigin();
                    if (origin != null) {
                        arrayList.add(origin);
                    }
                }
                cloudFileQueryArgs.setQueryIdList(arrayList);
                list.addAll(this.cloudStorageProvider.getCloudStorageRecordProvider().queryFileInfoResult(cloudFileQueryArgs).ensureList());
            } else {
                List<CloudFileBean> ensureList = this.cloudStorageProvider.getCloudStorageRecordProvider().queryFileInfoResult(cloudFileQueryArgs).ensureList();
                m32621a(ensureList, selectionModel.getSelectedList());
                list.addAll(ensureList);
            }
        }
        return linkedHashMap;
    }
}
