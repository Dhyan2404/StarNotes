package com.onyx.android.sdk.universal.editor.api;

import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.AutoBackupTask;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction;
import com.onyx.android.sdk.universal.docmanager.action.ImportImageAction;
import com.onyx.android.sdk.universal.docmanager.action.ImportPdfAction;
import com.onyx.android.sdk.universal.editor.AutoBackupTaskBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.backup.RetryAutoBackupAction;
import com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction;
import com.onyx.android.sdk.universal.editor.action.doc.LoadNoteModelAction;
import com.onyx.android.sdk.universal.editor.action.extension.RenderRequestManagerKt;
import com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexInBackgroundAction;
import com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.events.app.ActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.CloseDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsDoneEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportPdfEvent;
import com.onyx.android.sdk.universal.editor.events.app.OpenDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.SaveDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.app.StartActivateDocumentEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartAutoBackupEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.AutoBackupContext;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b4\u00105J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0015H\u0007J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00130\u001e2\u0006\u0010\u0005\u001a\u00020\u0013H\u0002J\u001e\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u001e2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u0013H\u0002R*\u0010+\u001a\u0015\u0012\f\u0012\n %*\u0004\u0018\u00010\u00130\u00130$¢\u0006\u0002\b&8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R$\u00103\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;", "Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;", "", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportPdfEvent;", NotificationCompat.CATEGORY_EVENT, "onImportPdfEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsEvent;", "onImportDocumentsEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;", "onImportDocumentsDoneEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/OpenDocumentEvent;", "onOpenDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageEvent;", "onImportImageEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;", "onSaveDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartAutoBackupEvent;", "onStartAutoBackupEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;", "onStartActivateDocumentEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/CloseDocumentEvent;", "onCloseDocumentEvent", "", EditorConstants.ARGS_DOC_ID, "e", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;", "autoBackupContext", C4921e.f26537n, "Lio/reactivex/rxjava3/core/Observable;", "d", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncModel", "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;", "j", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "a", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "getActivateDocumentSubject", "()Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "activateDocumentSubject", "Lio/reactivex/rxjava3/disposables/Disposable;", "b", "Lio/reactivex/rxjava3/disposables/Disposable;", "getActivateDocumentDisposeable", "()Lio/reactivex/rxjava3/disposables/Disposable;", "setActivateDocumentDisposeable", "(Lio/reactivex/rxjava3/disposables/Disposable;)V", "activateDocumentDisposeable", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DocListManagerApiSubscriber extends BaseApiSubscriber {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BehaviorSubject<StartActivateDocumentEvent> activateDocumentSubject;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Disposable activateDocumentDisposeable;

    /* renamed from: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$a */
    /* loaded from: classes8.dex */
    public static final class C10295a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ StartActivateDocumentEvent f51266f;

        public C10295a(StartActivateDocumentEvent startActivateDocumentEvent) {
            this.f51266f = startActivateDocumentEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SyncNoteModel> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteModelAction(DocListManagerApiSubscriber.this.getEditorBundle(), this.f51266f.getDocId()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$b */
    /* loaded from: classes8.dex */
    public static final class C10297b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ StartActivateDocumentEvent f51268f;

        public C10297b(StartActivateDocumentEvent startActivateDocumentEvent) {
            this.f51268f = startActivateDocumentEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull SyncNoteModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return DocListManagerApiSubscriber.this.m40571j(model, this.f51268f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$c */
    /* loaded from: classes8.dex */
    public static final class C10298c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ StartActivateDocumentEvent f51269e;

        public C10298c(StartActivateDocumentEvent startActivateDocumentEvent) {
            this.f51269e = startActivateDocumentEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartActivateDocumentEvent apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f51269e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$d */
    /* loaded from: classes8.dex */
    public static final class C10299d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f51271f;

        /* renamed from: g */
        public final /* synthetic */ StartActivateDocumentEvent f51272g;

        public C10299d(SyncNoteModel syncNoteModel, StartActivateDocumentEvent startActivateDocumentEvent) {
            this.f51271f = syncNoteModel;
            this.f51272g = startActivateDocumentEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(DocListManagerApiSubscriber.this.getEditorBundle(), new ActivateDocumentEvent(this.f51271f, this.f51272g.getPageId(), this.f51272g.getUpdateTab()));
        }
    }

    public DocListManagerApiSubscriber() {
        BehaviorSubject<StartActivateDocumentEvent> create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.activateDocumentSubject = create;
        this.activateDocumentDisposeable = RxjavaKt.subscribeWithDefault$default(RxjavaKt.concatMapIfLast(create, new Function1<StartActivateDocumentEvent, Observable<StartActivateDocumentEvent>>() { // from class: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<StartActivateDocumentEvent> invoke(StartActivateDocumentEvent startActivateDocumentEvent) {
                DocListManagerApiSubscriber docListManagerApiSubscriber = DocListManagerApiSubscriber.this;
                Intrinsics.checkNotNull(startActivateDocumentEvent);
                return docListManagerApiSubscriber.m40568d(startActivateDocumentEvent);
            }
        }), null, null, null, 7, null);
    }

    /* renamed from: g */
    public static final void m40565g(DocListManagerApiSubscriber this$0, SaveDocumentAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m40569e(EditorBundleKt.docId(this$0.getEditorBundle()));
    }

    /* renamed from: h */
    public static final void m40566h(DocListManagerApiSubscriber this$0, SaveDocumentAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m40570f(EditorBundleKt.docId(this$0.getEditorBundle()));
    }

    /* renamed from: i */
    public static final void m40567i(SaveDocumentEvent event, final DocListManagerApiSubscriber this$0) {
        Intrinsics.checkNotNullParameter(event, "$event");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BooleanKt.takeIfTrue(Boolean.valueOf(event.getDestroy()), new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$onSaveDocumentEvent$5$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                DocListManagerApiSubscriber.this.getEditorBundle().destroy();
            }
        });
    }

    /* renamed from: d */
    public final Observable<StartActivateDocumentEvent> m40568d(final StartActivateDocumentEvent event) {
        String docId = EditorBundleKt.docId(getEditorBundle());
        RenderRequestManagerKt.safeClearAllSliceCache(getEditorBundle());
        Observable just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Observable map = RxjavaKt.flatMapIf(just, new Function1<DocListManagerApiSubscriber, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$activateDocument$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DocListManagerApiSubscriber it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(StartActivateDocumentEvent.this.getSaveBeforeActivate());
            }
        }, new DocListManagerApiSubscriber$activateDocument$2(this, docId)).flatMap(new C10295a(event)).flatMap(new C10297b(event)).map(new C10298c(event));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, event);
    }

    @Override // com.onyx.android.sdk.universal.editor.api.BaseApiSubscriber
    public void destroy() {
        super.destroy();
        Disposable disposable = this.activateDocumentDisposeable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.activateDocumentDisposeable = null;
    }

    /* renamed from: e */
    public final void m40569e(String docId) {
        if (StringKt.isEmpty(docId)) {
            Debug.INSTANCE.m32035d(DocListManagerApiSubscriber.class, "docId is null, can't auto backup", new Object[0]);
            return;
        }
        MMKVBackup mMKVBackup = MMKVBackup.INSTANCE;
        AutoBackupTaskBundle.INSTANCE.insertAutoBackupTask(new AutoBackupTask(docId, mMKVBackup.getLocalBackupAutoOption().get(), mMKVBackup.getCloudBackupAutoOption().get()));
    }

    /* renamed from: f */
    public final void m40570f(String docId) {
        List<String> mutableListOf;
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        StartReplicatorBean startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
        startReplicatorBean.setSyncAll(false);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(docId);
        startReplicatorBean.setSyncDocIdList(mutableListOf);
        OnyxErrorHandler.subscribeWithErrorHandler$default(OnyxErrorHandler.INSTANCE, new StartNoteDocSyncAction(startReplicatorBean, noteCloudSyncCheckArgs).build(), null, null, 3, null);
    }

    @Nullable
    public final Disposable getActivateDocumentDisposeable() {
        return this.activateDocumentDisposeable;
    }

    @NotNull
    public final BehaviorSubject<StartActivateDocumentEvent> getActivateDocumentSubject() {
        return this.activateDocumentSubject;
    }

    /* renamed from: j */
    public final Observable<OpenDocumentAction> m40571j(final SyncNoteModel syncModel, StartActivateDocumentEvent event) {
        OpenDocArgs openDocArgs = (OpenDocArgs) AnyKt.getOrElse(event.getOpenDocArgs(), new Function0<OpenDocArgs>() { // from class: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$openDocument$openDocArgs$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final OpenDocArgs invoke() {
                return OpenDocArgs.INSTANCE.createFrom(SyncNoteModel.this);
            }
        });
        if (StringKt.isNotEmpty(event.getPageId()) && StringKt.isEmpty(openDocArgs.getPageId())) {
            openDocArgs.setPageId(event.getPageId());
        }
        Observable<OpenDocumentAction> doOnNext = new OpenDocumentAction(getEditorBundle(), openDocArgs).build().doOnNext(new C10299d(syncModel, event));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: k */
    public final void m40572k(AutoBackupContext autoBackupContext) {
        RxBaseAction.execute$default(new RetryAutoBackupAction(getEditorBundle(), autoBackupContext), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCloseDocumentEvent(@NotNull CloseDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new CloseDocumentAction(getEditorBundle(), event.getSave(), event.getCleanContentView()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportDocumentsDoneEvent(@NotNull ImportDocumentsDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        BuildTextIndexInBackgroundAction.INSTANCE.pauseTask(false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportDocumentsEvent(@NotNull ImportDocumentsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        BuildTextIndexInBackgroundAction.INSTANCE.pauseTask(true);
        RxBaseAction.execute$default(new ImportDocumentsAction(getEditorBundle(), event.getImportArgs()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportImageEvent(@NotNull ImportImageEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new ImportImageAction(getEditorBundle(), event.getArgs()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onImportPdfEvent(@NotNull ImportPdfEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ImportPdfAction importPdfAction = new ImportPdfAction(getEditorBundle());
        importPdfAction.setUriList(event.getUriList());
        RxBaseAction.execute$default(importPdfAction, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOpenDocumentEvent(@NotNull OpenDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new OpenDocumentAction(getEditorBundle(), event.getOpenDocArgs()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveDocumentEvent(@NotNull final SaveDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Observable<SaveDocumentAction> observeOn = new SaveDocumentAction(getEditorBundle()).build().observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(observeOn, new Function1<SaveDocumentAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$onSaveDocumentEvent$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SaveDocumentAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getIsDirty() && SaveDocumentEvent.this.getDestroy());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.o7f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocListManagerApiSubscriber.m40565g(DocListManagerApiSubscriber.this, (SaveDocumentAction) obj);
            }
        }), new Function1<SaveDocumentAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$onSaveDocumentEvent$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SaveDocumentAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getIsDirty() && SaveDocumentEvent.this.getDestroy());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.p7f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocListManagerApiSubscriber.m40566h(DocListManagerApiSubscriber.this, (SaveDocumentAction) obj);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.q7f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocListManagerApiSubscriber.m40567i(SaveDocumentEvent.this, this);
            }
        }).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartActivateDocumentEvent(@NotNull StartActivateDocumentEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RenderRequestManagerKt.safeClearAllSliceCache(getEditorBundle());
        this.activateDocumentSubject.onNext(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartAutoBackupEvent(@NotNull StartAutoBackupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40569e(event.getDocId());
    }

    public final void setActivateDocumentDisposeable(@Nullable Disposable disposable) {
        this.activateDocumentDisposeable = disposable;
    }
}
