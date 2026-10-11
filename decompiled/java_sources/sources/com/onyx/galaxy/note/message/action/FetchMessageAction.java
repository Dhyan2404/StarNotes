package com.onyx.galaxy.note.message.action;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.galaxy.note.message.cloud.MessageService;
import com.onyx.galaxy.note.message.data.MessageCountData;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\b\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/action/FetchMessageAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "m", "Lcom/onyx/galaxy/note/message/cloud/MessageService;", "e", "Lcom/onyx/galaxy/note/message/cloud/MessageService;", NotificationCompat.CATEGORY_SERVICE, "", C6997f.f39671c, "I", "getUnreadCount", "()I", "setUnreadCount", "(I)V", "unreadCount", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FetchMessageAction extends RxBaseAction<FetchMessageAction> {

    /* renamed from: e, reason: from kotlin metadata */
    public MessageService service;

    /* renamed from: f, reason: from kotlin metadata */
    public int unreadCount = -1;

    /* renamed from: com.onyx.galaxy.note.message.action.FetchMessageAction$a */
    /* loaded from: classes9.dex */
    public static final class C12609a<T, R> implements Function {
        public C12609a() {
        }

        /* renamed from: a */
        public final void m50525a(@NotNull FetchMessageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchMessageAction.this.m50523l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50525a((FetchMessageAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.action.FetchMessageAction$b */
    /* loaded from: classes9.dex */
    public static final class C12610b<T, R> implements Function {
        public C12610b() {
        }

        /* renamed from: a */
        public final void m50526a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchMessageAction.this.m50524m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50526a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.action.FetchMessageAction$c */
    /* loaded from: classes9.dex */
    public static final class C12611c<T, R> implements Function {

        /* renamed from: e */
        public static final C12611c<T, R> f61339e = new C12611c<>();

        /* renamed from: a */
        public final void m50527a(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50527a((Throwable) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.action.FetchMessageAction$d */
    /* loaded from: classes9.dex */
    public static final class C12612d<T, R> implements Function {
        public C12612d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FetchMessageAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchMessageAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<FetchMessageAction> create() {
        Observable<FetchMessageAction> map = Observable.just(this).observeOn(KSyncBundle.INSTANCE.getNetworkScheduler()).map(new C12609a()).map(new C12610b()).onErrorReturn(C12611c.f61339e).map(new C12612d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final int getUnreadCount() {
        return this.unreadCount;
    }

    /* renamed from: l */
    public final void m50523l() {
        this.service = (MessageService) ServiceFactory.INSTANCE.getOnyxApiV2Service(MessageService.class);
    }

    /* renamed from: m */
    public final void m50524m() {
        RetrofitExt retrofitExt = RetrofitExt.INSTANCE;
        MessageService messageService = this.service;
        if (messageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
            messageService = null;
        }
        this.unreadCount = ((MessageCountData) retrofitExt.executeAndGetData(messageService.getUnreadMessageCount())).getCount();
    }

    public final void setUnreadCount(int i) {
        this.unreadCount = i;
    }
}
