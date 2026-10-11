package com.onyx.android.sdk.universal.docmanager.action;

import android.net.Uri;
import com.blankj.utilcode.util.UriUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.neopdf.PdfUtils;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.api.ConvertArgs;
import com.onyx.android.sdk.reader.data.DecryptPDFArgs;
import com.onyx.android.sdk.reader.extension.ReaderBundleKt;
import com.onyx.android.sdk.reader.plugins.caj.CajReaderPlugin;
import com.onyx.android.sdk.reader.request.ConvertToPDFRequest;
import com.onyx.android.sdk.reader.request.DecryptPDFRequest;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction;
import com.onyx.android.sdk.universal.docmanager.action.name.NoteNameCreateAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.doc.CreateNoteAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.p126import.ImportFromNoteFileAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentState;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsDoneEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsProgressEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.ImportFileException;
import com.onyx.android.sdk.universal.editor.events.app.ImportTaskInfo;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.CopyDocumentWithUriRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 l2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001lB\u001d\u0012\u0006\u0010i\u001a\u00020h\u0012\f\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00020;¢\u0006\u0004\bj\u0010kJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\n\u001a\u00020\bH\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u00072\u0006\u0010\n\u001a\u00020\bH\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\n\u001a\u00020\bH\u0002J\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\bH\u0002J&\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00000\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\bH\u0002J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00000\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00000\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\n\u001a\u00020\bH\u0002J\u0016\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\n\u001a\u00020\bH\u0002J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\n\u001a\u00020\bH\u0002J\"\u0010 \u001a\u00020\u00042\u0018\u0010\u001f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001e0\u001d0\u001cH\u0002J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00110\u00072\u0006\u0010!\u001a\u00020\u0011H\u0002J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\bH\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010%\u001a\u00020\u0004H\u0002J\b\u0010&\u001a\u00020\u0004H\u0002J\u0010\u0010'\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bH\u0002J\b\u0010(\u001a\u00020\u0004H\u0002J\b\u0010)\u001a\u00020\u0004H\u0002J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010+\u001a\u00020*H\u0002J\u0018\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020-2\u0006\u0010+\u001a\u00020*H\u0002J\u000e\u00102\u001a\b\u0012\u0004\u0012\u00020100H\u0002J\u0010\u00103\u001a\u00020-2\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u00105\u001a\u0002042\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u00107\u001a\u0002062\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0006\u00108\u001a\u00020\u0000J\u000e\u00109\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007H\u0014J\b\u0010:\u001a\u00020\u0004H\u0016R\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010A\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001a\u0010E\u001a\b\u0012\u0004\u0012\u00020C0B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010=R\u0016\u0010H\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001a\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00110I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010O\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bM\u0010NR\u001e\u0010R\u001a\n\u0012\u0004\u0012\u000201\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u001d\u0010W\u001a\b\u0012\u0004\u0012\u00020S0B8\u0006¢\u0006\f\n\u0004\bT\u0010=\u001a\u0004\bU\u0010VR\"\u0010]\u001a\u0002068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bX\u0010\u0018\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010d\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u001a\u0010g\u001a\b\u0012\u0004\u0012\u00020e0;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010=¨\u0006m"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "noteImportArgs", "", "K", "importArgs", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;", "N", "resultEvent", "t", "s", "u", "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;", "decryptPDFArgs", "H", "", "path", "Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "convertArgs", "v", "J", "newPath", Constants.HASIDCALL_INDEX_SIG, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "E", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lio/reactivex/rxjava3/subjects/PublishSubject;", "Lkotlin/Pair;", "", "progressPublisher", "G", "name", "B", "Y", "U", "T", "R", "S", "V", "Q", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "progressInfo", "W", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;", "totalStatus", "X", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;", "L", "M", "Ljava/nio/file/Path;", "A", "", "P", "disablePostEvent", BaiduYunConstant.CREATE, "dispose", "", C6999h.f39688c, "Ljava/util/List;", "importArgsList", "i", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;", "importResultEvent", "", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;", "j", "taskInfoList", C4921e.f26537n, Constants.STRING_SIG, "createNoteDocId", "", "l", "Ljava/util/Set;", "folderIds", "m", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "importNoteArgs", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/rx/RxFilter;", "eventPublisher", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C4921e.f26528e, "getNoteModels", "()Ljava/util/List;", "noteModels", "p", "getEnablePostEvent", Constants.BOOLEAN_VALUE_SIG, "setEnablePostEvent", "(Z)V", "enablePostEvent", "q", "I", "getCompletedFileTotalCount", "()I", "setCompletedFileTotalCount", "(I)V", "completedFileTotalCount", "Landroid/net/Uri;", "r", "originUriList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportDocumentsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,554:1\n1603#2,9:555\n1855#2:564\n1856#2:566\n1612#2:567\n1#3:565\n*S KotlinDebug\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction\n*L\n106#1:555,9\n106#1:564\n106#1:566\n106#1:567\n106#1:565\n*E\n"})
/* loaded from: classes8.dex */
public final class ImportDocumentsAction extends RxBaseAppAction<ImportDocumentsAction> {
    public static final long DELAY_OPEN_DOCUMENT = 50;
    public static final long PROGRESS_EVENT_INTERVAL = 50;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<NoteImportArgs> importArgsList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public ImportDocumentsResultEvent importResultEvent;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<ImportTaskInfo> taskInfoList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String createNoteDocId;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Set<String> folderIds;

    /* renamed from: m, reason: from kotlin metadata */
    public NoteImportArgs importNoteArgs;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public RxFilter<ImportDocumentsProgressEvent> eventPublisher;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModels;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean enablePostEvent;

    /* renamed from: q, reason: from kotlin metadata */
    public int completedFileTotalCount;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> originUriList;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$a */
    /* loaded from: classes8.dex */
    public static final class C8068a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ImportDocumentsResultEvent f47381e;

