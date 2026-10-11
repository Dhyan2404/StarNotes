package com.onyx.android.sdk.replicator.cluster.action;

import com.alibaba.fastjson2.TypeReference;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.ClusterUtils;
import com.onyx.android.sdk.data.cluster.action.BaseClusterAction;
import com.onyx.android.sdk.data.cluster.action.SaveClusterListAction;
import com.onyx.android.sdk.data.cluster.bean.ClusterBean;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.cluster.model.ClusterList;
import com.onyx.android.sdk.data.cluster.request.GetClusterListRequest;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0002J\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J \u0010\u0015\u001a\u00020\u00142\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0002J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R$\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00148\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0019¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;", "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "indexHost", "Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;", "l", AbstractLogger.REQUEST, "q", "", "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;", "clusterBeans", "", "p", "", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "cloudClusterList", GoogleApiAvailabilityLight.f29016b, "region", "", "m", C4921e.f26528e, "<set-?>", "e", Constants.HASIDCALL_INDEX_SIG, "isUpdated", Constants.BOOLEAN_VALUE_SIG, C6997f.f39671c, "curClusterChanged", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateClusterListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateClusterListAction.kt\ncom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1549#2:110\n1620#2,3:111\n766#2:114\n857#2,2:115\n1549#2:117\n1620#2,3:118\n*S KotlinDebug\n*F\n+ 1 UpdateClusterListAction.kt\ncom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction\n*L\n69#1:110\n69#1:111,3\n84#1:114\n84#1:115,2\n85#1:117\n85#1:118,3\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateClusterListAction extends BaseClusterAction<UpdateClusterListAction> {

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isUpdated;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean curClusterChanged;

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$a */
    /* loaded from: classes8.dex */
    public static final class C7631a<T, R> implements Function {

        /* renamed from: e */
        public static final C7631a<T, R> f45283e = new C7631a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull ClusterManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClusterManager.INSTANCE.getCurrentClusterObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$b */
    /* loaded from: classes8.dex */
    public static final class C7632b<T, R> implements Function {

        /* renamed from: e */
        public static final C7632b<T, R> f45284e = new C7632b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull ClusterInfo o) {
            List list;
            Intrinsics.checkNotNullParameter(o, "o");
            list = ArraysKt___ArraysKt.toList(ClusterManager.INSTANCE.getIndexServerList(o));
            return Observable.fromIterable(list);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$c */
    /* loaded from: classes8.dex */
    public static final class C7633c<T> implements Predicate {
        public C7633c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !UpdateClusterListAction.this.getIsUpdated();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$d */
    /* loaded from: classes8.dex */
    public static final class C7634d<T, R> implements Function {
        public C7634d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetClusterListRequest apply(@NotNull String indexHost) {
            Intrinsics.checkNotNullParameter(indexHost, "indexHost");
            return UpdateClusterListAction.this.m34948l(indexHost);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$e */
    /* loaded from: classes8.dex */
    public static final class C7635e<T, R> implements Function {
        public C7635e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateClusterListAction apply(@NotNull GetClusterListRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return UpdateClusterListAction.this.m34953q(request);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$f */
    /* loaded from: classes8.dex */
    public static final class C7636f<T> implements Predicate {
        public C7636f() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull UpdateClusterListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateClusterListAction.this.getIsUpdated();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$g */
    /* loaded from: classes8.dex */
    public static final class C7637g<T, R> implements Function {

        /* renamed from: e */
        public static final C7637g<T, R> f45289e = new C7637g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveClusterListAction> apply(@NotNull UpdateClusterListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveClusterListAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$h */
    /* loaded from: classes8.dex */
    public static final class C7638h<T, R> implements Function {
        public C7638h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateClusterListAction> apply(@NotNull SaveClusterListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateClusterListAction.this.m34951o();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$i */
    /* loaded from: classes8.dex */
    public static final class C7639i<T, R> implements Function {
        public C7639i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateClusterListAction apply(@NotNull LogoutOnyxAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateClusterListAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateClusterListAction> create() {
        ClusterManager clusterManager = ClusterManager.INSTANCE;
        Observable<UpdateClusterListAction> observeOn = clusterManager.ensureLoadObservable().flatMap(C7631a.f45283e).flatMap(C7632b.f45284e).observeOn(clusterManager.getCloudObserveOn()).filter(new C7633c()).map(new C7634d()).map(new C7635e()).filter(new C7636f()).flatMap(C7637g.f45289e).flatMap(new C7638h()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: isUpdated, reason: from getter */
    public final boolean getIsUpdated() {
        return this.isUpdated;
    }

    /* renamed from: l */
    public final GetClusterListRequest m34948l(String indexHost) throws Exception {
        GetClusterListRequest getClusterListRequest = new GetClusterListRequest(indexHost);
        getClusterListRequest.m72238execute();
        return getClusterListRequest;
    }

    /* renamed from: m */
    public final boolean m34949m(Collection<ClusterInfo> cloudClusterList, String region) {
        Iterator<ClusterInfo> it2 = cloudClusterList.iterator();
        while (it2.hasNext()) {
            if (StringUtils.equals(it2.next().getRegion(), region)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: n */
    public final List<ClusterInfo> m34950n(Collection<ClusterInfo> cloudClusterList) {
        int collectionSizeOrDefault;
        List<ClusterInfo> list;
        List<ClusterInfo> emptyList;
        List<ClusterInfo> emptyList2;
        FileUtils fileUtils = FileUtils.INSTANCE;
        ClusterConstant clusterConstant = ClusterConstant.INSTANCE;
        if (!fileUtils.fileExist(clusterConstant.getTEST_SERVER_FILE())) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        List list2 = (List) JSONUtils.INSTANCE.parseObject(fileUtils.readContentOfFile(clusterConstant.getTEST_SERVER_FILE()), new TypeReference<List<? extends ClusterBean>>() { // from class: com.onyx.android.sdk.replicator.cluster.action.UpdateClusterListAction$loadFromTestClusterFile$serverInfoList$1
        });
        if (list2 == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (!m34949m(cloudClusterList, ((ClusterBean) obj).getRegion())) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(ClusterInfo.INSTANCE.fromClusterBean((ClusterBean) it2.next()));
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        return list;
    }

    /* renamed from: o */
    public final Observable<UpdateClusterListAction> m34951o() {
        if (!this.curClusterChanged) {
            Observable<UpdateClusterListAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Debug.INSTANCE.m32059w(UpdateClusterListAction.class, "logoutWhenCurClusterChanged", new Object[0]);
        Observable map = new LogoutOnyxAccountAction().setLogoutReason(2).build().map(new C7639i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final void m34952p(List<ClusterBean> clusterBeans) {
        int collectionSizeOrDefault;
        List mutableList;
        if (clusterBeans == null) {
            return;
        }
        this.isUpdated = true;
        ClusterList clusterList = ClusterManager.INSTANCE.getClusterList();
        List<ClusterBean> list = clusterBeans;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(ClusterInfo.INSTANCE.fromClusterBean((ClusterBean) it2.next()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        mutableList.addAll(m34950n(mutableList));
        clusterList.addClusterList(mutableList, true);
        this.curClusterChanged = clusterList.checkCurClusterId(ClusterManager.INSTANCE.getCurClusterId());
        ClusterUtils.INSTANCE.m32943i(UpdateClusterListAction.class, "resolveResult: cluster list updated");
    }

    /* renamed from: q */
    public final UpdateClusterListAction m34953q(GetClusterListRequest request) {
        if (CollectionKt.isNullOrEmpty(request.getResult())) {
            return this;
        }
        m34952p(request.getResult());
        return this;
    }
}
