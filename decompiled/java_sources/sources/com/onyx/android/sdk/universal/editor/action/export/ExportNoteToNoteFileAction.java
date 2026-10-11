package com.onyx.android.sdk.universal.editor.action.export;

import android.graphics.RectF;
import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.SecurityUtils;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.exception.OpenDocumentException;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.PointPaths;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.common.path.StashPaths;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.common.path.VirtualPagePaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.neopdf.lib.UUIDUtils;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteExtraInfo;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportPdfPagesResult;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.proto.data.ExtraInfoBean;
import com.onyx.android.sdk.replicator.note.proto.doc.VirtualPagePBDocument;
import com.onyx.android.sdk.replicator.note.proto.p036pb.AppPBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.AppPbFactory;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBFactory;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPbFactory;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction;
import com.onyx.android.sdk.universal.editor.action.page.ExportPdfPagesAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.ComputeCoverThumbnailPageIndexAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.NoteExporter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0015\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010:\u001a\u00020\u0002\u0012\f\u0010=\u001a\b\u0012\u0004\u0012\u00020.0\n\u0012\u0006\u0010P\u001a\u00020\u0006¢\u0006\u0004\bQ\u0010RJ\u0014\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J8\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\r0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J&\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J \u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012H\u0002J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012H\u0002J\u0018\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012H\u0002J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010 \u001a\u00020\u001fH\u0002J\u0018\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u0012H\u0002J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010)\u001a\u00020(H\u0014J\b\u0010+\u001a\u00020\u0017H\u0014J\b\u0010,\u001a\u00020\u0017H\u0014J\b\u0010-\u001a\u00020\u0017H\u0014J&\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u0006H\u0016J\u001e\u00103\u001a\u0002022\u0006\u0010\u0003\u001a\u00020\u00022\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00060\nH\u0014J\u001e\u00105\u001a\u0002042\u0006\u0010\u0003\u001a\u00020\u00022\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00060\nH\u0014R\u0017\u0010:\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u001a\u0010=\u001a\b\u0012\u0004\u0012\u00020.0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u001a\u0010@\u001a\b\u0012\u0004\u0012\u00020\b0>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010<R\"\u0010G\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\"\u0010K\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010B\u001a\u0004\bI\u0010D\"\u0004\bJ\u0010FR\"\u0010O\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010B\u001a\u0004\bM\u0010D\"\u0004\bN\u0010F¨\u0006S"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lio/reactivex/rxjava3/core/Observable;", "X", "", "Q", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "exportNoteArgs", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "", "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;", "W", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "Ljava/io/File;", "pbExportDir", "exportFile", "R", "Y", "", "T", "N", "debugDir", "M", "P", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "K", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;", "L", "", "throwable", "", "V", "exportCacheDir", "U", SyncConstant.EXPORT_DIR_NAME, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "openNote", "exportUserData", "exportAppData", "exportExtraInfo", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "exportArgs", CouchFieldKey.KEY_TOC_PAGE_ID, "ids", "Landroid/graphics/RectF;", "calculateShapePageRect", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "calculateShapeQueryArgs", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getDocManagerBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", C4921e.f26528e, "Ljava/util/List;", "noteExportArgsList", "", "p", "exportNoteArgsList", "q", Constants.HASIDCALL_INDEX_SIG, "getExportAllFolder", Constants.BOOLEAN_VALUE_SIG, "setExportAllFolder", "(Z)V", "exportAllFolder", "r", "getExportAllTag", "setExportAllTag", "exportAllTag", "s", "getExportFont", "setExportFont", "exportFont", "exportFilePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExportNoteToNoteFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportNoteToNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,371:1\n1#2:372\n1549#3:373\n1620#3,3:374\n766#3:377\n857#3,2:378\n766#3:380\n857#3,2:381\n1855#3,2:383\n1726#3,3:385\n*S KotlinDebug\n*F\n+ 1 ExportNoteToNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction\n*L\n166#1:373\n166#1:374,3\n195#1:377\n195#1:378,2\n247#1:380\n247#1:381,2\n248#1:383,2\n333#1:385,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ExportNoteToNoteFileAction extends BaseExportNoteAction {

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final List<NoteExportArgs> noteExportArgsList;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final List<ExportNoteArgs> exportNoteArgsList;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean exportAllFolder;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean exportAllTag;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean exportFont;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C8961a<T, R> implements Function {
        public C8961a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportNoteToNoteFileAction.this.m38109Q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C8962b<T, R> implements Function {

        /* renamed from: e */
        public static final C8962b<T, R> f48780e = new C8962b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$c */
    /* loaded from: classes8.dex */
    public static final class C8963c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48782f;

        public C8963c(EditorBundle editorBundle) {
            this.f48782f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(ExportNoteToNoteFileAction.this.m38113V(it2, this.f48782f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$d */
    /* loaded from: classes8.dex */
    public static final class C8964d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48784f;

        /* renamed from: g */
        public final /* synthetic */ ExportNoteArgs f48785g;

        /* renamed from: h */
        public final /* synthetic */ List<VirtualPage> f48786h;

        public C8964d(EditorBundle editorBundle, ExportNoteArgs exportNoteArgs, List<VirtualPage> list) {
            this.f48784f = editorBundle;
            this.f48785g = exportNoteArgs;
            this.f48786h = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Map<String, ExportPdfPagesResult>> apply(@NotNull ExportNoteToNoteFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportNoteToNoteFileAction.this.m38114W(this.f48784f, this.f48785g, this.f48786h);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$e */
    /* loaded from: classes8.dex */
    public static final class C8965e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PBDataContext f48788f;

        /* renamed from: g */
        public final /* synthetic */ File f48789g;

        /* renamed from: h */
        public final /* synthetic */ File f48790h;

        public C8965e(PBDataContext pBDataContext, File file, File file2) {
            this.f48788f = pBDataContext;
            this.f48789g = file;
            this.f48790h = file2;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull Map<String, ExportPdfPagesResult> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportNoteToNoteFileAction.this.m38110R(this.f48788f, this.f48789g, this.f48790h);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$f */
    /* loaded from: classes8.dex */
    public static final class C8966f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ PBDataContext f48792f;

        public C8966f(PBDataContext pBDataContext) {
            this.f48792f = pBDataContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportNoteToNoteFileAction.this.onProgress(this.f48792f.getDocumentId(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$g */
    /* loaded from: classes8.dex */
    public static final class C8967g<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ PBDataContext f48794f;

        public C8967g(PBDataContext pBDataContext) {
            this.f48794f = pBDataContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportNoteToNoteFileAction.this.m38103K(this.f48794f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$h */
    /* loaded from: classes8.dex */
    public static final class C8968h<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ PBDataContext f48796f;

        /* renamed from: g */
        public final /* synthetic */ File f48797g;

        /* renamed from: h */
        public final /* synthetic */ File f48798h;

        public C8968h(PBDataContext pBDataContext, File file, File file2) {
            this.f48796f = pBDataContext;
            this.f48797g = file;
            this.f48798h = file2;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final File apply(@NotNull ProgressInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportNoteToNoteFileAction.this.m38116Y(this.f48796f, this.f48797g, this.f48798h);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$i */
    /* loaded from: classes8.dex */
    public static final class C8969i<T, R> implements Function {

        /* renamed from: e */
        public static final C8969i<T, R> f48799e = new C8969i<>();

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull File it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getAbsolutePath();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$j */
    /* loaded from: classes8.dex */
    public static final class C8970j<T> implements Consumer {
        public C8970j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(String str) {
            Set<String> packedFileSet = ExportNoteToNoteFileAction.this.getPackedFileSet();
            Intrinsics.checkNotNull(str);
            packedFileSet.add(str);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$k */
    /* loaded from: classes8.dex */
    public static final class C8971k<T, R> implements Function {
        public C8971k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportNoteToNoteFileAction.this.m38115X(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$l */
    /* loaded from: classes8.dex */
    public static final class C8972l<T, R> implements Function {
        public C8972l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditorBundle apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportNoteToNoteFileAction.this.getDocManagerBundle();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$m */
    /* loaded from: classes8.dex */
    public static final class C8973m<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ExportNoteArgs f48803e;

        public C8973m(ExportNoteArgs exportNoteArgs) {
            this.f48803e = exportNoteArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<String, ExportPdfPagesResult> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48803e.setExportPdfPagesResult(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$n */
    /* loaded from: classes8.dex */
    public static final class C8974n<T, R> implements Function {
        public C8974n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ExportNoteToNoteFileAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportNoteToNoteFileAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportNoteToNoteFileAction(@NotNull EditorBundle docManagerBundle, @NotNull List<NoteExportArgs> noteExportArgsList, @NotNull String exportFilePath) {
        super(docManagerBundle, noteExportArgsList, exportFilePath);
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(noteExportArgsList, "noteExportArgsList");
        Intrinsics.checkNotNullParameter(exportFilePath, "exportFilePath");
        this.docManagerBundle = docManagerBundle;
        this.noteExportArgsList = noteExportArgsList;
        this.exportNoteArgsList = new ArrayList();
    }

    /* renamed from: S */
    public static final void m38102S(File pbExportDir) {
        Intrinsics.checkNotNullParameter(pbExportDir, "$pbExportDir");
        FileUtils.INSTANCE.deleteFile(pbExportDir);
    }

    /* renamed from: K */
    public final void m38103K(PBDataContext pbDataContext) {
        String stackTraceToString;
        VirtualPagePaths virtualPagePaths = VirtualPagePaths.INSTANCE;
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        Intrinsics.checkNotNull(exportNoteArgs);
        if (CollectionKt.getSize(Paths.INSTANCE.listFiles(virtualPagePaths.pagePBFileDir(exportNoteArgs.getExportDirPath(), pbDataContext.getDocumentId()), false)) > 0) {
            return;
        }
        Exception exc = new Exception("ExportNote checkVirtualPagePBFile fail, no exist");
        String simpleNameString = AnyKt.toSimpleNameString(this);
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(exc);
        LogUtils.file(simpleNameString, stackTraceToString);
        throw exc;
    }

    /* renamed from: L */
    public final ExportNoteListArgs m38104L() {
        ExportNoteListArgs exportNoteListArgs = new ExportNoteListArgs();
        String absolutePath = getExportCacheDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        exportNoteListArgs.setExportDirPath(absolutePath);
        exportNoteListArgs.setExportNoteArgsList(this.exportNoteArgsList);
        exportNoteListArgs.setExportAllFolder(this.exportAllFolder);
        exportNoteListArgs.setExportAllTag(this.exportAllTag);
        exportNoteListArgs.setExportFont(this.exportFont);
        return exportNoteListArgs;
    }

    /* renamed from: M */
    public final void m38105M(PBDataContext pbDataContext, File debugDir) {
        onyx.org.apache.commons.io.FileUtils.copyDirectory(new File(pbDataContext.getNoteProviderHolder().getDocDataProviderInfo().getBaseDir()), new File(debugDir, SyncConstant.LOCAL_DB_DIR_NAME));
    }

    /* renamed from: N */
    public final void m38106N(PBDataContext pbDataContext, File pbExportDir) {
        try {
            Paths paths = Paths.INSTANCE;
            Path path = pbExportDir.toPath();
            Intrinsics.checkNotNullExpressionValue(path, "toPath(...)");
            File file = paths.append(path, "debug").toFile();
            file.mkdirs();
            Intrinsics.checkNotNull(file);
            m38105M(pbDataContext, file);
            m38108P(pbDataContext, file);
            m38107O(pbDataContext, file);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: O */
    public final void m38107O(PBDataContext pbDataContext, File debugDir) {
        onyx.org.apache.commons.io.FileUtils.copyDirectory(Paths.INSTANCE.asFile(PointPaths.INSTANCE.appDocPointDir(pbDataContext.getDocumentId())), new File(debugDir, "point"));
    }

    /* renamed from: P */
    public final void m38108P(PBDataContext pbDataContext, File debugDir) {
        onyx.org.apache.commons.io.FileUtils.copyDirectory(new File(new VirtualPagePBDocument().getPBFileDirPath(pbDataContext.getDocumentId())), new File(debugDir, "page"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, java.lang.String] */
    /* renamed from: Q */
    public final Observable<String> m38109Q(EditorBundle editorBundle) {
        Object m72621constructorimpl;
        int collectionSizeOrDefault;
        NoteDocument noteDoc = editorBundle.getWorkBundle().getNoteBundle().getNoteDoc();
        if (!noteDoc.getIsOpen()) {
            throw new OpenDocumentException();
        }
        String documentUniqueId = noteDoc.getDocumentUniqueId();
        NoteExportArgs exportArgs = getExportArgs(documentUniqueId);
        PBDataContext pBDataContext = new PBDataContext(noteDoc.getProviderHolder(), documentUniqueId);
        FileUtils fileUtils = FileUtils.INSTANCE;
        String parent = fileUtils.getParent(getPathMap().get(documentUniqueId));
        Intrinsics.checkNotNull(parent);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? title = noteDoc.getNoteModel().getTitle();
        objectRef.element = title;
        try {
            Result.Companion companion = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(generateUniqueFileName(parent, fileUtils.buildValidFatFilename(title), "note"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m72621constructorimpl = Result.m72621constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m72627isFailureimpl(m72621constructorimpl)) {
            m72621constructorimpl = null;
        }
        File file = new File(parent, (String) AnyKt.getOrElse(m72621constructorimpl, (Function0<? extends Object>) new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$exportFile$fileName$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                FileUtils fileUtils2 = FileUtils.INSTANCE;
                String combine = fileUtils2.combine(objectRef.element, "note");
                if (combine == null) {
                    combine = "";
                }
                return fileUtils2.getValidFileName(combine);
            }
        }));
        File file2 = new File(new File(getAppContext().getCacheDir(), UUIDUtils.INSTANCE.rawUUID()), documentUniqueId);
        FileUtils fileUtils2 = FileUtils.INSTANCE;
        fileUtils2.mkdirs(parent);
        fileUtils2.deleteFile(file);
        fileUtils2.deleteFile(file2);
        fileUtils2.mkdirs(file2);
        objectRef.element = CollectionKt.getSize(this.noteExportArgsList) == 1 ? fileUtils2.getFileBaseName(getExportFilePath()) : noteDoc.getNoteModel().getTitle();
        NoteExportArgs exportArgs2 = getExportArgs(EditorBundleKt.docId(editorBundle));
        boolean z = CollectionKt.isNullOrEmpty(exportArgs2.getPageIdList()) && !NoteScene.INSTANCE.isDraft(exportArgs2.getNoteModel().getActiveScene());
        List<VirtualPage> filterValidExportPages = filterValidExportPages(editorBundle, getExportVirtualPageList(editorBundle), exportArgs);
        ExportNoteArgs exportNoteArgs = new ExportNoteArgs();
        exportNoteArgs.setTitle((String) objectRef.element);
        String absolutePath = file2.getParentFile().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        exportNoteArgs.setExportDirPath(absolutePath);
        List<VirtualPage> list = filterValidExportPages;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPage) it2.next()).getBox().getId());
        }
        exportNoteArgs.setPageIdList(arrayList);
        exportNoteArgs.setInfoBean(new ExtraInfoBean(0, (int) PackageUtils.INSTANCE.getAppVersionCode(getAppContext()), noteDoc.getNoteDocBean().getUserId(), documentUniqueId, 1, null));
        exportNoteArgs.setDocumentId(documentUniqueId);
        exportNoteArgs.setExportTemplate(exportArgs.getExportTemplate());
        exportNoteArgs.setExportGlobalPage(true);
        exportNoteArgs.setExportThumbnailPath(exportArgs.getExportThumbnailPath());
        exportNoteArgs.setExportStashArchivedData(exportArgs.getExportStashArchivedData());
        exportNoteArgs.setExportRemovedPages(z);
        pBDataContext.setExportNoteArgs(exportNoteArgs);
        this.exportNoteArgsList.add(exportNoteArgs);
        Observable<String> flatMap = Observable.just(this).flatMap(new C8964d(editorBundle, exportNoteArgs, filterValidExportPages)).flatMap(new C8965e(pBDataContext, file2, file));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: R */
    public final Observable<String> m38110R(PBDataContext pbDataContext, final File pbExportDir, File exportFile) {
        Observable doOnNext = PBFactory.exportToNoteObservable$default(PBFactory.INSTANCE, pbDataContext, null, null, 6, null).doOnNext(new C8966f(pbDataContext));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<String> doFinally = RxjavaKt.takeLastOne(doOnNext).observeOn(Schedulers.m61350io()).doOnNext(new C8967g(pbDataContext)).map(new C8968h(pbDataContext, pbExportDir, exportFile)).map(C8969i.f48799e).doOnNext(new C8970j()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.e2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportNoteToNoteFileAction.m38102S(pbExportDir);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: T */
    public final void m38111T(PBDataContext pbDataContext, File pbExportDir) {
        List mutableListOf;
        try {
            String documentId = pbDataContext.getDocumentId();
            CommonPaths commonPaths = CommonPaths.INSTANCE;
            Path path = pbExportDir.toPath();
            Intrinsics.checkNotNullExpressionValue(path, "toPath(...)");
            File file = commonPaths.stash(path).toFile();
            StashPaths stashPaths = StashPaths.INSTANCE;
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(stashPaths.stashShapePBFileDir(documentId));
            ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
            if (exportNoteArgs != null && exportNoteArgs.getExportStashArchivedData()) {
                mutableListOf.add(stashPaths.stashShapePBArchivedDir(documentId));
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : mutableListOf) {
                Path path2 = (Path) obj;
                if (Files.exists(path2, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && Files.isDirectory(path2, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    arrayList.add(obj);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                onyx.org.apache.commons.io.FileUtils.copyDirectoryToDirectory(((Path) it2.next()).toFile(), file);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: U */
    public final void m38112U(File exportCacheDir) {
        ExportNoteExtraInfo exportNoteExtraInfo = new ExportNoteExtraInfo();
        File file = new File(exportCacheDir, NoteExporter.INSTANCE.getExportExtraInfoName());
        if (file.exists()) {
            return;
        }
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(file);
        fileUtils.appendContentToFile(StringKt.safelyGetStr(JSONUtils.INSTANCE.toJson(exportNoteExtraInfo)), file);
    }

    /* renamed from: V */
    public final boolean m38113V(Throwable throwable, EditorBundle editorBundle) {
        String str;
        Object obj;
        SyncNoteModel noteModel;
        Iterator<T> it2 = this.noteExportArgsList.iterator();
        while (true) {
            str = null;
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((NoteExportArgs) obj).getNoteModel().getUniqueId(), EditorBundleKt.docId(editorBundle))) {
                break;
            }
        }
        NoteExportArgs noteExportArgs = (NoteExportArgs) obj;
        SecurityUtils securityUtils = SecurityUtils.INSTANCE;
        if (noteExportArgs != null && (noteModel = noteExportArgs.getNoteModel()) != null) {
            str = noteModel.getTitle();
        }
        String maskUsername = securityUtils.maskUsername(str);
        LogFileUtils.INSTANCE.m32103e(ExportNoteToNoteFileAction.class, "ExportNote(" + EditorBundleKt.docId(editorBundle) + "):" + maskUsername + " onError", throwable);
        if (noteExportArgs == null) {
            return false;
        }
        noteExportArgs.getNoteProgressInfo().setThrowable(throwable);
        List<NoteExportArgs> list = this.noteExportArgsList;
        boolean z = true;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                if (!((NoteExportArgs) it3.next()).getNoteProgressInfo().isError()) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            throw throwable;
        }
        return false;
    }

    /* renamed from: W */
    public final Observable<Map<String, ExportPdfPagesResult>> m38114W(EditorBundle editorBundle, ExportNoteArgs exportNoteArgs, List<VirtualPage> virtualPageList) {
        Map emptyMap;
        emptyMap = MapsKt__MapsKt.emptyMap();
        if (CollectionKt.isNullOrEmpty(getExportArgs(EditorBundleKt.docId(editorBundle)).getPageIdList())) {
            Observable<Map<String, ExportPdfPagesResult>> just = Observable.just(emptyMap);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : virtualPageList) {
            if (ContentConstants.INSTANCE.isImportPDF(((VirtualPage) obj).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType())) {
                arrayList.add(obj);
            }
        }
        Map mapList = CollectionKt.toMapList(arrayList, new Function1<VirtualPage, String>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$savePagesAsPdf$pdfPagesMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath();
            }
        }, new Function1<VirtualPage, VirtualPage>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$savePagesAsPdf$pdfPagesMap$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualPage invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
        if (mapList.isEmpty()) {
            Observable<Map<String, ExportPdfPagesResult>> just2 = Observable.just(emptyMap);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        ExportPdfPagesAction exportPdfPagesAction = new ExportPdfPagesAction(editorBundle, ResourcePaths.INSTANCE.docResourceContentDir(exportNoteArgs.getExportDirPath(), exportNoteArgs.getDocumentId()).toAbsolutePath().toString(), mapList);
        exportPdfPagesAction.setUseOriginFileName(true);
        Observable<Map<String, ? extends ExportPdfPagesResult>> doOnNext = exportPdfPagesAction.build().doOnNext(new C8973m(exportNoteArgs));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return RxjavaKt.onErrorReturnItemWithLog(doOnNext, emptyMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: X */
    public final Observable<?> m38115X(final EditorBundle editorBundle) {
        Object firstOrNull;
        final NoteExportArgs exportArgs = getExportArgs(EditorBundleKt.docId(editorBundle));
        if (StringKt.isNotBlank(exportArgs.getExportThumbnailPath())) {
            String exportThumbnailPath = exportArgs.getExportThumbnailPath();
            Intrinsics.checkNotNull(exportThumbnailPath);
            Observable<?> just = Observable.just(exportThumbnailPath);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) exportArgs.getPageIdList());
        String str = (String) firstOrNull;
        final int virtualPageIndex = str != null ? editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPageIndex(str) : 0;
        Observable<R> map = RxjavaKt.flatMapIf(new ComputeCoverThumbnailPageIndexAction(editorBundle, null, 2, 0 == true ? 1 : 0).build(), new Function1<Integer, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$updateNoteThumbnailFile$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Boolean invoke(int i) {
                return Boolean.valueOf(i != virtualPageIndex);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                return invoke(num.intValue());
            }
        }, new Function1<Integer, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$updateNoteThumbnailFile$2

            /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportNoteToNoteFileAction$updateNoteThumbnailFile$2$a */
            /* loaded from: classes8.dex */
            public static final class C8975a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ NoteExportArgs f48805e;

                public C8975a(NoteExportArgs noteExportArgs) {
                    this.f48805e = noteExportArgs;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f48805e.setExportThumbnailPath(it2);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Integer num) {
                return invoke(num.intValue());
            }

            @NotNull
            public final Observable<? extends Object> invoke(int i) {
                SaveThumbnailAction saveThumbnailAction = new SaveThumbnailAction(EditorBundle.this);
                int i2 = virtualPageIndex;
                EditorBundle editorBundle2 = EditorBundle.this;
                saveThumbnailAction.setPageIndex(Integer.valueOf(i2));
                saveThumbnailAction.setFilePath(ThumbnailPaths.INSTANCE.appCacheThumbnailPath(EditorBundleKt.docId(editorBundle2)).toAbsolutePath().toString());
                Observable<String> doOnNext = saveThumbnailAction.build().doOnNext(new C8975a(exportArgs));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                return doOnNext;
            }
        }).map(new C8974n());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Y */
    public final File m38116Y(PBDataContext pbDataContext, File pbExportDir, File exportFile) {
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        boolean z = false;
        if (exportNoteArgs != null && exportNoteArgs.getExportDebugData()) {
            z = true;
        }
        if (z) {
            m38106N(pbDataContext, pbExportDir);
        }
        m38111T(pbDataContext, pbExportDir);
        Result<File> m72271zipFolderRgG5Fkc = ZipUtils.INSTANCE.m72271zipFolderRgG5Fkc(pbExportDir, exportFile.getAbsolutePath(), null);
        checkZipFileValid(m72271zipFolderRgG5Fkc, pbExportDir);
        if (m72271zipFolderRgG5Fkc != null) {
            Object value = m72271zipFolderRgG5Fkc.getValue();
            r0 = Result.m72627isFailureimpl(value) ? null : value;
        }
        Intrinsics.checkNotNull(r0);
        return r0;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public RectF calculateShapePageRect(@NotNull EditorBundle editorBundle, @NotNull List<String> ids) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(ids, "ids");
        RectF calculateShapePageRect = super.calculateShapePageRect(editorBundle, ids);
        calculateShapePageRect.union(RectUtils.INSTANCE.getSMALLEST_RECT());
        return calculateShapePageRect;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public CBQueryArgs calculateShapeQueryArgs(@NotNull EditorBundle editorBundle, @NotNull List<String> ids) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(ids, "ids");
        return ShapeQueryArgsExtKt.loadShapeListQuery(EditorBundleKt.docId(editorBundle), null).andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_PAGE_ID, ids));
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public Observable<Boolean> export(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Observable<Boolean> onErrorReturn = Observable.just(editorBundle).observeOn(EditorBundleKt.coreScheduler(editorBundle)).flatMap(new C8961a()).map(C8962b.f48780e).onErrorReturn(new C8963c(editorBundle));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    public void exportAppData() {
        AppPBDataContext appPBDataContext = new AppPBDataContext(null, 1, null);
        ExportNoteListArgs exportNoteListArgs = new ExportNoteListArgs();
        String absolutePath = getExportCacheDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        exportNoteListArgs.setExportDirPath(absolutePath);
        exportNoteListArgs.setExportNoteArgsList(this.exportNoteArgsList);
        appPBDataContext.setExportNoteListArgs(exportNoteListArgs);
        AppPbFactory.INSTANCE.exportToFile(appPBDataContext);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    public void exportExtraInfo() {
        m38112U(getExportCacheDir());
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    public void exportUserData() {
        UserPBDataContext userPBDataContext = new UserPBDataContext(null, 1, null);
        userPBDataContext.setExportNoteListArgs(m38104L());
        UserPbFactory.INSTANCE.exportToFile(userPBDataContext);
    }

    @NotNull
    public final EditorBundle getDocManagerBundle() {
        return this.docManagerBundle;
    }

    public final boolean getExportAllFolder() {
        return this.exportAllFolder;
    }

    public final boolean getExportAllTag() {
        return this.exportAllTag;
    }

    public final boolean getExportFont() {
        return this.exportFont;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public Observable<EditorBundle> openNote(@NotNull SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Observable<EditorBundle> map = super.openNote(noteModel).flatMap(new C8971k()).map(new C8972l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setExportAllFolder(boolean z) {
        this.exportAllFolder = z;
    }

    public final void setExportAllTag(boolean z) {
        this.exportAllTag = z;
    }

    public final void setExportFont(boolean z) {
        this.exportFont = z;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public Observable<String> export(@NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Observable<String> just = Observable.just(pageId);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
