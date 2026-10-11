package com.onyx.android.sdk.data.serverconvert.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.oss.OssConfigInfo;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertServerBean;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertServerConfigResponse;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertServerLanguageBean;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertConst;
import com.onyx.android.sdk.data.serverconvert.service.DocConvertExecutor;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0002¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/action/GetConvertConfigAction;", "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "getConvertConfig", "clusterInfo", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GetConvertConfigAction extends RxBaseCovertAction<ClusterInfo> {
    public GetConvertConfigAction() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClusterInfo getConvertConfig(ClusterInfo clusterInfo) {
        ConvertServerBean data;
        List<ConvertServerLanguageBean> results;
        Object obj;
        OssConfigInfo ossConfig;
        boolean equals;
        ConvertServerConfigResponse convertConfig = new DocConvertExecutor().getConvertConfig();
        if (convertConfig == null || !convertConfig.isSuccessful() || (data = convertConfig.getData()) == null || (results = data.getResults()) == null) {
            return clusterInfo;
        }
        Iterator<T> it2 = results.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            equals = StringsKt__StringsJVMKt.equals(((ConvertServerLanguageBean) obj).getLang(), DocConvertConst.INSTANCE.getConvertServerConfig(), true);
            if (equals) {
                break;
            }
        }
        ConvertServerLanguageBean convertServerLanguageBean = (ConvertServerLanguageBean) obj;
        if (convertServerLanguageBean == null || (ossConfig = convertServerLanguageBean.getOssConfig()) == null) {
            return clusterInfo;
        }
        clusterInfo.setOssConfig(ossConfig);
        return clusterInfo;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ClusterInfo> create() {
        Observable<ClusterInfo> map = Observable.just(this).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.GetConvertConfigAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ClusterInfo> apply(@NotNull GetConvertConfigAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return GetConvertConfigAction.this.ensureClusterInfo();
            }
        }).observeOn(getObserveOn()).map(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.GetConvertConfigAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ClusterInfo apply(@NotNull ClusterInfo it2) {
                ClusterInfo convertConfig;
                Intrinsics.checkNotNullParameter(it2, "it");
                convertConfig = GetConvertConfigAction.this.getConvertConfig(it2);
                return convertConfig;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
