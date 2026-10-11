package com.onyx.android.sdk.universal.editor.action.export;

import android.graphics.RectF;
import androidx.core.provider.DocumentsContractCompat;
import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.action.DeleteFileAction;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.request.MapNoteListToTreeRequest;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.note.ExportNoteProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lingala.zip4j.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\n\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010F\u001a\u00020\u000b\u0012\f\u0010I\u001a\b\u0012\u0004\u0012\u00020$0-\u0012\u0006\u0010)\u001a\u00020\r¢\u0006\u0004\bl\u0010mJ\u0016\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\u0006\u0010\b\u001a\u00020\u0004H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\tH\u0002J\b\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0002J\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u001e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0014J\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0004J\b\u0010\u001e\u001a\u00020\u0006H\u0014J\b\u0010\u001f\u001a\u00020\u0006H\u0014J\b\u0010 \u001a\u00020\u0006H\u0014J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010!\u001a\u00020\u0004H\u0014J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001a0\t2\u0006\u0010#\u001a\u00020\u000bH\u0014J&\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\t2\u0006\u0010#\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\rH&J\u0018\u0010*\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020\rH\u0014J\u0018\u0010,\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010+\u001a\u00020\u0002H\u0004J\u001c\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0-0\t2\u0006\u0010#\u001a\u00020\u000bH\u0004J\u0016\u0010/\u001a\b\u0012\u0004\u0012\u00020\r0-2\u0006\u0010#\u001a\u00020\u000bH\u0004J\u0016\u00101\u001a\b\u0012\u0004\u0012\u0002000-2\u0006\u0010#\u001a\u00020\u000bH\u0004J\u0010\u00102\u001a\u00020$2\u0006\u0010\u0010\u001a\u00020\rH\u0004J#\u00106\u001a\u00020\u00062\u000e\u00104\u001a\n\u0012\u0004\u0012\u00020'\u0018\u0001032\u0006\u00105\u001a\u00020'H\u0004ø\u0001\u0000J\u0016\u00108\u001a\u0002072\u0006\u0010#\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$J*\u0010:\u001a\b\u0012\u0004\u0012\u0002000-2\u0006\u0010#\u001a\u00020\u000b2\f\u00109\u001a\b\u0012\u0004\u0012\u0002000-2\u0006\u0010%\u001a\u00020$J\u001e\u0010<\u001a\u0002072\u0006\u0010#\u001a\u00020\u000b2\f\u0010;\u001a\b\u0012\u0004\u0012\u00020\r0-H\u0014J\u001e\u0010>\u001a\u00020=2\u0006\u0010#\u001a\u00020\u000b2\f\u0010;\u001a\b\u0012\u0004\u0012\u00020\r0-H\u0014J\u0010\u0010?\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u000bH\u0004J \u0010C\u001a\u00020\r2\u0006\u0010@\u001a\u00020\r2\u0006\u0010A\u001a\u00020\r2\u0006\u0010B\u001a\u00020\rH\u0004R\u0014\u0010F\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u001a\u0010I\u001a\b\u0012\u0004\u0012\u00020$0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u0017\u0010)\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010MR\u0017\u0010(\u001a\u00020'8\u0006¢\u0006\f\n\u0004\bN\u0010O\u001a\u0004\bP\u0010QR\u001c\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00040-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010HR&\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0T8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bU\u0010V\u001a\u0004\bW\u0010XR'\u0010_\u001a\u0015\u0012\f\u0012\n [*\u0004\u0018\u00010\u00020\u00020Z¢\u0006\u0002\b\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^R\u0018\u0010c\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR(\u0010k\u001a\b\u0012\u0004\u0012\u00020\r0d8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\be\u0010f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010j\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", DocumentsContractCompat.f5557a, "", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "model", "Lio/reactivex/rxjava3/core/Observable;", "x", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "t", "", "I", "H", EditorConstants.ARGS_DOC_ID, "", "throwable", "G", "s", "dirPath", "E", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "F", "", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, BaiduYunConstant.CREATE, SyncConstant.EXPORT_DIR_NAME, "exportUserData", "exportAppData", "exportExtraInfo", "noteModel", "openNote", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "exportArgs", CouchFieldKey.KEY_TOC_PAGE_ID, "Ljava/io/File;", "exportCacheDir", "exportFilePath", "packFiles", "progressInfo", "onProgress", "", "loadExportPageIdList", "getExportPageIdList", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "getExportVirtualPageList", "getExportArgs", "Lkotlin/Result;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "cacheDir", "checkZipFileValid", "Landroid/graphics/RectF;", "loadExportPageRect", "virtualPageList", "filterValidExportPages", "ids", "calculateShapePageRect", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "calculateShapeQueryArgs", "generateValidFileName", "parentDir", "fileBaseName", "fileExtension", "generateUniqueFileName", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", C6997f.f39671c, "Ljava/util/List;", "noteExportArgsList", C6998g.f39679a, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getExportFilePath", "()Ljava/lang/String;", C6999h.f39688c, "Ljava/io/File;", "getExportCacheDir", "()Ljava/io/File;", "i", "documentList", "", "j", "Ljava/util/Map;", "getPathMap", "()Ljava/util/Map;", "pathMap", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", C4921e.f26537n, "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "progressSubject", "Lio/reactivex/rxjava3/disposables/Disposable;", "l", "Lio/reactivex/rxjava3/disposables/Disposable;", "exportDisposable", "", "m", "Ljava/util/Set;", "getPackedFileSet", "()Ljava/util/Set;", "setPackedFileSet", "(Ljava/util/Set;)V", "packedFileSet", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseExportNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseExportNoteAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,409:1\n766#2:410\n857#2,2:411\n1603#2,9:413\n1855#2:422\n1856#2:424\n1612#2:425\n766#2:426\n857#2,2:427\n1747#2,3:429\n350#2,7:435\n1855#2,2:442\n1549#2:444\n1620#2,3:445\n1549#2:448\n1620#2,3:449\n766#2:452\n857#2,2:453\n1855#2,2:455\n766#2:457\n857#2,2:458\n766#2:460\n857#2,2:461\n1549#2:463\n1620#2,3:464\n1549#2:467\n1620#2,3:468\n766#2:471\n857#2,2:472\n1855#2,2:474\n766#2:476\n857#2,2:477\n1549#2:479\n1620#2,3:480\n1#3:423\n1#3:434\n13309#4,2:432\n*S KotlinDebug\n*F\n+ 1 BaseExportNoteAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction\n*L\n108#1:410\n108#1:411,2\n109#1:413,9\n109#1:422\n109#1:424\n109#1:425\n193#1:426\n193#1:427,2\n203#1:429,3\n234#1:435,7\n259#1:442,2\n275#1:444\n275#1:445,3\n287#1:448\n287#1:449,3\n294#1:452\n294#1:453,2\n331#1:455,2\n343#1:457\n343#1:458,2\n344#1:460\n344#1:461,2\n345#1:463\n345#1:464,3\n359#1:467\n359#1:468,3\n362#1:471\n362#1:472,2\n380#1:474,2\n393#1:476\n393#1:477,2\n394#1:479\n394#1:480,3\n109#1:423\n221#1:432,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class BaseExportNoteAction extends RxBaseAction<ProgressInfo> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<NoteExportArgs> noteExportArgsList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String exportFilePath;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final File exportCacheDir;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<? extends SyncNoteModel> documentList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Map<String, String> pathMap;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final ReplaySubject<ProgressInfo> progressSubject;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public Disposable exportDisposable;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public Set<String> packedFileSet;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$a */
    /* loaded from: classes8.dex */
    public static final class C8933a<T, R> implements Function {
        public C8933a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditorBundle apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.docManagerBundle;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$b */
    /* loaded from: classes8.dex */
    public static final class C8934b<T, R> implements Function {
        public C8934b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Tree<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.m38062F(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$c */
    /* loaded from: classes8.dex */
    public static final class C8935c<T> implements Consumer {
        public C8935c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Tree<SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseExportNoteAction.this.m38060D(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$d */
    /* loaded from: classes8.dex */
    public static final class C8936d<T, R> implements Function {
        public C8936d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ProgressInfo> apply(@NotNull Tree<SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.export(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$e */
    /* loaded from: classes8.dex */
    public static final class C8937e<T, R> implements Function {
        public C8937e() {
        }

        /* renamed from: a */
        public final void m38073a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseExportNoteAction.this.exportAppData();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38073a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$f */
    /* loaded from: classes8.dex */
    public static final class C8938f<T, R> implements Function {
        public C8938f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.m38065I();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$g */
    /* loaded from: classes8.dex */
    public static final class C8939g<T> implements Consumer {
        public C8939g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FileUtils.INSTANCE.deleteFile(BaseExportNoteAction.this.getExportFilePath());
            BaseExportNoteAction.this.progressSubject.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$h */
    /* loaded from: classes8.dex */
    public static final class C8940h<T, R> implements Function {
        public C8940h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.export(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$i */
    /* loaded from: classes8.dex */
    public static final class C8941i<T, R> implements Function {
        public C8941i() {
        }

        @NotNull
        /* renamed from: a */
        public final BaseExportNoteAction m38077a(boolean z) {
            return BaseExportNoteAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38077a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$j */
    /* loaded from: classes8.dex */
    public static final class C8942j<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f48740f;

        public C8942j(SyncNoteModel syncNoteModel) {
            this.f48740f = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseExportNoteAction.this.m38063G(this.f48740f.getUniqueId(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$k */
    /* loaded from: classes8.dex */
    public static final class C8943k<T, R> implements Function {
        public C8943k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends EditorBundle> apply(@NotNull BaseExportNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.m38067t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$l */
    /* loaded from: classes8.dex */
    public static final class C8944l<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f48743f;

        public C8944l(SyncNoteModel syncNoteModel) {
            this.f48743f = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseExportNoteAction.this.m38066s(this.f48743f.getUniqueId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$m */
    /* loaded from: classes8.dex */
    public static final class C8945m<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SyncNoteModel f48744e;

        public C8945m(SyncNoteModel syncNoteModel) {
            this.f48744e = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48744e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$n */
    /* loaded from: classes8.dex */
    public static final class C8946n<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteExportArgs f48745e;

        /* renamed from: f */
        public final /* synthetic */ List<String> f48746f;

        public C8946n(NoteExportArgs noteExportArgs, List<String> list) {
            this.f48745e = noteExportArgs;
            this.f48746f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            List<String> list;
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteExportArgs noteExportArgs = this.f48745e;
            list = CollectionsKt___CollectionsKt.toList(it2);
            noteExportArgs.setExportPageIdList(list);
            CollectionKt.safeAddAll(this.f48746f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$o */
    /* loaded from: classes8.dex */
    public static final class C8947o<T, R> implements Function {

        /* renamed from: e */
        public static final C8947o<T, R> f48747e = new C8947o<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$p */
    /* loaded from: classes8.dex */
    public static final class C8948p<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48749f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48750g;

        public C8948p(EditorBundle editorBundle, NoteExportArgs noteExportArgs) {
            this.f48749f = editorBundle;
            this.f48750g = noteExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.export(this.f48749f, this.f48750g, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$q */
    /* loaded from: classes8.dex */
    public static final class C8949q<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48752f;

        /* renamed from: g */
        public final /* synthetic */ Ref.IntRef f48753g;

        /* renamed from: h */
        public final /* synthetic */ List<String> f48754h;

        public C8949q(EditorBundle editorBundle, Ref.IntRef intRef, List<String> list) {
            this.f48752f = editorBundle;
            this.f48753g = intRef;
            this.f48754h = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseExportNoteAction baseExportNoteAction = BaseExportNoteAction.this;
            String docId = EditorBundleKt.docId(this.f48752f);
            Ref.IntRef intRef = this.f48753g;
            int i = intRef.element + 1;
            intRef.element = i;
            baseExportNoteAction.onProgress(docId, new ProgressInfo(i, CollectionKt.getSize(this.f48754h)));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$r */
    /* loaded from: classes8.dex */
    public static final class C8950r<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48755e;

        public C8950r(EditorBundle editorBundle) {
            this.f48755e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(this.f48755e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$s */
    /* loaded from: classes8.dex */
    public static final class C8951s<T, R> implements Function {

        /* renamed from: e */
        public static final C8951s<T, R> f48756e = new C8951s<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$t */
    /* loaded from: classes8.dex */
    public static final class C8952t<T, R> implements Function {

        /* renamed from: e */
        public static final C8952t<T, R> f48757e = new C8952t<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull Iterator<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.next();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$u */
    /* loaded from: classes8.dex */
    public static final class C8953u<T, R> implements Function {
        public C8953u() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SyncNoteModel> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.m38068x(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$v */
    /* loaded from: classes8.dex */
    public static final class C8954v<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Iterator<SyncNoteModel> f48759e;

        /* JADX WARN: Multi-variable type inference failed */
        public C8954v(Iterator<? extends SyncNoteModel> it2) {
            this.f48759e = it2;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !this.f48759e.hasNext();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$w */
    /* loaded from: classes8.dex */
    public static final class C8955w<T, R> implements Function {
        public C8955w() {
        }

        /* renamed from: a */
        public final void m38091a(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BaseExportNoteAction.this.exportUserData();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38091a((SyncNoteModel) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$x */
    /* loaded from: classes8.dex */
    public static final class C8956x<T, R> implements Function {
        public C8956x() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.getExportPageIdList(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$y */
    /* loaded from: classes8.dex */
    public static final class C8957y<T, R> implements Function {
        public C8957y() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditorBundle apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BaseExportNoteAction.this.docManagerBundle;
        }
    }

    public BaseExportNoteAction(@NotNull EditorBundle docManagerBundle, @NotNull List<NoteExportArgs> noteExportArgsList, @NotNull String exportFilePath) {
        List<? extends SyncNoteModel> emptyList;
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(noteExportArgsList, "noteExportArgsList");
        Intrinsics.checkNotNullParameter(exportFilePath, "exportFilePath");
        this.docManagerBundle = docManagerBundle;
        this.noteExportArgsList = noteExportArgsList;
        this.exportFilePath = exportFilePath;
        this.exportCacheDir = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), UUIDUtils.INSTANCE.rawUUID());
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.documentList = emptyList;
        this.pathMap = new LinkedHashMap();
        ReplaySubject<ProgressInfo> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.progressSubject = create;
        this.packedFileSet = new LinkedHashSet();
    }

    /* renamed from: A */
    public static final void m38045A(BaseExportNoteAction this$0, Unit it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.exportExtraInfo();
    }

    /* renamed from: B */
    public static final void m38046B(BaseExportNoteAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m38064H();
    }

    /* renamed from: u */
    public static final void m38054u(BaseExportNoteAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Disposable disposable = this$0.exportDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: v */
    public static final void m38055v(BaseExportNoteAction this$0) {
        List listOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String absolutePath = this$0.exportCacheDir.getAbsolutePath();
        if (absolutePath == null) {
            absolutePath = "";
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(absolutePath);
        RxBaseAction.execute$default(new DeleteFileAction(listOf), null, null, null, 7, null);
    }

    /* renamed from: w */
    public static final void m38056w() {
        DBProviderBundle.Companion.dumpDocProviderInfo$default(DBProviderBundle.INSTANCE, KSyncBundle.INSTANCE.getDbProviderBundle(), false, 1, null);
    }

    /* renamed from: y */
    public static final void m38057y(BaseExportNoteAction this$0, SyncNoteModel it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.packFiles(this$0.exportCacheDir, this$0.exportFilePath);
    }

    /* renamed from: z */
    public static final boolean m38058z(Iterator iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$iterator");
        return !iterator.hasNext();
    }

    /* renamed from: C */
    public final boolean m38059C(String docId) {
        return getExportArgs(docId).getNoteProgressInfo().isError();
    }

    /* renamed from: D */
    public final void m38060D(Tree<SyncNoteModel> tree) {
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.mkdirs(this.exportCacheDir);
        String absolutePath = this.exportCacheDir.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        m38061E(absolutePath, tree);
        fileUtils.mkdirs(new File(this.exportFilePath).getParent());
    }

    /* renamed from: E */
    public final void m38061E(String dirPath, Tree<SyncNoteModel> tree) {
        for (Tree<SyncNoteModel> tree2 : tree.getChildren()) {
            SyncNoteModel item = tree2.getItem();
            if (item != null) {
                String title = item.getTitle();
                if (!(title == null || title.length() == 0)) {
                    FileUtils fileUtils = FileUtils.INSTANCE;
                    String combinePath = fileUtils.combinePath(dirPath, FileUtils.generateUniqueFileName$default(fileUtils, dirPath, fileUtils.buildValidFatFilename(String.valueOf(item.getTitle())), "", 0, new Function1<File, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$makeTreeDirs$1$path$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Boolean invoke(@NotNull File it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            return Boolean.valueOf(!BaseExportNoteAction.this.getPathMap().containsValue(it2.getAbsolutePath()));
                        }
                    }, 8, null));
                    this.pathMap.put(item.getUniqueId(), combinePath);
                    if (item.isLibrary()) {
                        Debug.INSTANCE.m32035d(getClass(), "mk tree dir:" + combinePath, new Object[0]);
                        m38061E(combinePath, tree2);
                    }
                }
            }
        }
    }

    /* renamed from: F */
    public final Tree<SyncNoteModel> m38062F(NoteProvider noteProvider) {
        int collectionSizeOrDefault;
        List<NoteExportArgs> list = this.noteExportArgsList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteExportArgs) it2.next()).getNoteModel());
        }
        return new MapNoteListToTreeRequest(noteProvider, arrayList).execute();
    }

    /* renamed from: G */
    public final void m38063G(String docId, Throwable throwable) {
        getExportArgs(docId).getNoteProgressInfo().setThrowable(throwable);
    }

    /* renamed from: H */
    public final void m38064H() {
        RxjavaKt.done(this.progressSubject, ProgressInfo.INSTANCE.onComplete());
    }

    /* renamed from: I */
    public final String m38065I() {
        Object first;
        String extension;
        String extension2;
        Object first2;
        File file = new File(this.exportFilePath);
        FileUtils.INSTANCE.mkdirs(file.getParent());
        Collection<File> listFiles = onyx.org.apache.commons.io.FileUtils.listFiles(this.exportCacheDir, (String[]) null, true);
        Intrinsics.checkNotNullExpressionValue(listFiles, "listFiles(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : listFiles) {
            if (((File) obj).isFile()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            com.blankj.utilcode.util.FileUtils.notifySystemToScan(file);
            return this.exportFilePath;
        }
        Paths paths = Paths.INSTANCE;
        String absolutePath = this.exportCacheDir.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        boolean z = false;
        Collection listFiles$default = Paths.listFiles$default(paths, paths.append(paths.toPath(absolutePath), SyncConstant.EXPORT_USER_DATA), false, 1, null);
        if (!(listFiles$default instanceof Collection) || !listFiles$default.isEmpty()) {
            Iterator it2 = listFiles$default.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (((File) it2.next()).isFile()) {
                    z = true;
                    break;
                }
            }
        }
        if (arrayList.size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
            Intrinsics.checkNotNullExpressionValue(first, "first(...)");
            extension = FilesKt__UtilsKt.getExtension((File) first);
            extension2 = FilesKt__UtilsKt.getExtension(file);
            if (Intrinsics.areEqual(extension, extension2) && !z) {
                FileUtils.INSTANCE.deleteFile(file);
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
                onyx.org.apache.commons.io.FileUtils.copyFile((File) first2, file);
                com.blankj.utilcode.util.FileUtils.notifySystemToScan(file);
                return this.exportFilePath;
            }
        }
        exportExtraInfo();
        packFiles(this.exportCacheDir, this.exportFilePath);
        com.blankj.utilcode.util.FileUtils.notifySystemToScan(file);
        return this.exportFilePath;
    }

    @NotNull
    public RectF calculateShapePageRect(@NotNull EditorBundle editorBundle, @NotNull List<String> ids) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(ids, "ids");
        Iterator<T> it2 = EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getProviderHolder().getNoteShapeProvider().loadShapePageIdList(calculateShapeQueryArgs(editorBundle, ids)).iterator();
        float f = Float.MAX_VALUE;
        float f2 = -3.4028235E38f;
        float f3 = -3.4028235E38f;
        float f4 = Float.MAX_VALUE;
        while (it2.hasNext()) {
            VirtualPage virtualPage = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage((String) it2.next());
            if (virtualPage != null) {
                RectF cellOriginRectFCopy = virtualPage.getBox().getCellOriginRectFCopy();
                f = Math.min(f, cellOriginRectFCopy.left);
                f4 = Math.min(f4, cellOriginRectFCopy.top);
                f2 = Math.max(f2, cellOriginRectFCopy.right);
                f3 = Math.max(f3, cellOriginRectFCopy.bottom);
            }
        }
        return new RectF(f, f4, f2, f3);
    }

    @NotNull
    public CBQueryArgs calculateShapeQueryArgs(@NotNull EditorBundle editorBundle, @NotNull List<String> ids) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(ids, "ids");
        List<LayerInfo> layerList = editorBundle.getWorkBundle().getNoteBundle().getNoteDoc().ensureGlobalNotePage().getPageInfo().getLayerList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : layerList) {
            if (((LayerInfo) obj).getShow()) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Integer.valueOf(((LayerInfo) it2.next()).getId()));
        }
        CBQueryArgs loadShapeListQuery = ShapeQueryArgsExtKt.loadShapeListQuery(EditorBundleKt.docId(editorBundle), 0);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadShapeListQuery.andWith(couchUtils.inExpression(CouchFieldKey.KEY_ZORDER, arrayList2)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, ids));
    }

    public final void checkZipFileValid(@Nullable Result<? extends File> result, @NotNull File cacheDir) {
        File file;
        String stackTraceToString;
        Throwable m72624exceptionOrNullimpl;
        Intrinsics.checkNotNullParameter(cacheDir, "cacheDir");
        if (result != null) {
            Object value = result.getValue();
            if (Result.m72627isFailureimpl(value)) {
                value = null;
            }
            file = (File) value;
        } else {
            file = null;
        }
        if (RxjavaKt.isDisposed(this.exportDisposable)) {
            Debug debug = Debug.INSTANCE;
            Class<?> cls = getClass();
            StringBuilder sb = new StringBuilder();
            sb.append("export disposed:");
            sb.append(file != null ? file.getAbsolutePath() : null);
            debug.m32052i(cls, sb.toString(), new Object[0]);
            return;
        }
        Boolean valueOf = file != null ? Boolean.valueOf(file.exists()) : null;
        Boolean valueOf2 = file != null ? Boolean.valueOf(new ZipFile(file).isValidZipFile()) : null;
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.areEqual(valueOf, bool) && Intrinsics.areEqual(valueOf2, bool)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("export zip file error exist(");
        sb2.append(valueOf);
        sb2.append(") isValidZipFile(");
        sb2.append(valueOf2);
        sb2.append(") :");
        sb2.append(file != null ? file.getAbsolutePath() : null);
        sb2.append("\r\n");
        ZipException zipException = new ZipException(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(zipException);
        sb3.append(stackTraceToString);
        sb3.append("\r\n");
        String sb4 = sb3.toString();
        for (File file2 : FileUtils.INSTANCE.listAllFiles(cacheDir.getAbsolutePath())) {
            sb4 = sb4 + file2.getName() + "size=" + file2.length() + "\r\n";
        }
        Debug.INSTANCE.m32044e(getClass(), sb4, new Object[0]);
        LogUtils.file(getClass().getSimpleName(), sb4);
        if (result != null && (m72624exceptionOrNullimpl = Result.m72624exceptionOrNullimpl(result.getValue())) != null) {
            throw m72624exceptionOrNullimpl;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ProgressInfo> create() {
        Observable<ProgressInfo> doFinally = new EnsureNoteProviderAction().build().observeOn(Schedulers.m61350io()).map(new C8934b()).doOnNext(new C8935c()).flatMap(new C8936d()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.hn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                BaseExportNoteAction.m38054u(BaseExportNoteAction.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.in
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                BaseExportNoteAction.m38055v(BaseExportNoteAction.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.jn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                BaseExportNoteAction.m38056w();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final Observable<ProgressInfo> export(@NotNull Tree<SyncNoteModel> tree) {
        final boolean z;
        List<? extends SyncNoteModel> list;
        Intrinsics.checkNotNullParameter(tree, "tree");
        List<Tree<SyncNoteModel>> childrenToList = tree.childrenToList();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = childrenToList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            SyncNoteModel syncNoteModel = (SyncNoteModel) ((Tree) next).getItem();
            if (syncNoteModel != null && syncNoteModel.isDocument()) {
                z = true;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            SyncNoteModel syncNoteModel2 = (SyncNoteModel) ((Tree) it3.next()).getItem();
            if (syncNoteModel2 != null) {
                arrayList2.add(syncNoteModel2);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        this.documentList = list;
        final Iterator<? extends SyncNoteModel> it4 = list.iterator();
        if (!it4.hasNext()) {
            Observable<ProgressInfo> just = Observable.just(ProgressInfo.INSTANCE.onComplete());
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        z = this.documentList.size() > 1;
        Observable observeOn = Observable.just(it4).map(C8952t.f48757e).observeOn(AndroidSchedulers.mainThread()).concatMap(new C8953u()).observeOn(Schedulers.m61350io());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable map = RxjavaKt.doOnNextIf(observeOn, new Function1<SyncNoteModel, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$export$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SyncNoteModel it5) {
                boolean z2;
                boolean m38059C;
                Intrinsics.checkNotNullParameter(it5, "it");
                if (z) {
                    m38059C = this.m38059C(it5.getUniqueId());
                    if (!m38059C) {
                        z2 = true;
                        return Boolean.valueOf(z2);
                    }
                }
                z2 = false;
                return Boolean.valueOf(z2);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.kn
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                BaseExportNoteAction.m38057y(BaseExportNoteAction.this, (SyncNoteModel) obj);
            }
        }).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.ln
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean m38058z;
                m38058z = BaseExportNoteAction.m38058z(it4);
                return m38058z;
            }
        }).filter(new C8954v(it4)).observeOn(Schedulers.m61350io()).map(new C8955w()).map(new C8937e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        this.exportDisposable = RxjavaKt.doOnNextIf(map, new Function1<Unit, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$export$11
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Unit it5) {
                Intrinsics.checkNotNullParameter(it5, "it");
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.mn
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                BaseExportNoteAction.m38045A(BaseExportNoteAction.this, (Unit) obj);
            }
        }).map(new C8938f()).doOnError(new C8939g()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.nn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                BaseExportNoteAction.m38046B(BaseExportNoteAction.this);
            }
        }).subscribe();
        return this.progressSubject;
    }

    @NotNull
    public abstract Observable<String> export(@NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs, @NotNull String pageId);

    public void exportAppData() {
    }

    public void exportExtraInfo() {
    }

    public void exportUserData() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final List<VirtualPage> filterValidExportPages(@NotNull EditorBundle editorBundle, @NotNull List<VirtualPage> virtualPageList, @NotNull NoteExportArgs exportArgs) {
        int collectionSizeOrDefault;
        Object first;
        List<VirtualPage> mutableListOf;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        if (!NoteScene.INSTANCE.isDraft(exportArgs.getNoteModel().getActiveScene()) || virtualPageList.isEmpty()) {
            return virtualPageList;
        }
        Benchmark benchmark = new Benchmark();
        List<VirtualPage> list = virtualPageList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPage) it2.next()).getBox().getId());
        }
        RectF calculateShapePageRect = calculateShapePageRect(editorBundle, arrayList);
        benchmark.reportAndRestart("filterValidExportPages calculateShapeRect origin id size = " + CollectionKt.getSize(arrayList));
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (((VirtualPage) obj).getBox().getCellOriginRectFCopy().intersect(calculateShapePageRect)) {
                arrayList2.add(obj);
            }
        }
        benchmark.reportAndRestart("filterValidExportPages rect intersect target id size = " + CollectionKt.getSize(arrayList2));
        if (!arrayList2.isEmpty()) {
            return arrayList2;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) virtualPageList);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(first);
        return mutableListOf;
    }

    @NotNull
    public final String generateUniqueFileName(@NotNull String parentDir, @NotNull String fileBaseName, @NotNull String fileExtension) {
        Intrinsics.checkNotNullParameter(parentDir, "parentDir");
        Intrinsics.checkNotNullParameter(fileBaseName, "fileBaseName");
        Intrinsics.checkNotNullParameter(fileExtension, "fileExtension");
        return FileUtils.generateUniqueFileName$default(FileUtils.INSTANCE, parentDir, fileBaseName, fileExtension, 0, new Function1<File, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction$generateUniqueFileName$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull File it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!BaseExportNoteAction.this.getPackedFileSet().contains(it2.getAbsolutePath()));
            }
        }, 8, null);
    }

    @NotNull
    public final String generateValidFileName(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        FileUtils fileUtils = FileUtils.INSTANCE;
        String title = EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getNoteModel().getTitle();
        if (title == null) {
            title = "";
        }
        return fileUtils.buildValidFatFilename(title);
    }

    @NotNull
    public final NoteExportArgs getExportArgs(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        NoteExportArgs findByNoteId = NoteExportArgs.INSTANCE.findByNoteId(this.noteExportArgsList, docId);
        Intrinsics.checkNotNull(findByNoteId);
        return findByNoteId;
    }

    @NotNull
    public final File getExportCacheDir() {
        return this.exportCacheDir;
    }

    @NotNull
    public final String getExportFilePath() {
        return this.exportFilePath;
    }

    @NotNull
    public final List<String> getExportPageIdList(@NotNull EditorBundle editorBundle) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        List<VirtualPage> exportVirtualPageList = getExportVirtualPageList(editorBundle);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(exportVirtualPageList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = exportVirtualPageList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPage) it2.next()).getBox().getId());
        }
        return arrayList;
    }

    @NotNull
    public final List<VirtualPage> getExportVirtualPageList(@NotNull EditorBundle editorBundle) {
        List list;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        List<String> pageIdList = getExportArgs(EditorBundleKt.docId(editorBundle)).getPageIdList();
        List virtualPageList = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPageList();
        if (!pageIdList.isEmpty()) {
            list = new ArrayList();
            for (Object obj : virtualPageList) {
                if (pageIdList.contains(((VirtualPage) obj).getBox().getId())) {
                    list.add(obj);
                }
            }
        } else {
            list = virtualPageList;
        }
        if (CollectionKt.isNullOrEmpty(list)) {
            LogUtils.file(AnyKt.toSimpleNameString(this), "getExportVirtualPageList is empty, need exportPageIdList:" + pageIdList.size() + ",doc virtualPageList:" + virtualPageList.size());
        }
        return list;
    }

    @NotNull
    public final Set<String> getPackedFileSet() {
        return this.packedFileSet;
    }

    @NotNull
    public final Map<String, String> getPathMap() {
        return this.pathMap;
    }

    @NotNull
    public final Observable<List<String>> loadExportPageIdList(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Observable<List<String>> map = Observable.just(editorBundle).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C8956x());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final RectF loadExportPageRect(@NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(editorBundle.getWorkBundle());
        obtainBoxManager.setScale(1.0f);
        RectF rectF = new RectF();
        List<BoxInfo> copyBoxList = obtainBoxManager.copyBoxList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : copyBoxList) {
            if (exportArgs.getExportPageIdList().contains(((BoxInfo) obj).getId())) {
                arrayList.add(obj);
            }
        }
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
            arrayList3.add(((BoxInfo) it2.next()).getCellOriginRectFCopy());
        }
        RectUtils.INSTANCE.union(rectF, arrayList3);
        return rectF;
    }

    public final void onProgress(@NotNull String docId, @NotNull ProgressInfo progressInfo) {
        Object obj;
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
        Iterator<T> it2 = this.noteExportArgsList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(((NoteExportArgs) obj).getNoteModel().getUniqueId(), docId)) {
                    break;
                }
            }
        }
        NoteExportArgs noteExportArgs = (NoteExportArgs) obj;
        if (noteExportArgs != null) {
            noteExportArgs.getNoteProgressInfo().setProgressInfo(new ProgressInfo(progressInfo));
            EditorBundleKt.postEvent(this.docManagerBundle, new ExportNoteProgressEvent(this.noteExportArgsList));
        }
        Iterator<? extends SyncNoteModel> it3 = this.documentList.iterator();
        int i = 0;
        while (true) {
            if (!it3.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it3.next().getUniqueId(), docId)) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        ProgressInfo progressInfo2 = new ProgressInfo();
        progressInfo2.setProgress(Math.min((i * r0 * 100) + (progressInfo.getProgress() * (1.0f / CollectionKt.getSize(this.documentList))), 99.0d));
        this.progressSubject.onNext(progressInfo2);
    }

    @NotNull
    public Observable<EditorBundle> openNote(@NotNull SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        onProgress(noteModel.getUniqueId(), new ProgressInfo());
        Observable map = new OpenDocumentDataAction(this.docManagerBundle, OpenDocArgs.INSTANCE.createFrom(noteModel)).build().map(new C8957y());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public void packFiles(@NotNull File exportCacheDir, @NotNull String exportFilePath) {
        Intrinsics.checkNotNullParameter(exportCacheDir, "exportCacheDir");
        Intrinsics.checkNotNullParameter(exportFilePath, "exportFilePath");
        File[] listFiles = exportCacheDir.listFiles();
        Result<File> m72269zipFilesRgG5Fkc = ZipUtils.INSTANCE.m72269zipFilesRgG5Fkc(listFiles, exportFilePath, (String) null);
        if (listFiles != null) {
            for (File file : listFiles) {
                FileUtils fileUtils = FileUtils.INSTANCE;
                Intrinsics.checkNotNull(file);
                fileUtils.deleteFile(file);
            }
        }
        checkZipFileValid(m72269zipFilesRgG5Fkc, exportCacheDir);
    }

    /* renamed from: s */
    public final void m38066s(String docId) {
        getExportArgs(docId).getNoteProgressInfo().checkNoSpaceError();
    }

    public final void setPackedFileSet(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.packedFileSet = set;
    }

    /* renamed from: t */
    public final Observable<EditorBundle> m38067t() {
        Observable map = DocCommonActionsKt.ensureCloseDoc(this.docManagerBundle).map(new C8933a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: x */
    public final Observable<SyncNoteModel> m38068x(SyncNoteModel model) {
        Observable doOnError = openNote(model).concatMap(new C8940h()).map(new C8941i()).doOnError(new C8942j(model));
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        Observable<SyncNoteModel> map = RxjavaKt.onErrorReturnItemWithLog(doOnError, this).concatMap(new C8943k()).doOnNext(new C8944l(model)).map(new C8945m(model));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public Observable<Boolean> export(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        ArrayList arrayList = new ArrayList();
        Ref.IntRef intRef = new Ref.IntRef();
        NoteExportArgs exportArgs = getExportArgs(EditorBundleKt.docId(editorBundle));
        Observable<Boolean> map = loadExportPageIdList(editorBundle).doOnNext(new C8946n(exportArgs, arrayList)).flatMap(C8947o.f48747e).concatMap(new C8948p(editorBundle, exportArgs)).doOnNext(new C8949q(editorBundle, intRef, arrayList)).takeLast(1).flatMap(new C8950r(editorBundle)).map(C8951s.f48756e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
