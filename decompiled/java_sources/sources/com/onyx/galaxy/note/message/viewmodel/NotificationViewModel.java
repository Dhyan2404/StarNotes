package com.onyx.galaxy.note.message.viewmodel;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.message.action.LoadNotificationAction;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b!\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b2\u00103J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J%\u0010\u000b\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\b \t*\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00070\u00070\u0006¢\u0006\u0002\b\nJ\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0010\u001a\u00020\u000fJ\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007R\"\u0010\u0016\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001b\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0015\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0015\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\"\u0010!\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0015\u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010\u0019R\"\u0010$\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0015\u001a\u0004\b$\u0010\u0017\"\u0004\b%\u0010\u0019R\"\u0010'\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0015\u001a\u0004\b'\u0010\u0017\"\u0004\b(\u0010\u0019R\"\u0010*\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u0015\u001a\u0004\b*\u0010\u0017\"\u0004\b+\u0010\u0019R\"\u0010-\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u0015\u001a\u0004\b-\u0010\u0017\"\u0004\b.\u0010\u0019R3\u00101\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\b \t*\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00070\u00070\u0006¢\u0006\u0002\b\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "onDestroy", "invalidate", "load", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "getNotifications", "notifications", "Lio/reactivex/rxjava3/core/Observable;", "filterCenterNotification", "", "group", "filterSidebarNotification", "filterBannerNotification", "", "i", Constants.HASIDCALL_INDEX_SIG, "isActivityRecreated", Constants.BOOLEAN_VALUE_SIG, "setActivityRecreated", "(Z)V", "j", "isCenterNotificationInterrupted", "setCenterNotificationInterrupted", C4921e.f26537n, "isCenterNotificationDisplayed", "setCenterNotificationDisplayed", "l", "isSidebarNotificationDisplayed", "setSidebarNotificationDisplayed", "m", "isBannerNotificationDisplayed", "setBannerNotificationDisplayed", GoogleApiAvailabilityLight.f29016b, "isCenterNotificationClosed", "setCenterNotificationClosed", C4921e.f26528e, "isSidebarNotificationClosed", "setSidebarNotificationClosed", "p", "isBannerNotificationClosed", "setBannerNotificationClosed", "q", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "publisher", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotificationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationViewModel.kt\ncom/onyx/galaxy/note/message/viewmodel/NotificationViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,99:1\n288#2,2:100\n288#2,2:107\n288#2,2:114\n41#3,5:102\n41#3,5:109\n41#3,5:116\n*S KotlinDebug\n*F\n+ 1 NotificationViewModel.kt\ncom/onyx/galaxy/note/message/viewmodel/NotificationViewModel\n*L\n57#1:100,2\n75#1:107,2\n89#1:114,2\n58#1:102,5\n76#1:109,5\n90#1:116,5\n*E\n"})
/* loaded from: classes9.dex */
public final class NotificationViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isActivityRecreated;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isCenterNotificationInterrupted;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isCenterNotificationDisplayed;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isSidebarNotificationDisplayed;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isBannerNotificationDisplayed;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean isCenterNotificationClosed;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean isSidebarNotificationClosed;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean isBannerNotificationClosed;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final ReplaySubject<List<NotificationModel>> publisher;

    /* renamed from: com.onyx.galaxy.note.message.viewmodel.NotificationViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12629a<T, R> implements Function {

        /* renamed from: e */
        public static final C12629a<T, R> f61411e = new C12629a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NotificationModel> apply(@NotNull List<NotificationModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NotificationDisplayHandler.INSTANCE.filter(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.message.viewmodel.NotificationViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12630b<T> implements Consumer {
        public C12630b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NotificationModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NotificationViewModel.this.publisher.onNext(it2);
        }
    }

    public NotificationViewModel() {
        ReplaySubject<List<NotificationModel>> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publisher = create;
    }

    @NotNull
    public final Observable<NotificationModel> filterBannerNotification(@NotNull List<NotificationModel> notifications) {
        Object obj;
        Intrinsics.checkNotNullParameter(notifications, "notifications");
        Iterator<T> it2 = notifications.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(NotificationDisplayHandler.INSTANCE.getGroup((NotificationModel) obj), NotificationDisplayHandler.GROUP_BANNER)) {
                break;
            }
        }
        NotificationModel notificationModel = (NotificationModel) obj;
        if (!this.isBannerNotificationClosed) {
            if (notificationModel != null) {
                if (!this.isActivityRecreated && !this.isBannerNotificationDisplayed) {
                    NotificationDisplayHandler.INSTANCE.onShow(notificationModel);
                }
                this.isBannerNotificationDisplayed = true;
                Observable<NotificationModel> just = Observable.just(notificationModel);
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                return just;
            }
        }
        Observable<NotificationModel> empty = Observable.empty();
        Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
        return empty;
    }

    @NotNull
    public final Observable<NotificationModel> filterCenterNotification(@NotNull List<NotificationModel> notifications) {
        Object obj;
        Intrinsics.checkNotNullParameter(notifications, "notifications");
        Iterator<T> it2 = notifications.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(NotificationDisplayHandler.INSTANCE.getGroup((NotificationModel) obj), "center")) {
                break;
            }
        }
        NotificationModel notificationModel = (NotificationModel) obj;
        if (!this.isCenterNotificationClosed) {
            if (notificationModel != null) {
                if (!this.isActivityRecreated && !this.isCenterNotificationDisplayed) {
                    NotificationDisplayHandler.INSTANCE.onShow(notificationModel);
                    this.isCenterNotificationDisplayed = true;
                    Observable<NotificationModel> just = Observable.just(notificationModel);
                    Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                    return just;
                }
                if (this.isCenterNotificationInterrupted) {
                    this.isCenterNotificationInterrupted = false;
                    Observable<NotificationModel> just2 = Observable.just(notificationModel);
                    Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
                    return just2;
                }
            }
        }
        Observable<NotificationModel> empty = Observable.empty();
        Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
        return empty;
    }

    @NotNull
    public final Observable<NotificationModel> filterSidebarNotification(@NotNull List<NotificationModel> notifications, @NotNull String group) {
        Object obj;
        Intrinsics.checkNotNullParameter(notifications, "notifications");
        Intrinsics.checkNotNullParameter(group, "group");
        Iterator<T> it2 = notifications.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(NotificationDisplayHandler.INSTANCE.getGroup((NotificationModel) obj), group)) {
                break;
            }
        }
        NotificationModel notificationModel = (NotificationModel) obj;
        if (!this.isSidebarNotificationClosed) {
            if (notificationModel != null) {
                if (!this.isActivityRecreated && !this.isSidebarNotificationDisplayed) {
                    NotificationDisplayHandler.INSTANCE.onShow(notificationModel);
                }
                this.isSidebarNotificationDisplayed = true;
                Observable<NotificationModel> just = Observable.just(notificationModel);
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                return just;
            }
        }
        Observable<NotificationModel> empty = Observable.empty();
        Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
        return empty;
    }

    @NotNull
    public final ReplaySubject<List<NotificationModel>> getNotifications() {
        return this.publisher;
    }

    public final void invalidate() {
        this.isCenterNotificationInterrupted = false;
        this.isCenterNotificationDisplayed = false;
        this.isSidebarNotificationDisplayed = false;
        this.isBannerNotificationDisplayed = false;
        this.isCenterNotificationClosed = false;
        this.isSidebarNotificationClosed = false;
        this.isBannerNotificationClosed = false;
    }

    /* renamed from: isActivityRecreated, reason: from getter */
    public final boolean getIsActivityRecreated() {
        return this.isActivityRecreated;
    }

    /* renamed from: isBannerNotificationClosed, reason: from getter */
    public final boolean getIsBannerNotificationClosed() {
        return this.isBannerNotificationClosed;
    }

    /* renamed from: isBannerNotificationDisplayed, reason: from getter */
    public final boolean getIsBannerNotificationDisplayed() {
        return this.isBannerNotificationDisplayed;
    }

    /* renamed from: isCenterNotificationClosed, reason: from getter */
    public final boolean getIsCenterNotificationClosed() {
        return this.isCenterNotificationClosed;
    }

    /* renamed from: isCenterNotificationDisplayed, reason: from getter */
    public final boolean getIsCenterNotificationDisplayed() {
        return this.isCenterNotificationDisplayed;
    }

    /* renamed from: isCenterNotificationInterrupted, reason: from getter */
    public final boolean getIsCenterNotificationInterrupted() {
        return this.isCenterNotificationInterrupted;
    }

    /* renamed from: isSidebarNotificationClosed, reason: from getter */
    public final boolean getIsSidebarNotificationClosed() {
        return this.isSidebarNotificationClosed;
    }

    /* renamed from: isSidebarNotificationDisplayed, reason: from getter */
    public final boolean getIsSidebarNotificationDisplayed() {
        return this.isSidebarNotificationDisplayed;
    }

    public final void load() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = new LoadNotificationAction().build().map(C12629a.f61411e).doOnNext(new C12630b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    public final void onDestroy() {
        this.publisher.onComplete();
    }

    public final void setActivityRecreated(boolean z) {
        this.isActivityRecreated = z;
    }

    public final void setBannerNotificationClosed(boolean z) {
        this.isBannerNotificationClosed = z;
    }

    public final void setBannerNotificationDisplayed(boolean z) {
        this.isBannerNotificationDisplayed = z;
    }

    public final void setCenterNotificationClosed(boolean z) {
        this.isCenterNotificationClosed = z;
    }

    public final void setCenterNotificationDisplayed(boolean z) {
        this.isCenterNotificationDisplayed = z;
    }

    public final void setCenterNotificationInterrupted(boolean z) {
        this.isCenterNotificationInterrupted = z;
    }

    public final void setSidebarNotificationClosed(boolean z) {
        this.isSidebarNotificationClosed = z;
    }

    public final void setSidebarNotificationDisplayed(boolean z) {
        this.isSidebarNotificationDisplayed = z;
    }
}
