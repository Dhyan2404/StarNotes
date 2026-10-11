package com.onyx.android.sdk.universal.editor.action.backup;

import com.blankj.utilcode.util.LogUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.backup.LocalRestoreAction;
import com.onyx.android.sdk.universal.editor.action.p126import.ImportFromNoteFileAction;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.note.LocalRestoreCompleteEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.RestoreContext;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.Iterator;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R'\u0010\u0017\u001a\u0015\u0012\f\u0012\n \u0013*\u0004\u0018\u00010\u00020\u00020\u0012¢\u0006\u0002\b\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;", "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "throwable", "", "q", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;", "restoreContext", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", C6999h.f39688c, "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "progressSubject", "Lio/reactivex/rxjava3/disposables/Disposable;", "i", "Lio/reactivex/rxjava3/disposables/Disposable;", "localImportDisposable", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLocalRestoreAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalRestoreAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1#2:57\n1855#3,2:58\n*S KotlinDebug\n*F\n+ 1 LocalRestoreAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction\n*L\n50#1:58,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LocalRestoreAction extends RxBaseBackupAction<ProgressInfo> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RestoreContext restoreContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ReplaySubject<ProgressInfo> progressSubject;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Disposable localImportDisposable;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalRestoreAction$a */
    /* loaded from: classes8.dex */
    public static final class C8505a<T> implements Consumer {
        public C8505a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LocalRestoreAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LocalRestoreAction.this.checkInternalFreeSpace();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalRestoreAction$b */
    /* loaded from: classes8.dex */
    public static final class C8506b<T, R> implements Function {
        public C8506b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull LocalRestoreAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LocalRestoreAction.this.m37332r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.backup.LocalRestoreAction$c */
    /* loaded from: classes8.dex */
    public static final class C8507c<T> implements Consumer {
        public C8507c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LocalRestoreAction.this.m37331q(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalRestoreAction(@NotNull EditorBundle editorBundle, @NotNull RestoreContext restoreContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(restoreContext, "restoreContext");
        this.editorBundle = editorBundle;
        this.restoreContext = restoreContext;
        ReplaySubject<ProgressInfo> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.progressSubject = create;
    }

    /* renamed from: o */
    public static final void m37329o(LocalRestoreAction this$0, LocalRestoreCompleteEvent event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        EditorBundleKt.postEvent(this$0.editorBundle, event);
    }

    /* renamed from: p */
    public static final void m37330p(LocalRestoreAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Disposable disposable = this$0.localImportDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ProgressInfo> create() {
        final LocalRestoreCompleteEvent localRestoreCompleteEvent = new LocalRestoreCompleteEvent(this.restoreContext);
        this.localImportDisposable = Observable.just(this).observeOn(getBackupIoObserveOn()).doOnNext(new C8505a()).concatMap(new C8506b()).doOnError(new C8507c()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.r0j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LocalRestoreAction.m37329o(LocalRestoreAction.this, localRestoreCompleteEvent);
            }
        }).subscribe();
        Observable<ProgressInfo> doOnDispose = this.progressSubject.doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.s0j
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                LocalRestoreAction.m37330p(LocalRestoreAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    /* renamed from: q */
    public final void m37331q(Throwable throwable) {
        String stackTraceToString;
        String simpleName = LocalRestoreAction.class.getSimpleName();
        StringBuilder sb = new StringBuilder();
        sb.append("local restore error e:");
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(throwable);
        sb.append(stackTraceToString);
        LogUtils.file(simpleName, sb.toString());
        this.restoreContext.setThrowable(throwable);
    }

    /* renamed from: r */
    public final Observable<ProgressInfo> m37332r() {
        Iterator<T> it2 = this.restoreContext.getNoteImportList().iterator();
        while (it2.hasNext()) {
            ((NoteImportArgs) it2.next()).setUseOriginParentId(true);
        }
        return new ImportFromNoteFileAction(this.editorBundle, this.restoreContext.getNoteImportList(), false).build();
    }
}
