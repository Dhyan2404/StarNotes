package com.onyx.android.sdk.universal.editor.action.export;

import android.graphics.RectF;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.neopdf.NeoPdf;
import com.onyx.android.sdk.neopdf.PdfUtils;
import com.onyx.android.sdk.neopdf.export.NeoPdfExport;
import com.onyx.android.sdk.neopdf.export.PdfCreateArgs;
import com.onyx.android.sdk.neopdf.export.PdfExport;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.data.ExportDraftPageArgs;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.NoteExporter;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.pdf.utils.NoteEmbedUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u000f\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017\u0012\u0006\u0010)\u001a\u00020\t¢\u0006\u0004\b*\u0010+J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J&\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u000e\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u000f\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u0010\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u0011\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J,\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\t0\u0017H\u0002JF\u0010 \u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\t2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00190\u001d2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\u001dH\u0002R\u0017\u0010%\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lio/reactivex/rxjava3/core/Observable;", "", SyncConstant.EXPORT_DIR_NAME, "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "exportArgs", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "X", "V", "Q", "a0", "P", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "Lcom/onyx/android/sdk/neopdf/export/PdfExport;", Constants.HASIDCALL_INDEX_SIG, "N", "R", "Y", "", "pageIds", "", "b0", "pdfExport", "srcPath", "", "pdfIndexList", "pdfPageIdList", "W", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getDocManagerBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", C4921e.f26528e, "Lcom/onyx/android/sdk/neopdf/export/PdfExport;", "noteExportArgsList", "exportFilePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExportToPDFFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportToPDFFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,281:1\n766#2:282\n857#2,2:283\n766#2:285\n857#2,2:286\n1549#2:288\n1620#2,3:289\n1864#2,3:293\n1#3:292\n*S KotlinDebug\n*F\n+ 1 ExportToPDFFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction\n*L\n140#1:282\n140#1:283,2\n144#1:285\n144#1:286,2\n144#1:288\n144#1:289,3\n231#1:293,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ExportToPDFFileAction extends BaseExportNoteAction {

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public PdfExport pdfExport;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C9011a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48881f;

        /* renamed from: g */
        public final /* synthetic */ Ref.IntRef f48882g;

        /* renamed from: h */
        public final /* synthetic */ Ref.IntRef f48883h;

        public C9011a(EditorBundle editorBundle, Ref.IntRef intRef, Ref.IntRef intRef2) {
            this.f48881f = editorBundle;
            this.f48882g = intRef;
            this.f48883h = intRef2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportToPDFFileAction exportToPDFFileAction = ExportToPDFFileAction.this;
            String docId = EditorBundleKt.docId(this.f48881f);
            Ref.IntRef intRef = this.f48882g;
            int i = intRef.element + 1;
            intRef.element = i;
            exportToPDFFileAction.onProgress(docId, new ProgressInfo(i, this.f48883h.element));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C9012b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48885f;

        public C9012b(EditorBundle editorBundle) {
            this.f48885f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportToPDFFileAction.this.m38216X(this.f48885f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$c */
    /* loaded from: classes8.dex */
    public static final class C9013c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48887f;

        public C9013c(EditorBundle editorBundle) {
            this.f48887f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToPDFFileAction.this.m38214V(this.f48887f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$d */
    /* loaded from: classes8.dex */
    public static final class C9014d<T> implements Consumer {
        public C9014d() {
        }

        /* renamed from: a */
        public final void m38224a(boolean z) {
            NeoPdf pdfNative;
            Set<String> packedFileSet = ExportToPDFFileAction.this.getPackedFileSet();
            PdfExport pdfExport = ExportToPDFFileAction.this.pdfExport;
            String filePath = (pdfExport == null || (pdfNative = pdfExport.getPdfNative()) == null) ? null : pdfNative.getFilePath();
            if (filePath == null) {
                filePath = "";
            }
            packedFileSet.add(filePath);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m38224a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$e */
    /* loaded from: classes8.dex */
    public static final class C9015e<T> implements Consumer {
        public C9015e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            NeoPdf pdfNative;
            Intrinsics.checkNotNullParameter(it2, "it");
            FileUtils fileUtils = FileUtils.INSTANCE;
            PdfExport pdfExport = ExportToPDFFileAction.this.pdfExport;
            fileUtils.deleteFile((pdfExport == null || (pdfNative = pdfExport.getPdfNative()) == null) ? null : pdfNative.getFilePath());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$f */
    /* loaded from: classes8.dex */
    public static final class C9016f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48891f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48892g;

        /* renamed from: h */
        public final /* synthetic */ String f48893h;

        public C9016f(EditorBundle editorBundle, NoteExportArgs noteExportArgs, String str) {
            this.f48891f = editorBundle;
            this.f48892g = noteExportArgs;
            this.f48893h = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull ExportToPDFFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToPDFFileAction.this.m38219a0(this.f48891f, this.f48892g, this.f48893h);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$g */
    /* loaded from: classes8.dex */
    public static final class C9017g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48895f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48896g;

        /* renamed from: h */
        public final /* synthetic */ String f48897h;

        public C9017g(EditorBundle editorBundle, NoteExportArgs noteExportArgs, String str) {
            this.f48895f = editorBundle;
            this.f48896g = noteExportArgs;
            this.f48897h = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToPDFFileAction.this.m38212Q(this.f48895f, this.f48896g, this.f48897h);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$h */
    /* loaded from: classes8.dex */
    public static final class C9018h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48899f;

        public C9018h(EditorBundle editorBundle) {
            this.f48899f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<VirtualPage> apply(@NotNull ExportToPDFFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToPDFFileAction.this.getExportVirtualPageList(this.f48899f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$i */
    /* loaded from: classes8.dex */
    public static final class C9019i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48901f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48902g;

        public C9019i(EditorBundle editorBundle, NoteExportArgs noteExportArgs) {
            this.f48901f = editorBundle;
            this.f48902g = noteExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<VirtualPage> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToPDFFileAction.this.filterValidExportPages(this.f48901f, it2, this.f48902g);
        }
    }

    @SourceDebugExtension({"SMAP\nExportToPDFFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportToPDFFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$export$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1549#2:282\n1620#2,3:283\n*S KotlinDebug\n*F\n+ 1 ExportToPDFFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$export$3\n*L\n65#1:282\n65#1:283,3\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$j */
    /* loaded from: classes8.dex */
    public static final class C9020j<T, R> implements Function {

        /* renamed from: e */
        public static final C9020j<T, R> f48903e = new C9020j<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull List<VirtualPage> it2) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(it2, "it");
            List<VirtualPage> list = it2;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it3 = list.iterator();
            while (it3.hasNext()) {
                arrayList.add(((VirtualPage) it3.next()).getBox().getId());
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$k */
    /* loaded from: classes8.dex */
    public static final class C9021k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteExportArgs f48904e;

        /* renamed from: f */
        public final /* synthetic */ List<String> f48905f;

        public C9021k(NoteExportArgs noteExportArgs, List<String> list) {
            this.f48904e = noteExportArgs;
            this.f48905f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            List<String> list;
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteExportArgs noteExportArgs = this.f48904e;
            list = CollectionsKt___CollectionsKt.toList(it2);
            noteExportArgs.setExportPageIdList(list);
            CollectionKt.safeAddAll(this.f48905f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$l */
    /* loaded from: classes8.dex */
    public static final class C9022l<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.IntRef f48906e;

        /* renamed from: f */
        public final /* synthetic */ NoteExportArgs f48907f;

        public C9022l(Ref.IntRef intRef, NoteExportArgs noteExportArgs) {
            this.f48906e = intRef;
            this.f48907f = noteExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48906e.element = NoteScene.INSTANCE.isDraft(this.f48907f.getNoteModel().getActiveScene()) ? it2.size() : it2.size() * 2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$m */
    /* loaded from: classes8.dex */
    public static final class C9023m<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48909f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48910g;

        public C9023m(EditorBundle editorBundle, NoteExportArgs noteExportArgs) {
            this.f48909f = editorBundle;
            this.f48910g = noteExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Integer> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToPDFFileAction.this.m38220b0(this.f48909f, this.f48910g, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$n */
    /* loaded from: classes8.dex */
    public static final class C9024n<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.IntRef f48911e;

        /* renamed from: f */
        public final /* synthetic */ ExportToPDFFileAction f48912f;

        /* renamed from: g */
        public final /* synthetic */ EditorBundle f48913g;

        /* renamed from: h */
        public final /* synthetic */ Ref.IntRef f48914h;

        public C9024n(Ref.IntRef intRef, ExportToPDFFileAction exportToPDFFileAction, EditorBundle editorBundle, Ref.IntRef intRef2) {
            this.f48911e = intRef;
            this.f48912f = exportToPDFFileAction;
            this.f48913g = editorBundle;
            this.f48914h = intRef2;
        }

        /* renamed from: a */
        public final void m38234a(int i) {
            this.f48911e.element = i;
            this.f48912f.onProgress(EditorBundleKt.docId(this.f48913g), new ProgressInfo(i, this.f48914h.element));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m38234a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$o */
    /* loaded from: classes8.dex */
    public static final class C9025o<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<String> f48915e;

        public C9025o(List<String> list) {
            this.f48915e = list;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends String> m38235a(int i) {
            return Observable.fromIterable(this.f48915e);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38235a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$p */
    /* loaded from: classes8.dex */
    public static final class C9026p<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48917f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48918g;

        public C9026p(EditorBundle editorBundle, NoteExportArgs noteExportArgs) {
            this.f48917f = editorBundle;
            this.f48918g = noteExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToPDFFileAction.this.export(this.f48917f, this.f48918g, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$q */
    /* loaded from: classes8.dex */
    public static final class C9027q<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48919e;

        /* renamed from: f */
        public final /* synthetic */ ExportToPDFFileAction f48920f;

        public C9027q(EditorBundle editorBundle, ExportToPDFFileAction exportToPDFFileAction) {
            this.f48919e = editorBundle;
            this.f48920f = exportToPDFFileAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull PdfExport it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = this.f48919e;
            return new ExportTableOfContentAction(editorBundle, it2, this.f48920f.getExportArgs(EditorBundleKt.docId(editorBundle)).getExportPageIdList()).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportToPDFFileAction(@NotNull EditorBundle docManagerBundle, @NotNull List<NoteExportArgs> noteExportArgsList, @NotNull String exportFilePath) {
        super(docManagerBundle, noteExportArgsList, exportFilePath);
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(noteExportArgsList, "noteExportArgsList");
        Intrinsics.checkNotNullParameter(exportFilePath, "exportFilePath");
        this.docManagerBundle = docManagerBundle;
    }

    /* renamed from: S */
    public static final void m38205S(EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        RxjavaKt.subscribeWithDefault$default(DocCommonActionsKt.ensureCloseDoc(editorBundle), null, null, null, 7, null);
    }

    /* renamed from: T */
    public static final void m38206T(NoteExportArgs exportArgs) {
        Intrinsics.checkNotNullParameter(exportArgs, "$exportArgs");
        Set<String> exportedDraftShapeIds = exportArgs.getExportedDraftShapeIds();
        if (exportedDraftShapeIds != null) {
            exportedDraftShapeIds.clear();
        }
    }

    /* renamed from: U */
    public static final void m38207U(ExportToPDFFileAction this$0, EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        this$0.m38209N(editorBundle);
    }

    /* renamed from: c0 */
    public static final void m38208c0(List pageIds, ExportToPDFFileAction this$0, EditorBundle editorBundle, NoteExportArgs exportArgs, ObservableEmitter emitter) {
        Iterator it2;
        String str;
        Intrinsics.checkNotNullParameter(pageIds, "$pageIds");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "$exportArgs");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        int i = 0;
        for (Object obj : pageIds) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            exportArgs.getPageIndexMap().put((String) obj, Integer.valueOf(i));
            i = i2;
        }
        PdfExport m38218Z = this$0.m38218Z(editorBundle);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = pageIds.iterator();
        String str2 = null;
        int i3 = 0;
        while (it3.hasNext()) {
            String str3 = (String) it3.next();
            if (this$0.isDisposed()) {
                emitter.onComplete();
                return;
            }
            i3++;
            VirtualPage virtualPage = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage(str3);
            Intrinsics.checkNotNull(virtualPage);
            if (ContentConstants.INSTANCE.isPDF(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType())) {
                it2 = it3;
                str = str2;
                if (exportArgs.getExportTemplate()) {
                    String contentPath = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath();
                    int parseContentPageIndex = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().parseContentPageIndex();
                    if (str == null || (Intrinsics.areEqual(str, contentPath) && arrayList.size() < 100 && !arrayList.contains(Integer.valueOf(parseContentPageIndex)))) {
                        str = contentPath;
                    } else {
                        str = contentPath;
                        this$0.m38215W(m38218Z, editorBundle, exportArgs, str, arrayList, arrayList2);
                        emitter.onNext(Integer.valueOf(i3));
                    }
                    CollectionKt.safeAdd(arrayList, Integer.valueOf(parseContentPageIndex));
                    CollectionKt.safeAdd(arrayList2, str3);
                } else {
                    NoteEmbedUtils.INSTANCE.renderAppendPage(m38218Z, editorBundle, exportArgs, str3);
                    emitter.onNext(Integer.valueOf(i3));
                }
            } else {
                it2 = it3;
                str = str2;
                this$0.m38215W(m38218Z, editorBundle, exportArgs, str2, arrayList, arrayList2);
                NoteEmbedUtils.INSTANCE.renderContentTemplate(m38218Z, editorBundle, exportArgs, str3);
                emitter.onNext(Integer.valueOf(i3));
            }
            str2 = str;
            it3 = it2;
        }
        this$0.m38215W(m38218Z, editorBundle, exportArgs, str2, arrayList, arrayList2);
        RxjavaKt.done((ObservableEmitter<Integer>) emitter, Integer.valueOf(i3));
    }

    /* renamed from: N */
    public final void m38209N(EditorBundle editorBundle) {
        RxjavaKt.subscribeWithDefault$default(DocCommonActionsKt.createReaderObservable(editorBundle, new Function1<ReaderBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$closePdfExport$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ReaderBundle readerBundle) {
                invoke2(readerBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ReaderBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                PdfExport pdfExport = ExportToPDFFileAction.this.pdfExport;
                if (pdfExport != null) {
                    pdfExport.close();
                }
                ExportToPDFFileAction.this.pdfExport = null;
            }
        }), null, null, null, 7, null);
    }

    /* renamed from: O */
    public final String m38210O(EditorBundle editorBundle, NoteExportArgs exportArgs, String pageId) {
        return NoteEmbedUtils.INSTANCE.writeDraftPage(m38218Z(editorBundle), editorBundle, exportArgs, pageId, new Function0<Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$drawDraftPage$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(ExportToPDFFileAction.this.isDisposed());
            }
        });
    }

    /* renamed from: P */
    public final String m38211P(EditorBundle editorBundle, NoteExportArgs exportArgs, String pageId) {
        Integer num = exportArgs.getPageIndexMap().get(pageId);
        return NoteEmbedUtils.INSTANCE.writeNotePageShapes(m38218Z(editorBundle), editorBundle, exportArgs, pageId, num != null ? num.intValue() : m38218Z(editorBundle).pageCount());
    }

    /* renamed from: Q */
    public final String m38212Q(EditorBundle editorBundle, NoteExportArgs exportArgs, String pageId) {
        return NoteScene.INSTANCE.isDraft(exportArgs.getNoteModel().getActiveScene()) ? m38210O(editorBundle, exportArgs, pageId) : m38211P(editorBundle, exportArgs, pageId);
    }

    /* renamed from: R */
    public final void m38213R(EditorBundle editorBundle, NoteExportArgs exportArgs, String pageId) {
        if (m38218Z(editorBundle).getPdfNative().pageCount() > 0) {
            return;
        }
        VirtualPage virtualPage = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage(pageId);
        Intrinsics.checkNotNull(virtualPage);
        boolean isPDF = ContentConstants.INSTANCE.isPDF(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType());
        BoxInfo copy = virtualPage.getBox().copy();
        copy.setScale(1.0f);
        if (!isPDF) {
            exportArgs.setBenchmarkScale(copy.getOriginRectF().width() / PdfUtils.INSTANCE.pdfCMToPx(Integer.valueOf((int) copy.getBox().width())));
        } else {
            float width = copy.getOriginRectF().width();
            BoxInfo contentInfo = copy.getContentInfo();
            Intrinsics.checkNotNull(contentInfo);
            exportArgs.setBenchmarkScale(width / contentInfo.getOriginRectF().width());
        }
    }

    /* renamed from: V */
    public final Observable<Boolean> m38214V(final EditorBundle editorBundle) {
        Observable<Boolean> flatMap = DocCommonActionsKt.createReaderObservable(editorBundle, new Function1<ReaderBundle, PdfExport>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$exportTOC$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PdfExport invoke(@NotNull ReaderBundle it2) {
                PdfExport m38218Z;
                Intrinsics.checkNotNullParameter(it2, "it");
                m38218Z = ExportToPDFFileAction.this.m38218Z(editorBundle);
                return m38218Z;
            }
        }).flatMap(new C9027q(editorBundle, this));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: W */
    public final void m38215W(PdfExport pdfExport, EditorBundle editorBundle, NoteExportArgs exportArgs, String srcPath, List<Integer> pdfIndexList, List<String> pdfPageIdList) {
        int[] intArray;
        if (srcPath != null) {
            List<Integer> list = pdfIndexList;
            if (!list.isEmpty()) {
                NoteEmbedUtils noteEmbedUtils = NoteEmbedUtils.INSTANCE;
                intArray = CollectionsKt___CollectionsKt.toIntArray(list);
                noteEmbedUtils.renderPdfTemplate(pdfExport, editorBundle, exportArgs, srcPath, intArray, pdfPageIdList);
                pdfIndexList.clear();
                pdfPageIdList.clear();
            }
        }
    }

    /* renamed from: X */
    public final void m38216X(EditorBundle editorBundle) {
        NoteExportArgs exportArgs = getExportArgs(m38217Y(editorBundle));
        PdfUtils.INSTANCE.flushPendingPdfLinks(m38218Z(editorBundle).getPdfNative(), exportArgs.getPendingPdfPageLinkMap());
    }

    /* renamed from: Y */
    public final String m38217Y(final EditorBundle editorBundle) {
        String docId = EditorBundleKt.docId(editorBundle);
        if (!StringKt.isNotEmpty(docId)) {
            docId = null;
        }
        return (String) AnyKt.getOrElse(docId, new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportToPDFFileAction$getDocId$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return EditorBundleKt.noteBundle(EditorBundle.this).getDocumentId();
            }
        });
    }

    /* renamed from: Z */
    public final PdfExport m38218Z(EditorBundle editorBundle) {
        PdfExport pdfExport = this.pdfExport;
        if (pdfExport != null) {
            Intrinsics.checkNotNull(pdfExport);
            return pdfExport;
        }
        FileUtils fileUtils = FileUtils.INSTANCE;
        String parent = fileUtils.getParent(getPathMap().get(m38217Y(editorBundle)));
        fileUtils.mkdirs(parent);
        File file = new File(parent, generateUniqueFileName(parent == null ? "" : parent, generateValidFileName(editorBundle), "pdf"));
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

    /* renamed from: a0 */
    public final String m38219a0(EditorBundle editorBundle, NoteExportArgs exportArgs, String pageId) {
        int collectionSizeOrDefault;
        if (!NoteScene.INSTANCE.isDraft(exportArgs.getNoteModel().getActiveScene()) || exportArgs.getExportDraftPageArgs() != null) {
            return pageId;
        }
        RectF loadExportPageRect = loadExportPageRect(editorBundle, exportArgs);
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(editorBundle.getWorkBundle());
        BoxInfo copy = obtainBoxManager.getViewport().copy();
        obtainBoxManager.setScale(PdfUtils.INSTANCE.pdfMMToPxScale());
        List<BoxInfo> copyBoxList = obtainBoxManager.copyBoxList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : copyBoxList) {
            if (exportArgs.getExportPageIdList().contains(((BoxInfo) obj).getId())) {
                arrayList.add(obj);
            }
        }
        RectF rectF = new RectF();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!((BoxInfo) obj2).isNaNBox()) {
                arrayList2.add(obj2);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((BoxInfo) it2.next()).getBox());
        }
        RectUtils.INSTANCE.union(rectF, arrayList3);
        obtainBoxManager.setScale(copy.getActualScale());
        obtainBoxManager.scrollTo(copy.left(), copy.top());
        ExportDraftPageArgs exportDraftPageArgs = new ExportDraftPageArgs();
        exportDraftPageArgs.setOriginBoundingRect(loadExportPageRect);
        exportDraftPageArgs.setPageRectF(rectF);
        exportDraftPageArgs.setBoxInfoList(arrayList);
        exportArgs.setExportDraftPageArgs(exportDraftPageArgs);
        return pageId;
    }

    /* renamed from: b0 */
    public final Observable<Integer> m38220b0(final EditorBundle editorBundle, final NoteExportArgs exportArgs, final List<String> pageIds) {
        Object first;
        if (NoteScene.INSTANCE.isDraft(exportArgs.getNoteModel().getActiveScene())) {
            Observable<Integer> just = Observable.just(0);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) pageIds);
        m38213R(editorBundle, exportArgs, (String) first);
        Observable<Integer> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.u2g
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                ExportToPDFFileAction.m38208c0(pageIds, this, editorBundle, exportArgs, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public Observable<Boolean> export(@NotNull final EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        ArrayList arrayList = new ArrayList();
        final NoteExportArgs exportArgs = getExportArgs(EditorBundleKt.docId(editorBundle));
        if (NoteScene.INSTANCE.isDraft(exportArgs.getNoteModel().getActiveScene())) {
            exportArgs.setExportedDraftShapeIds(new LinkedHashSet());
        }
        Ref.IntRef intRef = new Ref.IntRef();
        Ref.IntRef intRef2 = new Ref.IntRef();
        Observable doOnNext = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C9018h(editorBundle)).map(new C9019i(editorBundle, exportArgs)).map(C9020j.f48903e).doOnNext(new C9021k(exportArgs, arrayList)).doOnNext(new C9022l(intRef, exportArgs)).observeOn(EditorBundleKt.readerScheduler(editorBundle)).flatMap(new C9023m(editorBundle, exportArgs)).doOnNext(new C9024n(intRef2, this, editorBundle, intRef));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable doOnNext2 = RxjavaKt.takeLastOne(doOnNext).flatMap(new C9025o(arrayList)).concatMap(new C9026p(editorBundle, exportArgs)).doOnNext(new C9011a(editorBundle, intRef2, intRef)).takeLast(1).observeOn(EditorBundleKt.readerScheduler(editorBundle)).doOnNext(new C9012b(editorBundle)).flatMap(new C9013c(editorBundle)).observeOn(EditorBundleKt.ioSequenceScheduler(editorBundle)).doOnNext(new C9014d());
        Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
        Observable<Boolean> doFinally = RxjavaKt.onErrorWithFileLog(doOnNext2, AnyKt.toSimpleNameString(this)).doOnError(new C9015e()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.r2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportToPDFFileAction.m38205S(EditorBundle.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.s2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportToPDFFileAction.m38206T(NoteExportArgs.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.t2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportToPDFFileAction.m38207U(ExportToPDFFileAction.this, editorBundle);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final EditorBundle getDocManagerBundle() {
        return this.docManagerBundle;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public Observable<String> export(@NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Observable<String> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C9016f(editorBundle, exportArgs, pageId)).observeOn(EditorBundleKt.readerScheduler(editorBundle)).map(new C9017g(editorBundle, exportArgs, pageId));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
