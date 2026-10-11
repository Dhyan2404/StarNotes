package com.onyx.android.sdk.universal.docmanager.action;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertProgressEvent;
import com.onyx.android.sdk.neopdf.PdfUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.api.ConvertArgs;
import com.onyx.android.sdk.reader.data.DecryptPDFArgs;
import com.onyx.android.sdk.reader.request.ConvertToPDFRequest;
import com.onyx.android.sdk.reader.request.DecryptPDFRequest;
import com.onyx.android.sdk.reader.request.RxBaseReaderRequest;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import onyx.org.apache.commons.io.FilenameUtils;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B3\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u0012\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u001f\u0012\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060\u001f¢\u0006\u0004\b1\u00102J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J&\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "dispose", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "convertEntry", "B", "handleCancel", "r", "", "progressStatus", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;", "decryptPDFArgs", "x", "", "path", "Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "convertArgs", "s", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", OcrValues.LANG_ITALIAN, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lorg/greenrobot/eventbus/EventBus;", C6999h.f39688c, "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "eventBus", "", "i", "Ljava/util/List;", "localConvertList", "j", "networkConvertList", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", C4921e.f26537n, "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "convertToPDFRequest", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "l", "Lkotlin/Lazy;", "A", "()Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DocConvertLocalAction extends RxBaseAppAction<Unit> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EventBus eventBus;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<ConvertEntry> localConvertList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<ConvertEntry> networkConvertList;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public RxBaseReaderRequest convertToPDFRequest;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy compositeDisposable;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$a */
    /* loaded from: classes8.dex */
    public static final class C8058a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ AtomicBoolean f47357e;

        /* renamed from: f */
        public final /* synthetic */ String f47358f;

        public C8058a(AtomicBoolean atomicBoolean, String str) {
            this.f47357e = atomicBoolean;
            this.f47358f = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DocConvertLocalAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AtomicBoolean atomicBoolean = this.f47357e;
            Reader.Companion companion = Reader.INSTANCE;
            String path = this.f47358f;
            Intrinsics.checkNotNullExpressionValue(path, "$path");
            atomicBoolean.set(companion.supportConverter(path));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$b */
    /* loaded from: classes8.dex */
    public static final class C8059b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ConvertEntry f47359e;

        public C8059b(ConvertEntry convertEntry) {
            this.f47359e = convertEntry;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ConvertEntry apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47359e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$c */
    /* loaded from: classes8.dex */
    public static final class C8060c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ConvertToPDFRequest f47361f;

        public C8060c(ConvertToPDFRequest convertToPDFRequest) {
            this.f47361f = convertToPDFRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocConvertLocalAction.this.m36523A().add(it2);
            DocConvertLocalAction.this.convertToPDFRequest = this.f47361f;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$d */
    /* loaded from: classes8.dex */
    public static final class C8061d<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Ref.BooleanRef f47362e;

        public C8061d(Ref.BooleanRef booleanRef) {
            this.f47362e = booleanRef;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(ProgressInfo progressInfo) {
            return this.f47362e.element;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$e */
    /* loaded from: classes8.dex */
    public static final class C8062e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ConvertEntry f47363e;

        public C8062e(ConvertEntry convertEntry) {
            this.f47363e = convertEntry;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ConvertEntry apply(ProgressInfo progressInfo) {
            ConvertEntry convertEntry = this.f47363e;
            convertEntry.setStatus(convertEntry.getDownloadLocalPath().length() > 0 ? ConvertResultType.RESULT_SUCCESS : ConvertResultType.RESULT_FAILED);
            return convertEntry;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$f */
    /* loaded from: classes8.dex */
    public static final class C8063f<T, R> implements Function {
        public C8063f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ConvertEntry> apply(@NotNull ConvertEntry it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocConvertLocalAction.this.m36527r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$g */
    /* loaded from: classes8.dex */
    public static final class C8064g<T, R> implements Function {
        public C8064g() {
        }

        /* renamed from: a */
        public final void m36536a(@NotNull ConvertEntry it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocConvertLocalAction.this.m36524B(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36536a((ConvertEntry) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$h */
    /* loaded from: classes8.dex */
    public static final class C8065h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ DecryptPDFRequest f47367f;

        public C8065h(DecryptPDFRequest decryptPDFRequest) {
            this.f47367f = decryptPDFRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocConvertLocalAction.this.m36523A().add(it2);
            DocConvertLocalAction.this.convertToPDFRequest = this.f47367f;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$i */
    /* loaded from: classes8.dex */
    public static final class C8066i<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Ref.BooleanRef f47368e;

        public C8066i(Ref.BooleanRef booleanRef) {
            this.f47368e = booleanRef;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(ProgressInfo progressInfo) {
            return this.f47368e.element;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$j */
    /* loaded from: classes8.dex */
    public static final class C8067j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ConvertEntry f47369e;

        public C8067j(ConvertEntry convertEntry) {
            this.f47369e = convertEntry;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ConvertEntry apply(ProgressInfo progressInfo) {
            ConvertEntry convertEntry = this.f47369e;
            convertEntry.setStatus(convertEntry.getDownloadLocalPath().length() > 0 ? ConvertResultType.RESULT_SUCCESS : ConvertResultType.RESULT_FAILED);
            return convertEntry;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocConvertLocalAction(@NotNull EditorBundle editorBundle, @NotNull EventBus eventBus, @NotNull List<ConvertEntry> localConvertList, @NotNull List<ConvertEntry> networkConvertList) {
        super(editorBundle);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        Intrinsics.checkNotNullParameter(localConvertList, "localConvertList");
        Intrinsics.checkNotNullParameter(networkConvertList, "networkConvertList");
        this.eventBus = eventBus;
        this.localConvertList = localConvertList;
        this.networkConvertList = networkConvertList;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CompositeDisposable>() { // from class: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$compositeDisposable$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CompositeDisposable invoke() {
                return new CompositeDisposable();
            }
        });
        this.compositeDisposable = lazy;
    }

    /* renamed from: t */
    public static final void m36517t(ConvertEntry convertEntry, ConvertArgs convertArgs, Ref.BooleanRef complete, PublishSubject info, ConvertToPDFRequest it2) {
        Intrinsics.checkNotNullParameter(convertEntry, "$convertEntry");
        Intrinsics.checkNotNullParameter(convertArgs, "$convertArgs");
        Intrinsics.checkNotNullParameter(complete, "$complete");
        Intrinsics.checkNotNullParameter(info, "$info");
        Intrinsics.checkNotNullParameter(it2, "it");
        if (!it2.hasException() && it2.getConvertSuccess()) {
            convertEntry.setDownloadLocalPath(convertArgs.getOutputPath());
            convertEntry.setStatus(ConvertResultType.RESULT_SUCCESS);
        }
        complete.element = true;
        info.onNext(ProgressInfo.INSTANCE.onComplete());
        info.onComplete();
    }

    /* renamed from: u */
    public static final void m36518u(DocConvertLocalAction this$0, ConvertEntry convertEntry, ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(convertEntry, "$convertEntry");
        Intrinsics.checkNotNull(progressInfo);
        this$0.m36525C(progressInfo, convertEntry);
    }

    /* renamed from: v */
    public static final void m36519v(DocConvertLocalAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleCancel();
    }

    /* renamed from: w */
    public static final void m36520w() {
        Debug.INSTANCE.m32037d("local doc convert finish!");
    }

    /* renamed from: y */
    public static final void m36521y(ConvertEntry convertEntry, DecryptPDFArgs decryptPDFArgs, Ref.BooleanRef complete, PublishSubject info, DecryptPDFRequest it2) {
        Intrinsics.checkNotNullParameter(convertEntry, "$convertEntry");
        Intrinsics.checkNotNullParameter(decryptPDFArgs, "$decryptPDFArgs");
        Intrinsics.checkNotNullParameter(complete, "$complete");
        Intrinsics.checkNotNullParameter(info, "$info");
        Intrinsics.checkNotNullParameter(it2, "it");
        if (!it2.hasException() && it2.getDecryptDone()) {
            convertEntry.setDownloadLocalPath(decryptPDFArgs.getOutputFilePath());
            convertEntry.setStatus(ConvertResultType.RESULT_SUCCESS);
        }
        complete.element = true;
        info.onNext(ProgressInfo.INSTANCE.onComplete());
        info.onComplete();
    }

    /* renamed from: z */
    public static final void m36522z(DocConvertLocalAction this$0, ConvertEntry convertEntry, ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(convertEntry, "$convertEntry");
        Intrinsics.checkNotNull(progressInfo);
        this$0.m36525C(progressInfo, convertEntry);
    }

    /* renamed from: A */
    public final CompositeDisposable m36523A() {
        return (CompositeDisposable) this.compositeDisposable.getValue();
    }

    /* renamed from: B */
    public final void m36524B(ConvertEntry convertEntry) {
        m36526D(202, convertEntry);
    }

    /* renamed from: C */
    public final void m36525C(ProgressInfo it2, ConvertEntry convertEntry) {
        convertEntry.setStatus(ConvertResultType.RESULT_PROCESSING);
        convertEntry.setProgressValue((int) it2.getProgress());
        m36524B(convertEntry);
    }

    /* renamed from: D */
    public final void m36526D(int progressStatus, ConvertEntry convertEntry) {
        DocConvertProgressEvent docConvertProgressEvent = new DocConvertProgressEvent();
        docConvertProgressEvent.setStatus(progressStatus);
        docConvertProgressEvent.setTaskId(convertEntry.getTaskId());
        docConvertProgressEvent.setLocalList(this.localConvertList);
        docConvertProgressEvent.setNetworkList(this.networkConvertList);
        this.eventBus.post(docConvertProgressEvent);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        if (CollectionKt.isNullOrEmpty(this.localConvertList)) {
            Observable<Unit> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.fromIterable(this.localConvertList).concatMap(new C8063f()).map(new C8064g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<Unit> doOnComplete = RxjavaKt.takeLastOne(map).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.t6f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocConvertLocalAction.m36519v(DocConvertLocalAction.this);
            }
        }).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.u6f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocConvertLocalAction.m36520w();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        RxBaseReaderRequest rxBaseReaderRequest = this.convertToPDFRequest;
        if (rxBaseReaderRequest != null) {
            rxBaseReaderRequest.setAbort();
        }
        m36523A().dispose();
    }

    @NotNull
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    public final void handleCancel() {
        DocConvertProgressEvent docConvertProgressEvent = new DocConvertProgressEvent();
        docConvertProgressEvent.setStatus(204);
        this.eventBus.post(docConvertProgressEvent);
    }

    /* renamed from: r */
    public final Observable<ConvertEntry> m36527r(final ConvertEntry convertEntry) {
        final String absolutePath = convertEntry.getFile().getAbsolutePath();
        final String baseName = FilenameUtils.getBaseName(absolutePath);
        final File externalCacheDir = ResManager.INSTANCE.getAppContext().getExternalCacheDir();
        final String absolutePath2 = new File(externalCacheDir, baseName + CloudStorageConstants.PDF_FILE_SUFFIX).getAbsolutePath();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Observable doOnNext = Observable.just(this).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).doOnNext(new C8058a(atomicBoolean, absolutePath));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(doOnNext, new Function1<DocConvertLocalAction, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$convertDocumentToPdf$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DocConvertLocalAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!atomicBoolean.get());
            }
        }, new Function1<DocConvertLocalAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$convertDocumentToPdf$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull DocConvertLocalAction it2) {
                Observable<? extends Object> m36529x;
                Intrinsics.checkNotNullParameter(it2, "it");
                if (FileExtensionUtils.INSTANCE.isPdfFile(absolutePath) && convertEntry.isFileEncrypted()) {
                    String path = absolutePath;
                    Intrinsics.checkNotNullExpressionValue(path, "$path");
                    String filePassword = convertEntry.getFilePassword();
                    if (filePassword == null) {
                        filePassword = "";
                    }
                    String outputPath = absolutePath2;
                    Intrinsics.checkNotNullExpressionValue(outputPath, "$outputPath");
                    m36529x = this.m36529x(new DecryptPDFArgs(path, filePassword, outputPath), convertEntry);
                    return m36529x;
                }
                ConvertEntry convertEntry2 = convertEntry;
                String path2 = absolutePath;
                Intrinsics.checkNotNullExpressionValue(path2, "$path");
                convertEntry2.setDownloadLocalPath(path2);
                convertEntry.setStatus(ConvertResultType.RESULT_SUCCESS);
                Observable<? extends Object> just = Observable.just(convertEntry);
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                return just;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$convertDocumentToPdf$4
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
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$convertDocumentToPdf$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Observable<? extends Object> m36528s;
                Intrinsics.checkNotNullParameter(it2, "it");
                ConvertEntry convertEntry2 = ConvertEntry.this;
                String outputPath = absolutePath2;
                Intrinsics.checkNotNullExpressionValue(outputPath, "$outputPath");
                convertEntry2.setDownloadLocalPath(outputPath);
                FileUtils fileUtils = FileUtils.INSTANCE;
                if (fileUtils.fileExist(absolutePath2)) {
                    fileUtils.deleteFile(absolutePath2);
                }
                File file = new File(externalCacheDir, baseName);
                if (fileUtils.fileExist(file)) {
                    fileUtils.deleteFile(file);
                }
                file.mkdirs();
                String outputPath2 = absolutePath2;
                Intrinsics.checkNotNullExpressionValue(outputPath2, "$outputPath");
                String absolutePath3 = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath3, "getAbsolutePath(...)");
                ConvertArgs convertArgs = new ConvertArgs(outputPath2, absolutePath3, 0, 4, null);
                DocConvertLocalAction docConvertLocalAction = this;
                String path = absolutePath;
                Intrinsics.checkNotNullExpressionValue(path, "$path");
                m36528s = docConvertLocalAction.m36528s(path, convertArgs, ConvertEntry.this);
                return m36528s;
            }
        }).map(new C8059b(convertEntry));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<ConvertEntry> m36528s(String path, final ConvertArgs convertArgs, final ConvertEntry convertEntry) {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        PdfUtils pdfUtils = PdfUtils.INSTANCE;
        SizeFormat sizeFormat = SizeFormat.f45503A4;
        ConvertToPDFRequest convertToPDFRequest = new ConvertToPDFRequest(EditorBundleKt.readerBundle(getEditorBundle()), path, new Size(pdfUtils.pdfCMToPx(Integer.valueOf(sizeFormat.getSize().getWidth())), pdfUtils.pdfCMToPx(Integer.valueOf(sizeFormat.getSize().getHeight()))), convertArgs, new DocConvertLocalAction$convertToPDF$convertToPDFRequest$1(create));
        convertToPDFRequest.disableThrowException();
        Observable doOnSubscribe = RxBaseAppActionKt.submitRequestToReader(this, convertToPDFRequest).doOnSubscribe(new C8060c(convertToPDFRequest));
        Intrinsics.checkNotNullExpressionValue(doOnSubscribe, "doOnSubscribe(...)");
        RxjavaKt.subscribeWithDefault$default(doOnSubscribe, new Consumer() { // from class: com.sunia.HTREnginev2.r6f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocConvertLocalAction.m36517t(ConvertEntry.this, convertArgs, booleanRef, create, (ConvertToPDFRequest) obj);
            }
        }, null, null, 6, null);
        Observable<ConvertEntry> map = RxjavaKt.doOnNextIf(create, new Function1<ProgressInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$convertToPDF$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(ProgressInfo progressInfo) {
                return Boolean.valueOf(!DocConvertLocalAction.this.m36523A().isDisposed());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.s6f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocConvertLocalAction.m36518u(DocConvertLocalAction.this, convertEntry, (ProgressInfo) obj);
            }
        }).filter(new C8061d(booleanRef)).map(new C8062e(convertEntry));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: x */
    public final Observable<ConvertEntry> m36529x(final DecryptPDFArgs decryptPDFArgs, final ConvertEntry convertEntry) {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        DecryptPDFRequest decryptPDFRequest = new DecryptPDFRequest(EditorBundleKt.readerBundle(getEditorBundle()), decryptPDFArgs, new DocConvertLocalAction$decryptPDF$decryptPDFRequest$1(create));
        decryptPDFRequest.disableThrowException();
        Observable doOnSubscribe = RxBaseAppActionKt.submitRequestToReader(this, decryptPDFRequest).doOnSubscribe(new C8065h(decryptPDFRequest));
        Intrinsics.checkNotNullExpressionValue(doOnSubscribe, "doOnSubscribe(...)");
        RxjavaKt.subscribeWithDefault$default(doOnSubscribe, new Consumer() { // from class: com.sunia.HTREnginev2.p6f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocConvertLocalAction.m36521y(ConvertEntry.this, decryptPDFArgs, booleanRef, create, (DecryptPDFRequest) obj);
            }
        }, null, null, 6, null);
        Observable<ConvertEntry> map = RxjavaKt.doOnNextIf(create, new Function1<ProgressInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.DocConvertLocalAction$decryptPDF$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(ProgressInfo progressInfo) {
                return Boolean.valueOf(!DocConvertLocalAction.this.m36523A().isDisposed());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.q6f
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocConvertLocalAction.m36522z(DocConvertLocalAction.this, convertEntry, (ProgressInfo) obj);
            }
        }).filter(new C8066i(booleanRef)).map(new C8067j(convertEntry));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
