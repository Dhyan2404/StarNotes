package com.onyx.android.sdk.universal.docmanager.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.docmanager.action.ImportImageAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction;
import com.onyx.android.sdk.universal.editor.action.page.ImportImagesAsTemplateModelsAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsDoneEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageProgressEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportImageState;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b)\u0010*J\u0006\u0010\u0002\u001a\u00020\u0000J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00000\u0003H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R$\u0010\"\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/ImportImageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "disablePostEvent", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;", "importImageState", "q", "", "p", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "modelList", GoogleApiAvailabilityLight.f29016b, "r", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;", "args", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "i", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "getNoteCreateInfo", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "j", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getImportModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setImportModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "importModel", "", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "enablePostEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportImageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportImageAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportImageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1855#2,2:123\n*S KotlinDebug\n*F\n+ 1 ImportImageAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportImageAction\n*L\n99#1:123,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ImportImageAction extends RxBaseAppAction<ImportImageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ImportImageArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final NoteCreateInfo noteCreateInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public SyncNoteModel importModel;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean enablePostEvent;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportImageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8116a<T> implements Consumer {
        public C8116a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportImageAction.this.m36633o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportImageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8117b<T, R> implements Function {
        public C8117b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportImageAction> apply(@NotNull List<TemplateModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportImageAction.this.m36632n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportImageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8118c<T> implements Consumer {
        public C8118c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RxBaseAction.execute$default(new CleanupImportFailedDocumentAction(ImportImageAction.this.getEditorBundle(), ImportImageAction.this.getNoteCreateInfo().getDocumentId()), null, null, null, 7, null);
            ImportImageAction.this.m36635q(ImportImageState.ERROR);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportImageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8119d<T> implements Consumer {
        public C8119d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportImageAction.this.setImportModel(it2.getNoteModel());
            if (ImportImageAction.this.enablePostEvent) {
                EditorBundleKt.postEvent(ImportImageAction.this.getEditorBundle(), new ImportImageResultEvent(it2.getNoteModel()));
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportImageAction$e */
    /* loaded from: classes8.dex */
    public static final class C8120e<T, R> implements Function {
        public C8120e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportImageAction apply(@NotNull CreateNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportImageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportImageAction$f */
    /* loaded from: classes8.dex */
    public static final class C8121f<T, R> implements Function {
        public C8121f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportImageAction> apply(@NotNull ImportImageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportImageAction.this.m36636r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportImageAction$g */
    /* loaded from: classes8.dex */
    public static final class C8122g<T, R> implements Function {
        public C8122g() {
        }

        @NotNull
        /* renamed from: a */
        public final ImportImageAction m36643a(boolean z) {
            return ImportImageAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m36643a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportImageAction(@NotNull EditorBundle editorBundle, @NotNull ImportImageArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.noteCreateInfo = new NoteCreateInfo(args.getNoteName(), null, args.getParentId(), 0, args.getTagList(), null, null, false, 0, null, null, null, 0, 0, 16234, null);
        this.enablePostEvent = true;
    }

    /* renamed from: m */
    public static final void m36631m(ImportImageAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m36635q(ImportImageState.COMPLETE);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportImageAction> create() {
        m36635q(ImportImageState.IMPORTING);
        Observable<ImportImageAction> doOnComplete = new ImportImagesAsTemplateModelsAction(getEditorBundle(), this.args.getUriList(), this.noteCreateInfo.getDocumentId()).build().doOnNext(new C8116a()).flatMap(new C8117b()).doOnError(new C8118c<>()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.eji
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportImageAction.m36631m(ImportImageAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    @NotNull
    public final ImportImageAction disablePostEvent() {
        this.enablePostEvent = false;
        return this;
    }

    @Nullable
    public final SyncNoteModel getImportModel() {
        return this.importModel;
    }

    @NotNull
    public final NoteCreateInfo getNoteCreateInfo() {
        return this.noteCreateInfo;
    }

    /* renamed from: n */
    public final Observable<ImportImageAction> m36632n(List<TemplateModel> modelList) {
        if (modelList.isEmpty()) {
            Debug.INSTANCE.m32059w(ImportImageAction.class, "empty, import image as note fail", new Object[0]);
            Observable<ImportImageAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Iterator<T> it2 = modelList.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(this.noteCreateInfo.getPaperBeanList(), Templates.toPaperBean$default(Templates.INSTANCE, (TemplateModel) it2.next(), null, 1, null));
        }
        Observable<ImportImageAction> flatMap = new CreateNoteAction(getEditorBundle(), this.noteCreateInfo).build().doOnNext(new C8119d()).map(new C8120e()).flatMap(new C8121f());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: o */
    public final void m36633o() {
        ImportSelectedContext importSelectedContext = this.args.getImportSelectedContext();
        if (importSelectedContext == null || !importSelectedContext.isMultipleDoc()) {
            return;
        }
        disablePostEvent();
    }

    /* renamed from: p */
    public final int m36634p() {
        return this.args.getUriList().size();
    }

    /* renamed from: q */
    public final void m36635q(ImportImageState importImageState) {
        List emptyList;
        Random.Companion companion = Random.INSTANCE;
        int i = 0;
        int nextInt = companion.nextInt(0, ResManager.INSTANCE.getInteger(C8045R.integer.seek_bar_max_size));
        int m36634p = m36634p();
        if (m36634p != 0 && m36634p != 1) {
            i = companion.nextInt(0, m36634p() - 1);
        }
        EditorBundleKt.postEvent(getEditorBundle(), new ImportImageProgressEvent(importImageState, nextInt, i, m36634p(), 0, this.args.getImportSelectedContext(), this.args.getUriList(), 16, null));
        if (importImageState == ImportImageState.COMPLETE) {
            EditorBundle editorBundle = getEditorBundle();
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            EditorBundleKt.postEvent(editorBundle, new ImportDocumentsDoneEvent(emptyList));
        }
    }

    /* renamed from: r */
    public final Observable<ImportImageAction> m36636r() {
        List listOf;
        String parentUniqueId = this.noteCreateInfo.getParentUniqueId();
        if (parentUniqueId == null) {
            parentUniqueId = "";
        }
        if (parentUniqueId.length() == 0) {
            Observable<ImportImageAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(parentUniqueId);
        Observable map = new UpdateFolderCoverAction(listOf).build().map(new C8122g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setImportModel(@Nullable SyncNoteModel syncNoteModel) {
        this.importModel = syncNoteModel;
    }
}
