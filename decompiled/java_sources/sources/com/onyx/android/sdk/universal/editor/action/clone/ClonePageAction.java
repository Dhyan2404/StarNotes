package com.onyx.android.sdk.universal.editor.action.clone;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.replicator.note.bean.ExportPdfPagesResult;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportToNoteFileAction;
import com.onyx.android.sdk.universal.editor.action.page.ExportPdfPagesAction;
import com.onyx.android.sdk.universal.editor.bean.CloneState;
import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.ClonePageEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001cB\u001d\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u000f¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J*\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u0007H\u0002J8\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u00070\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "s", "exportFilePath", "", "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;", "exportPdfPagesResult", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Ljava/io/File;", "exportDir", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "q", "r", "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", C6999h.f39688c, "Ljava/util/List;", "clipboardArgsList", "i", "exportPageList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nClonePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClonePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1549#2:136\n1620#2,3:137\n766#2:141\n857#2,2:142\n1855#2,2:144\n1#3:140\n*S KotlinDebug\n*F\n+ 1 ClonePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction\n*L\n58#1:136\n58#1:137,3\n93#1:141\n93#1:142,2\n108#1:144,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ClonePageAction extends RxBaseAppAction<ClonePageAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<CopyPageArgs> clipboardArgsList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<String> exportPageList;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$Companion;", "", "()V", "getClonePageFileDir", "Ljava/io/File;", "getClonePageFilePath", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final File getClonePageFileDir() {
            return new File(ResManager.INSTANCE.getAppContext().getFilesDir(), SyncConstant.NOTE_PAGE_CLONE_DIR);
        }

        @NotNull
        public final String getClonePageFilePath() {
            return FileUtils.INSTANCE.combinePath(getClonePageFileDir().getAbsolutePath(), "note");
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8562a<T> implements Consumer {
        public C8562a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ClonePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ClonePageAction.this.getEditorBundle(), new ClonePageEvent(CloneState.InProgress.INSTANCE));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8563b<T, R> implements Function {
        public C8563b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull ClonePageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClonePageAction.this.m37438s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8564c<T, R> implements Function {
        public C8564c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClonePageAction apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClonePageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8565d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ PublishSubject<String> f48145e;

        public C8565d(PublishSubject<String> publishSubject) {
            this.f48145e = publishSubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48145e.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction$e */
    /* loaded from: classes8.dex */
    public static final class C8566e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ String f48147f;

        public C8566e(String str) {
            this.f48147f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull Map<String, ExportPdfPagesResult> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClonePageAction.this.m37435o(this.f48147f, it2);
        }
    }

    @SourceDebugExtension({"SMAP\nClonePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClonePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$savePagesAsPdf$3\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n3792#2:136\n4307#2,2:137\n1855#3,2:139\n*S KotlinDebug\n*F\n+ 1 ClonePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/clone/ClonePageAction$savePagesAsPdf$3\n*L\n64#1:136\n64#1:137,2\n65#1:139,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction$f */
    /* loaded from: classes8.dex */
    public static final class C8567f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ File f48148e;

        /* renamed from: f */
        public final /* synthetic */ String f48149f;

        public C8567f(File file, String str) {
            this.f48148e = file;
            this.f48149f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            File[] listFiles = this.f48148e.listFiles();
            if (listFiles != null) {
                String str = this.f48149f;
                ArrayList<File> arrayList = new ArrayList();
                for (File file : listFiles) {
                    if (!Intrinsics.areEqual(file.getPath(), str)) {
                        arrayList.add(file);
                    }
                }
                for (File file2 : arrayList) {
                    FileUtils fileUtils = FileUtils.INSTANCE;
                    Intrinsics.checkNotNull(file2);
                    fileUtils.deleteFile(file2);
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClonePageAction(@NotNull EditorBundle editorBundle, @NotNull List<CopyPageArgs> clipboardArgsList) {
        super(editorBundle);
        List<String> emptyList;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(clipboardArgsList, "clipboardArgsList");
        this.clipboardArgsList = clipboardArgsList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.exportPageList = emptyList;
    }

    /* renamed from: n */
    public static final void m37433n(ClonePageAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new ClonePageEvent(CloneState.Success.INSTANCE));
    }

    /* renamed from: p */
    public static final void m37434p(PublishSubject subject, String exportFilePath) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(exportFilePath, "$exportFilePath");
        RxjavaKt.done(subject, exportFilePath);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ClonePageAction> create() {
        if (this.clipboardArgsList.isEmpty()) {
            Observable<ClonePageAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<ClonePageAction> doFinally = Observable.just(this).doOnNext(new C8562a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C8563b()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8564c()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.cvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ClonePageAction.m37433n(ClonePageAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: o */
    public final Observable<String> m37435o(final String exportFilePath, Map<String, ExportPdfPagesResult> exportPdfPagesResult) {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        ExportToNoteFileAction exportToNoteFileAction = new ExportToNoteFileAction(getEditorBundle(), exportFilePath, this.exportPageList);
        exportToNoteFileAction.setExportFuncTypes(new int[]{6, 7, 1, 2});
        exportToNoteFileAction.setExportPdfPagesResult(exportPdfPagesResult);
        exportToNoteFileAction.setTransformReferenceShape(true);
        exportToNoteFileAction.build().doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.bvd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ClonePageAction.m37434p(PublishSubject.this, exportFilePath);
            }
        }).doOnError(new C8565d(create)).subscribe();
        return create;
    }

    /* renamed from: q */
    public final Observable<Map<String, ExportPdfPagesResult>> m37436q(EditorBundle editorBundle, File exportDir, List<VirtualPage> virtualPageList) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : virtualPageList) {
            if (ContentConstants.INSTANCE.isImportPDF(((VirtualPage) obj).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType())) {
                arrayList.add(obj);
            }
        }
        Map mapList = CollectionKt.toMapList(arrayList, new Function1<VirtualPage, String>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction$exportPages$pdfPagesMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath();
            }
        }, new Function1<VirtualPage, VirtualPage>() { // from class: com.onyx.android.sdk.universal.editor.action.clone.ClonePageAction$exportPages$pdfPagesMap$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualPage invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (mapList.isEmpty()) {
            Observable<Map<String, ExportPdfPagesResult>> just = Observable.just(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        String absolutePath = exportDir.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        ExportPdfPagesAction exportPdfPagesAction = new ExportPdfPagesAction(editorBundle, absolutePath, mapList);
        exportPdfPagesAction.setUseOriginFileName(true);
        return RxjavaKt.onErrorReturnItemWithLog(exportPdfPagesAction.build(), linkedHashMap);
    }

    /* renamed from: r */
    public final List<VirtualPage> m37437r() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.clipboardArgsList.iterator();
        while (it2.hasNext()) {
            VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(((CopyPageArgs) it2.next()).getSrcIndex());
            if (virtualPage != null) {
                CollectionKt.safeAdd(arrayList, virtualPage);
            }
        }
        return arrayList;
    }

    /* renamed from: s */
    public final Observable<String> m37438s() {
        int collectionSizeOrDefault;
        List<VirtualPage> m37437r = m37437r();
        Companion companion = INSTANCE;
        File clonePageFileDir = companion.getClonePageFileDir();
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(clonePageFileDir);
        fileUtils.mkdirs(clonePageFileDir);
        String clonePageFilePath = companion.getClonePageFilePath();
        List<VirtualPage> list = m37437r;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPage) it2.next()).getBox().getId());
        }
        this.exportPageList = arrayList;
        Observable<String> doOnNext = m37436q(getEditorBundle(), clonePageFileDir, m37437r).flatMap(new C8566e(clonePageFilePath)).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).doOnNext(new C8567f(clonePageFileDir, clonePageFilePath));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
