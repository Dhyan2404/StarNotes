package com.onyx.android.sdk.universal.editor.action;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.request.OpenNoteDocumentRequest;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.flush.ImportStashShapeAction;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.AfterDocumentOpenRequest;
import com.onyx.android.sdk.universal.editor.request.doc.OpenVirtualDocRequest;
import com.onyx.android.sdk.universal.editor.request.p041pb.ExportToDBFromPBRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentDataAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "q", "s", "r", GoogleApiAvailabilityLight.f29016b, "p", "t", "l", "", OcrValues.LANG_ITALIAN, "", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "openDocArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OpenDocumentDataAction extends RxBaseAppAction<OpenDocumentDataAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final OpenDocArgs openDocArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$a */
    /* loaded from: classes8.dex */
    public static final class C8290a<T, R> implements Function {
        public C8290a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentDataAction apply(@NotNull AfterDocumentOpenRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$b */
    /* loaded from: classes8.dex */
    public static final class C8291b<T, R> implements Function {
        public C8291b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(OpenDocumentDataAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$c */
    /* loaded from: classes8.dex */
    public static final class C8292c<T, R> implements Function {
        public C8292c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentDataAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$d */
    /* loaded from: classes8.dex */
    public static final class C8293d<T, R> implements Function {
        public C8293d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentDataAction> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this.m36961m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$e */
    /* loaded from: classes8.dex */
    public static final class C8294e<T, R> implements Function {
        public C8294e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentDataAction> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this.m36965q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$f */
    /* loaded from: classes8.dex */
    public static final class C8295f<T, R> implements Function {
        public C8295f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentDataAction> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this.m36960l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$h */
    /* loaded from: classes8.dex */
    public static final class C8297h<T, R> implements Function {
        public C8297h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentDataAction apply(@NotNull ExportToDBFromPBRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$i */
    /* loaded from: classes8.dex */
    public static final class C8298i<T, R> implements Function {
        public C8298i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentDataAction apply(@NotNull ImportStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$j */
    /* loaded from: classes8.dex */
    public static final class C8299j<T, R> implements Function {
        public C8299j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentDataAction> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this.m36966r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$k */
    /* loaded from: classes8.dex */
    public static final class C8300k<T, R> implements Function {
        public C8300k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentDataAction> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this.m36962n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$l */
    /* loaded from: classes8.dex */
    public static final class C8301l<T, R> implements Function {
        public C8301l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentDataAction> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this.m36964p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$m */
    /* loaded from: classes8.dex */
    public static final class C8302m<T, R> implements Function {
        public C8302m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentDataAction> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this.m36968t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$n */
    /* loaded from: classes8.dex */
    public static final class C8303n<T, R> implements Function {
        public C8303n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentDataAction apply(@NotNull OpenNoteDocumentRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$o */
    /* loaded from: classes8.dex */
    public static final class C8304o<T, R> implements Function {
        public C8304o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentDataAction apply(@NotNull OpenVirtualDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$p */
    /* loaded from: classes8.dex */
    public static final class C8305p<T, R> implements Function {
        public C8305p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OpenDocumentDataAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OpenDocumentDataAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenDocumentDataAction(@NotNull EditorBundle editorBundle, @NotNull OpenDocArgs openDocArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(openDocArgs, "openDocArgs");
        this.openDocArgs = openDocArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<OpenDocumentDataAction> create() {
        Observable<OpenDocumentDataAction> doOnError = Observable.just(this).flatMap(new C8293d()).flatMap(new C8294e()).flatMap(new C8295f()).doOnError(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction.g
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                OpenDocumentDataAction.this.m36963o(p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    /* renamed from: l */
    public final Observable<OpenDocumentDataAction> m36960l() {
        Observable<OpenDocumentDataAction> map = RxBaseAppActionKt.submitRequestToCore(this, new AfterDocumentOpenRequest(getEditorBundle().getWorkBundle(), null, 2, null)).map(new C8290a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<OpenDocumentDataAction> m36961m() {
        Observable<OpenDocumentDataAction> map = Observable.just(this).flatMap(new C8291b()).map(new C8292c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<OpenDocumentDataAction> m36962n() {
        Observable<OpenDocumentDataAction> map = RxBaseAppActionKt.submitRequestToCore(this, new ExportToDBFromPBRequest(getEditorBundle().getWorkBundle())).map(new C8297h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final void m36963o(Throwable it2) {
        String stackTraceToString;
        StringBuilder sb = new StringBuilder();
        sb.append("open document data action fail, docId=");
        sb.append(this.openDocArgs.getDocumentId());
        sb.append(" ,path=");
        sb.append(this.openDocArgs.getPath());
        sb.append(" ,title=");
        sb.append(this.openDocArgs.getTitle());
        sb.append(" ,exception:");
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
        sb.append(stackTraceToString);
        LogUtils.file(OpenDocumentDataAction.class.getSimpleName(), sb.toString());
    }

    /* renamed from: p */
    public final Observable<OpenDocumentDataAction> m36964p() {
        Observable<R> map = new ImportStashShapeAction(getEditorBundle(), this.openDocArgs).buildFast().map(new C8298i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: q */
    public final Observable<OpenDocumentDataAction> m36965q() {
        Observable<OpenDocumentDataAction> flatMap = m36967s().flatMap(new C8299j()).flatMap(new C8300k()).flatMap(new C8301l()).flatMap(new C8302m());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: r */
    public final Observable<OpenDocumentDataAction> m36966r() {
        OpenNoteDocumentRequest openNoteDocumentRequest = new OpenNoteDocumentRequest(EditorBundleKt.noteBundle(getEditorBundle()));
        openNoteDocumentRequest.setNoteDocBean(this.openDocArgs.toNoteDocBean());
        Observable<OpenDocumentDataAction> map = RxBaseAppActionKt.submitRequestToNote(this, openNoteDocumentRequest).map(new C8303n());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<OpenDocumentDataAction> m36967s() {
        Observable<OpenDocumentDataAction> map = RxBaseAppActionKt.submitRequestToCore(this, new OpenVirtualDocRequest(getEditorBundle().getWorkBundle(), this.openDocArgs)).map(new C8304o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: t */
    public final Observable<OpenDocumentDataAction> m36968t() {
        Observable<OpenDocumentDataAction> map = DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction$prepareNoteData$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteDocNotePage.INSTANCE.updateValidShapeNotePageIds(it2.getNoteDoc());
            }
        }).map(new C8305p());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
