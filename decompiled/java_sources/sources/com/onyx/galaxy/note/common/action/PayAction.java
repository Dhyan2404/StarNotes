package com.onyx.galaxy.note.common.action;

import androidx.fragment.app.FragmentManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pay.data.OrderArgs;
import com.onyx.android.sdk.pay.view.PayDialog;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.galaxy.note.category.data.QuotaAllDocFilter;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/PayAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "count", "", "l", "Landroidx/fragment/app/FragmentManager;", C6998g.f39679a, "Landroidx/fragment/app/FragmentManager;", "getFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lcom/onyx/android/sdk/pay/data/OrderArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/pay/data/OrderArgs;", "getOrderArgs", "()Lcom/onyx/android/sdk/pay/data/OrderArgs;", "orderArgs", "Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;", "i", "Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;", "getListener", "()Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/FragmentManager;Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PayAction extends BaseNoteManagementAction<PayAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final FragmentManager fragmentManager;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final OrderArgs orderArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final PayDialog.PayListener listener;

    /* renamed from: com.onyx.galaxy.note.common.action.PayAction$a */
    /* loaded from: classes9.dex */
    public static final class C11588a<T, R> implements Function {

        /* renamed from: e */
        public static final C11588a<T, R> f55930e = new C11588a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long apply(@NotNull NoteProvider provider) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            return Long.valueOf(provider.queryCount(QuotaAllDocFilter.INSTANCE.getInfo().getQueryArgs()));
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.PayAction$b */
    /* loaded from: classes9.dex */
    public static final class C11589b<T> implements Consumer {
        public C11589b() {
        }

        /* renamed from: a */
        public final void m44920a(long j) {
            PayAction.this.m44918l(j);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44920a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.PayAction$c */
    /* loaded from: classes9.dex */
    public static final class C11590c<T, R> implements Function {
        public C11590c() {
        }

        @NotNull
        /* renamed from: a */
        public final PayAction m44921a(long j) {
            return PayAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m44921a(((Number) obj).longValue());
        }
    }

    public PayAction(@NotNull FragmentManager fragmentManager, @NotNull OrderArgs orderArgs, @NotNull PayDialog.PayListener listener) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(orderArgs, "orderArgs");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.fragmentManager = fragmentManager;
        this.orderArgs = orderArgs;
        this.listener = listener;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PayAction> create() {
        Observable<PayAction> map = createNoteProviderObservable().map(C11588a.f55930e).observeOn(getMainUIScheduler()).doOnNext(new C11589b()).map(new C11590c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final FragmentManager getFragmentManager() {
        return this.fragmentManager;
    }

    @NotNull
    public final PayDialog.PayListener getListener() {
        return this.listener;
    }

    @NotNull
    public final OrderArgs getOrderArgs() {
        return this.orderArgs;
    }

    /* renamed from: l */
    public final void m44918l(long count) {
        this.orderArgs.setNoteAmount(count);
        PayDialog payDialog = new PayDialog(this.orderArgs);
        payDialog.setListener(this.listener);
        payDialog.show(this.fragmentManager, Reflection.getOrCreateKotlinClass(PayDialog.class).getSimpleName());
    }
}
