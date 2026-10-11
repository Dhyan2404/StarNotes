package com.onyx.galaxy.note.message.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/action/LoadNotificationAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadNotificationAction extends RxBaseAction<List<? extends NotificationModel>> {

    /* renamed from: com.onyx.galaxy.note.message.action.LoadNotificationAction$a */
    /* loaded from: classes9.dex */
    public static final class C12621a<T, R> implements Function {
        public C12621a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NotificationModel> apply(@NotNull FetchNotificationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNotificationAction.this.m50542l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends NotificationModel>> create() {
        Observable map = new FetchNotificationAction().build().observeOn(KSyncBundle.INSTANCE.getObserveOn()).map(new C12621a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<NotificationModel> m50542l() {
        return KSyncBundle.INSTANCE.getUserNotificationProvider().loadAll();
    }
}
