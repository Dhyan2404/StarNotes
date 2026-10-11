package com.onyx.android.sdk.data.common.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.data.Certificates;
import com.onyx.android.sdk.data.common.data.ProviderCertificate;
import com.onyx.android.sdk.data.common.request.GetCertificatesRequest;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVCertificate;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;", "key", "", "forceFromCloud", "", "(Ljava/lang/String;Z)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "loadFromCache", "loadFromCloud", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "loadProviderCertificate", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoadCertificatesAction extends RxBaseAction<ProviderCertificate> {

    @NotNull
    public static final String CLOUD_STORAGE_KEY = "galaxyCloudStorage";

    @NotNull
    public static final String SDK_KEY = "galaxy_note_sdk_android";
    private final boolean forceFromCloud;

    @NotNull
    private final String key;

    public /* synthetic */ LoadCertificatesAction(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? false : z);
    }

    private final ProviderCertificate loadFromCache() {
        return MMKVCertificate.INSTANCE.getProviderCertificates(this.key);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProviderCertificate loadFromCloud(ClusterInfo clusterInfo) throws Exception {
        Certificates execute = new GetCertificatesRequest(clusterInfo.loadOnyxCloudDataApiBaseUrl(), this.key, true).execute();
        Debug.INSTANCE.m32035d(LoadCertificatesAction.class, "key:" + this.key + " certificates loaded from cloud", new Object[0]);
        String str = this.key;
        if (Intrinsics.areEqual(str, CLOUD_STORAGE_KEY)) {
            MMKVCertificate.INSTANCE.saveProviderCertificates(MMKVCertificate.PROVIDER_CERTIFICATES_KEY, execute);
        } else if (Intrinsics.areEqual(str, SDK_KEY)) {
            MMKVCertificate.INSTANCE.saveProviderCertificates(MMKVCertificate.SDK_CERTIFICATES_KEY, execute);
        } else {
            MMKVCertificate.INSTANCE.saveProviderCertificates(this.key, execute);
        }
        Object parseObject = JSONUtils.INSTANCE.parseObject(execute.getCert(), (Class<Object>) ProviderCertificate.class);
        Intrinsics.checkNotNull(parseObject);
        return (ProviderCertificate) parseObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<ProviderCertificate> loadProviderCertificate() throws Exception {
        ProviderCertificate loadFromCache = loadFromCache();
        if (this.forceFromCloud || loadFromCache == null || !ProviderCertificate.INSTANCE.isValid(loadFromCache)) {
            Observable<ProviderCertificate> map = Observable.just(this).flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.action.LoadCertificatesAction$loadProviderCertificate$1
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                public final ObservableSource<? extends ClusterManager> apply(@NotNull LoadCertificatesAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return ClusterManager.INSTANCE.ensureLoadObservable();
                }
            }).map(new Function() { // from class: com.onyx.android.sdk.data.common.action.LoadCertificatesAction$loadProviderCertificate$2
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                public final ProviderCertificate apply(@NotNull ClusterManager clusterManager) {
                    ProviderCertificate loadFromCloud;
                    Intrinsics.checkNotNullParameter(clusterManager, "clusterManager");
                    loadFromCloud = LoadCertificatesAction.this.loadFromCloud(clusterManager.getCurClusterInfo());
                    return loadFromCloud;
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<ProviderCertificate> just = Observable.just(loadFromCache);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ProviderCertificate> create() {
        Observable<ProviderCertificate> flatMap = Observable.just(this).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.action.LoadCertificatesAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ProviderCertificate> apply(@NotNull LoadCertificatesAction it2) {
                Observable loadProviderCertificate;
                Intrinsics.checkNotNullParameter(it2, "it");
                loadProviderCertificate = LoadCertificatesAction.this.loadProviderCertificate();
                return loadProviderCertificate;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public LoadCertificatesAction(@NotNull String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.forceFromCloud = z;
    }
}
