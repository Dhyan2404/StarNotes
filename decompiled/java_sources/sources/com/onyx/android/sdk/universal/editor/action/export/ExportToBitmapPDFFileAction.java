package com.onyx.android.sdk.universal.editor.action.export;

import android.graphics.Bitmap;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.neopdf.export.NeoPdfExport;
import com.onyx.android.sdk.neopdf.export.PdfCreateArgs;
import com.onyx.android.sdk.neopdf.export.PdfExport;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.export.ExportToBitmapPDFFileAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.page.GetPageIndexFromIdAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ExportPageToBitmapArgs;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.NoteExporter;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\u001a\u0012\u0006\u0010\u001c\u001a\u00020\t¢\u0006\u0004\b\u001d\u0010\u001eJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J&\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J&\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lio/reactivex/rxjava3/core/Observable;", "", SyncConstant.EXPORT_DIR_NAME, "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "exportArgs", "", CouchFieldKey.KEY_TOC_PAGE_ID, "N", "", "pageIndex", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "Landroid/graphics/Bitmap;", "bitmap", "L", "Lcom/onyx/android/sdk/neopdf/export/PdfExport;", "P", "", "K", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/neopdf/export/PdfExport;", "pdfExport", "docManagerBundle", "", "noteExportArgsList", "exportFilePath", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExportToBitmapPDFFileAction extends BaseExportNoteAction {

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public PdfExport pdfExport;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToBitmapPDFFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C8988a<T, R> implements Function {

        /* renamed from: e */
        public static final C8988a<T, R> f48826e = new C8988a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return (Boolean) it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToBitmapPDFFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C8989b<T, R> implements Function {

        /* renamed from: e */
        public static final C8989b<T, R> f48827e = new C8989b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull List<Integer> it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
            Integer num = (Integer) firstOrNull;
            return Integer.valueOf(num != null ? num.intValue() : 0);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToBitmapPDFFileAction$c */
    /* loaded from: classes8.dex */
    public static final class C8990c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48829f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48830g;

        public C8990c(EditorBundle editorBundle, NoteExportArgs noteExportArgs) {
            this.f48829f = editorBundle;
            this.f48830g = noteExportArgs;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends String> m38162a(int i) {
            return ExportToBitmapPDFFileAction.this.m38158O(this.f48829f, this.f48830g, i);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38162a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToBitmapPDFFileAction$d */
    /* loaded from: classes8.dex */
    public static final class C8991d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48831e;

        /* renamed from: f */
        public final /* synthetic */ ExportToBitmapPDFFileAction f48832f;

        public C8991d(EditorBundle editorBundle, ExportToBitmapPDFFileAction exportToBitmapPDFFileAction) {
            this.f48831e = editorBundle;
            this.f48832f = exportToBitmapPDFFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull PdfExport it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = this.f48831e;
            return new ExportTableOfContentAction(editorBundle, it2, this.f48832f.getExportArgs(EditorBundleKt.docId(editorBundle)).getExportPageIdList()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToBitmapPDFFileAction$e */
    /* loaded from: classes8.dex */
    public static final class C8992e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48834f;

        public C8992e(EditorBundle editorBundle) {
            this.f48834f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToBitmapPDFFileAction.this.m38156L(this.f48834f, it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportToBitmapPDFFileAction(@NotNull EditorBundle docManagerBundle, @NotNull List<NoteExportArgs> noteExportArgsList, @NotNull String exportFilePath) {
        super(docManagerBundle, noteExportArgsList, exportFilePath);
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(noteExportArgsList, "noteExportArgsList");
        Intrinsics.checkNotNullParameter(exportFilePath, "exportFilePath");
    }

    /* renamed from: M */
    public static final void m38154M(ExportToBitmapPDFFileAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m38155K();
    }

    /* renamed from: K */
    public final void m38155K() {
        PdfExport pdfExport = this.pdfExport;
        if (pdfExport != null) {
            pdfExport.close();
        }
        this.pdfExport = null;
    }

    /* renamed from: L */
    public final String m38156L(EditorBundle editorBundle, Bitmap bitmap) {
        List<Bitmap> listOf;
        PdfExport m38159P = m38159P(editorBundle);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(bitmap);
        m38159P.appendPage(listOf, bitmap.getWidth(), bitmap.getHeight());
        m38159P.save(m38159P.getPdfNative().getFilePath());
        return m38159P.getPdfNative().getFilePath();
    }

    /* renamed from: N */
    public final Observable<Boolean> m38157N(final EditorBundle editorBundle) {
        Observable<Boolean> flatMap = DocCommonActionsKt.createReaderObservable(editorBundle, new Function1<ReaderBundle, PdfExport>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportToBitmapPDFFileAction$exportTOC$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PdfExport invoke(@NotNull ReaderBundle it2) {
                PdfExport m38159P;
                Intrinsics.checkNotNullParameter(it2, "it");
                m38159P = ExportToBitmapPDFFileAction.this.m38159P(editorBundle);
                return m38159P;
            }
        }).flatMap(new C8991d(editorBundle, this));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: O */
    public final Observable<String> m38158O(EditorBundle editorBundle, NoteExportArgs exportArgs, int pageIndex) {
        Integer valueOf = Integer.valueOf(pageIndex);
        boolean exportTemplate = exportArgs.getExportTemplate();
        AppConfig appConfig = AppConfig.INSTANCE;
        Observable map = new ExportPageToBitmapAction(editorBundle, new ExportPageToBitmapArgs(valueOf, null, exportTemplate, appConfig.getRenderTapeInImage(), appConfig.getRenderExcerptIndicatorInPdf(), 2, null)).build().observeOn(EditorBundleKt.readerScheduler(editorBundle)).map(new C8992e(editorBundle));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: P */
    public final PdfExport m38159P(EditorBundle editorBundle) {
        PdfExport pdfExport = this.pdfExport;
        if (pdfExport != null) {
            Intrinsics.checkNotNull(pdfExport);
            return pdfExport;
        }
        FileUtils fileUtils = FileUtils.INSTANCE;
        String parent = fileUtils.getParent(getPathMap().get(EditorBundleKt.docId(editorBundle)));
        File file = new File(parent, fileUtils.combine(EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getNoteModel().getTitle(), "pdf"));
        fileUtils.mkdirs(parent);
        NoteExporter noteExporter = NoteExporter.INSTANCE;
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        PdfCreateArgs pdfExportCreateArgs = noteExporter.getPdfExportCreateArgs(name);
        NeoPdfExport neoPdfExport = new NeoPdfExport();
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        neoPdfExport.create(absolutePath, pdfExportCreateArgs);
        this.pdfExport = neoPdfExport;
        Intrinsics.checkNotNull(neoPdfExport);
        return neoPdfExport;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public Observable<Boolean> export(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Observable<Boolean> observeOn = super.export(editorBundle).observeOn(EditorBundleKt.readerScheduler(editorBundle));
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<Boolean> doFinally = RxjavaKt.flatMapIf(observeOn, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportToBitmapPDFFileAction$export$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, m38157N(editorBundle)).map(C8988a.f48826e).observeOn(EditorBundleKt.ioSequenceScheduler(editorBundle)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.m2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportToBitmapPDFFileAction.m38154M(ExportToBitmapPDFFileAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public Observable<String> export(@NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs, @NotNull String pageId) {
        List listOf;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pageId);
        Observable<String> flatMap = new GetPageIndexFromIdAction(editorBundle, listOf).build().map(C8989b.f48827e).flatMap(new C8990c(editorBundle, exportArgs));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
