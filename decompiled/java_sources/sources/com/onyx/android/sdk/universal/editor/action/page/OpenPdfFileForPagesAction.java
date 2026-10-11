package com.onyx.android.sdk.universal.editor.action.page;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.reader.request.LoadTotalPageRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.CopyDocumentWithUriRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\"\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "", "l", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "fileEntry", "i", Constants.STRING_SIG, "getFilePath", "()Ljava/lang/String;", "setFilePath", "(Ljava/lang/String;)V", "filePath", "", "j", "I", "getTotalPage", "()I", "setTotalPage", "(I)V", "totalPage", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OpenPdfFileForPagesAction extends RxBaseAppAction<OpenPdfFileForPagesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final DocumentFileEntry fileEntry;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String filePath;

    /* renamed from: j, reason: from kotlin metadata */
    public int totalPage;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.OpenPdfFileForPagesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9704a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CopyDocumentWithUriRequest f50199e;

        public C9704a(CopyDocumentWithUriRequest copyDocumentWithUriRequest) {
            this.f50199e = copyDocumentWithUriRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull CopyDocumentWithUriRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50199e.getDocumentPath();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.OpenPdfFileForPagesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9705b<T> implements Consumer {
        public C9705b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenPdfFileForPagesAction.this.setFilePath(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.OpenPdfFileForPagesAction$c */
    /* loaded from: classes8.dex */
    public static final class C9706c<T, R> implements Function {
        public C9706c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull OpenPdfFileForPagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenPdfFileForPagesAction.this.m39525l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.OpenPdfFileForPagesAction$d */
    /* loaded from: classes8.dex */
    public static final class C9707d<T, R> implements Function {
        public C9707d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenPdfFileForPagesAction> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenPdfFileForPagesAction.this.m39526m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.OpenPdfFileForPagesAction$e */
    /* loaded from: classes8.dex */
    public static final class C9708e<T, R> implements Function {
        public C9708e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenPdfFileForPagesAction apply(@NotNull LoadTotalPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenPdfFileForPagesAction.this.setTotalPage(it2.getTotalPage());
            return OpenPdfFileForPagesAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenPdfFileForPagesAction(@NotNull EditorBundle editorBundle, @NotNull DocumentFileEntry fileEntry) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(fileEntry, "fileEntry");
        this.fileEntry = fileEntry;
        this.filePath = "";
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<OpenPdfFileForPagesAction> create() {
        Observable<OpenPdfFileForPagesAction> observeOn = Observable.just(this).flatMap(new C9706c()).flatMap(new C9707d()).delay(1000L, TimeUnit.MILLISECONDS).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final String getFilePath() {
        return this.filePath;
    }

    public final int getTotalPage() {
        return this.totalPage;
    }

    /* renamed from: l */
    public final Observable<String> m39525l() {
        CopyDocumentWithUriRequest copyDocumentWithUriRequest = new CopyDocumentWithUriRequest(getEditorBundle().getWorkBundle(), AppConfig.INSTANCE.importDocumentTempFileDir());
        copyDocumentWithUriRequest.setUri(this.fileEntry.getFileUri());
        Observable<String> doOnNext = RxBaseAppActionKt.submitRequestToIOSequence(this, copyDocumentWithUriRequest).map(new C9704a(copyDocumentWithUriRequest)).doOnNext(new C9705b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<OpenPdfFileForPagesAction> m39526m() {
        if (this.filePath.length() == 0) {
            Observable<OpenPdfFileForPagesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<OpenPdfFileForPagesAction> map = RxBaseAppActionKt.submitRequestToReader(this, new LoadTotalPageRequest(EditorBundleKt.readerBundle(getEditorBundle()), this.filePath, this.fileEntry.getFilePassword())).map(new C9708e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setFilePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filePath = str;
    }

    public final void setTotalPage(int i) {
        this.totalPage = i;
    }
}
