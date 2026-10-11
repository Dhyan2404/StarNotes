package com.onyx.android.sdk.cloudstorage.provider.onxy.action;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxFetchFileListRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxFetchFileInfoAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOnyxFetchFileInfoAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxFetchFileInfoAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxFetchFileInfoAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1549#2:59\n1620#2,3:60\n766#2:63\n857#2,2:64\n1549#2:66\n1620#2,3:67\n*S KotlinDebug\n*F\n+ 1 OnyxFetchFileInfoAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxFetchFileInfoAction\n*L\n44#1:59\n44#1:60,3\n47#1:63\n47#1:64,2\n50#1:66\n50#1:67,3\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxFetchFileInfoAction extends BaseCloudStorageAction<CloudFileBean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean cloudFile;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxFetchFileInfoAction$a */
    /* loaded from: classes7.dex */
    public static final class C7335a<T, R> implements Function {
        public C7335a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OnyxFetchFileInfoAction.this.m32802l();
        }
    }

    public OnyxFetchFileInfoAction(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.onyxCloudProvider = onyxCloudProvider;
        this.cloudFile = cloudFile;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileBean> create() {
        Observable map = createObservableWithUpdateClusterInfo().map(new C7335a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final CloudFileBean m32802l() throws Exception {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Object firstOrNull;
        boolean equals$default;
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setParentId(this.cloudFile.getParentId());
        cloudFileQueryArgs.setQuery(this.cloudFile.getName());
        cloudFileQueryArgs.setProvider(this.onyxCloudProvider.getProviderType().getTitle());
        OnyxCloudProvider onyxCloudProvider = this.onyxCloudProvider;
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        List<OSSObjectSummary> ensureList = new OnyxFetchFileListRequest(onyxCloudProvider, onyxCloudProvider.getOssManager(clusterInfo), cloudFileQueryArgs).execute().ensureList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(ensureList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = ensureList.iterator();
        while (it2.hasNext()) {
            arrayList.add(OnyxCloudUtils.INSTANCE.toCloudFile(this.onyxCloudProvider.getCloudStorageRecordProvider(), (OSSObjectSummary) it2.next()));
        }
        ArrayList<CloudFileBean> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            equals$default = StringsKt__StringsJVMKt.equals$default(((CloudFileBean) obj).getCloudFilePath(), this.cloudFile.getCloudFilePath(), false, 2, null);
            if (equals$default) {
                arrayList2.add(obj);
            }
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        for (CloudFileBean cloudFileBean : arrayList2) {
            cloudFileBean.setParentId(this.cloudFile.getParentId());
            arrayList3.add(cloudFileBean);
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList3);
        CloudFileBean cloudFileBean2 = (CloudFileBean) firstOrNull;
        return cloudFileBean2 == null ? this.cloudFile : cloudFileBean2;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OnyxCloudProvider getGoogleDriverProvider() {
        return this.onyxCloudProvider;
    }
}
