package com.onyx.galaxy.note.message.action;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.base.utils.MarketUtils;
import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NotificationProvider;
import com.onyx.galaxy.note.message.cloud.MessageService;
import com.onyx.galaxy.note.message.data.MessageDataKt;
import com.onyx.galaxy.note.message.data.UserNotification;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\n\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "m", "models", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/message/cloud/MessageService;", "e", "Lcom/onyx/galaxy/note/message/cloud/MessageService;", NotificationCompat.CATEGORY_SERVICE, Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFetchNotificationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchNotificationAction.kt\ncom/onyx/galaxy/note/message/action/FetchNotificationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1549#2:55\n1620#2,3:56\n*S KotlinDebug\n*F\n+ 1 FetchNotificationAction.kt\ncom/onyx/galaxy/note/message/action/FetchNotificationAction\n*L\n46#1:55\n46#1:56,3\n*E\n"})
/* loaded from: classes9.dex */
public final class FetchNotificationAction extends RxBaseAction<FetchNotificationAction> {

    /* renamed from: e, reason: from kotlin metadata */
    public MessageService service;

    /* renamed from: com.onyx.galaxy.note.message.action.FetchNotificationAction$a */
    /* loaded from: classes9.dex */
    public static final class C12615a<T, R> implements Function {
        public C12615a() {
        }

        /* renamed from: a */
        public final void m50536a(@NotNull FetchNotificationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchNotificationAction.this.m50533l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50536a((FetchNotificationAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.action.FetchNotificationAction$b */
    /* loaded from: classes9.dex */
    public static final class C12616b<T, R> implements Function {
        public C12616b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NotificationModel> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchNotificationAction.this.m50534m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.action.FetchNotificationAction$c */
    /* loaded from: classes9.dex */
    public static final class C12617c<T, R> implements Function {
        public C12617c() {
        }

        /* renamed from: a */
        public final void m50538a(@NotNull List<NotificationModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchNotificationAction.this.m50535n(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50538a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.action.FetchNotificationAction$d */
    /* loaded from: classes9.dex */
    public static final class C12618d<T> implements Consumer {

        /* renamed from: e */
        public static final C12618d<T> f61348e = new C12618d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SyncStateOptions.INSTANCE.markAsSynced(FunctionKey.NOTIFICATION);
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.action.FetchNotificationAction$e */
    /* loaded from: classes9.dex */
    public static final class C12619e<T, R> implements Function {

        /* renamed from: e */
        public static final C12619e<T, R> f61349e = new C12619e<>();

        /* renamed from: a */
        public final void m50540a(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m50540a((Throwable) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.action.FetchNotificationAction$f */
    /* loaded from: classes9.dex */
    public static final class C12620f<T, R> implements Function {
        public C12620f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FetchNotificationAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchNotificationAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<FetchNotificationAction> create() {
        if (SyncStateOptions.INSTANCE.hasSynced(FunctionKey.NOTIFICATION)) {
            Observable<FetchNotificationAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable just2 = Observable.just(this);
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        Observable<FetchNotificationAction> map = just2.observeOn(kSyncBundle.getNetworkScheduler()).map(new C12615a()).map(new C12616b()).observeOn(kSyncBundle.getObserveOn()).map(new C12617c()).doOnNext(C12618d.f61348e).onErrorReturn(C12619e.f61349e).map(new C12620f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m50533l() {
        this.service = (MessageService) ServiceFactory.INSTANCE.getOnyxApiV2Service(MessageService.class);
    }

    /* renamed from: m */
    public final List<NotificationModel> m50534m() {
        int collectionSizeOrDefault;
        RetrofitExt retrofitExt = RetrofitExt.INSTANCE;
        MessageService messageService = this.service;
        if (messageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
            messageService = null;
        }
        List list = (List) retrofitExt.executeAndGetData(messageService.getActivityNotifications(MarketUtils.INSTANCE.getMarketChannel(), PackageUtils.INSTANCE.getAppVersionCode(), LocaleUtils.INSTANCE.getNoteLanguage()));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(MessageDataKt.convertToLocal((UserNotification) it2.next()));
        }
        return arrayList;
    }

    /* renamed from: n */
    public final void m50535n(List<NotificationModel> models) {
        NotificationProvider userNotificationProvider = KSyncBundle.INSTANCE.getUserNotificationProvider();
        userNotificationProvider.deleteAll();
        userNotificationProvider.saveAll(models);
    }
}
