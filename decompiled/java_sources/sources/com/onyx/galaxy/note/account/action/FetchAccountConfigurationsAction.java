package com.onyx.galaxy.note.account.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.ReloadAccountAction;
import com.onyx.android.sdk.data.account.bean.AccountPermissionItem;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.account.event.AccountConfigurationChanged;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.replicator.note.action.FetchAccountPermissionAction;
import com.onyx.android.sdk.replicator.note.action.FetchAccountQuotasAction;
import com.onyx.android.sdk.replicator.replicator.action.BaseSyncAction;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRFetchActivationStateAction;
import com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.message.action.FetchMessageTemplateAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u0011\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "", "l", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "loadAccountObservable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FetchAccountConfigurationsAction extends BaseSyncAction<FetchAccountConfigurationsAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: g */
    @NotNull
    public static final Lazy<RxFilter<String>> f53375g;

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean loadAccountObservable;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010\u0003\u001a\u00020\u0002R!\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;", "", "", "debounceFetch", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "", "rxFilter$delegate", "Lkotlin/Lazy;", "a", "()Lcom/onyx/android/sdk/base/rx/RxFilter;", "rxFilter", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class Companion {

        /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$Companion$a */
        /* loaded from: classes9.dex */
        public static final class C10665a<T> implements Consumer {

            /* renamed from: e */
            public static final C10665a<T> f53377e = new C10665a<>();

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull AccountDataBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                FetchAccountConfigurationsAction.INSTANCE.m41750a().onNext("");
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final RxFilter<String> m41750a() {
            return (RxFilter) FetchAccountConfigurationsAction.f53375g.getValue();
        }

        public final void debounceFetch() {
            AccountDataBundle.INSTANCE.loadOnyxAccountObservable().doOnNext(C10665a.f53377e).subscribe();
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$a */
    /* loaded from: classes9.dex */
    public static final class C10667a<T, R> implements Function {

        /* renamed from: e */
        public static final C10667a<T, R> f53379e = new C10667a<>();

        /* renamed from: a */
        public final void m41753a(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m41753a((Throwable) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$b */
    /* loaded from: classes9.dex */
    public static final class C10668b<T> implements Consumer {

        /* renamed from: e */
        public static final C10668b<T> f53380e = new C10668b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountDataBundle.INSTANCE.getEventBusHolder().post(AccountConfigurationChanged.INSTANCE);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$c */
    /* loaded from: classes9.dex */
    public static final class C10669c<T> implements Consumer {

        /* renamed from: e */
        public static final C10669c<T> f53381e = new C10669c<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RxBaseAction.execute$default(new CheckAndResetUserPermissionAction(), null, null, null, 7, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$d */
    /* loaded from: classes9.dex */
    public static final class C10670d<T> implements Consumer {

        /* renamed from: e */
        public static final C10670d<T> f53382e = new C10670d<>();

        /* renamed from: c */
        public static final void m41757c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RxBaseAction.execute$default(new HWRFetchActivationStateAction(HWRValues.ENGINE_SUNIA), null, null, new Action() { // from class: com.sunia.HTREnginev2.cag
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    FetchAccountConfigurationsAction.C10670d.m41757c();
                }
            }, 3, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$e */
    /* loaded from: classes9.dex */
    public static final class C10671e<T, R> implements Function {
        public C10671e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FetchAccountConfigurationsAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchAccountConfigurationsAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$f */
    /* loaded from: classes9.dex */
    public static final class C10672f<T, R> implements Function {
        public C10672f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchAccountConfigurationsAction.this.m41749m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$g */
    /* loaded from: classes9.dex */
    public static final class C10673g<T, R> implements Function {

        /* renamed from: e */
        public static final C10673g<T, R> f53385e = new C10673g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ReloadAccountAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$h */
    /* loaded from: classes9.dex */
    public static final class C10674h<T, R> implements Function {

        /* renamed from: e */
        public static final C10674h<T, R> f53386e = new C10674h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ResultData<List<AccountPermissionItem>>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new FetchAccountPermissionAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$i */
    /* loaded from: classes9.dex */
    public static final class C10675i<T> implements Consumer {

        /* renamed from: e */
        public static final C10675i<T> f53387e = new C10675i<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ResultData<List<AccountPermissionItem>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AppConfigManager.INSTANCE.updateChannelPermission(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$j */
    /* loaded from: classes9.dex */
    public static final class C10676j<T, R> implements Function {

        /* renamed from: e */
        public static final C10676j<T, R> f53388e = new C10676j<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ResultData<List<String>>> apply(@NotNull ResultData<List<AccountPermissionItem>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new FetchChannelAuthAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$k */
    /* loaded from: classes9.dex */
    public static final class C10677k<T> implements Consumer {

        /* renamed from: e */
        public static final C10677k<T> f53389e = new C10677k<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ResultData<List<String>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AppConfigManager.INSTANCE.updateChannelAuth(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$l */
    /* loaded from: classes9.dex */
    public static final class C10678l<T, R> implements Function {

        /* renamed from: e */
        public static final C10678l<T, R> f53390e = new C10678l<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FetchAccountQuotasAction> apply(@NotNull ResultData<List<String>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new FetchAccountQuotasAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$m */
    /* loaded from: classes9.dex */
    public static final class C10679m<T, R> implements Function {

        /* renamed from: e */
        public static final C10679m<T, R> f53391e = new C10679m<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull FetchAccountQuotasAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new FetchMessageTemplateAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$n */
    /* loaded from: classes9.dex */
    public static final class C10680n<T> implements Consumer {

        /* renamed from: e */
        public static final C10680n<T> f53392e = new C10680n<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SyncStateOptions.INSTANCE.markAsSynced(FunctionKey.ACCOUNT_CONFIGURATIONS);
        }
    }

    static {
        Lazy<RxFilter<String>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxFilter<String>>() { // from class: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$Companion$rxFilter$2

            /* renamed from: com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction$Companion$rxFilter$2$a */
            /* loaded from: classes9.dex */
            public static final class C10666a<T> implements Consumer {

                /* renamed from: e */
                public static final C10666a<T> f53378e = new C10666a<>();

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    OnyxErrorHandler.executeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new FetchAccountConfigurationsAction(false), null, null, 3, null);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxFilter<String> invoke() {
                RxFilter<String> rxFilter = new RxFilter<>();
                rxFilter.subscribeThrottleLast(500L, C10666a.f53378e);
                return rxFilter;
            }
        });
        f53375g = lazy;
    }

    public FetchAccountConfigurationsAction() {
        this(false, 1, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<FetchAccountConfigurationsAction> create() {
        if (m41748l()) {
            Observable<FetchAccountConfigurationsAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<FetchAccountConfigurationsAction> map = Observable.just(Unit.INSTANCE).flatMap(new C10672f()).flatMap(C10673g.f53385e).flatMap(C10674h.f53386e).doOnNext(C10675i.f53387e).flatMap(C10676j.f53388e).doOnNext(C10677k.f53389e).flatMap(C10678l.f53390e).flatMap(C10679m.f53391e).doOnNext(C10680n.f53392e).onErrorReturn(C10667a.f53379e).doOnNext(C10668b.f53380e).doOnNext(C10669c.f53381e).doOnNext(C10670d.f53382e).map(new C10671e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m41748l() {
        return SyncStateOptions.INSTANCE.hasSynced(FunctionKey.ACCOUNT_CONFIGURATIONS);
    }

    /* renamed from: m */
    public final Observable<?> m41749m() {
        if (this.loadAccountObservable) {
            return AccountDataBundle.INSTANCE.loadOnyxAccountObservable();
        }
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    public /* synthetic */ FetchAccountConfigurationsAction(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    public FetchAccountConfigurationsAction(boolean z) {
        this.loadAccountObservable = z;
    }
}
