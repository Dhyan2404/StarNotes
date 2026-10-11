package com.onyx.android.sdk.universal.editor.action;

import android.net.Uri;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.reader.data.OpenDocumentArgs;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.reader.request.LoadReaderPageInfoRequest;
import com.onyx.android.sdk.reader.request.OpenRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.page.SaveNotePagesAction;
import com.onyx.android.sdk.universal.editor.data.EditorAnimatorContext;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.request.CopyDocumentWithUriRequest;
import com.onyx.android.sdk.universal.editor.request.InsertPageRequest;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00022\u0006\u0010\t\u001a\u00020\u0007H\u0002J\f\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/InsertPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "p", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", C4921e.f26528e, "readerPageInfo", "Lcom/onyx/android/sdk/universal/editor/request/InsertPageRequest;", GoogleApiAvailabilityLight.f29016b, "q", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "insertPageArgs", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "i", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "context", "", "j", Constants.STRING_SIG, CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertPageAction extends RxBaseAppAction<InsertPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final InsertPageArgs insertPageArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public EditorAnimatorContext context;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String pageId;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8199a<T, R> implements Function {
        public C8199a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPageAction apply(@NotNull CopyDocumentWithUriRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPageAction.this.insertPageArgs.setTemplatePath(it2.getDocumentPath());
            return InsertPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8200b<T, R> implements Function {
        public C8200b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPageAction insertPageAction = InsertPageAction.this;
            return DisplayActionsKt.displayWithBoxAnimation(insertPageAction, insertPageAction.context);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8201c<T, R> implements Function {
        public C8201c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8202d<T, R> implements Function {
        public C8202d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull InsertPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleKt.prepareBoxAnimation(InsertPageAction.this.getEditorBundle(), InsertPageAction.this.context, EditorAnimatorContext.AnimationType.APPEND);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$e */
    /* loaded from: classes8.dex */
    public static final class C8203e<T, R> implements Function {
        public C8203e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertPageAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAction.this.m36795l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$f */
    /* loaded from: classes8.dex */
    public static final class C8204f<T, R> implements Function {
        public C8204f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertPageAction> apply(@NotNull InsertPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAction.this.m36796m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$g */
    /* loaded from: classes8.dex */
    public static final class C8205g<T, R> implements Function {
        public C8205g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends InsertPageAction> apply(@NotNull InsertPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAction.this.m36799p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$h */
    /* loaded from: classes8.dex */
    public static final class C8206h<T, R> implements Function {
        public C8206h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ReaderPageInfo> apply(@NotNull InsertPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAction.this.m36798o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$j */
    /* loaded from: classes8.dex */
    public static final class C8208j<T> implements Consumer {
        public C8208j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull InsertPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPageAction.this.pageId = it2.getVirtualPage().getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$k */
    /* loaded from: classes8.dex */
    public static final class C8209k<T, R> implements Function {
        public C8209k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull InsertPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.saveDocInfo(InsertPageAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$l */
    /* loaded from: classes8.dex */
    public static final class C8210l<T, R> implements Function {
        public C8210l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAction.this.m36800q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$m */
    /* loaded from: classes8.dex */
    public static final class C8211m<T, R> implements Function {
        public C8211m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPageAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$n */
    /* loaded from: classes8.dex */
    public static final class C8212n<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ InsertPageRequest f47647e;

        public C8212n(InsertPageRequest insertPageRequest) {
            this.f47647e = insertPageRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPageRequest apply(@NotNull InsertPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47647e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$o */
    /* loaded from: classes8.dex */
    public static final class C8213o<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LoadReaderPageInfoRequest f47648e;

        public C8213o(LoadReaderPageInfoRequest loadReaderPageInfoRequest) {
            this.f47648e = loadReaderPageInfoRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReaderPageInfo apply(@NotNull LoadReaderPageInfoRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47648e.getReaderPageInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAction$p */
    /* loaded from: classes8.dex */
    public static final class C8214p<T, R> implements Function {
        public C8214p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPageAction apply(@NotNull OpenRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertPageAction(@NotNull EditorBundle editorBundle, @NotNull InsertPageArgs insertPageArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(insertPageArgs, "insertPageArgs");
        this.insertPageArgs = insertPageArgs;
        this.context = new EditorAnimatorContext();
        this.pageId = "";
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<InsertPageAction> create() {
        Observable<InsertPageAction> map = Observable.just(this).flatMap(new C8202d()).flatMap(new C8203e()).flatMap(new C8204f()).flatMap(new C8205g()).flatMap(new C8206h()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.InsertPageAction.i
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<InsertPageRequest> apply(@NotNull ReaderPageInfo p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return InsertPageAction.this.m36797n(p0);
            }
        }).doOnNext(new C8208j()).flatMap(new C8209k()).flatMap(new C8210l()).flatMap(new C8200b()).map(new C8201c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<InsertPageAction> m36795l() {
        Uri templateUri = this.insertPageArgs.getTemplateUri();
        if (templateUri == null) {
            Observable<InsertPageAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CopyDocumentWithUriRequest copyDocumentWithUriRequest = new CopyDocumentWithUriRequest(getEditorBundle().getWorkBundle(), null, 2, null);
        copyDocumentWithUriRequest.setUri(templateUri);
        Observable<InsertPageAction> map = RxBaseAppActionKt.submitRequestToIOSequence(this, copyDocumentWithUriRequest).map(new C8199a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<InsertPageAction> m36796m() {
        final TemplateJsonBean templateJsonBean = this.insertPageArgs.getTemplateJsonBean();
        if ((this.insertPageArgs.getTemplatePath().length() > 0) || templateJsonBean == null || !ContentConstants.INSTANCE.isTemplatePDF(templateJsonBean.getContentType())) {
            Observable<InsertPageAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<InsertPageAction> map = DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.InsertPageAction$ensurePdfTemplatePath$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String templateFilePath = Templates.INSTANCE.getTemplateFilePath(TemplateJsonBean.this, EditorBundleKt.docId(this.getEditorBundle()), TemplateJsonBean.this.getContentPageId());
                if (FileUtils.INSTANCE.isFileExist(templateFilePath)) {
                    this.insertPageArgs.setTemplatePath(templateFilePath);
                }
            }
        }).map(new C8211m());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<InsertPageRequest> m36797n(ReaderPageInfo readerPageInfo) {
        InsertPageRequest insertPageRequest = new InsertPageRequest(getEditorBundle().getWorkBundle());
        InsertPageArgs insertPageArgs = this.insertPageArgs;
        TemplateJsonBean templateJsonBean = insertPageArgs.getTemplateJsonBean();
        if (templateJsonBean == null) {
            templateJsonBean = (TemplateJsonBean) MMKVNote.getTemplateOption$default(MMKVNote.INSTANCE, null, 0, 3, null).get();
        }
        insertPageArgs.setTemplateJsonBean(templateJsonBean);
        insertPageRequest.setInsertPageArgs(this.insertPageArgs);
        insertPageRequest.setReaderPageInfo(readerPageInfo);
        Observable<InsertPageRequest> map = RxBaseAppActionKt.submitRequestToCore(this, insertPageRequest).map(new C8212n(insertPageRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<ReaderPageInfo> m36798o() {
        LoadReaderPageInfoRequest loadReaderPageInfoRequest = new LoadReaderPageInfoRequest(EditorBundleKt.readerBundle(getEditorBundle()));
        loadReaderPageInfoRequest.setPath(this.insertPageArgs.getTemplatePath());
        loadReaderPageInfoRequest.setPageIndex(this.insertPageArgs.getTemplatePageIndex());
        loadReaderPageInfoRequest.setPassword(this.insertPageArgs.getPassword());
        Observable<ReaderPageInfo> map = RxBaseAppActionKt.submitRequestToReader(this, loadReaderPageInfoRequest).map(new C8213o(loadReaderPageInfoRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<InsertPageAction> m36799p() {
        if (this.insertPageArgs.getTemplatePath().length() == 0) {
            Observable<InsertPageAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        OpenRequest openRequest = new OpenRequest(EditorBundleKt.readerBundle(getEditorBundle()));
        openRequest.setOpenDocumentArgs(new OpenDocumentArgs(getEditorBundle().getWorkBundle().getOpenDocArgs().getDocumentId(), this.insertPageArgs.getTemplatePath(), this.insertPageArgs.getPassword(), EditorBundleKt.viewSize(getEditorBundle()), null, 16, null));
        Observable<InsertPageAction> map = RxBaseAppActionKt.submitRequestToReader(this, openRequest).map(new C8214p());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: q */
    public final Observable<?> m36800q() {
        return new SaveNotePagesAction(getEditorBundle(), null, 2, 0 == true ? 1 : 0).build();
    }
}
