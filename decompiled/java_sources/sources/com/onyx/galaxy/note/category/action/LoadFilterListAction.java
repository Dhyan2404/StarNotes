package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", "noteExtraProvider", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadFilterListAction extends BaseNoteManagementAction<List<? extends FilterInfo>> {

    /* renamed from: g, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: h, reason: from kotlin metadata */
    public NoteExtraProvider noteExtraProvider;

    /* renamed from: com.onyx.galaxy.note.category.action.LoadFilterListAction$a */
    /* loaded from: classes9.dex */
    public static final class C10863a<T, R> implements Function {
        public C10863a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull LoadFilterListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadFilterListAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadFilterListAction$b */
    /* loaded from: classes9.dex */
    public static final class C10864b<T> implements Consumer {
        public C10864b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadFilterListAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadFilterListAction$c */
    /* loaded from: classes9.dex */
    public static final class C10865c<T, R> implements Function {
        public C10865c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteExtraProvider> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadFilterListAction.this.createNoteExtraProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadFilterListAction$d */
    /* loaded from: classes9.dex */
    public static final class C10866d<T> implements Consumer {
        public C10866d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteExtraProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadFilterListAction.this.noteExtraProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadFilterListAction$e */
    /* loaded from: classes9.dex */
    public static final class C10867e<T, R> implements Function {
        public C10867e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<FilterInfo> apply(@NotNull NoteExtraProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTreeBundle.FilterManager filterManager = NoteTreeBundle.FilterManager.INSTANCE;
            NoteProvider noteProvider = LoadFilterListAction.this.noteProvider;
            NoteExtraProvider noteExtraProvider = null;
            if (noteProvider == null) {
                Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
                noteProvider = null;
            }
            NoteExtraProvider noteExtraProvider2 = LoadFilterListAction.this.noteExtraProvider;
            if (noteExtraProvider2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("noteExtraProvider");
            } else {
                noteExtraProvider = noteExtraProvider2;
            }
            return filterManager.fillList(noteProvider, noteExtraProvider);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<FilterInfo>> create() {
        Observable<List<FilterInfo>> observeOn = Observable.just(this).flatMap(new C10863a()).doOnNext(new C10864b()).flatMap(new C10865c()).doOnNext(new C10866d()).observeOn(getObserveOn()).map(new C10867e()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }
}
