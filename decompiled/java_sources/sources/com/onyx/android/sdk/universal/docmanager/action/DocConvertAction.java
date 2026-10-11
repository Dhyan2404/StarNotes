package com.onyx.android.sdk.universal.docmanager.action;

import android.net.Uri;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.action.DeleteFileAction;
import com.onyx.android.sdk.data.serverconvert.DocConvertUtils;
import com.onyx.android.sdk.data.serverconvert.action.DocCovertOnlineAsyncAction;
import com.onyx.android.sdk.data.serverconvert.action.RxBaseCovertAction;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertConst;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertProgressEvent;
import com.onyx.android.sdk.data.serverconvert.convertor.ConvertType;
import com.onyx.android.sdk.universal.docmanager.action.DocConvertAction;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010!\u001a\u00020\u001c\u0012\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00130\u0005¢\u0006\u0004\b6\u00107J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J$\u0010\u000e\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u001e\u0010\u0016\u001a\u00020\u00022\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0014H\u0002J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0014H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002R\u0017\u0010!\u001a\u00020\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00130\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010#R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010#R\u001c\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00060%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010#R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;", "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "getImportList", "dispose", "handleResult", "z", "x", "localConvertList", "networkConvertList", "y", "w", "q", "v", "", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "Ljava/io/File;", "uriFileMap", "A", "file", "Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;", C4921e.f26528e, "p", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", C6997f.f39671c, "Ljava/util/List;", "fileList", "", C6998g.f39679a, C6999h.f39688c, "i", "invalidList", "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;", "j", "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;", "docConvertLocalAction", "Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;", C4921e.f26537n, "Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;", "docConvertOnlineAction", "Lio/reactivex/rxjava3/disposables/Disposable;", "l", "Lio/reactivex/rxjava3/disposables/Disposable;", "timeoutDisposable", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDocConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocConvertAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/DocConvertAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n766#2:173\n857#2,2:174\n1549#2:176\n1620#2,3:177\n*S KotlinDebug\n*F\n+ 1 DocConvertAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/DocConvertAction\n*L\n162#1:173\n162#1:174,2\n163#1:176\n163#1:177,3\n*E\n"})
/* loaded from: classes8.dex */
public final class DocConvertAction extends RxBaseCovertAction<Unit> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<DocumentFileEntry> fileList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<ConvertEntry> localConvertList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<ConvertEntry> networkConvertList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<ConvertEntry> invalidList;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public DocConvertLocalAction docConvertLocalAction;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public DocCovertOnlineAsyncAction docConvertOnlineAction;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public Disposable timeoutDisposable;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertAction$a */
    /* loaded from: classes8.dex */
    public static final class C8049a<T1, T2, R> implements BiFunction {

        /* renamed from: e */
        public static final C8049a<T1, T2, R> f47343e = new C8049a<>();

        /* renamed from: a */
        public final void m36502a(@NotNull Unit unit, @NotNull Unit unit2) {
            Intrinsics.checkNotNullParameter(unit, "<anonymous parameter 0>");
            Intrinsics.checkNotNullParameter(unit2, "<anonymous parameter 1>");
        }

        @Override // io.reactivex.rxjava3.functions.BiFunction
        public /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
            m36502a((Unit) obj, (Unit) obj2);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertAction$b */
    /* loaded from: classes8.dex */
    public static final class C8050b<T> implements Consumer {
        public C8050b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DocConvertAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocConvertAction.this.m36501z();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertAction$c */
    /* loaded from: classes8.dex */
    public static final class C8051c<T, R> implements Function {
        public C8051c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Map<DocumentFileEntry, File>> apply(@NotNull DocConvertAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CopyUriToFileAction(DocConvertAction.this.fileList).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertAction$d */
    /* loaded from: classes8.dex */
    public static final class C8052d<T> implements Consumer {
        public C8052d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<DocumentFileEntry, ? extends File> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Disposable disposable = DocConvertAction.this.timeoutDisposable;
            if (disposable != null) {
                disposable.dispose();
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertAction$e */
    /* loaded from: classes8.dex */
    public static final class C8053e<T, R> implements Function {
        public C8053e() {
        }

        /* renamed from: a */
        public final void m36506a(@NotNull Map<DocumentFileEntry, ? extends File> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocConvertAction.this.m36492A(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36506a((Map) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertAction$f */
    /* loaded from: classes8.dex */
    public static final class C8054f<T, R> implements Function {
        public C8054f() {
        }

        /* renamed from: a */
        public final void m36507a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocConvertAction.this.m36499x();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36507a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertAction$g */
    /* loaded from: classes8.dex */
    public static final class C8055g<T, R> implements Function {
        public C8055g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocConvertAction.this.m36495q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertAction$h */
    /* loaded from: classes8.dex */
    public static final class C8056h<T> implements Consumer {
        public C8056h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocConvertAction.this.m36497v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.DocConvertAction$i */
    /* loaded from: classes8.dex */
    public static final class C8057i<T> implements Consumer {
        public C8057i() {
        }

        /* renamed from: a */
        public final void m36510a(long j) {
            List emptyList;
            List emptyList2;
            DocConvertAction docConvertAction = DocConvertAction.this;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            docConvertAction.m36500y(emptyList, emptyList2);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m36510a(((Number) obj).longValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocConvertAction(@NotNull EditorBundle editorBundle, @NotNull List<DocumentFileEntry> fileList) {
        super(EditorBundleKt.appEventBus(editorBundle));
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(fileList, "fileList");
        this.editorBundle = editorBundle;
        this.fileList = fileList;
        this.localConvertList = new ArrayList();
        this.networkConvertList = new ArrayList();
        this.invalidList = new ArrayList();
    }

    /* renamed from: s */
    public static final void m36489s(DocConvertAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleResult();
    }

    /* renamed from: t */
    public static final void m36490t(DocConvertAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleCancel();
    }

    /* renamed from: u */
    public static final void m36491u(DocConvertAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m36496r();
    }

    /* renamed from: A */
    public final void m36492A(Map<DocumentFileEntry, ? extends File> uriFileMap) {
        for (Map.Entry<DocumentFileEntry, ? extends File> entry : uriFileMap.entrySet()) {
            DocumentFileEntry key = entry.getKey();
            Uri fileUri = key.getFileUri();
            File value = entry.getValue();
            ConvertEntry convertEntry = new ConvertEntry();
            convertEntry.setUri(fileUri);
            convertEntry.setFilePassword(key.getFilePassword());
            if (value == null) {
                this.invalidList.add(convertEntry);
            } else if (value.exists()) {
                convertEntry.setConvertType(m36493o(value));
                convertEntry.setFile(value);
                convertEntry.setFileName(value.getName());
                DocConvertUtils docConvertUtils = DocConvertUtils.INSTANCE;
                String name = value.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (docConvertUtils.getDocType(name) == null || !NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext())) {
                    this.localConvertList.add(convertEntry);
                } else if (value.length() < DocConvertConst.NETWORK_CONVERT_SIZE_MAX_LIMIT) {
                    this.networkConvertList.add(convertEntry);
                } else {
                    this.invalidList.add(convertEntry);
                }
            } else {
                this.invalidList.add(convertEntry);
            }
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        if (this.fileList.isEmpty()) {
            Observable<Unit> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Unit> doFinally = Observable.just(this).doOnNext(new C8050b()).flatMap(new C8051c()).doOnNext(new C8052d()).map(new C8053e()).map(new C8054f()).observeOn(getObserveOn()).flatMap(new C8055g()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.m6f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocConvertAction.m36489s(DocConvertAction.this);
            }
        }).doOnError(new C8056h()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.n6f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocConvertAction.m36490t(DocConvertAction.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.o6f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DocConvertAction.m36491u(DocConvertAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        DocConvertLocalAction docConvertLocalAction = this.docConvertLocalAction;
        if (docConvertLocalAction != null) {
            docConvertLocalAction.dispose();
        }
        DocCovertOnlineAsyncAction docCovertOnlineAsyncAction = this.docConvertOnlineAction;
        if (docCovertOnlineAsyncAction != null) {
            docCovertOnlineAsyncAction.dispose();
        }
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final List<ConvertEntry> getImportList() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.localConvertList);
        arrayList.addAll(this.networkConvertList);
        arrayList.addAll(this.invalidList);
        return arrayList;
    }

    public final void handleResult() {
        m36497v();
    }

    /* renamed from: o */
    public final ConvertType m36493o(File file) {
        return file.length() > DocConvertConst.DOC_SIZE_MAX_LIMIT ? ConvertType.OSS : ConvertType.COS;
    }

    /* renamed from: p */
    public final ConvertType m36494p(File file) {
        return ConvertType.COS;
    }

    /* renamed from: q */
    public final Observable<Unit> m36495q() {
        if (this.localConvertList.isEmpty() && this.networkConvertList.isEmpty()) {
            Observable<Unit> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundle editorBundle = this.editorBundle;
        this.docConvertLocalAction = new DocConvertLocalAction(editorBundle, EditorBundleKt.appEventBus(editorBundle), this.localConvertList, this.networkConvertList);
        this.docConvertOnlineAction = new DocCovertOnlineAsyncAction(EditorBundleKt.appEventBus(this.editorBundle), this.localConvertList, this.networkConvertList);
        DocConvertLocalAction docConvertLocalAction = this.docConvertLocalAction;
        Intrinsics.checkNotNull(docConvertLocalAction);
        Observable<Unit> build = docConvertLocalAction.build();
        DocCovertOnlineAsyncAction docCovertOnlineAsyncAction = this.docConvertOnlineAction;
        Intrinsics.checkNotNull(docCovertOnlineAsyncAction);
        Observable<Unit> zip = Observable.zip(build, docCovertOnlineAsyncAction.build(), C8049a.f47343e);
        Intrinsics.checkNotNullExpressionValue(zip, "zip(...)");
        return zip;
    }

    /* renamed from: r */
    public final void m36496r() {
        int collectionSizeOrDefault;
        List<ConvertEntry> importList = getImportList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : importList) {
            ConvertEntry convertEntry = (ConvertEntry) obj;
            if (StringKt.isNotEmpty(convertEntry.getFileName()) && !Intrinsics.areEqual(convertEntry.getFile().getAbsolutePath(), convertEntry.getDownloadLocalPath())) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((ConvertEntry) it2.next()).getFile().getAbsolutePath());
        }
        RxBaseAction.execute$default(new DeleteFileAction(arrayList2), null, null, null, 7, null);
    }

    /* renamed from: v */
    public final void m36497v() {
        m36498w();
    }

    /* renamed from: w */
    public final void m36498w() {
        DocConvertProgressEvent docConvertProgressEvent = new DocConvertProgressEvent();
        docConvertProgressEvent.setStatus(203);
        postEventIf(docConvertProgressEvent);
    }

    /* renamed from: x */
    public final void m36499x() {
        m36500y(this.localConvertList, this.networkConvertList);
    }

    /* renamed from: y */
    public final void m36500y(List<ConvertEntry> localConvertList, List<ConvertEntry> networkConvertList) {
        DocConvertProgressEvent docConvertProgressEvent = new DocConvertProgressEvent();
        docConvertProgressEvent.setStatus(200);
        docConvertProgressEvent.setLocalList(localConvertList);
        docConvertProgressEvent.setNetworkList(networkConvertList);
        postEventIf(docConvertProgressEvent);
    }

    /* renamed from: z */
    public final void m36501z() {
        this.timeoutDisposable = Observable.timer(1000L, TimeUnit.MILLISECONDS).doOnNext(new C8057i()).subscribe();
    }
}
