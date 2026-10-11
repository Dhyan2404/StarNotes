package com.onyx.android.sdk.replicator.progress.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.DocProgressBean;
import com.onyx.android.sdk.replicator.bean.DocProgressListBean;
import com.onyx.android.sdk.replicator.event.SyncNoteProgressChangedEvent;
import com.onyx.android.sdk.replicator.event.SyncReaderProgressChangedEvent;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.replicator.progress.p037db.model.SyncProgressModel;
import com.onyx.android.sdk.replicator.progress.request.SaveSyncProgressRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001a\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002J\"\u0010\u000b\u001a\u00020\u00002\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00060\u0004H\u0002J\u0016\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u0006H\u0002J4\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00060\u00042\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "", "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;", "l", "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;", Constant.MAP_TAG, "m", "list", "", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;", "e", "Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;", "listBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveSyncProgressAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveSyncProgressAction.kt\ncom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n372#2,7:71\n1855#3,2:78\n*S KotlinDebug\n*F\n+ 1 SaveSyncProgressAction.kt\ncom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction\n*L\n39#1:71,7\n56#1:78,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveSyncProgressAction extends RxBaseAction<SaveSyncProgressAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final DocProgressListBean listBean;

    /* renamed from: com.onyx.android.sdk.replicator.progress.action.SaveSyncProgressAction$a */
    /* loaded from: classes8.dex */
    public static final class C7803a<T, R> implements Function {
        public C7803a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, List<DocProgressBean>> apply(@NotNull SyncProgressBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveSyncProgressAction.this.m35576l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.progress.action.SaveSyncProgressAction$b */
    /* loaded from: classes8.dex */
    public static final class C7804b<T, R> implements Function {
        public C7804b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, List<SyncProgressModel>> apply(@NotNull Map<String, ? extends List<DocProgressBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveSyncProgressAction.this.m35578n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.progress.action.SaveSyncProgressAction$c */
    /* loaded from: classes8.dex */
    public static final class C7805c<T, R> implements Function {
        public C7805c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveSyncProgressAction apply(@NotNull Map<String, ? extends List<SyncProgressModel>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveSyncProgressAction.this.m35577m(it2);
        }
    }

    public SaveSyncProgressAction(@NotNull DocProgressListBean listBean) {
        Intrinsics.checkNotNullParameter(listBean, "listBean");
        this.listBean = listBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveSyncProgressAction> create() {
        Observable<SaveSyncProgressAction> map = SyncProgressBundle.INSTANCE.createObservable().map(new C7803a()).map(new C7804b()).observeOn(getMainUIScheduler()).map(new C7805c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Map<String, List<DocProgressBean>> m35576l() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (DocProgressBean docProgressBean : this.listBean.getList()) {
            String scope = docProgressBean.getScope();
            if (scope != null) {
                Object obj = linkedHashMap.get(scope);
                if (obj == null) {
                    obj = new ArrayList();
                    linkedHashMap.put(scope, obj);
                }
                ((List) obj).add(docProgressBean);
            }
        }
        return linkedHashMap;
    }

    /* renamed from: m */
    public final SaveSyncProgressAction m35577m(Map<String, ? extends List<SyncProgressModel>> map) {
        for (Map.Entry<String, ? extends List<SyncProgressModel>> entry : map.entrySet()) {
            m35579o(entry.getValue());
            String key = entry.getKey();
            if (Intrinsics.areEqual(key, "reader")) {
                KSyncBundle.INSTANCE.getEventBusHolder().post(new SyncReaderProgressChangedEvent(entry.getValue()));
            } else if (Intrinsics.areEqual(key, "note")) {
                KSyncBundle.INSTANCE.getEventBusHolder().post(new SyncNoteProgressChangedEvent(entry.getValue()));
            }
        }
        return this;
    }

    /* renamed from: n */
    public final Map<String, List<SyncProgressModel>> m35578n(Map<String, ? extends List<DocProgressBean>> map) throws Exception {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ? extends List<DocProgressBean>> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), new SaveSyncProgressRequest(entry.getValue()).execute());
        }
        return hashMap;
    }

    /* renamed from: o */
    public final void m35579o(List<SyncProgressModel> list) {
        for (SyncProgressModel syncProgressModel : list) {
            SyncProgressBundle.INSTANCE.getSyncProgressMap().put(syncProgressModel.getUniqueId(), syncProgressModel.getDocProgress());
        }
    }
}
