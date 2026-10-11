package com.onyx.android.sdk.replicator.replicator;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.ReplicatorArgs;
import com.onyx.android.sdk.replicator.message.MessageReplicateArgs;
import com.onyx.android.sdk.replicator.message.MessageReplicator;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.note.NoteTreeReplicator;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b4\u00105J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0000J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0014R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0014R \u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0014R \u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0014R \u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001e0\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u0014R \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001e0\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u0014R \u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u0014R\u0011\u0010(\u001a\u00020%8F¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0017\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00170)8F¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0017\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028F¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0014\u00101\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u00100R\u0014\u00103\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u00102¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;", "", "Lio/reactivex/rxjava3/core/Observable;", "createObservable", "", Constant.TAG_USER_ID, "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", "getNoteReplicatorManager", "clearNoteReplicatorManager", "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;", "args", "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;", "getMessageReplicator", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "a", "Lkotlin/Lazy;", "b", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler", "", "Ljava/util/Map;", "noteReplicatorManagerMap", "", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "c", "readerReplicatorManagerMap", "d", "groupReplicatorManagerMap", "e", "calendarReplicatorManagerMap", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", C6997f.f39671c, "appDataReplicatorMap", C6998g.f39679a, "configReplicatorMap", C6999h.f39688c, "messageReplicatorMap", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "observeOn", "", "getNoteReplicatorManagers", "()Ljava/util/List;", "noteReplicatorManagers", "getCurNoteRepManagerObservable", "()Lio/reactivex/rxjava3/core/Observable;", "curNoteRepManagerObservable", "()Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", "curNoteReplicatorManager", "()Ljava/lang/String;", "syncUserId", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReplicatorBundle {

    @NotNull
    public static final ReplicatorBundle INSTANCE = new ReplicatorBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy rxScheduler;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, NoteReplicatorManager> noteReplicatorManagerMap;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, ReplicatorManager> readerReplicatorManagerMap;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, ReplicatorManager> groupReplicatorManagerMap;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, ReplicatorManager> calendarReplicatorManagerMap;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, BaseReplicator> appDataReplicatorMap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, BaseReplicator> configReplicatorMap;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, MessageReplicator> messageReplicatorMap;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.ReplicatorBundle$a */
    /* loaded from: classes8.dex */
    public static final class C7822a<T, R> implements Function {

        /* renamed from: e */
        public static final C7822a<T, R> f46169e = new C7822a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteReplicatorManager apply(@NotNull ReplicatorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReplicatorBundle.INSTANCE.m35655a();
        }
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.replicator.replicator.ReplicatorBundle$rxScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        rxScheduler = lazy;
        noteReplicatorManagerMap = new LinkedHashMap();
        readerReplicatorManagerMap = new LinkedHashMap();
        groupReplicatorManagerMap = new LinkedHashMap();
        calendarReplicatorManagerMap = new LinkedHashMap();
        appDataReplicatorMap = new LinkedHashMap();
        configReplicatorMap = new LinkedHashMap();
        messageReplicatorMap = new LinkedHashMap();
    }

    /* renamed from: a */
    public final NoteReplicatorManager m35655a() {
        String m35657c = m35657c();
        NoteReplicatorManager noteReplicatorManager = getNoteReplicatorManager(m35657c);
        if (noteReplicatorManager != null) {
            return noteReplicatorManager;
        }
        NoteReplicatorManager noteReplicatorManager2 = new NoteReplicatorManager(new NoteTreeReplicator(KSyncBundle.INSTANCE.getDbProviderBundle(), new ReplicatorArgs(m35657c)));
        noteReplicatorManagerMap.put(m35657c, noteReplicatorManager2);
        return noteReplicatorManager2;
    }

    /* renamed from: b */
    public final RxScheduler m35656b() {
        return (RxScheduler) rxScheduler.getValue();
    }

    /* renamed from: c */
    public final String m35657c() {
        return AccountDataBundle.INSTANCE.getSyncUserId();
    }

    @NotNull
    public final ReplicatorBundle clearNoteReplicatorManager() {
        noteReplicatorManagerMap.clear();
        return this;
    }

    @NotNull
    public final Observable<ReplicatorBundle> createObservable() {
        Observable<ReplicatorBundle> observeOn = Observable.just(this).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<NoteReplicatorManager> getCurNoteRepManagerObservable() {
        Observable map = createObservable().map(C7822a.f46169e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final MessageReplicator getMessageReplicator(@NotNull MessageReplicateArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        String cacheKey = args.getCacheKey();
        Map<String, MessageReplicator> map = messageReplicatorMap;
        if (!map.containsKey(cacheKey)) {
            map.put(cacheKey, new MessageReplicator(args));
        }
        MessageReplicator messageReplicator = map.get(cacheKey);
        Intrinsics.checkNotNull(messageReplicator);
        return messageReplicator;
    }

    @Nullable
    public final NoteReplicatorManager getNoteReplicatorManager(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return noteReplicatorManagerMap.get(userId);
    }

    @NotNull
    public final List<ReplicatorManager> getNoteReplicatorManagers() {
        List<ReplicatorManager> list;
        list = CollectionsKt___CollectionsKt.toList(noteReplicatorManagerMap.values());
        return list;
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return m35656b().getObserveOn();
    }
}
