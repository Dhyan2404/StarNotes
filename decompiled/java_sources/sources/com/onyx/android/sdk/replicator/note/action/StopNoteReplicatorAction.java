package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.replicator.ReplicatorBundle;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.onyx.android.sdk.replicator.replicator.action.StopDocReplicatorAction;
import com.onyx.android.sdk.replicator.replicator.action.StopTreeReplicatorAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/StopNoteReplicatorAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6997f.f39671c, Constants.STRING_SIG, "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", Constant.TAG_USER_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StopNoteReplicatorAction extends BaseNoteSyncAction<StopNoteReplicatorAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String userId;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StopNoteReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7724a<T, R> implements Function {
        public C7724a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StopNoteReplicatorAction> apply(@NotNull ReplicatorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StopNoteReplicatorAction.this.m35136l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StopNoteReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7725b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteReplicatorManager f45484e;

        public C7725b(NoteReplicatorManager noteReplicatorManager) {
            this.f45484e = noteReplicatorManager;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StopDocReplicatorAction> apply(@NotNull StopTreeReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StopDocReplicatorAction(this.f45484e).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StopNoteReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7726c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteReplicatorManager f45485e;

        public C7726c(NoteReplicatorManager noteReplicatorManager) {
            this.f45485e = noteReplicatorManager;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplicatorManager apply(@NotNull StopDocReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f45485e.postProgress();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StopNoteReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7727d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteReplicatorManager f45486e;

        public C7727d(NoteReplicatorManager noteReplicatorManager) {
            this.f45486e = noteReplicatorManager;
        }

        /* renamed from: a */
        public final void m35140a(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f45486e.close();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35140a((ReplicatorManager) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StopNoteReplicatorAction$e */
    /* loaded from: classes8.dex */
    public static final class C7728e<T, R> implements Function {
        public C7728e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StopNoteReplicatorAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StopNoteReplicatorAction.this;
        }
    }

    public StopNoteReplicatorAction(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StopNoteReplicatorAction> create() {
        Observable flatMap = ReplicatorBundle.INSTANCE.createObservable().flatMap(new C7724a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    /* renamed from: l */
    public final Observable<StopNoteReplicatorAction> m35136l() {
        NoteReplicatorManager noteReplicatorManager = ReplicatorBundle.INSTANCE.getNoteReplicatorManager(this.userId);
        if (noteReplicatorManager == null) {
            Observable<StopNoteReplicatorAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<StopNoteReplicatorAction> map = new StopTreeReplicatorAction(noteReplicatorManager).build().flatMap(new C7725b(noteReplicatorManager)).observeOn(noteReplicatorManager.getObserveOn()).map(new C7726c(noteReplicatorManager)).map(new C7727d(noteReplicatorManager)).map(new C7728e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }
}
