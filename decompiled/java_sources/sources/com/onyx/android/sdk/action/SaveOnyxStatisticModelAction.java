package com.onyx.android.sdk.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxStatisticModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.p029db.OnyxStatisticProvider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;", "Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", "Lcom/onyx/android/sdk/data/OnyxStatisticModel;", "e", "Ljava/util/List;", "list", "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", C6997f.f39671c, "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SaveOnyxStatisticModelAction extends OnyxStatisticBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<OnyxStatisticModel> list;

    /* renamed from: f, reason: from kotlin metadata */
    public OnyxStatisticProvider provider;

    /* renamed from: com.onyx.android.sdk.action.SaveOnyxStatisticModelAction$a */
    /* loaded from: classes7.dex */
    public static final class C7098a<T> implements Consumer {
        public C7098a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveOnyxStatisticModelAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.action.SaveOnyxStatisticModelAction$b */
    /* loaded from: classes7.dex */
    public static final class C7099b<T, R> implements Function {
        public C7099b() {
        }

        /* renamed from: a */
        public final void m31866a(@NotNull OnyxStatisticProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveOnyxStatisticModelAction.this.m31864l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m31866a((OnyxStatisticProvider) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.action.SaveOnyxStatisticModelAction$c */
    /* loaded from: classes7.dex */
    public static final class C7100c<T, R> implements Function {

        /* renamed from: e */
        public static final C7100c<T, R> f40654e = new C7100c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public SaveOnyxStatisticModelAction(@NotNull List<OnyxStatisticModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = createOnyxStatisticProviderObservable().observeOn(getObserveOn()).doOnNext(new C7098a()).map(new C7099b()).observeOn(getMainUIScheduler()).map(C7100c.f40654e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m31864l() {
        OnyxStatisticProvider onyxStatisticProvider = this.provider;
        if (onyxStatisticProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            onyxStatisticProvider = null;
        }
        onyxStatisticProvider.saveOnyxStatisticList(this.list);
    }
}
