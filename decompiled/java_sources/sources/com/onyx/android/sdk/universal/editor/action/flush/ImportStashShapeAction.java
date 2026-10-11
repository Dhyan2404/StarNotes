package com.onyx.android.sdk.universal.editor.action.flush;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.StashPaths;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.data.shape.StashShapeBean;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.bym;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u0012\u0006\u0010\u001f\u001a\u00020\u0018¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020\u000f0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", GoogleApiAvailabilityLight.f29016b, "argsList", "l", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/data/shape/StashShapeBean;", "p", "list", "", "q", "", "documentId", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "getOpenDocArgs", "()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "setOpenDocArgs", "(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V", "openDocArgs", "", C6998g.f39679a, "Ljava/util/Set;", "parsedShapeSet", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImportStashShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportStashShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"})
/* loaded from: classes8.dex */
public final class ImportStashShapeAction extends RxBaseAction<ImportStashShapeAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public OpenDocArgs openDocArgs;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Set<String> parsedShapeSet;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9090a<T, R> implements Function {
        public C9090a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportStashShapeAction> apply(@NotNull List<ShapeDocumentArgs> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportStashShapeAction.this.m38319o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9091b<T, R> implements Function {
        public C9091b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportStashShapeAction apply(@NotNull ImportStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportStashShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C9092c<T, R> implements Function {
        public C9092c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ShapeDocumentArgs> apply(@NotNull ImportStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportStashShapeAction.this.m38318n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C9093d<T, R> implements Function {
        public C9093d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportStashShapeAction> apply(@NotNull List<ShapeDocumentArgs> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportStashShapeAction.this.m38316l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C9094e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f49037e;

        public C9094e(String str) {
            this.f49037e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StashPaths.INSTANCE.deleteStashShapeLockFile(this.f49037e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C9095f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ String f49039f;

        public C9095f(String str) {
            this.f49039f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportStashShapeAction.this.m38317m(this.f49039f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$g */
    /* loaded from: classes8.dex */
    public static final class C9096g<T> implements Consumer {
        public C9096g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            String simpleNameString = AnyKt.toSimpleNameString(ImportStashShapeAction.this);
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            LogUtils.wTag(simpleNameString, stackTraceToString);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$h */
    /* loaded from: classes8.dex */
    public static final class C9097h<T, R> implements Function {
        public C9097h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportStashShapeAction apply(@NotNull ImportStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportStashShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$i */
    /* loaded from: classes8.dex */
    public static final class C9098i<T, R> implements Function {
        public C9098i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<StashShapeBean> apply(@NotNull List<ShapeDocumentArgs> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportStashShapeAction.this.m38320p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$j */
    /* loaded from: classes8.dex */
    public static final class C9099j<T> implements Consumer {
        public C9099j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<StashShapeBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportStashShapeAction.this.m38321q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction$k */
    /* loaded from: classes8.dex */
    public static final class C9100k<T, R> implements Function {
        public C9100k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportStashShapeAction apply(@NotNull List<StashShapeBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportStashShapeAction.this;
        }
    }

    public ImportStashShapeAction(@NotNull EditorBundle editorBundle, @NotNull OpenDocArgs openDocArgs) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(openDocArgs, "openDocArgs");
        this.editorBundle = editorBundle;
        this.openDocArgs = openDocArgs;
        this.parsedShapeSet = new LinkedHashSet();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportStashShapeAction> create() {
        String documentId = this.openDocArgs.getDocumentId();
        Observable<ImportStashShapeAction> map = Observable.just(this).observeOn(EditorBundleKt.stashScheduler(this.editorBundle)).map(new C9092c()).flatMap(new C9093d()).observeOn(EditorBundleKt.stashScheduler(this.editorBundle)).doOnNext(new C9094e(documentId)).doOnNext(new C9095f(documentId)).doOnError(new C9096g()).map(new C9097h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final OpenDocArgs getOpenDocArgs() {
        return this.openDocArgs;
    }

    /* renamed from: l */
    public final Observable<ImportStashShapeAction> m38316l(List<ShapeDocumentArgs> argsList) {
        if (argsList.isEmpty()) {
            Observable<ImportStashShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(CollectionKt.split(argsList, NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT())).concatMap(new C9090a());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<ImportStashShapeAction> map = RxjavaKt.takeLastOne(concatMap).map(new C9091b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final void m38317m(String documentId) {
        RxBaseAction.execute$default(new DeleteStashShapeAction(this.editorBundle, documentId, null, 4, null), null, null, null, 7, null);
    }

    /* renamed from: n */
    public final List<ShapeDocumentArgs> m38318n() {
        Benchmark benchmark = new Benchmark();
        StashPaths stashPaths = StashPaths.INSTANCE;
        List<ShapeDocumentArgs> docShapeArgsListByPath = ShapeDocumentUtils.INSTANCE.docShapeArgsListByPath(stashPaths.stashShapePBFileDir(this.openDocArgs.getDocumentId()).toAbsolutePath().toString(), new bym(ShapeDocumentArgs.INSTANCE));
        List<ShapeDocumentArgs> list = docShapeArgsListByPath;
        if (!list.isEmpty()) {
            benchmark.report(AnyKt.toSimpleNameString(this) + " loadDocPageShapeArgsList:" + CollectionKt.getSize(list));
            stashPaths.ensureStashShapeLockFile(this.openDocArgs.getDocumentId());
        }
        return docShapeArgsListByPath;
    }

    /* renamed from: o */
    public final Observable<ImportStashShapeAction> m38319o(List<ShapeDocumentArgs> argsList) {
        Observable<ImportStashShapeAction> map = Observable.just(argsList).observeOn(EditorBundleKt.stashScheduler(this.editorBundle)).map(new C9098i()).observeOn(EditorBundleKt.noteScheduler(this.editorBundle)).doOnNext(new C9099j()).map(new C9100k());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final List<StashShapeBean> m38320p(List<ShapeDocumentArgs> argsList) {
        Benchmark benchmark = new Benchmark();
        List<StashShapeBean> parseStashShapeList = StashNoteShapePBDocument.INSTANCE.parseStashShapeList(EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc().getProviderHolder().getDocumentUniqueId(), argsList, this.parsedShapeSet);
        benchmark.report(AnyKt.toSimpleNameString(this) + " parseStashShapeList:" + CollectionKt.getSize(parseStashShapeList));
        return parseStashShapeList;
    }

    /* renamed from: q */
    public final void m38321q(List<StashShapeBean> list) {
        Benchmark benchmark = new Benchmark();
        Map saveStashShape$default = StashNoteShapePBDocument.Companion.saveStashShape$default(StashNoteShapePBDocument.INSTANCE, EditorBundleKt.noteBundle(this.editorBundle).getNoteDoc().getProviderHolder(), list, null, 4, null);
        if (!saveStashShape$default.isEmpty()) {
            Iterator it2 = saveStashShape$default.values().iterator();
            int i = 0;
            while (it2.hasNext()) {
                i += ((List) it2.next()).size();
            }
            String str = "scene = " + this.openDocArgs.getActiveScene() + ", saveStashShape total count:" + i;
            benchmark.report(str);
            LogUtils.wTag(AnyKt.toSimpleNameString(this), str);
        }
    }

    public final void setOpenDocArgs(@NotNull OpenDocArgs openDocArgs) {
        Intrinsics.checkNotNullParameter(openDocArgs, "<set-?>");
        this.openDocArgs = openDocArgs;
    }
}
