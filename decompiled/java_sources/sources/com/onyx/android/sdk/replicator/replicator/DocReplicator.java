package com.onyx.android.sdk.replicator.replicator;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.bean.NoteDocSyncStatus;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.onyx.android.sdk.replicator.event.ComparedSyncFileEvent;
import com.onyx.android.sdk.replicator.event.DocRequestEvent;
import com.onyx.android.sdk.replicator.replicator.DocReplicator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\"\u001a\u00020\u0002¢\u0006\u0004\b@\u0010AJ\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004J\u0012\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\tH\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0016J\u0012\u0010\u0012\u001a\u00020\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0016J\b\u0010\u0013\u001a\u00020\u0000H\u0016J\u0006\u0010\u0015\u001a\u00020\u0014J\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016J\b\u0010\u001b\u001a\u00020\u0000H&J\b\u0010\u001c\u001a\u00020\u0000H&J\b\u0010\u001d\u001a\u00020\u0014H&J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u000bH\u0002R\u0014\u0010\"\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001b\u0010,\u001a\u00020)8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b&\u0010%\u001a\u0004\b*\u0010+R\"\u00102\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0011\u00106\u001a\u0002038F¢\u0006\u0006\u001a\u0004\b4\u00105R\u0011\u0010:\u001a\u0002078F¢\u0006\u0006\u001a\u0004\b8\u00109R\u0011\u0010=\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0013\u0010?\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b>\u0010<¨\u0006B"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;", "", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "getReplicatorInfo", "Lio/reactivex/rxjava3/core/Observable;", "createObservable", "createObservableWithoutPost", "Lcom/onyx/android/sdk/replicator/event/ComparedSyncFileEvent;", NotificationCompat.CATEGORY_EVENT, "", "onComparedSyncFileEvent", "", "getDocumentId", "postDocSyncProgressImpl", "waitReplicator", Constants.RESET, "stop", C4921e.f26528e, "post", "resumeReplicator", "", "startUserDataReplicator", "", TypedValues.CycleType.S_WAVE_OFFSET, "limit", "", "loadEnableShapeIdList", gon.f71290o0, "closeReplicator", "tryCloseReplicator", "requestId", "d", "a", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "replicatorInfo", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "b", "Lkotlin/Lazy;", "c", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", Constants.HASIDCALL_INDEX_SIG, "getDebugLog", Constants.BOOLEAN_VALUE_SIG, "setDebugLog", "(Z)V", "debugLog", "Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;", "getSyncStatus", "()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;", CouchFieldKey.KEY_SYNC_STATUS, "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "observeOn", "getDbId", "()Ljava/lang/String;", CouchFieldKey.KEY_DB_ID, "getCBUserId", "cBUserId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class DocReplicator {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ReplicatorInfo replicatorInfo;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy rxScheduler;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Lazy eventBusHolder;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean debugLog;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DocReplicator$a */
    /* loaded from: classes8.dex */
    public static final class C7820a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f46158f;

        public C7820a(String str) {
            this.f46158f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocReplicator.this.post(new DocRequestEvent(this.f46158f).setStatus(1));
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.DocReplicator$b */
    /* loaded from: classes8.dex */
    public static final class C7821b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f46160f;

        public C7821b(String str) {
            this.f46160f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocReplicator.this.m35652d(this.f46160f);
        }
    }

    public DocReplicator(@NotNull ReplicatorInfo replicatorInfo) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        this.replicatorInfo = replicatorInfo;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.replicator.replicator.DocReplicator$rxScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        this.rxScheduler = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<EventBusHolder>() { // from class: com.onyx.android.sdk.replicator.replicator.DocReplicator$eventBusHolder$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EventBusHolder invoke() {
                return new EventBusHolder(null, 1, null);
            }
        });
        this.eventBusHolder = lazy2;
    }

    /* renamed from: b */
    public static final void m35650b(DocReplicator this$0, String requestId) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(requestId, "$requestId");
        this$0.m35652d(requestId);
    }

    /* renamed from: c */
    public final RxScheduler m35651c() {
        return (RxScheduler) this.rxScheduler.getValue();
    }

    @NotNull
    public abstract DocReplicator closeReplicator() throws Exception;

    @NotNull
    public final Observable<DocReplicator> createObservable() {
        final String rawUUID = UUIDUtils.INSTANCE.rawUUID();
        Observable<DocReplicator> doOnComplete = Observable.just(this).observeOn(getObserveOn()).doOnSubscribe(new C7820a(rawUUID)).doOnError(new C7821b(rawUUID)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.a9f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocReplicator.m35650b(DocReplicator.this, rawUUID);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    @NotNull
    public final Observable<DocReplicator> createObservableWithoutPost() {
        Observable<DocReplicator> observeOn = Observable.just(this).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: d */
    public final void m35652d(String requestId) {
        post(new DocRequestEvent(requestId).setStatus(4));
    }

    @Nullable
    public final String getCBUserId() {
        return this.replicatorInfo.getUserId();
    }

    @NotNull
    public final String getDbId() {
        return CouchUtils.INSTANCE.dbFullName(getCBUserId(), getDocumentId());
    }

    public final boolean getDebugLog() {
        return this.debugLog;
    }

    @NotNull
    public String getDocumentId() {
        return "";
    }

    @NotNull
    public final EventBusHolder getEventBusHolder() {
        return (EventBusHolder) this.eventBusHolder.getValue();
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return m35651c().getObserveOn();
    }

    @NotNull
    public final ReplicatorInfo getReplicatorInfo() {
        return this.replicatorInfo;
    }

    @NotNull
    public final NoteDocSyncStatus getSyncStatus() {
        return this.replicatorInfo.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_SYNC_STATUS java.lang.String();
    }

    @NotNull
    public final List<String> loadEnableShapeIdList(int offset, int limit) {
        return new ArrayList();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onComparedSyncFileEvent(@Nullable ComparedSyncFileEvent event) {
        getSyncStatus().setSyncCloudFileStatus(1);
    }

    public void post(@Nullable Object o) {
        getEventBusHolder().post(o);
    }

    public void postDocSyncProgressImpl() {
    }

    public void reset() {
    }

    @NotNull
    public DocReplicator resumeReplicator() throws Exception {
        return this;
    }

    public final void setDebugLog(boolean z) {
        this.debugLog = z;
    }

    @NotNull
    public abstract DocReplicator start() throws Exception;

    public final boolean startUserDataReplicator() throws Exception {
        return false;
    }

    public void stop() {
    }

    public abstract boolean tryCloseReplicator() throws Exception;

    public void waitReplicator() {
    }
}
