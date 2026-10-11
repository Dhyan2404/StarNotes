package com.onyx.android.sdk.universal.editor.action.hwr;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.ServerConstant;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.common.NoteService;
import com.onyx.android.sdk.replicator.note.p035db.HwrResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceItems;
import com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceModel;
import com.onyx.android.sdk.universal.editor.action.hwr.FetchHwrResourceListAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000b¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\b\u0010\n\u001a\u00020\u0000H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002R\u0014\u0010\u000f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001b\u0010\u0015\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;", C4921e.f26528e, "models", "q", "p", "", "r", "e", Constants.STRING_SIG, "engine", "Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;", C6997f.f39671c, "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFetchHwrResourceListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchHwrResourceListAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1855#2,2:67\n*S KotlinDebug\n*F\n+ 1 FetchHwrResourceListAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction\n*L\n49#1:67,2\n*E\n"})
/* loaded from: classes8.dex */
public final class FetchHwrResourceListAction extends RxBaseAction<Object> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String engine;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy provider;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.FetchHwrResourceListAction$a */
    /* loaded from: classes8.dex */
    public static final class C9380a<T, R> implements Function {
        public C9380a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<HwrResourceModel> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchHwrResourceListAction.this.m38866o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.FetchHwrResourceListAction$b */
    /* loaded from: classes8.dex */
    public static final class C9381b<T, R> implements Function {
        public C9381b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<HwrResourceModel> apply(@NotNull List<HwrResourceModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchHwrResourceListAction.this.m38868q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.FetchHwrResourceListAction$c */
    /* loaded from: classes8.dex */
    public static final class C9382c<T, R> implements Function {
        public C9382c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object apply(@NotNull List<HwrResourceModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchHwrResourceListAction.this;
        }
    }

    public FetchHwrResourceListAction(@NotNull String engine) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<HwrResourceProvider>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.FetchHwrResourceListAction$provider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HwrResourceProvider invoke() {
                return KSyncBundle.INSTANCE.getAppHwrResourceProvider();
            }
        });
        this.provider = lazy;
    }

    /* renamed from: m */
    public static final void m38864m(FetchHwrResourceListAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m38867p();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        if (SyncStateOptions.INSTANCE.hasSynced(FunctionKey.HWR_RESOURCE)) {
            Observable<Object> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Object> map = Observable.just(Unit.INSTANCE).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C9380a()).observeOn(AccountDataBundle.INSTANCE.getDataObserveOn()).map(new C9381b()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.fag
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                FetchHwrResourceListAction.m38864m(FetchHwrResourceListAction.this);
            }
        }).map(new C9382c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final HwrResourceProvider m38865n() {
        return (HwrResourceProvider) this.provider.getValue();
    }

    /* renamed from: o */
    public final List<HwrResourceModel> m38866o() {
        return ((HwrResourceItems) RetrofitExt.INSTANCE.executeAndGetData(((NoteService) ServiceFactory.INSTANCE.getOnyxApiV2Service(NoteService.class)).loadHwrResourceList(m38869r()))).getItems();
    }

    /* renamed from: p */
    public final FetchHwrResourceListAction m38867p() {
        SyncStateOptions.INSTANCE.markAsSynced(FunctionKey.HWR_RESOURCE);
        return this;
    }

    /* renamed from: q */
    public final List<HwrResourceModel> m38868q(List<HwrResourceModel> models) {
        Iterator<T> it2 = models.iterator();
        while (it2.hasNext()) {
            ((HwrResourceModel) it2.next()).setEngine(this.engine);
        }
        m38865n().saveLangResourceList(models);
        return models;
    }

    /* renamed from: r */
    public final String m38869r() {
        String str = this.engine;
        return Intrinsics.areEqual(str, HWRValues.ENGINE_SUNIA) ? ServerConstant.ENGINE_SUNIA : Intrinsics.areEqual(str, HWRValues.ENGINE_ML) ? ServerConstant.ENGINE_MLKIT : "";
    }
}
