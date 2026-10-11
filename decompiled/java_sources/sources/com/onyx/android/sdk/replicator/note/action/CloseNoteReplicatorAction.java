package com.onyx.android.sdk.replicator.note.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.replicator.ReplicatorBundle;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.onyx.android.sdk.replicator.replicator.action.CloseReplicatorManagerAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/CloseNoteReplicatorAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "noteReplicatorManagers", "l", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CloseNoteReplicatorAction extends BaseNoteSyncAction<CloseNoteReplicatorAction> {

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CloseNoteReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7669a<T, R> implements Function {

        /* renamed from: e */
        public static final C7669a<T, R> f45393e = new C7669a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseReplicatorManagerAction> apply(@NotNull ReplicatorManager o) {
            Intrinsics.checkNotNullParameter(o, "o");
            return new CloseReplicatorManagerAction(o).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CloseNoteReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7670b<T, R> implements Function {
        public C7670b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseNoteReplicatorAction apply(@NotNull CloseReplicatorManagerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseNoteReplicatorAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CloseNoteReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7671c<T, R> implements Function {
        public C7671c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseNoteReplicatorAction> apply(@NotNull ReplicatorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseNoteReplicatorAction.this.m35051l(ReplicatorBundle.INSTANCE.getNoteReplicatorManagers());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CloseNoteReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7672d<T, R> implements Function {

        /* renamed from: e */
        public static final C7672d<T, R> f45396e = new C7672d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplicatorBundle apply(@NotNull CloseNoteReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReplicatorBundle.INSTANCE.clearNoteReplicatorManager();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CloseNoteReplicatorAction$e */
    /* loaded from: classes8.dex */
    public static final class C7673e<T, R> implements Function {
        public C7673e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseNoteReplicatorAction apply(@NotNull ReplicatorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseNoteReplicatorAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloseNoteReplicatorAction> create() {
        ReplicatorBundle replicatorBundle = ReplicatorBundle.INSTANCE;
        Observable<CloseNoteReplicatorAction> map = replicatorBundle.createObservable().flatMap(new C7671c()).observeOn(replicatorBundle.getObserveOn()).map(C7672d.f45396e).map(new C7673e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<CloseNoteReplicatorAction> m35051l(List<? extends ReplicatorManager> noteReplicatorManagers) {
        if (noteReplicatorManagers.isEmpty()) {
            Observable<CloseNoteReplicatorAction> just = Observable.just(this);
            Intrinsics.checkNotNull(just);
            return just;
        }
        Observable<CloseNoteReplicatorAction> map = Observable.fromIterable(noteReplicatorManagers).flatMap(C7669a.f45393e).takeLast(1).map(new C7670b());
        Intrinsics.checkNotNull(map);
        return map;
    }
}
