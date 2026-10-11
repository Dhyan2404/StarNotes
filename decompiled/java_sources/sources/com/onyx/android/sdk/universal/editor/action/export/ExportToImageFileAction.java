package com.onyx.android.sdk.universal.editor.action.export;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.DrawContext;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.page.GetPageIndexFromIdAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ExportDraftPageArgs;
import com.onyx.android.sdk.universal.editor.data.ExportPageToImageFileArgs;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013\u0012\u0006\u0010\u0015\u001a\u00020\t¢\u0006\u0004\b\u0016\u0010\u0017J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J&\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lio/reactivex/rxjava3/core/Observable;", "", SyncConstant.EXPORT_DIR_NAME, "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "exportArgs", "", CouchFieldKey.KEY_TOC_PAGE_ID, "N", "", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "M", "", "pageIndex", "L", "docManagerBundle", "", "noteExportArgsList", "exportFilePath", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExportToImageFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportToImageFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n766#2:170\n857#2,2:171\n*S KotlinDebug\n*F\n+ 1 ExportToImageFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction\n*L\n111#1:170\n111#1:171,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ExportToImageFileAction extends BaseExportNoteAction {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C8993a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48835e;

        public C8993a(EditorBundle editorBundle) {
            this.f48835e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(this.f48835e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C8994b<T, R> implements Function {

        /* renamed from: e */
        public static final C8994b<T, R> f48836e = new C8994b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$c */
    /* loaded from: classes8.dex */
    public static final class C8995c<T, R> implements Function {

        /* renamed from: e */
        public static final C8995c<T, R> f48837e = new C8995c<>();

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

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$d */
    /* loaded from: classes8.dex */
    public static final class C8996d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteExportArgs f48838e;

        /* renamed from: f */
        public final /* synthetic */ String f48839f;

        /* renamed from: g */
        public final /* synthetic */ ExportToImageFileAction f48840g;

        /* renamed from: h */
        public final /* synthetic */ EditorBundle f48841h;

        public C8996d(NoteExportArgs noteExportArgs, String str, ExportToImageFileAction exportToImageFileAction, EditorBundle editorBundle) {
            this.f48838e = noteExportArgs;
            this.f48839f = str;
            this.f48840g = exportToImageFileAction;
            this.f48841h = editorBundle;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends String> m38174a(int i) {
            Map<Integer, String> pageIndexMap;
            ExportDraftPageArgs exportDraftPageArgs = this.f48838e.getExportDraftPageArgs();
            if (exportDraftPageArgs != null && (pageIndexMap = exportDraftPageArgs.getPageIndexMap()) != null) {
                pageIndexMap.put(Integer.valueOf(i), this.f48839f);
            }
            return this.f48840g.m38167L(this.f48841h, this.f48838e, i);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m38174a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$e */
    /* loaded from: classes8.dex */
    public static final class C8997e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48843f;

        public C8997e(EditorBundle editorBundle) {
            this.f48843f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<VirtualPage> apply(@NotNull ExportToImageFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToImageFileAction.this.getExportVirtualPageList(this.f48843f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$f */
    /* loaded from: classes8.dex */
    public static final class C8998f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48845f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48846g;

        public C8998f(EditorBundle editorBundle, NoteExportArgs noteExportArgs) {
            this.f48845f = editorBundle;
            this.f48846g = noteExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<VirtualPage> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToImageFileAction.this.filterValidExportPages(this.f48845f, it2, this.f48846g);
        }
    }

    @SourceDebugExtension({"SMAP\nExportToImageFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportToImageFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$export$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n1549#2:170\n1620#2,3:171\n*S KotlinDebug\n*F\n+ 1 ExportToImageFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$export$3\n*L\n62#1:170\n62#1:171,3\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$g */
    /* loaded from: classes8.dex */
    public static final class C8999g<T, R> implements Function {

        /* renamed from: e */
        public static final C8999g<T, R> f48847e = new C8999g<>();

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

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$h */
    /* loaded from: classes8.dex */
    public static final class C9000h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ NoteExportArgs f48848e;

        /* renamed from: f */
        public final /* synthetic */ List<String> f48849f;

        public C9000h(NoteExportArgs noteExportArgs, List<String> list) {
            this.f48848e = noteExportArgs;
            this.f48849f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48848e.setExportPageIdList(it2);
            CollectionKt.safeAddAll(this.f48849f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$i */
    /* loaded from: classes8.dex */
    public static final class C9001i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48851f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48852g;

        public C9001i(EditorBundle editorBundle, NoteExportArgs noteExportArgs) {
            this.f48851f = editorBundle;
            this.f48852g = noteExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ExportToImageFileAction apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToImageFileAction.this.m38169N(this.f48851f, this.f48852g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$j */
    /* loaded from: classes8.dex */
    public static final class C9002j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<String> f48853e;

        public C9002j(List<String> list) {
            this.f48853e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull ExportToImageFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(this.f48853e);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$k */
    /* loaded from: classes8.dex */
    public static final class C9003k<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48855f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48856g;

        public C9003k(EditorBundle editorBundle, NoteExportArgs noteExportArgs) {
            this.f48855f = editorBundle;
            this.f48856g = noteExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ExportToImageFileAction.this.export(this.f48855f, this.f48856g, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$l */
    /* loaded from: classes8.dex */
    public static final class C9004l<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48858f;

        /* renamed from: g */
        public final /* synthetic */ Ref.IntRef f48859g;

        /* renamed from: h */
        public final /* synthetic */ List<String> f48860h;

        public C9004l(EditorBundle editorBundle, Ref.IntRef intRef, List<String> list) {
            this.f48858f = editorBundle;
            this.f48859g = intRef;
            this.f48860h = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportToImageFileAction exportToImageFileAction = ExportToImageFileAction.this;
            String docId = EditorBundleKt.docId(this.f48858f);
            Ref.IntRef intRef = this.f48859g;
            int i = intRef.element;
            intRef.element = i + 1;
            exportToImageFileAction.onProgress(docId, new ProgressInfo(i, CollectionKt.getSize(this.f48860h)));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportToImageFileAction$m */
    /* loaded from: classes8.dex */
    public static final class C9005m<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48862f;

        /* renamed from: g */
        public final /* synthetic */ NoteExportArgs f48863g;

        public C9005m(EditorBundle editorBundle, NoteExportArgs noteExportArgs) {
            this.f48862f = editorBundle;
            this.f48863g = noteExportArgs;
        }

        /* renamed from: a */
        public final void m38183a(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportToImageFileAction.this.m38168M(this.f48862f, this.f48863g);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38183a((String) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportToImageFileAction(@NotNull EditorBundle docManagerBundle, @NotNull List<NoteExportArgs> noteExportArgsList, @NotNull String exportFilePath) {
        super(docManagerBundle, noteExportArgsList, exportFilePath);
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        Intrinsics.checkNotNullParameter(noteExportArgsList, "noteExportArgsList");
        Intrinsics.checkNotNullParameter(exportFilePath, "exportFilePath");
    }

    /* renamed from: K */
    public static final void m38166K(NoteExportArgs exportArgs) {
        Intrinsics.checkNotNullParameter(exportArgs, "$exportArgs");
        Set<String> exportedDraftShapeIds = exportArgs.getExportedDraftShapeIds();
        if (exportedDraftShapeIds != null) {
            exportedDraftShapeIds.clear();
        }
    }

    /* renamed from: L */
    public final Observable<String> m38167L(EditorBundle editorBundle, NoteExportArgs exportArgs, int pageIndex) {
        String str = getPathMap().get(EditorBundleKt.docId(editorBundle));
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.mkdirs(str);
        if (exportArgs.getExportDraftPageArgs() != null) {
            return new ExportDraftPageToFileAction(editorBundle, exportArgs, pageIndex).build();
        }
        String combine = fileUtils.combine(generateValidFileName(editorBundle) + NameUtil.USCORE + (pageIndex + 1), "png");
        if (combine == null) {
            combine = "";
        }
        return new ExportPageToImageFileAction(editorBundle, new ExportPageToImageFileArgs(Integer.valueOf(pageIndex), str, fileUtils.getValidFileName(combine), exportArgs.getExportTemplate(), AppConfig.INSTANCE.getRenderExcerptIndicatorInImage(), null, 32, null)).build();
    }

    /* renamed from: M */
    public final void m38168M(EditorBundle editorBundle, NoteExportArgs exportArgs) {
        ExportDraftPageArgs exportDraftPageArgs = exportArgs.getExportDraftPageArgs();
        if (exportDraftPageArgs == null) {
            return;
        }
        String generateValidFileName = generateValidFileName(editorBundle);
        Paths paths = Paths.INSTANCE;
        Path path = getExportCacheDir().toPath();
        Intrinsics.checkNotNullExpressionValue(path, "toPath(...)");
        String obj = paths.append(paths.append(path, generateValidFileName), FileUtils.INSTANCE.combine(generateValidFileName, "png")).toAbsolutePath().toString();
        Bitmap viewportBitmap = exportDraftPageArgs.getViewportBitmap();
        if (viewportBitmap != null) {
            BitmapKt.save$default(viewportBitmap, obj, 0, 2, null);
        }
        Bitmap viewportBitmap2 = exportDraftPageArgs.getViewportBitmap();
        if (viewportBitmap2 != null) {
            viewportBitmap2.recycle();
        }
    }

    /* renamed from: N */
    public final ExportToImageFileAction m38169N(EditorBundle editorBundle, NoteExportArgs exportArgs) {
        if (!NoteScene.INSTANCE.isDraft(EditorBundleKt.noteBundle(editorBundle).getNoteDoc().getNoteModel().getActiveScene())) {
            return this;
        }
        RectF loadExportPageRect = loadExportPageRect(editorBundle, exportArgs);
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(editorBundle.getWorkBundle());
        BoxInfo copy = obtainBoxManager.getViewport().copy();
        obtainBoxManager.setScale(1.0f);
        float exportDraftNoteMaxSize = AppConfig.INSTANCE.getExportDraftNoteMaxSize();
        if (loadExportPageRect.width() > exportDraftNoteMaxSize || loadExportPageRect.height() > exportDraftNoteMaxSize) {
            RectF rectF = new RectF(0.0f, 0.0f, exportDraftNoteMaxSize, exportDraftNoteMaxSize);
            RectF copy2 = RectFKt.copy(loadExportPageRect);
            copy2.offsetTo(0.0f, 0.0f);
            float scaleToPage = RectFKt.scaleToPage(copy2, rectF);
            RectFKt.scaleRect(loadExportPageRect, scaleToPage);
            obtainBoxManager.setScale(scaleToPage);
        }
        List<BoxInfo> copyBoxList = obtainBoxManager.copyBoxList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : copyBoxList) {
            if (exportArgs.getExportPageIdList().contains(((BoxInfo) obj).getId())) {
                arrayList.add(obj);
            }
        }
        Bitmap createBitmapOrNull = BitmapUtils.INSTANCE.createBitmapOrNull(loadExportPageRect);
        if (createBitmapOrNull == null) {
            return this;
        }
        obtainBoxManager.setScale(copy.getActualScale());
        obtainBoxManager.scrollTo(copy.left(), copy.top());
        ExportDraftPageArgs exportDraftPageArgs = new ExportDraftPageArgs();
        exportDraftPageArgs.setPageRectF(loadExportPageRect);
        exportDraftPageArgs.setBoxInfoList(arrayList);
        exportDraftPageArgs.setViewportBitmap(createBitmapOrNull);
        exportArgs.setExportDraftPageArgs(exportDraftPageArgs);
        m38170O(editorBundle, exportArgs);
        return this;
    }

    /* renamed from: O */
    public final void m38170O(EditorBundle editorBundle, NoteExportArgs exportArgs) {
        ExportDraftPageArgs exportDraftPageArgs;
        Bitmap viewportBitmap;
        GeoLayout loadGeoLayoutBackground;
        if (!exportArgs.getExportTemplate() || (exportDraftPageArgs = exportArgs.getExportDraftPageArgs()) == null || (viewportBitmap = exportDraftPageArgs.getViewportBitmap()) == null || (loadGeoLayoutBackground = editorBundle.getWorkBundle().getVirtualPolicy().loadGeoLayoutBackground()) == null) {
            return;
        }
        DrawContext drawContext = new DrawContext(new Canvas(viewportBitmap), new Matrix(), null, false, false, false, 0.0f, 124, null);
        PageMargins pageMargins = loadGeoLayoutBackground.getProperties().getPageMargins();
        if (pageMargins != null) {
            RectF copy = RectFKt.copy(exportDraftPageArgs.getPageRectF());
            copy.offsetTo(0.0f, 0.0f);
            pageMargins.setLayoutRect(copy);
        }
        loadGeoLayoutBackground.draw(drawContext);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public Observable<Boolean> export(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        ArrayList arrayList = new ArrayList();
        Ref.IntRef intRef = new Ref.IntRef();
        final NoteExportArgs exportArgs = getExportArgs(EditorBundleKt.docId(editorBundle));
        if (NoteScene.INSTANCE.isDraft(exportArgs.getNoteModel().getActiveScene())) {
            exportArgs.setExportedDraftShapeIds(new LinkedHashSet());
        }
        Observable<Boolean> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C8997e(editorBundle)).map(new C8998f(editorBundle, exportArgs)).map(C8999g.f48847e).doOnNext(new C9000h(exportArgs, arrayList)).map(new C9001i(editorBundle, exportArgs)).flatMap(new C9002j(arrayList)).concatMap(new C9003k(editorBundle, exportArgs)).doOnNext(new C9004l(editorBundle, intRef, arrayList)).takeLast(1).observeOn(EditorBundleKt.ioSequenceScheduler(editorBundle)).map(new C9005m(editorBundle, exportArgs)).flatMap(new C8993a(editorBundle)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.n2g
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExportToImageFileAction.m38166K(NoteExportArgs.this);
            }
        }).map(C8994b.f48836e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.universal.editor.action.export.BaseExportNoteAction
    @NotNull
    public Observable<String> export(@NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs, @NotNull String pageId) {
        List listOf;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(pageId);
        Observable<String> flatMap = new GetPageIndexFromIdAction(editorBundle, listOf).build().map(C8995c.f48837e).flatMap(new C8996d(exportArgs, pageId, this, editorBundle));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
