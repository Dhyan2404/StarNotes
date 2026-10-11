package com.onyx.android.sdk.replicator.message;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.MessageReplicateEvent;
import com.onyx.android.sdk.replicator.message.MessageReplicatorSyncAction;
import com.onyx.android.sdk.replicator.replicator.ReplicatorBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;", "e", "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;", "args", "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;", "replicator", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, FirebaseAnalytics.Param.SUCCESS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MessageReplicatorSyncAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final MessageReplicateArgs args;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final MessageReplicator replicator;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean success;

    /* renamed from: com.onyx.android.sdk.replicator.message.MessageReplicatorSyncAction$a */
    /* loaded from: classes8.dex */
    public static final class C7648a<T, R> implements Function {
        public C7648a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull MessageReplicatorSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MessageReplicatorSyncAction.this.replicator.startWithObserve();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.message.MessageReplicatorSyncAction$b */
    /* loaded from: classes8.dex */
    public static final class C7649b<T, R> implements Function {
        public C7649b() {
        }

        /* renamed from: a */
        public final void m34990a(boolean z) {
            MessageReplicatorSyncAction.this.success = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m34990a(((Boolean) obj).booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.message.MessageReplicatorSyncAction$c */
    /* loaded from: classes8.dex */
    public static final class C7650c<T, R> implements Function {
        public C7650c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(MessageReplicatorSyncAction.this.m34988n());
        }
    }

    public MessageReplicatorSyncAction(@NotNull MessageReplicateArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.replicator = ReplicatorBundle.INSTANCE.getMessageReplicator(args);
    }

    /* renamed from: m */
    public static final void m34987m(MessageReplicatorSyncAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.replicator.closeReplicator();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doFinally = Observable.just(this).observeOn(this.replicator.getObserveOn()).flatMap(new C7648a()).map(new C7649b()).map(new C7650c()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.bnj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                MessageReplicatorSyncAction.m34987m(MessageReplicatorSyncAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: n */
    public final boolean m34988n() {
        if (this.success) {
            KSyncBundle.INSTANCE.getEventBusHolder().post(new MessageReplicateEvent(this.args));
        }
        return this.success;
    }
}
