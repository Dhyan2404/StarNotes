package com.onyx.android.sdk.universal.editor.action.page;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.ReaderExportArgs;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.data.ExportPagesArgs;
import com.onyx.android.sdk.reader.request.ExportPagesRequest;
import com.onyx.android.sdk.replicator.note.bean.ExportPdfPagesResult;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001B1\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0005H\u0014J \u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J \u0010\f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00020\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002R\u0014\u0010\u000f\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR&\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "", "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "path", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "m", "l", C6999h.f39688c, Constants.STRING_SIG, "exportPdfDir", "i", "Ljava/util/Map;", "filePagesMap", "", "j", Constants.HASIDCALL_INDEX_SIG, "getUseOriginFileName", Constants.BOOLEAN_VALUE_SIG, "setUseOriginFileName", "(Z)V", "useOriginFileName", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExportPdfPagesAction extends RxBaseAppAction<Map<String, ? extends ExportPdfPagesResult>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String exportPdfDir;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<String, List<VirtualPage>> filePagesMap;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean useOriginFileName;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ExportPdfPagesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9659a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Map<String, ExportPdfPagesResult> f50127f;

        public C9659a(Map<String, ExportPdfPagesResult> map) {
            this.f50127f = map;
        }

        /* renamed from: a */
        public final void m39444a(@NotNull Map.Entry<String, ? extends List<VirtualPage>> entry) {
            ExportPdfPagesResult m39443m;
            Intrinsics.checkNotNullParameter(entry, "entry");
            String m39442l = ExportPdfPagesAction.this.m39442l(entry.getKey(), entry.getValue());
            if (m39442l == null || (m39443m = ExportPdfPagesAction.this.m39443m(m39442l, entry.getValue())) == null) {
                return;
            }
            this.f50127f.put(entry.getKey(), m39443m);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m39444a((Map.Entry) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ExportPdfPagesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9660b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Map<String, ExportPdfPagesResult> f50128e;

        public C9660b(Map<String, ExportPdfPagesResult> map) {
            this.f50128e = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ExportPdfPagesResult> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50128e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ExportPdfPagesAction(@NotNull EditorBundle editorBundle, @NotNull String exportPdfDir, @NotNull Map<String, ? extends List<VirtualPage>> filePagesMap) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportPdfDir, "exportPdfDir");
        Intrinsics.checkNotNullParameter(filePagesMap, "filePagesMap");
        this.exportPdfDir = exportPdfDir;
        this.filePagesMap = filePagesMap;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Map<String, ExportPdfPagesResult>> create() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.filePagesMap.entrySet().isEmpty()) {
            Observable<Map<String, ExportPdfPagesResult>> just = Observable.just(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.fromIterable(this.filePagesMap.entrySet()).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).map(new C9659a(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<Map<String, ExportPdfPagesResult>> map2 = RxjavaKt.takeLastOne(map).map(new C9660b(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    public final boolean getUseOriginFileName() {
        return this.useOriginFileName;
    }

    /* renamed from: l */
    public final String m39442l(final String path, final List<VirtualPage> virtualPageList) {
        if (FileUtils.INSTANCE.isFileExist(path)) {
            return (String) ReaderBundle.withReaderOnce$default(EditorBundleKt.readerBundle(getEditorBundle()), path, null, new Function1<Reader, String>() { // from class: com.onyx.android.sdk.universal.editor.action.page.ExportPdfPagesAction$exportPagesToPdf$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final String invoke(@NotNull Reader reader) {
                    String str;
                    String str2;
                    int[] intArray;
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    Iterator<T> it2 = virtualPageList.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        arrayList.add(Integer.valueOf(ReaderNavigator.DefaultImpls.positionByPositionString$default(reader.getNavigator(), ((VirtualPage) it2.next()).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPageId(), false, 2, null).getPageIndex()));
                    }
                    ReaderExportArgs readerExportArgs = new ReaderExportArgs();
                    if (this.getUseOriginFileName()) {
                        str = FileUtils.INSTANCE.getFileName(path);
                    } else {
                        str = UUIDUtils.INSTANCE.rawUUID() + CloudStorageConstants.PDF_FILE_SUFFIX;
                    }
                    Paths paths = Paths.INSTANCE;
                    str2 = this.exportPdfDir;
                    readerExportArgs.setOutputPath(paths.append(paths.toPath(str2), str).toAbsolutePath().toString());
                    intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
                    readerExportArgs.setPages(intArray);
                    new ExportPagesRequest(EditorBundleKt.readerBundle(this.getEditorBundle()), new ExportPagesArgs(path, "", readerExportArgs)).execute2();
                    String outputPath = readerExportArgs.getOutputPath();
                    if (Files.size(paths.toPath(outputPath)) > 0) {
                        return outputPath;
                    }
                    return null;
                }
            }, 2, null);
        }
        return null;
    }

    /* renamed from: m */
    public final ExportPdfPagesResult m39443m(final String path, final List<VirtualPage> virtualPageList) {
        return (ExportPdfPagesResult) ReaderBundle.withReaderOnce$default(EditorBundleKt.readerBundle(getEditorBundle()), path, null, new Function1<Reader, ExportPdfPagesResult>() { // from class: com.onyx.android.sdk.universal.editor.action.page.ExportPdfPagesAction$generateExportResult$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ExportPdfPagesResult invoke(@NotNull Reader reader) {
                Object orNull;
                Intrinsics.checkNotNullParameter(reader, "reader");
                ExportPdfPagesResult exportPdfPagesResult = new ExportPdfPagesResult();
                exportPdfPagesResult.setExportPath(path);
                int totalPage = reader.getNavigator().getTotalPage();
                for (int i = 0; i < totalPage; i++) {
                    ReaderPosition positionByPageIndex = reader.getNavigator().positionByPageIndex(i);
                    orNull = CollectionsKt___CollectionsKt.getOrNull(virtualPageList, i);
                    VirtualPage virtualPage = (VirtualPage) orNull;
                    if (virtualPage != null) {
                        exportPdfPagesResult.getContentPageIdMap().put(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPageId(), positionByPageIndex.getStrPosition());
                    }
                }
                return exportPdfPagesResult;
            }
        }, 2, null);
    }

    public final void setUseOriginFileName(boolean z) {
        this.useOriginFileName = z;
    }
}
