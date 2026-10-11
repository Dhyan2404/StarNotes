package com.onyx.android.sdk.replicator.note.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/StartUserDataReplicatorAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", gon.f71290o0, "noteReplicatorManager", "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StartUserDataReplicatorAction extends BaseNoteSyncAction<StartUserDataReplicatorAction> {

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartUserDataReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7720a<T, R> implements Function {
        public C7720a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartUserDataReplicatorAction> apply(@NotNull NoteReplicatorManager o) {
            Intrinsics.checkNotNullParameter(o, "o");
            return StartUserDataReplicatorAction.this.start(o);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartUserDataReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7721b<T> implements Consumer {

        /* renamed from: e */
        public static final C7721b<T> f45479e = new C7721b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.start();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartUserDataReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7722c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteReplicatorManager f45480e;

        public C7722c(NoteReplicatorManager noteReplicatorManager) {
            this.f45480e = noteReplicatorManager;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f45480e.getNoteTreeReplicator().startDataReplicator();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartUserDataReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7723d<T, R> implements Function {
        public C7723d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartUserDataReplicatorAction apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartUserDataReplicatorAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartUserDataReplicatorAction> create() {
        Observable flatMap = getCurNoteRepManagerObservable().flatMap(new C7720a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final Observable<StartUserDataReplicatorAction> start(NoteReplicatorManager noteReplicatorManager) {
        Observable map = noteReplicatorManager.createObservable().doOnNext(C7721b.f45479e).observeOn(noteReplicatorManager.getNoteTreeReplicator().getObserveOn()).doOnNext(new C7722c(noteReplicatorManager)).map(new C7723d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
