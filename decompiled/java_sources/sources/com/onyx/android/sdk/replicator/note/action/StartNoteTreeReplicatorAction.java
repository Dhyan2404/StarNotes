package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", "noteReplicatorManager", gon.f71290o0, "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "startReplicatorBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartNoteTreeReplicatorAction extends BaseNoteSyncAction<StartNoteTreeReplicatorAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StartReplicatorBean startReplicatorBean;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteTreeReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7712a<T, R> implements Function {
        public C7712a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartNoteTreeReplicatorAction> apply(@NotNull NoteReplicatorManager o) {
            Intrinsics.checkNotNullParameter(o, "o");
            return StartNoteTreeReplicatorAction.this.start(o);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteTreeReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7713b<T> implements Consumer {

        /* renamed from: e */
        public static final C7713b<T> f45466e = new C7713b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.start();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteTreeReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7714c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteReplicatorManager f45467e;

        /* renamed from: f */
        public final /* synthetic */ StartNoteTreeReplicatorAction f45468f;

        public C7714c(NoteReplicatorManager noteReplicatorManager, StartNoteTreeReplicatorAction startNoteTreeReplicatorAction) {
            this.f45467e = noteReplicatorManager;
            this.f45468f = startNoteTreeReplicatorAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f45467e.getNoteTreeReplicator().startReplicator(this.f45468f.startReplicatorBean);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartNoteTreeReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7715d<T, R> implements Function {
        public C7715d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartNoteTreeReplicatorAction apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartNoteTreeReplicatorAction.this;
        }
    }

    public StartNoteTreeReplicatorAction(@NotNull StartReplicatorBean startReplicatorBean) {
        Intrinsics.checkNotNullParameter(startReplicatorBean, "startReplicatorBean");
        this.startReplicatorBean = startReplicatorBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartNoteTreeReplicatorAction> create() {
        Observable flatMap = getCurNoteRepManagerObservable().flatMap(new C7712a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public final Observable<StartNoteTreeReplicatorAction> start(NoteReplicatorManager noteReplicatorManager) {
        Observable map = noteReplicatorManager.createObservable().doOnNext(C7713b.f45466e).observeOn(noteReplicatorManager.getNoteTreeReplicator().getObserveOn()).doOnNext(new C7714c(noteReplicatorManager, this)).map(new C7715d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
