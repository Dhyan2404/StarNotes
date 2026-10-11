package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.note.NoteTreeReplicator;
import com.onyx.android.sdk.replicator.note.bean.SyncNoteTreeBean;
import com.onyx.android.sdk.replicator.note.request.SaveNoteTreeRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u000b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;", "noteReplicatorManager", "save", "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", "replicator", "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;", "syncNoteTreeBean", "l", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveNoteTreeAction extends BaseNoteSyncAction<SaveNoteTreeAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteTreeBean syncNoteTreeBean;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SaveNoteTreeAction$a */
    /* loaded from: classes8.dex */
    public static final class C7699a<T, R> implements Function {
        public C7699a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveNoteTreeAction> apply(@NotNull NoteReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveNoteTreeAction.this.save(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SaveNoteTreeAction$b */
    /* loaded from: classes8.dex */
    public static final class C7700b<T, R> implements Function {
        public C7700b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveNoteTreeAction apply(@NotNull NoteTreeReplicator o) {
            Intrinsics.checkNotNullParameter(o, "o");
            SaveNoteTreeAction saveNoteTreeAction = SaveNoteTreeAction.this;
            return saveNoteTreeAction.m35100l(o, saveNoteTreeAction.syncNoteTreeBean);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.SaveNoteTreeAction$c */
    /* loaded from: classes8.dex */
    public static final class C7701c<T, R> implements Function {
        public C7701c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveNoteTreeAction apply(@NotNull SaveNoteTreeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveNoteTreeAction.this;
        }
    }

    public SaveNoteTreeAction(@NotNull SyncNoteTreeBean syncNoteTreeBean) {
        Intrinsics.checkNotNullParameter(syncNoteTreeBean, "syncNoteTreeBean");
        this.syncNoteTreeBean = syncNoteTreeBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveNoteTreeAction> create() {
        Observable flatMap = getCurNoteRepManagerObservable().flatMap(new C7699a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final SaveNoteTreeAction m35100l(NoteTreeReplicator replicator, SyncNoteTreeBean syncNoteTreeBean) {
        new SaveNoteTreeRequest(replicator).setSyncNoteTreeBean(syncNoteTreeBean).execute();
        return this;
    }

    @NotNull
    public final Observable<SaveNoteTreeAction> save(@NotNull NoteReplicatorManager noteReplicatorManager) {
        Intrinsics.checkNotNullParameter(noteReplicatorManager, "noteReplicatorManager");
        Observable<SaveNoteTreeAction> map = noteReplicatorManager.getNoteTreeReplicator().createObservable().map(new C7700b()).map(new C7701c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
