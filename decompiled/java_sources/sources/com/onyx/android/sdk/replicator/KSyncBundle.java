package com.onyx.android.sdk.replicator;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.CouchbaseLite;
import com.couchbase.lite.Database;
import com.couchbase.lite.Log;
import com.couchbase.lite.LogLevel;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.UserStorageBean;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.couchbase.CouchLogger;
import com.onyx.android.sdk.data.couchbase.bean.SyncGateway;
import com.onyx.android.sdk.data.couchbase.utils.CouchDirUtils;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.api.SyncApiSubscriber;
import com.onyx.android.sdk.replicator.counter.provider.CounterProvider;
import com.onyx.android.sdk.replicator.event.LoginOnyxAccountEvent;
import com.onyx.android.sdk.replicator.event.LogoutOnyxAccountEvent;
import com.onyx.android.sdk.replicator.hwr.UserDataProvider;
import com.onyx.android.sdk.replicator.note.action.StopNoteReplicatorAction;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.DataRepositoryProvider;
import com.onyx.android.sdk.replicator.note.p035db.ExcerptCollectionProvider;
import com.onyx.android.sdk.replicator.note.p035db.FontProvider;
import com.onyx.android.sdk.replicator.note.p035db.HwrResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTabDataProvider;
import com.onyx.android.sdk.replicator.note.p035db.NotificationProvider;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.replicator.progress.p037db.SyncProgressProvider;
import com.onyx.android.sdk.replicator.replicator.action.PrepareSyncAction;
import com.onyx.android.sdk.replicator.replicator.action.UpdateUserStorageAction;
import com.onyx.android.sdk.replicator.sticker.p038db.StickerProvider;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.jetty.HttpHeaderValues;

