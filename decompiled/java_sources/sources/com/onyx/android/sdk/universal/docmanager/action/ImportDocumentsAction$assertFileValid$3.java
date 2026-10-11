package com.onyx.android.sdk.universal.docmanager.action;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.reader.data.OpenDocumentArgs;
import com.onyx.android.sdk.reader.request.OpenRequest;
import com.onyx.android.sdk.universal.editor.events.app.ImportDocumentsResultEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, m61528d2 = {"<anonymous>", "Lio/reactivex/rxjava3/core/Observable;", "", OcrValues.LANG_ITALIAN, "", "invoke", "(Ljava/lang/Boolean;)Lio/reactivex/rxjava3/core/Observable;"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ImportDocumentsAction$assertFileValid$3 extends Lambda implements Function1<Boolean, Observable<? extends Object>> {
    final /* synthetic */ ImportDocumentsResultEvent $resultEvent;
    final /* synthetic */ ImportDocumentsAction this$0;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$assertFileValid$3$a */
    /* loaded from: classes8.dex */
    public static final class C8070a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ OpenRequest f47385e;

        public C8070a(OpenRequest openRequest) {
            this.f47385e = openRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ImportDocumentsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f47385e.execute2();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$assertFileValid$3$b */
    /* loaded from: classes8.dex */
    public static final class C8071b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ImportDocumentsAction f47386e;

        /* renamed from: f */
        public final /* synthetic */ ImportDocumentsResultEvent f47387f;

        public C8071b(ImportDocumentsAction importDocumentsAction, ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47386e = importDocumentsAction;
            this.f47387f = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ImportDocumentsAction> apply(@NotNull ImportDocumentsAction it2) {
            Observable m36577s;
            Intrinsics.checkNotNullParameter(it2, "it");
            m36577s = this.f47386e.m36577s(this.f47387f);
            return m36577s;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction$assertFileValid$3$c */
    /* loaded from: classes8.dex */
    public static final class C8072c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ImportDocumentsResultEvent f47388e;

        public C8072c(ImportDocumentsResultEvent importDocumentsResultEvent) {
            this.f47388e = importDocumentsResultEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f47388e.setSuccess(false);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImportDocumentsAction$assertFileValid$3(ImportDocumentsAction importDocumentsAction, ImportDocumentsResultEvent importDocumentsResultEvent) {
        super(1);
        this.this$0 = importDocumentsAction;
        this.$resultEvent = importDocumentsResultEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(ImportDocumentsAction this$0, ImportDocumentsResultEvent resultEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(resultEvent, "$resultEvent");
        EditorBundleKt.readerBundle(this$0.getEditorBundle()).destroyReaderByPath(resultEvent.getPath());
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        OpenRequest openRequest = new OpenRequest(EditorBundleKt.readerBundle(this.this$0.getEditorBundle()));
        OpenDocumentArgs openDocumentArgs = new OpenDocumentArgs(null, null, null, null, null, 31, null);
        openDocumentArgs.setPath(this.$resultEvent.getPath());
        openRequest.setOpenDocumentArgs(openDocumentArgs);
        Observable doOnError = Observable.just(this.this$0).doOnNext(new C8070a(openRequest)).flatMap(new C8071b(this.this$0, this.$resultEvent)).doOnError(new C8072c(this.$resultEvent));
        final ImportDocumentsAction importDocumentsAction = this.this$0;
        final ImportDocumentsResultEvent importDocumentsResultEvent = this.$resultEvent;
        Observable<? extends Object> doFinally = doOnError.doFinally(new Action() { // from class: com.onyx.android.sdk.universal.docmanager.action.a
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ImportDocumentsAction$assertFileValid$3.invoke$lambda$1(ImportDocumentsAction.this, importDocumentsResultEvent);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }
}
