package com.onyx.android.sdk.universal.editor.action.hwr;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.HwrResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001b\u0010\u0010\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/LoadHwrResourceListAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "", "e", Constants.STRING_SIG, "engine", "Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;", C6997f.f39671c, "Lkotlin/Lazy;", "l", "()Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadHwrResourceListAction extends RxBaseAction<List<? extends HwrResourceModel>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String engine;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy provider;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.LoadHwrResourceListAction$a */
    /* loaded from: classes8.dex */
    public static final class C9458a<T, R> implements Function {
        public C9458a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<HwrResourceModel> apply(@NotNull LoadHwrResourceListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadHwrResourceListAction.this.m39035m();
        }
    }

    public LoadHwrResourceListAction(@NotNull String engine) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<HwrResourceProvider>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.LoadHwrResourceListAction$provider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HwrResourceProvider invoke() {
                return KSyncBundle.INSTANCE.getAppHwrResourceProvider();
            }
        });
        this.provider = lazy;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends HwrResourceModel>> create() {
        Observable<List<? extends HwrResourceModel>> map = Observable.just(this).observeOn(ClusterManager.INSTANCE.getDataObserveOn()).map(new C9458a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final HwrResourceProvider m39034l() {
        return (HwrResourceProvider) this.provider.getValue();
    }

    /* renamed from: m */
    public final List<HwrResourceModel> m39035m() {
        return m39034l().loadResourceList(this.engine);
    }
}