        public C8068a(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47381e = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ImportDocumentsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(Reader.INSTANCE.isSupport(this.f47381e.getPath()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$a0 */
    /* loaded from: classes8.dex */
    public static final class C8069a0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ImportFromNoteFileAction f47383f;

        /* renamed from: g */
        public final /* synthetic */ ImportDocumentsResultEvent f47384g;

        public C8069a0(ImportFromNoteFileAction importFromNoteFileAction, ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47383f = importFromNoteFileAction;
            this.f47384g = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportDocumentsAction.this.getNoteModels().addAll(this.f47383f.getNoteList());
            ImportDocumentsResultEvent importDocumentsResultEvent = this.f47384g;
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.f47383f.getNoteList());
            importDocumentsResultEvent.setNoteModel((SyncNoteModel) firstOrNull);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$b */
    /* loaded from: classes8.dex */
    public static final class C8073b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ImportDocumentsResultEvent f47389e;

        public C8073b(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47389e = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportDocumentsResultEvent apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47389e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$b0 */
    /* loaded from: classes8.dex */
    public static final class C8074b0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ImportDocumentsResultEvent f47390e;

        public C8074b0(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47390e = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f47390e.setSuccess(false);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$c */
    /* loaded from: classes8.dex */
    public static final class C8075c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ AtomicBoolean f47391e;

        /* renamed from: f */
        public final /* synthetic */ String f47392f;

        public C8075c(AtomicBoolean atomicBoolean, String str) {
            this.f47391e = atomicBoolean;
            this.f47392f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportDocumentsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f47391e.set(Reader.INSTANCE.supportConverter(this.f47392f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$c0 */
    /* loaded from: classes8.dex */
    public static final class C8076c0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ImportFromNoteFileAction f47393e;

        /* renamed from: f */
        public final /* synthetic */ ImportDocumentsResultEvent f47394f;

        /* renamed from: g */
        public final /* synthetic */ ImportDocumentsAction f47395g;

        public C8076c0(ImportFromNoteFileAction importFromNoteFileAction, ImportDocumentsResultEvent importDocumentsResultEvent, ImportDocumentsAction importDocumentsAction) {
            this.f47393e = importFromNoteFileAction;
            this.f47394f = importDocumentsResultEvent;
            this.f47395g = importDocumentsAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            int size = this.f47393e.getNoteList().size();
            ImportDocumentsResultEvent importDocumentsResultEvent = this.f47394f;
            ImportDocumentsAction importDocumentsAction = this.f47395g;
            importDocumentsResultEvent.setImportNoteCount(importDocumentsResultEvent.getImportNoteCount() + size);
            importDocumentsAction.setCompletedFileTotalCount(importDocumentsAction.getCompletedFileTotalCount() + size);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$d */
    /* loaded from: classes8.dex */
    public static final class C8078d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ImportDocumentsResultEvent f47398e;

        public C8078d(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47398e = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportDocumentsResultEvent apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47398e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$d0 */
    /* loaded from: classes8.dex */
    public static final class C8079d0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ImportDocumentsResultEvent f47399e;

        public C8079d0(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47399e = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportDocumentsResultEvent apply(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47399e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$e */
    /* loaded from: classes8.dex */
    public static final class C8080e<T> implements Consumer {
        public C8080e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(ProgressInfo progressInfo) {
            ImportDocumentsAction importDocumentsAction = ImportDocumentsAction.this;
            Intrinsics.checkNotNull(progressInfo);
            importDocumentsAction.m36573W(progressInfo);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$e0 */
    /* loaded from: classes8.dex */
    public static final class C8081e0<T> implements Consumer {
        public C8081e0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(Pair<Integer, Integer> pair) {
            if (ImportDocumentsAction.this.isDisposed()) {
                return;
            }
            ImportDocumentsAction.this.m36573W(new ProgressInfo(pair.getFirst().intValue(), pair.getSecond().intValue()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$f */
    /* loaded from: classes8.dex */
    public static final class C8082f<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Ref.BooleanRef f47402e;

        public C8082f(Ref.BooleanRef booleanRef) {
            this.f47402e = booleanRef;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(ProgressInfo progressInfo) {
            return this.f47402e.element;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$f0 */
    /* loaded from: classes8.dex */
    public static final class C8083f0<T> implements Consumer {
        public C8083f0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(ProgressInfo progressInfo) {
            ImportDocumentsAction importDocumentsAction = ImportDocumentsAction.this;
            Intrinsics.checkNotNull(progressInfo);
            importDocumentsAction.m36573W(progressInfo);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$g */
    /* loaded from: classes8.dex */
    public static final class C8084g<T, R> implements Function {
        public C8084g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportDocumentsAction apply(ProgressInfo progressInfo) {
            return ImportDocumentsAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$g0 */
    /* loaded from: classes8.dex */
    public static final class C8085g0<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Ref.BooleanRef f47405e;

        public C8085g0(Ref.BooleanRef booleanRef) {
            this.f47405e = booleanRef;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(ProgressInfo progressInfo) {
            return this.f47405e.element;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$h0 */
    /* loaded from: classes8.dex */
    public static final class C8087h0<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ DecryptPDFArgs f47408f;

        public C8087h0(DecryptPDFArgs decryptPDFArgs) {
            this.f47408f = decryptPDFArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportDocumentsAction> apply(ProgressInfo progressInfo) {
            return ImportDocumentsAction.this.m36576Z(this.f47408f.getOutputFilePath(), this.f47408f.getPath());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$i */
    /* loaded from: classes8.dex */
    public static final class C8088i<T> implements Consumer {
        public C8088i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportDocumentsAction importDocumentsAction = ImportDocumentsAction.this;
            importDocumentsAction.m36569S(importDocumentsAction.importResultEvent);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$i0 */
    /* loaded from: classes8.dex */
    public static final class C8089i0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ImportDocumentsResultEvent f47410e;

        public C8089i0(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47410e = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportDocumentsResultEvent apply(@NotNull ImportDocumentsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47410e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$j0 */
    /* loaded from: classes8.dex */
    public static final class C8092j0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f47413e;

        public C8092j0(String str) {
            this.f47413e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ImportDocumentsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(FileUtils.INSTANCE.deleteFile(this.f47413e));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$k */
    /* loaded from: classes8.dex */
    public static final class C8093k<T, R> implements Function {
        public C8093k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportDocumentsAction> apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RxBaseAction.execute$default(new CleanupImportFailedDocumentAction(ImportDocumentsAction.this.getEditorBundle(), ImportDocumentsAction.this.createNoteDocId), null, null, null, 7, null);
            return Observable.just(ImportDocumentsAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$k0 */
    /* loaded from: classes8.dex */
    public static final class C8094k0<T, R> implements Function {
        public C8094k0() {
        }

        @NotNull
        /* renamed from: a */
        public final ImportDocumentsAction m36608a(boolean z) {
            return ImportDocumentsAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m36608a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$l */
    /* loaded from: classes8.dex */
    public static final class C8095l<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<NoteImportArgs> f47416e;

        public C8095l(Iterator<NoteImportArgs> it2) {
            this.f47416e = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ImportDocumentsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f47416e.hasNext();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$l0 */
    /* loaded from: classes8.dex */
    public static final class C8096l0<T> implements Consumer {
        public C8096l0() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportDocumentsProgressEvent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ImportDocumentsAction.this.getEditorBundle(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$m0 */
    /* loaded from: classes8.dex */
    public static final class C8098m0<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<Path> f47419e;

        /* renamed from: f */
        public final /* synthetic */ ImportDocumentsAction f47420f;

        /* renamed from: g */
        public final /* synthetic */ NoteImportArgs f47421g;

        public C8098m0(Ref.ObjectRef<Path> objectRef, ImportDocumentsAction importDocumentsAction, NoteImportArgs noteImportArgs) {
            this.f47419e = objectRef;
            this.f47420f = importDocumentsAction;
            this.f47421g = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f47419e.element = (T) this.f47420f.m36554A(this.f47421g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$n */
    /* loaded from: classes8.dex */
    public static final class C8099n<T> implements Consumer {
        public C8099n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportDocumentsAction.this.importNoteArgs = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$n0 */
    /* loaded from: classes8.dex */
    public static final class C8100n0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<String> f47423e;

        /* renamed from: f */
        public final /* synthetic */ ImportDocumentsAction f47424f;

        /* renamed from: g */
        public final /* synthetic */ NoteImportArgs f47425g;

        public C8100n0(Ref.ObjectRef<String> objectRef, ImportDocumentsAction importDocumentsAction, NoteImportArgs noteImportArgs) {
            this.f47423e = objectRef;
            this.f47424f = importDocumentsAction;
            this.f47425g = noteImportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportDocumentsResultEvent apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String str = this.f47423e.element;
            String str2 = str;
            String name = FilenameUtils.getName(str);
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            return new ImportDocumentsResultEvent(str2, true, name, this.f47424f.importArgsList.indexOf(this.f47425g), this.f47424f.importArgsList.size());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$o */
    /* loaded from: classes8.dex */
    public static final class C8101o<T> implements Consumer {
        public C8101o() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportDocumentsAction.this.createNoteDocId = UUIDUtils.INSTANCE.rawUUID();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$o0 */
    /* loaded from: classes8.dex */
    public static final class C8102o0<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ImportDocumentsResultEvent f47428f;

        public C8102o0(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47428f = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ImportDocumentsAction.this.getEditorBundle(), this.f47428f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$p */
    /* loaded from: classes8.dex */
    public static final class C8103p<T> implements Consumer {
        public C8103p() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportDocumentsAction.this.m36571U(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$p0 */
    /* loaded from: classes8.dex */
    public static final class C8104p0<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f47430e;

        /* renamed from: f */
        public final /* synthetic */ String f47431f;

        public C8104p0(String str, String str2) {
            this.f47430e = str;
            this.f47431f = str2;
        }

        /* renamed from: a */
        public final void m36618a(@NotNull ImportDocumentsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FileUtils.INSTANCE.deleteFile(this.f47430e);
            onyx.org.apache.commons.io.FileUtils.moveFile(new File(this.f47431f), new File(this.f47430e), StandardCopyOption.REPLACE_EXISTING);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36618a((ImportDocumentsAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$q */
    /* loaded from: classes8.dex */
    public static final class C8105q<T> implements Consumer {
        public C8105q() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteImportArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportDocumentsAction.this.m36562K(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$q0 */
    /* loaded from: classes8.dex */
    public static final class C8106q0<T, R> implements Function {
        public C8106q0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportDocumentsAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportDocumentsAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$s */
    /* loaded from: classes8.dex */
    public static final class C8108s<T> implements Consumer {
        public C8108s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportDocumentsResultEvent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportDocumentsAction.this.importResultEvent = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$v */
    /* loaded from: classes8.dex */
    public static final class C8111v<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteCreateInfo f47438e;

        public C8111v(NoteCreateInfo noteCreateInfo) {
            this.f47438e = noteCreateInfo;
        }

        /* renamed from: a */
        public final void m36625a(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f47438e.setNoteName(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36625a((String) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$w */
    /* loaded from: classes8.dex */
    public static final class C8112w<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteCreateInfo f47440f;

        public C8112w(NoteCreateInfo noteCreateInfo) {
            this.f47440f = noteCreateInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateNoteAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateNoteAction createNoteAction = new CreateNoteAction(ImportDocumentsAction.this.getEditorBundle(), this.f47440f);
            ImportDocumentsAction.this.m36559G(createNoteAction.getProgressCallbackPublisher());
            return createNoteAction.build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$x */
    /* loaded from: classes8.dex */
    public static final class C8113x<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ImportDocumentsResultEvent f47442f;

        public C8113x(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47442f = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportDocumentsAction.this.getNoteModels().add(it2.getNoteModel());
            this.f47442f.setNoteModel(it2.getNoteModel());
            ImportDocumentsAction importDocumentsAction = ImportDocumentsAction.this;
            importDocumentsAction.setCompletedFileTotalCount(importDocumentsAction.getCompletedFileTotalCount() + 1);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$y */
    /* loaded from: classes8.dex */
    public static final class C8114y<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ImportDocumentsResultEvent f47443e;

        public C8114y(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47443e = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportDocumentsResultEvent apply(@NotNull CreateNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47443e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$z */
    /* loaded from: classes8.dex */
    public static final class C8115z<T> implements Consumer {
        public C8115z() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportDocumentsAction.this.m36573W(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportDocumentsAction(@NotNull EditorBundle editorBundle, @NotNull List<NoteImportArgs> importArgsList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(importArgsList, "importArgsList");
        this.importArgsList = importArgsList;
        this.importResultEvent = new ImportDocumentsResultEvent("", false, "", 0, 0);
        this.taskInfoList = new ArrayList();
        this.createNoteDocId = "";
        this.folderIds = new LinkedHashSet();
        this.noteModels = new ArrayList();
        this.enablePostEvent = true;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = importArgsList.iterator();
        while (it2.hasNext()) {
            Uri originUri = ((NoteImportArgs) it2.next()).getOriginUri();
            if (originUri != null) {
                arrayList.add(originUri);
            }
        }
        this.originUriList = arrayList;
    }

    /* renamed from: F */
    public static final void m36540F(ImportDocumentsResultEvent resultEvent, ProgressInfo it2) {
        Intrinsics.checkNotNullParameter(resultEvent, "$resultEvent");
        Intrinsics.checkNotNullParameter(it2, "it");
        resultEvent.setSuccess(false);
    }

    /* renamed from: I */
    public static final void m36541I(ImportDocumentsResultEvent resultEvent, Ref.BooleanRef complete, PublishSubject info, DecryptPDFRequest it2) {
        Intrinsics.checkNotNullParameter(resultEvent, "$resultEvent");
        Intrinsics.checkNotNullParameter(complete, "$complete");
        Intrinsics.checkNotNullParameter(info, "$info");
        Intrinsics.checkNotNullParameter(it2, "it");
        resultEvent.setSuccess(!it2.hasException() && it2.getDecryptDone());
        complete.element = true;
        info.onNext(ProgressInfo.INSTANCE.onComplete());
        info.onComplete();
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.Object, java.lang.String] */
    /* renamed from: O */
    public static final String m36542O(NoteImportArgs importArgs, Ref.ObjectRef fileDir, Ref.ObjectRef documentPath, String it2) {
        Intrinsics.checkNotNullParameter(importArgs, "$importArgs");
        Intrinsics.checkNotNullParameter(fileDir, "$fileDir");
        Intrinsics.checkNotNullParameter(documentPath, "$documentPath");
        Intrinsics.checkNotNullParameter(it2, "it");
        FileUtils fileUtils = FileUtils.INSTANCE;
        String fileName = fileUtils.getFileName(importArgs.getImportFilePath());
        ImportSelectedContext importSelectedContext = importArgs.getImportSelectedContext();
        Path path = null;
        String modifyName = importSelectedContext != null ? importSelectedContext.getModifyName() : null;
        if (StringKt.isNotEmpty(modifyName) && (fileName = fileUtils.combine(modifyName, FilenameUtils.getExtension(fileName))) == null) {
            fileName = "";
        }
        Paths paths = Paths.INSTANCE;
        T t = fileDir.element;
        if (t == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("fileDir");
        } else {
            path = (Path) t;
        }
        File appendSuffixIfExist = fileUtils.appendSuffixIfExist(paths.asFile(paths.append(path, fileName)));
        String importFilePath = importArgs.getImportFilePath();
        Intrinsics.checkNotNull(importFilePath);
        onyx.org.apache.commons.io.FileUtils.moveFile(new File(importFilePath), appendSuffixIfExist);
        ?? absolutePath = appendSuffixIfExist.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        documentPath.element = absolutePath;
        return absolutePath;
    }

    /* renamed from: w */
    public static final void m36550w(ImportDocumentsResultEvent resultEvent, Ref.BooleanRef complete, PublishSubject info, ConvertToPDFRequest it2) {
        Intrinsics.checkNotNullParameter(resultEvent, "$resultEvent");
        Intrinsics.checkNotNullParameter(complete, "$complete");
        Intrinsics.checkNotNullParameter(info, "$info");
        Intrinsics.checkNotNullParameter(it2, "it");
        resultEvent.setSuccess(!it2.hasException() && it2.getConvertSuccess());
        complete.element = true;
        info.onNext(ProgressInfo.INSTANCE.onComplete());
        info.onComplete();
    }

    /* renamed from: x */
    public static final boolean m36551x(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    /* renamed from: y */
    public static final void m36552y(ImportDocumentsAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m36572V();
    }

    /* renamed from: z */
    public static final void m36553z(ImportDocumentsAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RxFilter<ImportDocumentsProgressEvent> rxFilter = this$0.eventPublisher;
        if (rxFilter != null) {
            rxFilter.dispose();
        }
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new ImportDocumentsDoneEvent(this$0.importArgsList));
    }

    /* renamed from: A */
    public final Path m36554A(NoteImportArgs importArgs) {
        FileUtils fileUtils = FileUtils.INSTANCE;
        return m36566P(fileUtils.fileExist(importArgs.getImportFilePath()) ? fileUtils.getFileName(importArgs.getImportFilePath()) : UriKt.getFileName(importArgs.getImportFileUri(), EditorBundleKt.appContext())) ? AppConfig.INSTANCE.importDocumentTempFileDir() : ResourcePaths.INSTANCE.appDocResourceContentDir(this.createNoteDocId);
    }

    /* renamed from: B */
    public final Observable<String> m36555B(String name) {
        ResManager resManager = ResManager.INSTANCE;
        return new NoteNameCreateAction(1, name, resManager.getInteger(C8045R.integer.edit_name_max_length), resManager.getStringSafely(C8045R.string.import_note)).build();
    }

    /* renamed from: C */
    public final Observable<ImportDocumentsResultEvent> m36556C(ImportDocumentsResultEvent resultEvent) {
        if (resultEvent.getSuccess()) {
            return m36566P(resultEvent.getPath()) ? m36558E(resultEvent) : m36557D(resultEvent);
        }
        Observable<ImportDocumentsResultEvent> just = Observable.just(resultEvent);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: D */
    public final Observable<ImportDocumentsResultEvent> m36557D(final ImportDocumentsResultEvent resultEvent) {
        String substringBeforeLast$default;
        Object orNull;
        if (!resultEvent.getSuccess()) {
            Observable<ImportDocumentsResultEvent> just = Observable.just(resultEvent);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        NoteImportArgs noteImportArgs = this.importNoteArgs;
        if (noteImportArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("importNoteArgs");
            noteImportArgs = null;
        }
        ImportSelectedContext importSelectedContext = noteImportArgs.getImportSelectedContext();
        substringBeforeLast$default = StringsKt__StringsKt.substringBeforeLast$default((String) AnyKt.getOrElse(importSelectedContext != null ? importSelectedContext.getModifyFileName() : null, new Function0<String>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$createNoteFromDocFile$noteName$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return ImportDocumentsResultEvent.this.getOriginalFileName();
            }
        }), ".", (String) null, 2, (Object) null);
        NoteCreateInfo createFromPDF = NoteCreateInfo.INSTANCE.createFromPDF(resultEvent.getPath(), substringBeforeLast$default);
        createFromPDF.setDocumentId(this.createNoteDocId);
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.importArgsList, resultEvent.getCurrentIndex());
        NoteImportArgs noteImportArgs2 = (NoteImportArgs) orNull;
        if (noteImportArgs2 != null) {
            createFromPDF.setParentUniqueId(noteImportArgs2.getParentId());
            createFromPDF.setTagList(CollectionKt.ensureList(noteImportArgs2.getTagIdList()));
        }
        Observable<ImportDocumentsResultEvent> map = m36555B(createFromPDF.getNoteName()).map(new C8111v(createFromPDF)).flatMap(new C8112w(createFromPDF)).doOnNext(new C8113x(resultEvent)).map(new C8114y(resultEvent));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: E */
    public final Observable<ImportDocumentsResultEvent> m36558E(final ImportDocumentsResultEvent resultEvent) {
        List listOf;
        NoteImportArgs noteImportArgs = this.importArgsList.get(resultEvent.getCurrentIndex());
        Uri file2Uri = UriUtils.file2Uri(new File(resultEvent.getPath()));
        Intrinsics.checkNotNullExpressionValue(file2Uri, "file2Uri(...)");
        noteImportArgs.setImportFileUri(file2Uri);
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(noteImportArgs);
        ImportFromNoteFileAction importFromNoteFileAction = new ImportFromNoteFileAction(editorBundle, listOf, false, 4, null);
        Observable<ProgressInfo> doOnError = importFromNoteFileAction.build().doOnNext(new C8115z()).takeLast(1).doOnNext(new C8069a0(importFromNoteFileAction, resultEvent)).doOnError(new C8074b0(resultEvent));
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        Observable<ImportDocumentsResultEvent> map = RxjavaKt.doOnNextIf(doOnError, new Function1<ProgressInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$createNoteFromNoteFile$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ProgressInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(ImportDocumentsResultEvent.this.getNoteModel() == null);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.lii
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ImportDocumentsAction.m36540F(ImportDocumentsResultEvent.this, (ProgressInfo) obj);
            }
        }).doOnNext(new C8076c0(importFromNoteFileAction, resultEvent, this)).map(new C8079d0(resultEvent));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: G */
    public final void m36559G(PublishSubject<Pair<Integer, Integer>> progressPublisher) {
        progressPublisher.observeOn(getMainUIScheduler()).doOnNext(new C8081e0()).subscribe();
    }

    /* renamed from: H */
    public final Observable<ImportDocumentsResultEvent> m36560H(DecryptPDFArgs decryptPDFArgs, final ImportDocumentsResultEvent resultEvent) {
        if (!resultEvent.getSuccess()) {
            Observable<ImportDocumentsResultEvent> just = Observable.just(resultEvent);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        DecryptPDFRequest decryptPDFRequest = new DecryptPDFRequest(EditorBundleKt.readerBundle(getEditorBundle()), decryptPDFArgs, new ImportDocumentsAction$decryptPDF$request$1(create));
        decryptPDFRequest.disableThrowException();
        RxjavaKt.subscribeWithDefault$default(RxBaseAppActionKt.submitRequestToReader(this, decryptPDFRequest), new Consumer() { // from class: com.sunia.HTREnginev2.kii
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ImportDocumentsAction.m36541I(ImportDocumentsResultEvent.this, booleanRef, create, (DecryptPDFRequest) obj);
            }
        }, null, null, 6, null);
        Observable<ImportDocumentsResultEvent> map = create.observeOn(AndroidSchedulers.mainThread()).doOnNext(new C8083f0()).filter(new C8085g0(booleanRef)).flatMap(new C8087h0(decryptPDFArgs)).map(new C8089i0(resultEvent));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: J */
    public final Observable<ImportDocumentsAction> m36561J(String path) {
        Observable<ImportDocumentsAction> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C8092j0(path)).observeOn(AndroidSchedulers.mainThread()).map(new C8094k0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: K */
    public final void m36562K(NoteImportArgs noteImportArgs) {
        ImportSelectedContext importSelectedContext = noteImportArgs.getImportSelectedContext();
        if (importSelectedContext == null || !importSelectedContext.isMultipleDoc()) {
            return;
        }
        disablePostEvent();
    }

    /* renamed from: L */
    public final RxFilter<ImportDocumentsProgressEvent> m36563L() {
        RxFilter<ImportDocumentsProgressEvent> rxFilter = this.eventPublisher;
        if (rxFilter != null) {
            return rxFilter;
        }
        RxFilter<ImportDocumentsProgressEvent> rxFilter2 = new RxFilter<>();
        rxFilter2.subscribeThrottleLast(50L, new C8096l0());
        this.eventPublisher = rxFilter2;
        return rxFilter2;
    }

    /* renamed from: M */
    public final ImportDocumentState m36564M(ProgressInfo progressInfo) {
        return !this.importResultEvent.getSuccess() ? ImportDocumentState.ERROR : (progressInfo.isComplete() && this.importResultEvent.getSuccess()) ? ImportDocumentState.SUCCESS : ImportDocumentState.IMPORTING;
    }

    /* renamed from: N */
    public final Observable<ImportDocumentsResultEvent> m36565N(final NoteImportArgs importArgs) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = "";
        Observable doOnNext = Observable.just("").observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).doOnNext(new C8098m0(objectRef, this, importArgs));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<Object> flatMapIf = RxjavaKt.flatMapIf(RxjavaKt.mapIf(doOnNext, new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$importDocument$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(FileUtils.INSTANCE.fileExist(NoteImportArgs.this.getImportFilePath()));
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.jii
            @Override // io.reactivex.rxjava3.functions.Function
            public final Object apply(Object obj) {
                String m36542O;
                m36542O = ImportDocumentsAction.m36542O(NoteImportArgs.this, objectRef, objectRef2, (String) obj);
                return m36542O;
            }
        }), new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$importDocument$4
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(StringKt.isEmpty(it2));
            }
        }, new Function1<String, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$importDocument$5

            /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$importDocument$5$a */
            /* loaded from: classes8.dex */
            public static final class C8090a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ Ref.ObjectRef<String> f47411e;

                public C8090a(Ref.ObjectRef<String> objectRef) {
                    this.f47411e = objectRef;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull CopyDocumentWithUriRequest it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f47411e.element = (T) it2.getDocumentPath();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull String it2) {
                Path path;
                Intrinsics.checkNotNullParameter(it2, "it");
                WorkBundle workBundle = ImportDocumentsAction.this.getEditorBundle().getWorkBundle();
                Path path2 = objectRef.element;
                if (path2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("fileDir");
                    path = null;
                } else {
                    path = path2;
                }
                CopyDocumentWithUriRequest copyDocumentWithUriRequest = new CopyDocumentWithUriRequest(workBundle, path);
                copyDocumentWithUriRequest.setUri(importArgs.getImportFileUri());
                Observable<? extends Object> doOnNext2 = RxBaseAppActionKt.submitRequestToIOSequence(ImportDocumentsAction.this, copyDocumentWithUriRequest).doOnNext(new C8090a(objectRef2));
                Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
                return doOnNext2;
            }
        });
        Function1<Object, Boolean> function1 = new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$importDocument$6
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(NoteImportArgs.this.getDeleteSourceOnImported());
            }
        };
        String importFilePath = importArgs.getImportFilePath();
        if (importFilePath == null) {
            importFilePath = UriUtils.uri2File(importArgs.getImportFileUri()).getAbsolutePath();
        }
        Intrinsics.checkNotNull(importFilePath);
        Observable map = RxjavaKt.flatMapIf(flatMapIf, function1, m36561J(importFilePath)).map(new C8100n0(objectRef2, this, importArgs));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: P */
    public final boolean m36566P(String path) {
        return StringUtils.endsWithIgnoreCase(path, "note");
    }

    /* renamed from: Q */
    public final void m36567Q() {
        m36574X(ImportDocumentState.ERROR, new ProgressInfo());
    }

    /* renamed from: R */
    public final void m36568R() {
        m36573W(ProgressInfo.INSTANCE.onComplete());
    }

    /* renamed from: S */
    public final void m36569S(ImportDocumentsResultEvent resultEvent) {
        if (!resultEvent.getSuccess()) {
            this.taskInfoList.add(new ImportTaskInfo(resultEvent.getPath(), resultEvent.getOriginalFileName(), ImportDocumentState.ERROR));
            m36568R();
            return;
        }
        SyncNoteModel noteModel = resultEvent.getNoteModel();
        String parentUniqueId = noteModel != null ? noteModel.getParentUniqueId() : null;
        if (StringKt.isNotBlank(parentUniqueId)) {
            this.folderIds.add(parentUniqueId);
        }
        this.taskInfoList.add(new ImportTaskInfo(resultEvent.getPath(), resultEvent.getOriginalFileName(), ImportDocumentState.SUCCESS));
        m36570T();
    }

    /* renamed from: T */
    public final void m36570T() {
        m36573W(ProgressInfo.INSTANCE.onComplete());
    }

    /* renamed from: U */
    public final void m36571U(NoteImportArgs noteImportArgs) {
        this.importResultEvent = new ImportDocumentsResultEvent("", false, noteImportArgs.getImportFileName(), this.importArgsList.indexOf(noteImportArgs), this.importArgsList.size());
        m36573W(new ProgressInfo(0, 100));
    }

    /* renamed from: V */
    public final void m36572V() {
        List list;
        list = CollectionsKt___CollectionsKt.toList(this.folderIds);
        RxBaseAction.execute$default(new UpdateFolderCoverAction(list), null, null, null, 7, null);
        m36574X(ImportDocumentState.COMPLETE, new ProgressInfo(this.importResultEvent.getCurrentIndex() + 1, this.importResultEvent.getTotal()));
        DocCommonActionsKt.createIOObservable(getEditorBundle(), new Function1<EditorBundle, List<? extends Boolean>>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$onImportTotalComplete$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<Boolean> invoke(@NotNull EditorBundle it2) {
                List list2;
                int collectionSizeOrDefault;
                int collectionSizeOrDefault2;
                boolean startsWith$default;
                Intrinsics.checkNotNullParameter(it2, "it");
                String obj = AppConfig.INSTANCE.importDocumentTempFileDir().toAbsolutePath().toString();
                list2 = ImportDocumentsAction.this.taskInfoList;
                List list3 = list2;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator it3 = list3.iterator();
                while (it3.hasNext()) {
                    arrayList.add(((ImportTaskInfo) it3.next()).getDocPath());
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : arrayList) {
                    startsWith$default = StringsKt__StringsJVMKt.startsWith$default((String) obj2, obj, false, 2, null);
                    if (startsWith$default) {
                        arrayList2.add(obj2);
                    }
                }
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
                Iterator it4 = arrayList2.iterator();
                while (it4.hasNext()) {
                    arrayList3.add(Boolean.valueOf(FileUtils.INSTANCE.deleteFile((String) it4.next())));
                }
                return arrayList3;
            }
        }).subscribe();
    }

    /* renamed from: W */
    public final void m36573W(ProgressInfo progressInfo) {
        if (this.importResultEvent.getCurrentIndex() < 0) {
            return;
        }
        progressInfo.setProgress((r0 * r2 * 100) + (progressInfo.getProgress() * (1.0f / this.importResultEvent.getTotal())));
        m36574X(ImportDocumentState.IMPORTING, progressInfo);
    }

    /* renamed from: X */
    public final void m36574X(ImportDocumentState totalStatus, ProgressInfo progressInfo) {
        List mutableList;
        ImportTaskInfo importTaskInfo = new ImportTaskInfo(this.importResultEvent.getPath(), this.importResultEvent.getOriginalFileName(), m36564M(progressInfo));
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.taskInfoList);
        int currentIndex = this.importResultEvent.getCurrentIndex();
        int size = this.importArgsList.size();
        NoteImportArgs noteImportArgs = this.importNoteArgs;
        if (noteImportArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("importNoteArgs");
            noteImportArgs = null;
        }
        ImportDocumentsProgressEvent importDocumentsProgressEvent = new ImportDocumentsProgressEvent(this, importTaskInfo, totalStatus, mutableList, progressInfo, currentIndex, size, noteImportArgs, this.originUriList);
        if (!progressInfo.isComplete()) {
            m36563L().onNext(importDocumentsProgressEvent);
            return;
        }
        RxFilter<ImportDocumentsProgressEvent> rxFilter = this.eventPublisher;
        if (rxFilter != null) {
            rxFilter.dispose();
        }
        EditorBundleKt.postEvent(getEditorBundle(), importDocumentsProgressEvent);
    }

    /* renamed from: Y */
    public final ImportDocumentsAction m36575Y(ImportDocumentsResultEvent resultEvent) {
        if (this.enablePostEvent) {
            Observable.just(Unit.INSTANCE).delay(50L, TimeUnit.MILLISECONDS).doOnNext(new C8102o0(resultEvent)).subscribe();
        }
        m36569S(resultEvent);
        return this;
    }

    /* renamed from: Z */
    public final Observable<ImportDocumentsAction> m36576Z(String path, String newPath) {
        Observable<ImportDocumentsAction> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C8104p0(newPath, path)).observeOn(AndroidSchedulers.mainThread()).map(new C8106q0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportDocumentsAction> create() {
        final Iterator<NoteImportArgs> it2 = this.importArgsList.iterator();
        if (it2.hasNext()) {
            Observable<ImportDocumentsAction> doFinally = Observable.just(it2).map(new Function() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction.m
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final NoteImportArgs apply(@NotNull Iterator<NoteImportArgs> p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return p0.next();
                }
            }).doOnNext(new C8099n()).doOnNext(new C8101o()).doOnNext(new C8103p()).doOnNext(new C8105q()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction.r
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Observable<ImportDocumentsResultEvent> apply(@NotNull NoteImportArgs p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return ImportDocumentsAction.this.m36565N(p0);
                }
            }).doOnNext(new C8108s()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction.t
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Observable<ImportDocumentsResultEvent> apply(@NotNull ImportDocumentsResultEvent p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return ImportDocumentsAction.this.m36579u(p0);
                }
            }).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction.u
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Observable<ImportDocumentsResultEvent> apply(@NotNull ImportDocumentsResultEvent p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return ImportDocumentsAction.this.m36578t(p0);
                }
            }).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction.h
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Observable<ImportDocumentsResultEvent> apply(@NotNull ImportDocumentsResultEvent p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return ImportDocumentsAction.this.m36556C(p0);
                }
            }).doOnError(new C8088i()).map(new Function() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction.j
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ImportDocumentsAction apply(@NotNull ImportDocumentsResultEvent p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return ImportDocumentsAction.this.m36575Y(p0);
                }
            }).onErrorResumeNext(new C8093k()).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.nii
                @Override // io.reactivex.rxjava3.functions.BooleanSupplier
                public final boolean getAsBoolean() {
                    boolean m36551x;
                    m36551x = ImportDocumentsAction.m36551x(it2);
                    return m36551x;
                }
            }).filter(new C8095l(it2)).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.oii
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    ImportDocumentsAction.m36552y(ImportDocumentsAction.this);
                }
            }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.pii
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    ImportDocumentsAction.m36553z(ImportDocumentsAction.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
            return doFinally;
        }
        Observable<ImportDocumentsAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public final ImportDocumentsAction disablePostEvent() {
        this.enablePostEvent = false;
        return this;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        RxjavaKt.subscribeWithDefault$default(getEditorBundle().cancelRunningRequest(Reflection.getOrCreateKotlinClass(ConvertToPDFRequest.class)), null, null, null, 7, null);
        RxjavaKt.subscribeWithDefault$default(getEditorBundle().cancelRunningRequest(Reflection.getOrCreateKotlinClass(DecryptPDFRequest.class)), null, null, null, 7, null);
    }

    public final int getCompletedFileTotalCount() {
        return this.completedFileTotalCount;
    }

    public final boolean getEnablePostEvent() {
        return this.enablePostEvent;
    }

    @NotNull
    public final List<SyncNoteModel> getNoteModels() {
        return this.noteModels;
    }

    /* renamed from: s */
    public final Observable<ImportDocumentsAction> m36577s(ImportDocumentsResultEvent resultEvent) {
        if (!CajReaderPlugin.INSTANCE.accept(resultEvent.getPath())) {
            Observable<ImportDocumentsAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        if (ReaderBundleKt.isValidContentPage(EditorBundleKt.readerBundle(getEditorBundle()), resultEvent.getPath(), 0)) {
            Observable<ImportDocumentsAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable<ImportDocumentsAction> error = Observable.error(new ImportFileException());
        Intrinsics.checkNotNullExpressionValue(error, "error(...)");
        return error;
    }

    public final void setCompletedFileTotalCount(int i) {
        this.completedFileTotalCount = i;
    }

    public final void setEnablePostEvent(boolean z) {
        this.enablePostEvent = z;
    }

    /* renamed from: t */
    public final Observable<ImportDocumentsResultEvent> m36578t(ImportDocumentsResultEvent resultEvent) {
        if (m36566P(resultEvent.getPath())) {
            Observable<ImportDocumentsResultEvent> just = Observable.just(resultEvent);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.just(this).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).map(new C8068a(resultEvent));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$assertFileValid$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new ImportDocumentsAction$assertFileValid$3(this, resultEvent)).observeOn(getMainUIScheduler()).map(new C8073b(resultEvent));
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: u */
    public final Observable<ImportDocumentsResultEvent> m36579u(final ImportDocumentsResultEvent resultEvent) {
        final String path = resultEvent.getPath();
        final String baseName = FilenameUtils.getBaseName(path);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Observable doOnNext = Observable.just(this).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).doOnNext(new C8075c(atomicBoolean, path));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(doOnNext, new Function1<ImportDocumentsAction, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$convertDocumentToPdf$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ImportDocumentsAction it2) {
                NoteImportArgs noteImportArgs;
                Intrinsics.checkNotNullParameter(it2, "it");
                boolean z = false;
                if (!atomicBoolean.get() && FileExtensionUtils.INSTANCE.isPdfFile(path)) {
                    noteImportArgs = this.importNoteArgs;
                    if (noteImportArgs == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("importNoteArgs");
                        noteImportArgs = null;
                    }
                    String importFilePassword = noteImportArgs.getImportFilePassword();
                    if (!(importFilePassword == null || importFilePassword.length() == 0)) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        }, new Function1<ImportDocumentsAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$convertDocumentToPdf$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull ImportDocumentsAction it2) {
                NoteImportArgs noteImportArgs;
                Observable<? extends Object> m36560H;
                Intrinsics.checkNotNullParameter(it2, "it");
                String absolutePath = new File(ResManager.INSTANCE.getAppContext().getCacheDir(), baseName + CloudStorageConstants.PDF_FILE_SUFFIX).getAbsolutePath();
                String str = path;
                noteImportArgs = this.importNoteArgs;
                if (noteImportArgs == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("importNoteArgs");
                    noteImportArgs = null;
                }
                String importFilePassword = noteImportArgs.getImportFilePassword();
                if (importFilePassword == null) {
                    importFilePassword = "";
                }
                Intrinsics.checkNotNull(absolutePath);
                m36560H = this.m36560H(new DecryptPDFArgs(str, importFilePassword, absolutePath), resultEvent);
                return m36560H;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$convertDocumentToPdf$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(atomicBoolean.get());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$convertDocumentToPdf$5

            /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$convertDocumentToPdf$5$a */
            /* loaded from: classes8.dex */
            public static final class C8077a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ ImportDocumentsAction f47396e;

                /* renamed from: f */
                public final /* synthetic */ String f47397f;

                public C8077a(ImportDocumentsAction importDocumentsAction, String str) {
                    this.f47396e = importDocumentsAction;
                    this.f47397f = str;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends ImportDocumentsAction> apply(@NotNull ImportDocumentsAction it2) {
                    Observable m36561J;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m36561J = this.f47396e.m36561J(this.f47397f);
                    return m36561J;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Observable m36580v;
                Intrinsics.checkNotNullParameter(it2, "it");
                String absolutePath = new File(new File(path).getParentFile(), baseName + CloudStorageConstants.PDF_FILE_SUFFIX).getAbsolutePath();
                ImportDocumentsResultEvent importDocumentsResultEvent = resultEvent;
                Intrinsics.checkNotNull(absolutePath);
                importDocumentsResultEvent.setPath(absolutePath);
                if (FileUtils.INSTANCE.fileExist(absolutePath)) {
                    Observable<? extends Object> just = Observable.just(resultEvent);
                    Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                    return just;
                }
                File file = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), baseName);
                file.mkdirs();
                String absolutePath2 = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
                m36580v = this.m36580v(path, new ConvertArgs(absolutePath, absolutePath2, 0, 4, null), resultEvent);
                Observable<? extends Object> flatMap = m36580v.flatMap(new C8077a(this, path));
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                return flatMap;
            }
        }).map(new C8078d(resultEvent));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: v */
    public final Observable<ImportDocumentsAction> m36580v(String path, ConvertArgs convertArgs, final ImportDocumentsResultEvent resultEvent) {
        if (!resultEvent.getSuccess()) {
            Observable<ImportDocumentsAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        PdfUtils pdfUtils = PdfUtils.INSTANCE;
        SizeFormat sizeFormat = SizeFormat.f45503A4;
        ConvertToPDFRequest convertToPDFRequest = new ConvertToPDFRequest(EditorBundleKt.readerBundle(getEditorBundle()), path, new Size(pdfUtils.pdfCMToPx(Integer.valueOf(sizeFormat.getSize().getWidth())), pdfUtils.pdfCMToPx(Integer.valueOf(sizeFormat.getSize().getHeight()))), convertArgs, new ImportDocumentsAction$convertToPDF$request$1(create));
        convertToPDFRequest.disableThrowException();
        RxjavaKt.subscribeWithDefault$default(RxBaseAppActionKt.submitRequestToReader(this, convertToPDFRequest), new Consumer() { // from class: com.sunia.HTREnginev2.mii
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ImportDocumentsAction.m36550w(ImportDocumentsResultEvent.this, booleanRef, create, (ConvertToPDFRequest) obj);
            }
        }, null, null, 6, null);
        Observable<ImportDocumentsAction> map = create.observeOn(AndroidSchedulers.mainThread()).doOnNext(new C8080e()).filter(new C8082f(booleanRef)).map(new C8084g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