@Metadata(m61527d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001a\bÆ\u0002\u0018\u00002\u00020\u0001B\u000b\b\u0002¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001J\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\b\u0010\t\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\n\u001a\u00020\u0002J\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001c\u001a\u00020\u001bJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010\u001f\u001a\u00020\u001bJ\u0006\u0010!\u001a\u00020 J\u0006\u0010#\u001a\u00020\"J\u0006\u0010%\u001a\u00020$J\u0006\u0010'\u001a\u00020&J\u0010\u0010)\u001a\u00020(2\b\b\u0002\u0010\u000e\u001a\u00020\rJ\u000e\u0010,\u001a\u00020+2\u0006\u0010*\u001a\u00020\rJ\u0006\u0010.\u001a\u00020-J\b\u00100\u001a\u0004\u0018\u00010/J\u0010\u00102\u001a\u00020\u00022\b\u00101\u001a\u0004\u0018\u00010/J\u000e\u00106\u001a\u0002052\u0006\u00104\u001a\u000203J\u000e\u00108\u001a\u00020\u00022\u0006\u00107\u001a\u000203J\u000e\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u000205J\u000e\u0010<\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u0007J\u000e\u0010=\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u0007J\u000e\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>J\u0006\u0010A\u001a\u00020\u0002J\u000e\u0010B\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>J\u0006\u0010C\u001a\u00020\u0002J\u0006\u0010D\u001a\u00020\u0002J\u0006\u0010E\u001a\u00020\u0002J\u000e\u0010F\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>J\u000e\u0010G\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>J\u0006\u0010H\u001a\u00020\u0002J\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00000IJ\u000e\u0010N\u001a\u00020M2\u0006\u0010L\u001a\u00020KJ\u0006\u0010O\u001a\u00020\u0002J\u0006\u0010P\u001a\u00020\u0002R\u001b\u0010V\u001a\u00020Q8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010\\\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0018\u0010^\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010[R\u001b\u0010c\u001a\u00020_8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b`\u0010S\u001a\u0004\ba\u0010bR\u001b\u0010g\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010S\u001a\u0004\bW\u0010fR\u001b\u0010i\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010S\u001a\u0004\bR\u0010fR\u0014\u0010m\u001a\u00020j8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010lR\"\u0010p\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bn\u0010o\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR\"\u0010u\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bt\u0010o\u001a\u0004\bu\u0010q\"\u0004\bv\u0010sR\u0018\u00101\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0016\u0010P\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010oR\"\u0010}\u001a\u0002058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010o\u001a\u0004\b{\u0010q\"\u0004\b|\u0010sR\u0011\u0010~\u001a\u0002058F¢\u0006\u0006\u001a\u0004\b~\u0010qR\u0013\u0010\u0081\u0001\u001a\u00020\u000b8F¢\u0006\u0007\u001a\u0005\b\u007f\u0010\u0080\u0001¨\u0006\u0084\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/KSyncBundle;", "", "", gon.f71290o0, "prepareSync", NotificationCompat.CATEGORY_EVENT, "post", "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "getSyncGateway", "getAnonymousSyncGateway", "ensureSyncGatewayExist", "Lio/reactivex/rxjava3/core/Scheduler;", "getNetworkScheduler", "", Constant.TAG_USER_ID, "Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;", "getUserSyncProgressProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider;", "getUserNoteTabProvider", "Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;", "getUserExcerptCollectionProvider", "Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;", "getUserTemplateProvider", "Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;", "getUserCoverProvider", "Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;", "getUserNotificationProvider", "Lcom/onyx/android/sdk/replicator/note/db/FontProvider;", "getAppFontProvider", "Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;", "getAppHwrResourceProvider", "getUserInkFontProvider", "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", "getCurUserDataProviderInfo", "Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;", "getUserDataProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "getUserNoteProvider", "Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;", "getUserStickerProvider", "Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;", "getUserCounterProvider", EditorConstants.ARGS_DOC_ID, "Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;", "getUserVirtualModelProvider", "Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;", "getUserDataRepositoryProvider", "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;", "getUserStorageBean", "userStorageBean", "setUserStorageBean", "", "pushFileSize", "", "isUserStorageEnough", HttpHeaderValues.BYTES, "useStorage", "recalculate", "updateUserStorage", "gateway", "updateSyncGateway", "updateAnonymousSyncGateway", "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "args", "stopNoteSync", "startAnonymousSync", "stopSync", "resetSyncGateway", "resetAnonymousSyncGateway", Constants.RESET, "onLogin", "onLogout", "startSync", "Lio/reactivex/rxjava3/core/Observable;", "createObservable", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "clusterInfo", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "getRxOSSManager", "resetOssManager", "initCouchbase", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "a", "Lkotlin/Lazy;", "getDbProviderBundle", "()Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "dbProviderBundle", "b", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "c", "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "syncGateway", "d", "anonymousSyncGateway", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "e", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", C6997f.f39671c, "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler", C6998g.f39679a, "networkScheduler", "Lcom/onyx/android/sdk/replicator/api/SyncApiSubscriber;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/api/SyncApiSubscriber;", "syncApiSubscriber", "i", Constants.HASIDCALL_INDEX_SIG, "isNeedUpdateUserStorage", Constants.BOOLEAN_VALUE_SIG, "setNeedUpdateUserStorage", "(Z)V", "j", "isNeedRecalculateUserStorage", "setNeedRecalculateUserStorage", C4921e.f26537n, "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;", "l", "m", "getDebugLog", "setDebugLog", "debugLog", "isEmptySyncGateway", "getObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "observeOn", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nKSyncBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KSyncBundle.kt\ncom/onyx/android/sdk/replicator/KSyncBundle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,320:1\n1#2:321\n*E\n"})
/* loaded from: classes8.dex */
public final class KSyncBundle {

    @NotNull
    public static final KSyncBundle INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy dbProviderBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public static RxOSSManager rxOSSManager;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public static SyncGateway syncGateway;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public static SyncGateway anonymousSyncGateway;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final Lazy eventBusHolder;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final Lazy rxScheduler;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final Lazy networkScheduler;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final SyncApiSubscriber syncApiSubscriber;

    /* renamed from: i, reason: from kotlin metadata */
    public static boolean isNeedUpdateUserStorage;

    /* renamed from: j, reason: from kotlin metadata */
    public static boolean isNeedRecalculateUserStorage;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public static UserStorageBean userStorageBean;

    /* renamed from: l, reason: from kotlin metadata */
    public static boolean initCouchbase;

    /* renamed from: m, reason: from kotlin metadata */
    public static boolean debugLog;

    /* renamed from: com.onyx.android.sdk.replicator.KSyncBundle$a */
    /* loaded from: classes8.dex */
    public static final class C7593a<T> implements Consumer {

        /* renamed from: e */
        public static final C7593a<T> f45143e = new C7593a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateUserStorageAction action) {
            Intrinsics.checkNotNullParameter(action, "action");
            KSyncBundle.INSTANCE.setUserStorageBean(action.getUserStorageBean());
        }
    }

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        KSyncBundle kSyncBundle = new KSyncBundle();
        INSTANCE = kSyncBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DBProviderBundle>() { // from class: com.onyx.android.sdk.replicator.KSyncBundle$dbProviderBundle$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DBProviderBundle invoke() {
                return new DBProviderBundle();
            }
        });
        dbProviderBundle = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<EventBusHolder>() { // from class: com.onyx.android.sdk.replicator.KSyncBundle$eventBusHolder$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EventBusHolder invoke() {
                return new EventBusHolder(null, 1, null);
            }
        });
        eventBusHolder = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.replicator.KSyncBundle$rxScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        rxScheduler = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.replicator.KSyncBundle$networkScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.Companion.newMultiThreadManager$default(RxScheduler.INSTANCE, null, 0L, 3, null);
            }
        });
        networkScheduler = lazy4;
        syncApiSubscriber = new SyncApiSubscriber();
        kSyncBundle.start();
    }

    public static /* synthetic */ CounterProvider getUserCounterProvider$default(KSyncBundle kSyncBundle, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        return kSyncBundle.getUserCounterProvider(str);
    }

    /* renamed from: a */
    public final RxScheduler m34859a() {
        return (RxScheduler) networkScheduler.getValue();
    }

    /* renamed from: b */
    public final RxScheduler m34860b() {
        return (RxScheduler) rxScheduler.getValue();
    }

    @NotNull
    public final Observable<KSyncBundle> createObservable() {
        Observable<KSyncBundle> observeOn = Observable.just(this).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    public final void ensureSyncGatewayExist() {
        if (syncGateway == null) {
            prepareSync();
        }
    }

    @Nullable
    public final SyncGateway getAnonymousSyncGateway() {
        return anonymousSyncGateway;
    }

    @NotNull
    public final FontProvider getAppFontProvider() {
        return getDbProviderBundle().getFontProvider(ProviderInfoUtils.INSTANCE.getAppProviderInfo());
    }

    @NotNull
    public final HwrResourceProvider getAppHwrResourceProvider() {
        return getDbProviderBundle().getHwrResourceProvider(ProviderInfoUtils.INSTANCE.getAppProviderInfo());
    }

    @NotNull
    public final ProviderInfo getCurUserDataProviderInfo() {
        return ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    @NotNull
    public final DBProviderBundle getDbProviderBundle() {
        return (DBProviderBundle) dbProviderBundle.getValue();
    }

    public final boolean getDebugLog() {
        return debugLog;
    }

    @NotNull
    public final EventBusHolder getEventBusHolder() {
        return (EventBusHolder) eventBusHolder.getValue();
    }

    @NotNull
    public final Scheduler getNetworkScheduler() {
        return m34859a().getObserveOn();
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return m34860b().getObserveOn();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001f, code lost:
    
        if (r1.isOssConfigChanged(r0) != false) goto L6;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.data.common.oss.RxOSSManager getRxOSSManager(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.cluster.model.ClusterInfo r1) {
        /*
            r0 = this;
            java.lang.String r0 = "clusterInfo"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            com.onyx.android.sdk.data.common.oss.OssConfig$Companion r0 = com.onyx.android.sdk.data.common.oss.OssConfig.INSTANCE
            com.onyx.android.sdk.data.common.oss.OssConfig r0 = r0.noteOssConfig(r1)
            com.onyx.android.sdk.data.account.AccountDataBundle r1 = com.onyx.android.sdk.data.account.AccountDataBundle.INSTANCE
            java.lang.String r1 = r1.getAccountToken()
            r0.setToken(r1)
            com.onyx.android.sdk.data.common.oss.RxOSSManager r1 = com.onyx.android.sdk.replicator.KSyncBundle.rxOSSManager
            if (r1 == 0) goto L21
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            boolean r1 = r1.isOssConfigChanged(r0)
            if (r1 == 0) goto L28
        L21:
            com.onyx.android.sdk.data.common.oss.RxOSSManager r1 = new com.onyx.android.sdk.data.common.oss.RxOSSManager
            r1.<init>(r0)
            com.onyx.android.sdk.replicator.KSyncBundle.rxOSSManager = r1
        L28:
            com.onyx.android.sdk.data.common.oss.RxOSSManager r0 = com.onyx.android.sdk.replicator.KSyncBundle.rxOSSManager
            java.lang.String r1 = "null cannot be cast to non-null type com.onyx.android.sdk.data.common.oss.RxOSSManager"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.KSyncBundle.getRxOSSManager(com.onyx.android.sdk.data.cluster.model.ClusterInfo):com.onyx.android.sdk.data.common.oss.RxOSSManager");
    }

    @Nullable
    public final SyncGateway getSyncGateway() {
        return syncGateway;
    }

    @NotNull
    public final CounterProvider getUserCounterProvider(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return getDbProviderBundle().getCounterProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(userId));
    }

    @NotNull
    public final CoverProvider getUserCoverProvider() {
        return getDbProviderBundle().getCoverProvider(getCurUserDataProviderInfo());
    }

    @NotNull
    public final UserDataProvider getUserDataProvider() {
        return getDbProviderBundle().getUserDataProvider(getCurUserDataProviderInfo());
    }

    @NotNull
    public final DataRepositoryProvider getUserDataRepositoryProvider() {
        return getDbProviderBundle().getDataRepositoryProvider(getCurUserDataProviderInfo());
    }

    @NotNull
    public final ExcerptCollectionProvider getUserExcerptCollectionProvider() {
        return getDbProviderBundle().getExcerptCollectionProvider(getCurUserDataProviderInfo());
    }

    @NotNull
    public final FontProvider getUserInkFontProvider() {
        return getDbProviderBundle().getFontProvider(getCurUserDataProviderInfo());
    }

    @NotNull
    public final NoteProvider getUserNoteProvider() {
        return getDbProviderBundle().getNoteProvider(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId()));
    }

    @NotNull
    public final NoteTabDataProvider getUserNoteTabProvider() {
        return getDbProviderBundle().getNoteTabProvider(getCurUserDataProviderInfo());
    }

    @NotNull
    public final NotificationProvider getUserNotificationProvider() {
        return getDbProviderBundle().getNotificationProvider(getCurUserDataProviderInfo());
    }

    @NotNull
    public final StickerProvider getUserStickerProvider() {
        return getDbProviderBundle().getStickerProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId()));
    }

    @Nullable
    public final UserStorageBean getUserStorageBean() {
        return userStorageBean;
    }

    @NotNull
    public final SyncProgressProvider getUserSyncProgressProvider(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return getDbProviderBundle().getUserSyncProgressProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(userId));
    }

    @NotNull
    public final TemplateProvider getUserTemplateProvider() {
        return getDbProviderBundle().getTemplateProvider(getCurUserDataProviderInfo());
    }

    @NotNull
    public final VirtualModelProvider getUserVirtualModelProvider(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        return getDbProviderBundle().getVirtualModelProvider(ProviderInfoUtils.INSTANCE.getDocDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId(), docId));
    }

    public final void initCouchbase() {
        if (initCouchbase) {
            return;
        }
        try {
            File file = new File(CouchDirUtils.INSTANCE.getCouchDirPath());
            Context appContext = ResManager.INSTANCE.getAppContext();
            Debug debug = Debug.INSTANCE;
            CouchbaseLite.init(appContext, debug.getDebug(), file, file);
            Log log = Database.log;
            LogLevel logLevel = LogLevel.ERROR;
            log.setCustom(new CouchLogger(logLevel));
            log.getConsole().setLevel(logLevel);
            debug.m32052i(KSyncBundle.class, "couchbase init", new Object[0]);
            initCouchbase = true;
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
        }
    }

    public final boolean isEmptySyncGateway() {
        return getSyncGateway() == null;
    }

    public final boolean isNeedRecalculateUserStorage() {
        return isNeedRecalculateUserStorage;
    }

    public final boolean isNeedUpdateUserStorage() {
        return isNeedUpdateUserStorage;
    }

    public final boolean isUserStorageEnough(long pushFileSize) {
        UserStorageBean userStorageBean2 = userStorageBean;
        if (userStorageBean2 == null) {
            return true;
        }
        Intrinsics.checkNotNull(userStorageBean2);
        return userStorageBean2.getStorageLeft() > pushFileSize;
    }

    public final void onLogin(@NotNull AccountIntentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        resetAnonymousSyncGateway();
        getEventBusHolder().post(new LoginOnyxAccountEvent());
    }

    public final void onLogout(@NotNull AccountIntentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        reset();
        stopSync(args);
        ensureSyncGatewayExist();
        getEventBusHolder().post(new LogoutOnyxAccountEvent());
    }

    public final void post(@Nullable Object event) {
        getEventBusHolder().post(event);
    }

    public final void prepareSync() {
        RxBaseAction.execute$default(new PrepareSyncAction(), null, null, null, 7, null);
    }

    public final void reset() {
        resetSyncGateway();
        resetOssManager();
    }

    public final void resetAnonymousSyncGateway() {
        anonymousSyncGateway = null;
    }

    public final void resetOssManager() {
        rxOSSManager = null;
    }

    public final void resetSyncGateway() {
        syncGateway = null;
    }

    public final void setDebugLog(boolean z) {
        debugLog = z;
    }

    public final void setNeedRecalculateUserStorage(boolean z) {
        isNeedRecalculateUserStorage = z;
    }

    public final void setNeedUpdateUserStorage(boolean z) {
        isNeedUpdateUserStorage = z;
    }

    public final void setUserStorageBean(@Nullable UserStorageBean userStorageBean2) {
        userStorageBean = userStorageBean2;
    }

    public final void start() {
        syncApiSubscriber.start();
        SyncProgressBundle.INSTANCE.start();
    }

    public final void startAnonymousSync() {
    }

    public final void startSync() {
        prepareSync();
    }

    public final void stopNoteSync(@NotNull AccountIntentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        String account = args.getAccount();
        if (account != null) {
            RxBaseAction.execute$default(new StopNoteReplicatorAction(account), null, null, null, 7, null);
        }
    }

    public final void stopSync(@NotNull AccountIntentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        stopNoteSync(args);
    }

    public final void updateAnonymousSyncGateway(@NotNull SyncGateway gateway) {
        Intrinsics.checkNotNullParameter(gateway, "gateway");
        KSyncLogUtils.INSTANCE.m35864d(KSyncBundle.class, "AnonymousSyncGateway:" + gateway);
        if (gateway.isInValid()) {
            return;
        }
        anonymousSyncGateway = gateway;
        startAnonymousSync();
    }

    public final void updateSyncGateway(@NotNull SyncGateway gateway) {
        Intrinsics.checkNotNullParameter(gateway, "gateway");
        KSyncLogUtils.INSTANCE.m35864d(KSyncBundle.class, "syncGateway:" + gateway);
        if (gateway.isInValid()) {
            return;
        }
        syncGateway = gateway;
    }

    public final void updateUserStorage(boolean recalculate) {
        new UpdateUserStorageAction().setRecalculate(recalculate).build().doOnNext(C7593a.f45143e).subscribe();
    }

    public final void useStorage(long bytes) {
        UserStorageBean userStorageBean2 = userStorageBean;
        if (userStorageBean2 == null) {
            return;
        }
        Intrinsics.checkNotNull(userStorageBean2);
        userStorageBean2.useStorage(bytes);
    }
}
