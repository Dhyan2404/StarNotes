package com.onyx.android.sdk.replicator.replicator.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.replicator.event.StartNoteReplicatorEvent;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.note.NoteTreeReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;", "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "", C6997f.f39671c, "Ljava/util/List;", "getDocIdList", "()Ljava/util/List;", "docIdList", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartNoteReplicatorAction extends BaseSyncAction<NoteTreeReplicator> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> docIdList;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StartNoteReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7887a<T, R> implements Function {

        /* renamed from: e */
        public static final C7887a<T, R> f46261e = new C7887a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AccountDataBundle> apply(@NotNull StartNoteReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.loadOnyxAccountObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StartNoteReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7888b<T> implements Predicate {

        /* renamed from: e */
        public static final C7888b<T> f46262e = new C7888b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.isAlreadyLogin();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StartNoteReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7889c<T> implements Predicate {
        public C7889c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return NetworkUtils.INSTANCE.isNetworkConnected(StartNoteReplicatorAction.this.getAppContext());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StartNoteReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7890d<T, R> implements Function {
        public C7890d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteTreeReplicator> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartNoteReplicatorAction.this.m35758l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StartNoteReplicatorAction$e */
    /* loaded from: classes8.dex */
    public static final class C7891e<T, R> implements Function {

        /* renamed from: e */
        public static final C7891e<T, R> f46265e = new C7891e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteTreeReplicator apply(@NotNull NoteReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getNoteTreeReplicator();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StartNoteReplicatorAction$f */
    /* loaded from: classes8.dex */
    public static final class C7892f<T> implements Consumer {
        public C7892f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteTreeReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.post(new StartNoteReplicatorEvent(StartNoteReplicatorAction.this.getDocIdList()).setTriggerSource(2));
        }
    }

    public StartNoteReplicatorAction(@NotNull List<String> docIdList) {
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        this.docIdList = docIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<NoteTreeReplicator> create() {
        Observable<NoteTreeReplicator> flatMap = Observable.just(this).flatMap(C7887a.f46261e).filter(C7888b.f46262e).filter(new C7889c()).flatMap(new C7890d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final List<String> getDocIdList() {
        return this.docIdList;
    }

    /* renamed from: l */
    public final Observable<NoteTreeReplicator> m35758l() {
        Observable<NoteTreeReplicator> doOnNext = ReplicatorBundle.INSTANCE.getCurNoteRepManagerObservable().map(C7891e.f46265e).doOnNext(new C7892f());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
