package com.onyx.android.sdk.universal.editor.action;

import android.net.Uri;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.neopdf.lib.UUIDUtils;
import com.onyx.android.sdk.reader.api.ReaderExportArgs;
import com.onyx.android.sdk.reader.data.ExportPagesArgs;
import com.onyx.android.sdk.reader.data.OpenDocumentArgs;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.reader.request.ExportPagesRequest;
import com.onyx.android.sdk.reader.request.LoadReaderPageInfoRequest;
import com.onyx.android.sdk.reader.request.OpenRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.CopyDocumentWithUriRequest;
import com.onyx.android.sdk.universal.editor.request.InsertPageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u001e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00022\u0006\u0010\u000f\u001a\u00020\rH\u0002J\f\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "copyPath", "password", "s", "q", C4921e.f26528e, "", "pageIndex", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "p", "readerPageInfo", "Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;", GoogleApiAvailabilityLight.f29016b, "r", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "insertPageArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertPdfPagesAction extends RxBaseAppAction<InsertPdfPagesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final InsertPageArgs insertPageArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$a */
    /* loaded from: classes8.dex */
    public static final class C8221a<T, R> implements Function {

        /* renamed from: e */
        public static final C8221a<T, R> f47661e = new C8221a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull CopyDocumentWithUriRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getDocumentPath();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$b */
    /* loaded from: classes8.dex */
    public static final class C8222b<T, R> implements Function {
        public C8222b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull InsertPdfPagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPdfPagesAction.this.m36832m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$c */
    /* loaded from: classes8.dex */
    public static final class C8223c<T, R> implements Function {
        public C8223c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertPdfPagesAction> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPdfPagesAction insertPdfPagesAction = InsertPdfPagesAction.this;
            return insertPdfPagesAction.m36838s(it2, insertPdfPagesAction.insertPageArgs.getPassword());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$d */
    /* loaded from: classes8.dex */
    public static final class C8224d<T, R> implements Function {
        public C8224d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertPdfPagesAction> apply(@NotNull InsertPdfPagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPdfPagesAction.this.m36836q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$e */
    /* loaded from: classes8.dex */
    public static final class C8225e<T, R> implements Function {
        public C8225e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertPdfPagesAction> apply(@NotNull InsertPdfPagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPdfPagesAction.this.m36834o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$f */
    /* loaded from: classes8.dex */
    public static final class C8226f<T, R> implements Function {
        public C8226f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull InsertPdfPagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.saveDocInfo(InsertPdfPagesAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$g */
    /* loaded from: classes8.dex */
    public static final class C8227g<T, R> implements Function {
        public C8227g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPdfPagesAction.this.m36837r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$h */
    /* loaded from: classes8.dex */
    public static final class C8228h<T, R> implements Function {
        public C8228h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(InsertPdfPagesAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$i */
    /* loaded from: classes8.dex */
    public static final class C8229i<T, R> implements Function {
        public C8229i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPdfPagesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPdfPagesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$j */
    /* loaded from: classes8.dex */
    public static final class C8230j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ InsertPageRequest f47670e;

        public C8230j(InsertPageRequest insertPageRequest) {
            this.f47670e = insertPageRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPageRequest apply(@NotNull InsertPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47670e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$k */
    /* loaded from: classes8.dex */
    public static final class C8231k<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Integer> f47671e;

        public C8231k(List<Integer> list) {
            this.f47671e = list;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Integer> m36849a(boolean z) {
            return Observable.fromIterable(this.f47671e);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m36849a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$l */
    /* loaded from: classes8.dex */
    public static final class C8232l<T, R> implements Function {
        public C8232l() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends ReaderPageInfo> m36850a(int i) {
            return InsertPdfPagesAction.this.m36835p(i);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m36850a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$m */
    /* loaded from: classes8.dex */
    public static final class C8233m<T, R> implements Function {
        public C8233m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertPageRequest> apply(@NotNull ReaderPageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPdfPagesAction.this.m36833n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$n */
    /* loaded from: classes8.dex */
    public static final class C8234n<T, R> implements Function {
        public C8234n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPdfPagesAction apply(@NotNull InsertPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPdfPagesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$o */
    /* loaded from: classes8.dex */
    public static final class C8235o<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LoadReaderPageInfoRequest f47675e;

        public C8235o(LoadReaderPageInfoRequest loadReaderPageInfoRequest) {
            this.f47675e = loadReaderPageInfoRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReaderPageInfo apply(@NotNull LoadReaderPageInfoRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47675e.getReaderPageInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$p */
    /* loaded from: classes8.dex */
    public static final class C8236p<T, R> implements Function {
        public C8236p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPdfPagesAction apply(@NotNull OpenRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPdfPagesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$q */
    /* loaded from: classes8.dex */
    public static final class C8237q<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f47677e;

        /* renamed from: f */
        public final /* synthetic */ ReaderExportArgs f47678f;

        public C8237q(String str, ReaderExportArgs readerExportArgs) {
            this.f47677e = str;
            this.f47678f = readerExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull InsertPdfPagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Paths paths = Paths.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(Files.copy(paths.toPath(this.f47677e), paths.toPath(this.f47678f.getOutputPath()), (CopyOption[]) Arrays.copyOf(new CopyOption[0], 0)), "copy(this, target, *options)");
        }
    }

    @SourceDebugExtension({"SMAP\nInsertPdfPagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertPdfPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$savePageAsPdf$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n1#2:156\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$r */
    /* loaded from: classes8.dex */
    public static final class C8238r<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ReaderExportArgs f47680f;

        public C8238r(ReaderExportArgs readerExportArgs) {
            this.f47680f = readerExportArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPdfPagesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPdfPagesAction.this.insertPageArgs.setTemplatePath(this.f47680f.getOutputPath());
            int size = InsertPdfPagesAction.this.insertPageArgs.getTemplatePageIndexList().size();
            InsertPdfPagesAction.this.insertPageArgs.getTemplatePageIndexList().clear();
            List<Integer> templatePageIndexList = InsertPdfPagesAction.this.insertPageArgs.getTemplatePageIndexList();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(Integer.valueOf(i));
            }
            templatePageIndexList.addAll(arrayList);
            return InsertPdfPagesAction.this;
        }
    }

    public /* synthetic */ InsertPdfPagesAction(EditorBundle editorBundle, InsertPageArgs insertPageArgs, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? new InsertPageArgs() : insertPageArgs);
    }

    /* renamed from: t */
    public static final void m36831t(String copyPath) {
        Intrinsics.checkNotNullParameter(copyPath, "$copyPath");
        FileUtils.INSTANCE.deleteFile(copyPath);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<InsertPdfPagesAction> create() {
        Observable<InsertPdfPagesAction> map = Observable.just(this).flatMap(new C8222b()).flatMap(new C8223c()).flatMap(new C8224d()).flatMap(new C8225e()).flatMap(new C8226f()).flatMap(new C8227g()).flatMap(new C8228h()).map(new C8229i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<String> m36832m() {
        Uri templateUri = this.insertPageArgs.getTemplateUri();
        if (templateUri == null) {
            Observable<String> just = Observable.just("");
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CopyDocumentWithUriRequest copyDocumentWithUriRequest = new CopyDocumentWithUriRequest(getEditorBundle().getWorkBundle(), null, 2, null);
        copyDocumentWithUriRequest.setUri(templateUri);
        Observable<String> map = RxBaseAppActionKt.submitRequestToIOSequence(this, copyDocumentWithUriRequest).map(C8221a.f47661e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<InsertPageRequest> m36833n(ReaderPageInfo readerPageInfo) {
        InsertPageRequest insertPageRequest = new InsertPageRequest(getEditorBundle().getWorkBundle());
        insertPageRequest.setInsertPageArgs(this.insertPageArgs);
        insertPageRequest.setReaderPageInfo(readerPageInfo);
        Observable<InsertPageRequest> map = RxBaseAppActionKt.submitRequestToCore(this, insertPageRequest).map(new C8230j(insertPageRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<InsertPdfPagesAction> m36834o() {
        List mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.insertPageArgs.getTemplatePageIndexList());
        if (CollectionKt.isNullOrEmpty(mutableList)) {
            mutableList.add(Integer.valueOf(this.insertPageArgs.getTemplatePageIndex()));
        }
        CollectionsKt___CollectionsKt.sortDescending(mutableList);
        Observable<InsertPdfPagesAction> map = DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.InsertPdfPagesAction$insertPages$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(InsertPageWithTemplateAction.INSTANCE.initTemplateRectByPreviousPage(InsertPdfPagesAction.this.getEditorBundle(), InsertPdfPagesAction.this.insertPageArgs));
            }
        }).flatMap(new C8231k(mutableList)).concatMap(new C8232l()).concatMap(new C8233m()).takeLast(1).map(new C8234n());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<ReaderPageInfo> m36835p(int pageIndex) {
        LoadReaderPageInfoRequest loadReaderPageInfoRequest = new LoadReaderPageInfoRequest(EditorBundleKt.readerBundle(getEditorBundle()));
        loadReaderPageInfoRequest.setPath(this.insertPageArgs.getTemplatePath());
        loadReaderPageInfoRequest.setPageIndex(pageIndex);
        Observable<ReaderPageInfo> map = RxBaseAppActionKt.submitRequestToReader(this, loadReaderPageInfoRequest).map(new C8235o(loadReaderPageInfoRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<InsertPdfPagesAction> m36836q() {
        if (StringKt.isEmpty(this.insertPageArgs.getTemplatePath())) {
            Observable<InsertPdfPagesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        OpenRequest openRequest = new OpenRequest(EditorBundleKt.readerBundle(getEditorBundle()));
        openRequest.setOpenDocumentArgs(new OpenDocumentArgs(getEditorBundle().getWorkBundle().getOpenDocArgs().getDocumentId(), this.insertPageArgs.getTemplatePath(), this.insertPageArgs.getPassword(), EditorBundleKt.viewSize(getEditorBundle()), null, 16, null));
        Observable<InsertPdfPagesAction> map = RxBaseAppActionKt.submitRequestToReader(this, openRequest).map(new C8236p());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final Observable<?> m36837r() {
        return new SaveNotePagesAction(getEditorBundle(), null, 2, null).build();
    }

    /* renamed from: s */
    public final Observable<InsertPdfPagesAction> m36838s(final String copyPath, String password) {
        int[] intArray;
        Observable submitRequestToReader;
        if (StringKt.isEmpty(copyPath)) {
            Debug.INSTANCE.m32035d(InsertPdfPagesAction.class, "savePageAsPdf fail, path empty", new Object[0]);
            Observable<InsertPdfPagesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ReaderExportArgs readerExportArgs = new ReaderExportArgs();
        readerExportArgs.setOutputPath(Paths.INSTANCE.append(ResourcePaths.INSTANCE.appDocResourceContentDir(EditorBundleKt.noteBundle(getEditorBundle()).getDocumentId()), UUIDUtils.INSTANCE.rawUUID() + CloudStorageConstants.PDF_FILE_SUFFIX).toAbsolutePath().toString());
        CollectionsKt__MutableCollectionsJVMKt.sort(this.insertPageArgs.getTemplatePageIndexList());
        intArray = CollectionsKt___CollectionsKt.toIntArray(this.insertPageArgs.getTemplatePageIndexList());
        readerExportArgs.setPages(intArray);
        readerExportArgs.setSourceFilePassword(password);
        if (StringKt.isEmpty(password) && this.insertPageArgs.getSelectAllPage()) {
            submitRequestToReader = Observable.just(this).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).doOnNext(new C8237q(copyPath, readerExportArgs));
        } else {
            submitRequestToReader = RxBaseAppActionKt.submitRequestToReader(this, new ExportPagesRequest(EditorBundleKt.readerBundle(getEditorBundle()), new ExportPagesArgs(copyPath, password, readerExportArgs)));
        }
        Observable<InsertPdfPagesAction> doFinally = submitRequestToReader.map(new C8238r(readerExportArgs)).observeOn(EditorBundleKt.ioSequenceScheduler(getEditorBundle())).doFinally(new Action() { // from class: com.sunia.HTREnginev2.fmi
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                InsertPdfPagesAction.m36831t(copyPath);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertPdfPagesAction(@NotNull EditorBundle editorBundle, @NotNull InsertPageArgs insertPageArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
        this.insertPageArgs = insertPageArgs;
    }
}
