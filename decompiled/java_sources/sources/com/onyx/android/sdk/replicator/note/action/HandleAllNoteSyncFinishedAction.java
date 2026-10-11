package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/HandleAllNoteSyncFinishedAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", "replicatorManager", "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "startReplicatorBean", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleAllNoteSyncFinishedAction extends BaseNoteSyncAction<HandleAllNoteSyncFinishedAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteReplicatorManager replicatorManager;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public StartReplicatorBean startReplicatorBean;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.HandleAllNoteSyncFinishedAction$a */
    /* loaded from: classes8.dex */
    public static final class C7688a<T, R> implements Function {
        public C7688a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleAllNoteSyncFinishedAction apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleAllNoteSyncFinishedAction.this.m35081l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.HandleAllNoteSyncFinishedAction$b */
    /* loaded from: classes8.dex */
    public static final class C7689b<T, R> implements Function {
        public C7689b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HandleAllNoteSyncFinishedAction> apply(@NotNull HandleAllNoteSyncFinishedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleAllNoteSyncFinishedAction.this.m35082m();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.HandleAllNoteSyncFinishedAction$c */
    /* loaded from: classes8.dex */
    public static final class C7690c<T, R> implements Function {
        public C7690c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleAllNoteSyncFinishedAction apply(@NotNull StartNoteTreeReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleAllNoteSyncFinishedAction.this;
        }
    }

    public HandleAllNoteSyncFinishedAction(@NotNull NoteReplicatorManager replicatorManager) {
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
        this.replicatorManager = replicatorManager;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleAllNoteSyncFinishedAction> create() {
        Observable<HandleAllNoteSyncFinishedAction> flatMap = this.replicatorManager.createObservable().map(new C7688a()).flatMap(new C7689b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final HandleAllNoteSyncFinishedAction m35081l() {
        this.startReplicatorBean = this.replicatorManager.detachStartReplicatorBean();
        return this;
    }

    /* renamed from: m */
    public final Observable<HandleAllNoteSyncFinishedAction> m35082m() {
        StartReplicatorBean startReplicatorBean = this.startReplicatorBean;
        if (startReplicatorBean == null) {
            Observable<HandleAllNoteSyncFinishedAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Intrinsics.checkNotNull(startReplicatorBean);
        Observable map = new StartNoteTreeReplicatorAction(startReplicatorBean).build().map(new C7690c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
