package com.onyx.galaxy.note.common.action;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.event.NetworkStatusChangeEvent;
import com.onyx.android.sdk.universal.editor.AutoBackupTaskBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.common.action.NetworkChangeAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/NetworkChangeAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", GoogleApiAvailabilityLight.f29016b, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NetworkChangeAction extends RxBaseAction<Boolean> {
    /* renamed from: m */
    public static final void m44905m(ConnectivityManager cm, final NetworkChangeAction this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(cm, "$cm");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        cm.registerNetworkCallback(new NetworkRequest.Builder().build(), new ConnectivityManager.NetworkCallback() { // from class: com.onyx.galaxy.note.common.action.NetworkChangeAction$create$1$1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(@NotNull Network network) {
                Intrinsics.checkNotNullParameter(network, "network");
                emitter.onNext(Boolean.TRUE);
                this$0.m44906n();
                GlobalBundle.INSTANCE.postEvent(new NetworkStatusChangeEvent(true));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(@NotNull Network network) {
                Intrinsics.checkNotNullParameter(network, "network");
                emitter.onNext(Boolean.FALSE);
                GlobalBundle.INSTANCE.postEvent(new NetworkStatusChangeEvent(false));
            }
        });
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Object systemService = ResManager.INSTANCE.getAppContext().getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        final ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        Observable<Boolean> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.ptj
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                NetworkChangeAction.m44905m(connectivityManager, this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    /* renamed from: n */
    public final void m44906n() {
        AutoBackupTaskBundle.INSTANCE.cleanAutoLocalBackTasks();
    }
}
