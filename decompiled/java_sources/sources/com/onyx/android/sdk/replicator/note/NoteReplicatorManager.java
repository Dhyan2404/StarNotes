package com.onyx.android.sdk.replicator.note;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.onyx.android.sdk.replicator.event.DataSyncProgressEvent;
import com.onyx.android.sdk.replicator.event.NoteDocSyncFinishEvent;
import com.onyx.android.sdk.replicator.event.PullUserDataEvent;
import com.onyx.android.sdk.replicator.event.StartNoteDocReplicatorEvent;
import com.onyx.android.sdk.replicator.event.TotalSyncNoteProgressEvent;
import com.onyx.android.sdk.replicator.note.action.AddNoteDocCommitPointAction;
import com.onyx.android.sdk.replicator.note.action.HandleAllNoteSyncFinishedAction;
import com.onyx.android.sdk.replicator.note.action.StartNoteTreeReplicatorAction;
import com.onyx.android.sdk.replicator.note.action.StartUserDataReplicatorAction;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPbFactory;
import com.onyx.android.sdk.replicator.replicator.DocReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.onyx.android.sdk.replicator.replicator.action.AddPendingDocReplicatorAction;
import com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAndScheduleAction;
import com.onyx.android.sdk.replicator.replicator.action.ScheduleNextDocReplicatorAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0001H\u0016J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0012H\u0007R\u0014\u0010\u0016\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "replicatorInfo", "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;", "createDocReplicator", "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", "getTreeReplicator", "postProgress", "Lio/reactivex/rxjava3/core/Observable;", "addCommitPoint", "", "onAllDocsSyncFinished", "Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;", NotificationCompat.CATEGORY_EVENT, "onDocDataSyncProgressEvent", "Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;", "onStartNoteDocReplicatorEvent", "Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;", "onDocSyncFinishEvent", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", "noteTreeReplicator", "treeReplicator", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteReplicatorManager extends ReplicatorManager {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteTreeReplicator noteTreeReplicator;

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteReplicatorManager$a */
    /* loaded from: classes8.dex */
    public static final class C7654a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ReplicatorInfo f45370e;

        public C7654a(ReplicatorInfo replicatorInfo) {
            this.f45370e = replicatorInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplicatorInfo apply(@NotNull AddNoteDocCommitPointAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f45370e;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteReplicatorManager$b */
    /* loaded from: classes8.dex */
    public static final class C7655b<T, R> implements Function {

        /* renamed from: e */
        public static final C7655b<T, R> f45371e = new C7655b<>();

        /* renamed from: a */
        public final void m35011a(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UserPbFactory.INSTANCE.exportToDBFromPB(new UserPBDataContext(null, 1, null));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35011a((ReplicatorManager) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteReplicatorManager$c */
    /* loaded from: classes8.dex */
    public static final class C7656c<T, R> implements Function {

        /* renamed from: e */
        public static final C7656c<T, R> f45372e = new C7656c<>();

        /* renamed from: a */
        public final void m35012a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            KSyncBundle.INSTANCE.getEventBusHolder().post(new PullUserDataEvent());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35012a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteReplicatorManager$d */
    /* loaded from: classes8.dex */
    public static final class C7657d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ StartNoteDocReplicatorEvent f45374f;

        public C7657d(StartNoteDocReplicatorEvent startNoteDocReplicatorEvent) {
            this.f45374f = startNoteDocReplicatorEvent;
        }

        /* renamed from: a */
        public final void m35013a(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteReplicatorManager.this.mergeStartReplicatorBean(this.f45374f.getStartReplicatorBean());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35013a((ReplicatorManager) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteReplicatorManager$e */
    /* loaded from: classes8.dex */
    public static final class C7658e<T, R> implements Function {
        public C7658e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ScheduleNextDocReplicatorAction> apply(@NotNull AddPendingDocReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ScheduleNextDocReplicatorAction(NoteReplicatorManager.this).build();
        }
    }

    public NoteReplicatorManager(@NotNull NoteTreeReplicator treeReplicator) {
        Intrinsics.checkNotNullParameter(treeReplicator, "treeReplicator");
        this.noteTreeReplicator = treeReplicator;
    }

    @Override // com.onyx.android.sdk.replicator.replicator.ReplicatorManager
    @NotNull
    public Observable<ReplicatorInfo> addCommitPoint(@NotNull ReplicatorInfo replicatorInfo) throws Exception {
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        Observable map = new AddNoteDocCommitPointAction(this.noteTreeReplicator, replicatorInfo).build().map(new C7654a(replicatorInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.replicator.replicator.ReplicatorManager
    @NotNull
    public DocReplicator createDocReplicator(@NotNull ReplicatorInfo replicatorInfo) {
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        return new NoteDocReplicator(this.noteTreeReplicator, replicatorInfo);
    }

    @Override // com.onyx.android.sdk.replicator.replicator.ReplicatorManager
    public void onAllDocsSyncFinished() {
        RxBaseAction.execute$default(new HandleAllNoteSyncFinishedAction(this), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocDataSyncProgressEvent(@NotNull DataSyncProgressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        createObservable().map(C7655b.f45371e).map(C7656c.f45372e).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDocSyncFinishEvent(@NotNull NoteDocSyncFinishEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new CloseDocReplicatorAndScheduleAction(this).setReplicatorInfo(event.getReplicatorInfo()).setSuccess(event.getIsSuccess()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartNoteDocReplicatorEvent(@NotNull StartNoteDocReplicatorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            if (event.getStartReplicatorBean().getSyncAll() && event.getStartReplicatorBean().getSyncDocIdList().isEmpty()) {
                RxBaseAction.execute$default(new StartNoteTreeReplicatorAction(event.getStartReplicatorBean()), null, null, null, 7, null);
                return;
            }
            RxBaseAction.execute$default(new StartUserDataReplicatorAction(), null, null, null, 7, null);
            createObservable().map(new C7657d(event)).subscribe();
            new AddPendingDocReplicatorAction(this, event.getStartReplicatorBean()).build().flatMap(new C7658e()).subscribe();
        }
    }

    @Override // com.onyx.android.sdk.replicator.replicator.ReplicatorManager
    @NotNull
    public ReplicatorManager postProgress() {
        KSyncBundle.INSTANCE.getEventBusHolder().post(new TotalSyncNoteProgressEvent(getProgress()));
        return this;
    }

    @Override // com.onyx.android.sdk.replicator.replicator.ReplicatorManager
    @NotNull
    /* renamed from: getTreeReplicator, reason: from getter */
    public NoteTreeReplicator getNoteTreeReplicator() {
        return this.noteTreeReplicator;
    }
}
