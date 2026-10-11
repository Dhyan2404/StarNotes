package com.onyx.galaxy.note.common.action;

import com.onyx.android.sdk.replicator.note.p035db.AutoBackupProvider;
import com.onyx.android.sdk.replicator.note.p035db.AutoBackupTaskProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteExtraProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.SortProvider;
import com.onyx.android.sdk.universal.editor.action.common.EnsureAutoBackupProviderAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureAutoBackupTaskProviderAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteExtraProviderAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureSortProviderAction;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006J\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006J\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006J\b\u0010\u0010\u001a\u00020\u0011H\u0016¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "T", "", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "()V", "createAutoBackupProviderObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupProvider;", "createAutoBackupTaskProviderObservable", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;", "createNoteExtraProviderObservable", "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", "createNoteProviderObservable", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "createSortProviderObservable", "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", "getObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public abstract class BaseNoteManagementAction<T> extends RxBaseNoteAppAction<T> {

    /* renamed from: com.onyx.galaxy.note.common.action.BaseNoteManagementAction$a */
    /* loaded from: classes9.dex */
    public static final class C11566a<T, R> implements Function {

        /* renamed from: e */
        public static final C11566a<T, R> f55894e = new C11566a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AutoBackupProvider> apply(@NotNull BaseNoteManagementAction<T> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureAutoBackupProviderAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.BaseNoteManagementAction$b */
    /* loaded from: classes9.dex */
    public static final class C11567b<T, R> implements Function {

        /* renamed from: e */
        public static final C11567b<T, R> f55895e = new C11567b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AutoBackupTaskProvider> apply(@NotNull BaseNoteManagementAction<T> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureAutoBackupTaskProviderAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.BaseNoteManagementAction$c */
    /* loaded from: classes9.dex */
    public static final class C11568c<T, R> implements Function {

        /* renamed from: e */
        public static final C11568c<T, R> f55896e = new C11568c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteExtraProvider> apply(@NotNull BaseNoteManagementAction<T> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteExtraProviderAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.BaseNoteManagementAction$d */
    /* loaded from: classes9.dex */
    public static final class C11569d<T, R> implements Function {

        /* renamed from: e */
        public static final C11569d<T, R> f55897e = new C11569d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull BaseNoteManagementAction<T> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureNoteProviderAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.BaseNoteManagementAction$e */
    /* loaded from: classes9.dex */
    public static final class C11570e<T, R> implements Function {

        /* renamed from: e */
        public static final C11570e<T, R> f55898e = new C11570e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SortProvider> apply(@NotNull BaseNoteManagementAction<T> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new EnsureSortProviderAction().build();
        }
    }

    @NotNull
    public final Observable<AutoBackupProvider> createAutoBackupProviderObservable() {
        Observable<AutoBackupProvider> observeOn = Observable.just(this).flatMap(C11566a.f55894e).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<AutoBackupTaskProvider> createAutoBackupTaskProviderObservable() {
        Observable<AutoBackupTaskProvider> observeOn = Observable.just(this).flatMap(C11567b.f55895e).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<NoteExtraProvider> createNoteExtraProviderObservable() {
        Observable<NoteExtraProvider> observeOn = Observable.just(this).flatMap(C11568c.f55896e).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<NoteProvider> createNoteProviderObservable() {
        Observable<NoteProvider> observeOn = Observable.just(this).flatMap(C11569d.f55897e).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<SortProvider> createSortProviderObservable() {
        Observable<SortProvider> observeOn = Observable.just(this).flatMap(C11570e.f55898e).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @Override // com.onyx.galaxy.note.common.base.RxBaseNoteAppAction
    @NotNull
    public Scheduler getObserveOn() {
        return NoteTreeBundle.INSTANCE.getObserveOn();
    }
}
