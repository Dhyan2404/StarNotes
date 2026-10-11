package com.onyx.android.sdk.universal.editor.action.doc;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.reader.extension.ReaderKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.bean.PaperBean;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.doc.CreateVirtualDocAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.doc.CreateVirtualDocRequest;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u001c\b\u0002\u0010\u0018\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013¢\u0006\u0004\b)\u0010*J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\u001c\u0010\n\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0002J\u001c\u0010\u000b\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0002J\u001c\u0010\f\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0002J$\u0010\u000e\u001a\u00020\u00022\u001a\u0010\r\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R(\u0010\u0018\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\"\u0010\u001c\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010&\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "s", "Lkotlin/Pair;", "", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "p", "pair", "r", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "Lkotlin/Function2;", "", "", "i", "Lkotlin/jvm/functions/Function2;", "progressCallback", "Ljava/util/concurrent/atomic/AtomicBoolean;", "j", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isAbort", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "setAbort", "(Ljava/util/concurrent/atomic/AtomicBoolean;)V", C4921e.f26537n, "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;", "getRequest", "()Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;", "setRequest", "(Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;)V", AbstractLogger.REQUEST, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lkotlin/jvm/functions/Function2;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateVirtualDocAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateVirtualDocAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1864#2,3:123\n*S KotlinDebug\n*F\n+ 1 CreateVirtualDocAction.kt\ncom/onyx/android/sdk/universal/editor/action/doc/CreateVirtualDocAction\n*L\n99#1:123,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateVirtualDocAction extends RxBaseAppAction<CreateVirtualDocRequest> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteCreateInfo noteCreateInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final Function2<Integer, Integer, Unit> progressCallback;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public AtomicBoolean isAbort;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public CreateVirtualDocRequest request;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateVirtualDocAction$a */
    /* loaded from: classes8.dex */
    public static final class C8654a<T, R> implements Function {
        public C8654a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<List<ReaderPageInfo>, ReaderDocumentTableOfContent> apply(@NotNull CreateVirtualDocAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateVirtualDocAction.this.m37620n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateVirtualDocAction$b */
    /* loaded from: classes8.dex */
    public static final class C8655b<T> implements Consumer {
        public C8655b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Pair<? extends List<ReaderPageInfo>, ReaderDocumentTableOfContent> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateVirtualDocAction.this.getEditorBundle().getWorkBundle().getReaderBundle().destroyReader();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateVirtualDocAction$c */
    /* loaded from: classes8.dex */
    public static final class C8656c<T, R> implements Function {
        public C8656c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateVirtualDocRequest apply(@NotNull Pair<? extends List<ReaderPageInfo>, ReaderDocumentTableOfContent> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateVirtualDocAction.this.m37623r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.CreateVirtualDocAction$d */
    /* loaded from: classes8.dex */
    public static final class C8657d<T, R> implements Function {
        public C8657d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateVirtualDocAction apply(@NotNull List<TemplateResourceModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateVirtualDocAction.this;
        }
    }

    public /* synthetic */ CreateVirtualDocAction(EditorBundle editorBundle, NoteCreateInfo noteCreateInfo, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, noteCreateInfo, (i & 4) != 0 ? null : function2);
    }

    /* renamed from: q */
    public static final void m37618q(CreateVirtualDocAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isAbort.set(true);
        CreateVirtualDocRequest createVirtualDocRequest = this$0.request;
        if (createVirtualDocRequest != null) {
            createVirtualDocRequest.setAbort();
        }
    }

    /* renamed from: t */
    public static final void m37619t(CreateVirtualDocAction this$0, List it2) {
        Object first;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        NoteCreateInfo noteCreateInfo = this$0.noteCreateInfo;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
        noteCreateInfo.setPageFillColor(((TemplateResourceModel) first).getFillColor());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CreateVirtualDocRequest> create() {
        Observable<CreateVirtualDocRequest> doOnDispose = m37624s().observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).map(new C8654a()).doOnNext(new C8655b()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C8656c()).observeOn(AndroidSchedulers.mainThread()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.xge
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CreateVirtualDocAction.m37618q(CreateVirtualDocAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    @Nullable
    public final CreateVirtualDocRequest getRequest() {
        return this.request;
    }

    @NotNull
    /* renamed from: isAbort, reason: from getter */
    public final AtomicBoolean getIsAbort() {
        return this.isAbort;
    }

    /* renamed from: n */
    public final Pair<List<ReaderPageInfo>, ReaderDocumentTableOfContent> m37620n() {
        int scene = this.noteCreateInfo.getScene();
        return scene != 0 ? scene != 2 ? scene != 3 ? m37622p() : m37621o() : TuplesKt.m61535to(new ArrayList(), null) : m37622p();
    }

    /* renamed from: o */
    public final Pair<List<ReaderPageInfo>, ReaderDocumentTableOfContent> m37621o() {
        WorkBundle workBundle = getEditorBundle().getWorkBundle();
        Reader ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(workBundle.getReaderBundle(), this.noteCreateInfo.getContentPath(), null, 2, null);
        if (ensureReaderByPath$default == null) {
            return TuplesKt.m61535to(new ArrayList(), null);
        }
        int totalPage = ensureReaderByPath$default.getNavigator().getTotalPage();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < totalPage; i++) {
            if (this.isAbort.get()) {
                return TuplesKt.m61535to(new ArrayList(), null);
            }
            arrayList.add(ReaderKt.getReaderPageInfoAndText(ensureReaderByPath$default, i));
            Function2<Integer, Integer, Unit> function2 = this.progressCallback;
            if (function2 != null) {
                function2.invoke(Integer.valueOf(i), Integer.valueOf(totalPage));
            }
        }
        return TuplesKt.m61535to(arrayList, ReaderKt.loadToc(ensureReaderByPath$default));
    }

    /* renamed from: p */
    public final Pair<List<ReaderPageInfo>, ReaderDocumentTableOfContent> m37622p() {
        Reader ensureReaderByPath$default;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : this.noteCreateInfo.getPaperBeanList()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            TemplateJsonBean paperJsonBean = ((PaperBean) obj).getPaperJsonBean();
            if (paperJsonBean != null) {
                String templateFilePath = Templates.INSTANCE.getTemplateFilePath(paperJsonBean, this.noteCreateInfo.getDocumentId(), paperJsonBean.getContentPageId());
                if (FileUtils.INSTANCE.isFileExist(templateFilePath) && (ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(getEditorBundle().getWorkBundle().getReaderBundle(), templateFilePath, null, 2, null)) != null) {
                    arrayList.add(ReaderKt.getReaderPageInfo(ensureReaderByPath$default, ReaderNavigator.DefaultImpls.positionByPositionString$default(ensureReaderByPath$default.getNavigator(), paperJsonBean.getContentPageId(), false, 2, null)));
                }
            }
            i = i2;
        }
        return TuplesKt.m61535to(arrayList, null);
    }

    /* renamed from: r */
    public final CreateVirtualDocRequest m37623r(Pair<? extends List<ReaderPageInfo>, ReaderDocumentTableOfContent> pair) {
        CreateVirtualDocRequest createVirtualDocRequest = new CreateVirtualDocRequest(getEditorBundle().getWorkBundle(), this.noteCreateInfo);
        createVirtualDocRequest.getReaderPathInfoList().addAll(pair.getFirst());
        createVirtualDocRequest.setToc(pair.getSecond());
        this.request = createVirtualDocRequest;
        createVirtualDocRequest.execute2();
        return createVirtualDocRequest;
    }

    /* renamed from: s */
    public final Observable<CreateVirtualDocAction> m37624s() {
        Object firstOrNull;
        TemplateJsonBean paperJsonBean;
        final String resourceId;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.noteCreateInfo.getPaperBeanList());
        PaperBean paperBean = (PaperBean) firstOrNull;
        if (paperBean == null || (paperJsonBean = paperBean.getPaperJsonBean()) == null || (resourceId = paperJsonBean.getResourceId()) == null) {
            Observable<CreateVirtualDocAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<CreateVirtualDocAction> map = RxjavaKt.doOnNextIf(DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, List<? extends TemplateResourceModel>>() { // from class: com.onyx.android.sdk.universal.editor.action.doc.CreateVirtualDocAction$getTemplateColor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<TemplateResourceModel> invoke(@NotNull WorkBundle it2) {
                List<String> listOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                TemplateProvider userTemplateProvider = KSyncBundle.INSTANCE.getUserTemplateProvider();
                listOf = CollectionsKt__CollectionsJVMKt.listOf(resourceId);
                return userTemplateProvider.loadTemplateResources(listOf);
            }
        }), new Function1<List<? extends TemplateResourceModel>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.doc.CreateVirtualDocAction$getTemplateColor$2
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<TemplateResourceModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends TemplateResourceModel> list) {
                return invoke2((List<TemplateResourceModel>) list);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.yge
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                CreateVirtualDocAction.m37619t(CreateVirtualDocAction.this, (List) obj);
            }
        }).map(new C8657d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setAbort(@NotNull AtomicBoolean atomicBoolean) {
        Intrinsics.checkNotNullParameter(atomicBoolean, "<set-?>");
        this.isAbort = atomicBoolean;
    }

    public final void setRequest(@Nullable CreateVirtualDocRequest createVirtualDocRequest) {
        this.request = createVirtualDocRequest;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CreateVirtualDocAction(@NotNull EditorBundle editorBundle, @NotNull NoteCreateInfo noteCreateInfo, @Nullable Function2<? super Integer, ? super Integer, Unit> function2) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(noteCreateInfo, "noteCreateInfo");
        this.noteCreateInfo = noteCreateInfo;
        this.progressCallback = function2;
        this.isAbort = new AtomicBoolean(false);
    }
}
