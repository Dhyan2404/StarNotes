package com.onyx.android.sdk.universal.editor.action.hwr;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.event.ActivationStateChangedEvent;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.hwr.UserDataProvider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u001b\u0010\f\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;", "e", "Lkotlin/Lazy;", "l", "()Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRLoadActivationStateAction extends BaseRxAccountAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy provider;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRLoadActivationStateAction$a */
    /* loaded from: classes8.dex */
    public static final class C9453a<T> implements Consumer {
        public C9453a() {
        }

        /* renamed from: a */
        public final void m39028a(boolean z) {
            HWRLoadActivationStateAction.this.m39027m();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m39028a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRLoadActivationStateAction$b */
    /* loaded from: classes8.dex */
    public static final class C9454b<T> implements Consumer {

        /* renamed from: e */
        public static final C9454b<T> f49716e = new C9454b<>();

        /* renamed from: a */
        public final void m39029a(boolean z) {
            AccountDataBundle.INSTANCE.postEvent(ActivationStateChangedEvent.INSTANCE);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m39029a(((Boolean) obj).booleanValue());
        }
    }

    public HWRLoadActivationStateAction() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<UserDataProvider>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRLoadActivationStateAction$provider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UserDataProvider invoke() {
                return KSyncBundle.INSTANCE.getUserDataProvider();
            }
        });
        this.provider = lazy;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doOnNext = Observable.just(Boolean.TRUE).observeOn(AccountDataBundle.INSTANCE.getDataObserveOn()).doOnNext(new C9453a()).doOnNext(C9454b.f49716e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final UserDataProvider m39026l() {
        return (UserDataProvider) this.provider.getValue();
    }

    /* renamed from: m */
    public final void m39027m() {
        AccountDataBundle.INSTANCE.setHwrActivationStates(m39026l().queryAllActivationStates());
    }
}
