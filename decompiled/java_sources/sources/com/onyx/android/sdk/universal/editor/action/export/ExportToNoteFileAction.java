package com.onyx.android.sdk.universal.editor.action.export;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.hwr.data.constant.HWRCommand;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportPdfPagesResult;
import com.onyx.android.sdk.replicator.note.proto.data.ExtraInfoBean;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBFactory;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportToNoteFileAction;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010\u0016\u001a\u00020\u0010\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b;\u0010<J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0002J\b\u0010\f\u001a\u00020\nH\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0012\u001a\u00020\nH\u0002J\b\u0010\u0013\u001a\u00020\u0010H\u0002R\u0014\u0010\u0016\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R.\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020)0(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006="}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "Lio/reactivex/rxjava3/core/Observer;", EventHandlerManager.OBSERVER, "", "t", "w", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "noteDoc", "", "", "v", C4921e.f26528e, "u", C6999h.f39688c, Constants.STRING_SIG, "exportFilePath", "i", "Ljava/util/List;", "pageIdList", "j", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "Ljava/io/File;", C4921e.f26537n, "Ljava/io/File;", "exportDir", "", "l", Constants.TYPES_INDEX_SIG, "getExportFuncTypes", "()[I", "setExportFuncTypes", "([I)V", "exportFuncTypes", "", "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;", "m", "Ljava/util/Map;", "getExportPdfPagesResult", "()Ljava/util/Map;", "setExportPdfPagesResult", "(Ljava/util/Map;)V", "exportPdfPagesResult", "", GoogleApiAvailabilityLight.f29016b, Constants.HASIDCALL_INDEX_SIG, "getTransformReferenceShape", Constants.BOOLEAN_VALUE_SIG, "setTransformReferenceShape", "(Z)V", "transformReferenceShape", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExportToNoteFileAction extends RxBaseAppAction<ProgressInfo> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String exportFilePath;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIdList;

    /* renamed from: j, reason: from kotlin metadata */
    public NoteDocument noteDoc;

    /* renamed from: k, reason: from kotlin metadata */
    public File exportDir;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public int[] exportFuncTypes;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public Map<String, ExportPdfPagesResult> exportPdfPagesResult;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean transformReferenceShape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToNoteFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C9006a<T, R> implements Function {
        public C9006a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToNoteFileAction.this.m38191p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToNoteFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C9007b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ PBDataContext f48873f;

        /* renamed from: g */
        public final /* synthetic */ ReplaySubject<ProgressInfo> f48874g;

        public C9007b(PBDataContext pBDataContext, ReplaySubject<ProgressInfo> replaySubject) {
            this.f48873f = pBDataContext;
            this.f48874g = replaySubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ExportToNoteFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportToNoteFileAction.this.m38192t(this.f48873f, this.f48874g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToNoteFileAction$c */
    /* loaded from: classes8.dex */
    public static final class C9008c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ReplaySubject<ProgressInfo> f48875e;

        public C9008c(ReplaySubject<ProgressInfo> replaySubject) {
            this.f48875e = replaySubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48875e.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToNoteFileAction$d */
    /* loaded from: classes8.dex */
    public static final class C9009d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Observer<ProgressInfo> f48876e;

        public C9009d(Observer<ProgressInfo> observer) {
            this.f48876e = observer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48876e.onNext(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToNoteFileAction$e */
    /* loaded from: classes8.dex */
    public static final class C9010e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Observer<ProgressInfo> f48877e;

        public C9010e(Observer<ProgressInfo> observer) {
            this.f48877e = observer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48877e.onError(it2);
        }
    }

    public /* synthetic */ ExportToNoteFileAction(EditorBundle editorBundle, String str, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, str, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    /* renamed from: q */
    public static final void m38187q(ExportToNoteFileAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m38195w();
    }

    /* renamed from: r */
    public static final void m38188r(ReplaySubject subject) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        subject.onComplete();
    }

    /* renamed from: s */
    public static final void m38189s(ExportToNoteFileAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m38190o();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ProgressInfo> create() {
        Observable flatMap = new SaveDocumentAction(getEditorBundle()).build().observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9006a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final int[] getExportFuncTypes() {
        return this.exportFuncTypes;
    }

    @NotNull
    public final Map<String, ExportPdfPagesResult> getExportPdfPagesResult() {
        return this.exportPdfPagesResult;
    }

    public final boolean getTransformReferenceShape() {
        return this.transformReferenceShape;
    }

    /* renamed from: o */
    public final void m38190o() {
        FileUtils.deleteDirectory(new File(m38193u()));
    }

    /* renamed from: p */
    public final Observable<ProgressInfo> m38191p() {
        boolean contains;
        this.noteDoc = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc();
        File externalCacheDir = getAppContext().getExternalCacheDir();
        String name = HWRCommand.EXPORT.name();
        Locale ROOT = Locale.ROOT;
        Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
        String lowerCase = name.toLowerCase(ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        File file = new File(externalCacheDir, lowerCase);
        this.exportDir = file;
        FileUtils.forceMkdir(file);
        m38190o();
        NoteDocument noteDocument = this.noteDoc;
        if (noteDocument == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteDoc");
            noteDocument = null;
        }
        NoteProviderHolder providerHolder = noteDocument.getProviderHolder();
        NoteDocument noteDocument2 = this.noteDoc;
        if (noteDocument2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteDoc");
            noteDocument2 = null;
        }
        PBDataContext pBDataContext = new PBDataContext(providerHolder, noteDocument2.getDocumentUniqueId());
        ExportNoteArgs exportNoteArgs = new ExportNoteArgs();
        NoteDocument noteDocument3 = this.noteDoc;
        if (noteDocument3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteDoc");
            noteDocument3 = null;
        }
        exportNoteArgs.setTitle(noteDocument3.getNoteModel().getTitle());
        File file2 = this.exportDir;
        if (file2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("exportDir");
            file2 = null;
        }
        String absolutePath = file2.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        exportNoteArgs.setExportDirPath(absolutePath);
        NoteDocument noteDocument4 = this.noteDoc;
        if (noteDocument4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteDoc");
            noteDocument4 = null;
        }
        exportNoteArgs.setPageIdList(m38194v(noteDocument4));
        int appVersionCode = (int) PackageUtils.INSTANCE.getAppVersionCode(getAppContext());
        NoteDocument noteDocument5 = this.noteDoc;
        if (noteDocument5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteDoc");
            noteDocument5 = null;
        }
        String userId = noteDocument5.getNoteDocBean().getUserId();
        NoteDocument noteDocument6 = this.noteDoc;
        if (noteDocument6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteDoc");
            noteDocument6 = null;
        }
        exportNoteArgs.setInfoBean(new ExtraInfoBean(0, appVersionCode, userId, noteDocument6.getDocumentUniqueId(), 1, null));
        NoteDocument noteDocument7 = this.noteDoc;
        if (noteDocument7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteDoc");
            noteDocument7 = null;
        }
        exportNoteArgs.setDocumentId(noteDocument7.getDocumentUniqueId());
        pBDataContext.setExportNoteArgs(exportNoteArgs);
        contains = ArraysKt___ArraysKt.contains(this.exportFuncTypes, 6);
        if (contains) {
            ExportNoteArgs exportNoteArgs2 = pBDataContext.getExportNoteArgs();
            ExtraInfoBean infoBean = exportNoteArgs2 != null ? exportNoteArgs2.getInfoBean() : null;
            if (infoBean != null) {
                infoBean.setExportPdfPagesResult(JSONUtils.INSTANCE.toJson(this.exportPdfPagesResult));
            }
        }
        ExportNoteArgs exportNoteArgs3 = pBDataContext.getExportNoteArgs();
        if (exportNoteArgs3 != null) {
            exportNoteArgs3.setTransformReferenceShape(this.transformReferenceShape);
        }
        ExportNoteArgs exportNoteArgs4 = pBDataContext.getExportNoteArgs();
        if (exportNoteArgs4 != null) {
            exportNoteArgs4.setExportPdfPagesResult(this.exportPdfPagesResult);
        }
        ExportNoteArgs exportNoteArgs5 = pBDataContext.getExportNoteArgs();
        if (exportNoteArgs5 != null) {
            exportNoteArgs5.setExportRemovedPages(false);
        }
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C9007b(pBDataContext, create)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.o2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportToNoteFileAction.m38187q(ExportToNoteFileAction.this);
            }
        }).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.p2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportToNoteFileAction.m38188r(ReplaySubject.this);
            }
        }).doOnError(new C9008c(create)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.q2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportToNoteFileAction.m38189s(ExportToNoteFileAction.this);
            }
        }).subscribe();
        return create;
    }

    public final void setExportFuncTypes(@NotNull int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        this.exportFuncTypes = iArr;
    }

    public final void setExportPdfPagesResult(@NotNull Map<String, ExportPdfPagesResult> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.exportPdfPagesResult = map;
    }

    public final void setTransformReferenceShape(boolean z) {
        this.transformReferenceShape = z;
    }

    /* renamed from: t */
    public final void m38192t(PBDataContext pbDataContext, Observer<ProgressInfo> observer) {
        PBFactory pBFactory = PBFactory.INSTANCE;
        PBFactory.exportToNoteObservable$default(pBFactory, pbDataContext, pBFactory.getCustomFuncMap(this.exportFuncTypes), null, 4, null).doOnNext(new C9009d(observer)).doOnError(new C9010e(observer)).subscribe();
    }

    /* renamed from: u */
    public final String m38193u() {
        SyncConstant syncConstant = SyncConstant.INSTANCE;
        File file = this.exportDir;
        NoteDocument noteDocument = null;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("exportDir");
            file = null;
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        NoteDocument noteDocument2 = this.noteDoc;
        if (noteDocument2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteDoc");
        } else {
            noteDocument = noteDocument2;
        }
        return syncConstant.docDirFilePath(absolutePath, noteDocument.getDocumentUniqueId());
    }

    /* renamed from: v */
    public final List<String> m38194v(NoteDocument noteDoc) {
        List<String> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) NoteDocNotePage.INSTANCE.getPageNameList(noteDoc).getPageNameList());
        if (CollectionKt.isNullOrEmpty(this.pageIdList)) {
            return mutableList;
        }
        List<String> copy = CollectionKt.copy(this.pageIdList);
        return copy.isEmpty() ? mutableList : copy;
    }

    /* renamed from: w */
    public final void m38195w() {
        FileUtils.forceMkdir(new File(this.exportFilePath).getParentFile());
        String str = this.exportFilePath;
        com.onyx.android.sdk.base.utils.FileUtils fileUtils = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE;
        fileUtils.deleteFile(str);
        ZipUtils.INSTANCE.m72271zipFolderRgG5Fkc(new File(m38193u()), str, null);
        if (fileUtils.isEmpty(str)) {
            throw new FileNotFoundException(str);
        }
        Debug.INSTANCE.m32052i(ExportToNoteFileAction.class, "pack note files success: " + str, new Object[0]);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportToNoteFileAction(@NotNull EditorBundle editorBundle, @NotNull String exportFilePath, @NotNull List<String> pageIdList) {
        super(editorBundle);
        Map<String, ExportPdfPagesResult> emptyMap;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportFilePath, "exportFilePath");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.exportFilePath = exportFilePath;
        this.pageIdList = pageIdList;
        this.exportFuncTypes = new int[0];
        emptyMap = MapsKt__MapsKt.emptyMap();
        this.exportPdfPagesResult = emptyMap;
    }
}
