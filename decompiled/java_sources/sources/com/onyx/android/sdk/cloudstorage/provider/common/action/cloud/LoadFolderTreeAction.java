package com.onyx.android.sdk.cloudstorage.provider.common.action.cloud;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.CloudFolderTreeEntry;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001e\u0010\u001fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H$J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\tH\u0002J(\u0010\u0011\u001a\u00020\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J&\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u00122\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u0016\u0010\u0014\u001a\u00020\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012H\u0002J*\u0010\u0018\u001a\u00020\u00102\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00060\u00152\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0017H\u0002R\u001a\u0010\u001a\u001a\u00020\u00198\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "loadAllFolderResult", GoogleApiAvailabilityLight.f29016b, "", "folderList", "m", "list", "", CouchFieldKey.KEY_PARENT_ID, "folderTreeEntry", "", "l", "", C4921e.f26528e, "p", "", "folderMap", "", "q", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "getQueryArgs", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadFolderTreeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadFolderTreeAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1855#2,2:113\n766#2:115\n857#2,2:116\n1855#2,2:118\n*S KotlinDebug\n*F\n+ 1 LoadFolderTreeAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction\n*L\n38#1:113,2\n99#1:115\n99#1:116,2\n107#1:118,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class LoadFolderTreeAction extends BaseCloudStorageAction<QueryListResult<CloudFolderTreeEntry>> {

    @NotNull
    private final CloudFileQueryArgs queryArgs;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction$a */
    /* loaded from: classes7.dex */
    public static final class C7257a<T, R> implements Function {
        public C7257a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final QueryListResult<CloudFolderTreeEntry> apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadFolderTreeAction.this.m32537n();
        }
    }

    public LoadFolderTreeAction(@NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.queryArgs = queryArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<QueryListResult<CloudFolderTreeEntry>> create() {
        Observable map = createObservableWithUpdateClusterInfo().map(new C7257a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final CloudFileQueryArgs getQueryArgs() {
        return this.queryArgs;
    }

    /* renamed from: l */
    public final void m32535l(List<CloudFileBean> list, String parentId, CloudFolderTreeEntry folderTreeEntry) {
        while (!list.isEmpty()) {
            List<CloudFileBean> m32538o = m32538o(list, parentId);
            if (m32538o.isEmpty()) {
                return;
            }
            Iterator<CloudFileBean> it2 = m32538o.iterator();
            while (it2.hasNext()) {
                CloudFolderTreeEntry cloudFolderTreeEntry = new CloudFolderTreeEntry(it2.next());
                folderTreeEntry.getChildren().add(cloudFolderTreeEntry);
                m32535l(list, cloudFolderTreeEntry.getUniqueId(), cloudFolderTreeEntry);
            }
        }
    }

    @NotNull
    public abstract QueryListResult<CloudFileBean> loadAllFolderResult() throws Exception;

    /* renamed from: m */
    public final QueryListResult<CloudFolderTreeEntry> m32536m(List<CloudFileBean> folderList) {
        CloudFolderTreeEntry cloudFolderTreeEntry = new CloudFolderTreeEntry();
        m32535l(folderList, null, cloudFolderTreeEntry);
        QueryListResult<CloudFolderTreeEntry> queryListResult = new QueryListResult<>();
        queryListResult.setList(cloudFolderTreeEntry.getChildren());
        queryListResult.setCount(folderList.size());
        Debug.INSTANCE.m32035d(getClass(), "rootTreeEntry:" + JSONUtils.INSTANCE.toJson(cloudFolderTreeEntry), new Object[0]);
        return queryListResult;
    }

    /* renamed from: n */
    public final QueryListResult<CloudFolderTreeEntry> m32537n() throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        QueryListResult<CloudFileBean> loadAllFolderResult = loadAllFolderResult();
        for (CloudFileBean cloudFileBean : loadAllFolderResult.ensureList()) {
            if (cloudFileBean.getCloudFilePath() != null) {
                String cloudFilePath = cloudFileBean.getCloudFilePath();
                Intrinsics.checkNotNull(cloudFilePath);
                linkedHashMap.put(cloudFilePath, cloudFileBean);
            }
        }
        m32540q(linkedHashMap, linkedHashMap.values());
        m32539p(loadAllFolderResult.ensureList());
        QueryListResult<CloudFolderTreeEntry> m32536m = m32536m(loadAllFolderResult.ensureList());
        m32536m.setCode(loadAllFolderResult.getCode());
        return m32536m;
    }

    /* renamed from: o */
    public final List<CloudFileBean> m32538o(List<CloudFileBean> list, final String parentId) {
        final ArrayList arrayList = new ArrayList();
        CollectionKt.safelyRemove(list, new Comparable<CloudFileBean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction$findItemList$1
            @Override // java.lang.Comparable
            public int compareTo(@NotNull CloudFileBean other) {
                Intrinsics.checkNotNullParameter(other, "other");
                boolean areEqual = Intrinsics.areEqual(parentId, other.getParentId());
                if (areEqual) {
                    arrayList.add(other);
                }
                return !areEqual ? 1 : 0;
            }
        }, false);
        return arrayList;
    }

    /* renamed from: p */
    public final void m32539p(List<CloudFileBean> list) {
        List list2;
        CloudStorageRecordProvider cloudStorageRecordProvider = getDropBoxProvider().getCloudStorageRecordProvider();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (cloudStorageRecordProvider.queryFileInfo(((CloudFileBean) obj).getUniqueId()) == null) {
                arrayList.add(obj);
            }
        }
        list2 = CollectionsKt___CollectionsKt.toList(arrayList);
        cloudStorageRecordProvider.saveCloudFiles(list2);
    }

    /* renamed from: q */
    public final void m32540q(Map<String, CloudFileBean> folderMap, Collection<CloudFileBean> list) {
        for (CloudFileBean cloudFileBean : list) {
            CloudFileBean cloudFileBean2 = folderMap.get(FileUtils.INSTANCE.getParent(cloudFileBean.getCloudFilePath()));
            if (cloudFileBean2 != null) {
                cloudFileBean.setParentId(cloudFileBean2.getUniqueId());
            }
        }
    }
}
