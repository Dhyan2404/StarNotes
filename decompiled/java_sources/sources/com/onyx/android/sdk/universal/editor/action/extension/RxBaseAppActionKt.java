package com.onyx.android.sdk.universal.editor.action.extension;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a3\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u00022\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\b\u001a7\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0005\u001a\u0002H\u00022\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\n\u001a+\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\f\u001a/\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\r\u001a+\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\f\u001a/\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\r\u001a+\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\f\u001a/\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\r\u001a+\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\f\u001a/\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u0003*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\r¨\u0006\u0011"}, m61528d2 = {"submitRequest", "Lio/reactivex/rxjava3/core/Observable;", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", AbstractLogger.REQUEST, "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;", "submitRequestToCore", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;", "(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;", "submitRequestToIOSequence", "submitRequestToNote", "submitRequestToReader", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class RxBaseAppActionKt {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt$b */
    /* loaded from: classes8.dex */
    public static final class C9085b<T, R> implements Function {

        /* renamed from: e */
        public static final C9085b<T, R> f49021e = new C9085b<>();

        /* JADX WARN: Incorrect return type in method signature: (TT;)TT; */
        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RxBaseRequest apply(@NotNull RxBaseRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.execute();
            return it2;
        }
    }

    /* JADX WARN: Incorrect field signature: TT; */
    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt$c */
    /* loaded from: classes8.dex */
    public static final class C9086c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RxBaseRequest f49022e;

        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        public C9086c(RxBaseRequest rxBaseRequest) {
            this.f49022e = rxBaseRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Debug.INSTANCE.m32046e("exception: " + AnyKt.toSimpleNameString(this.f49022e));
        }
    }

    /* renamed from: b */
    public static final void m38303b(EditorBundle this_submitRequest, RxBaseRequest request) {
        Intrinsics.checkNotNullParameter(this_submitRequest, "$this_submitRequest");
        Intrinsics.checkNotNullParameter(request, "$request");
        this_submitRequest.afterRequestFinally(request);
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequest(@NotNull final EditorBundle editorBundle, @NotNull final T request, @NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Observable<T> observeOn = Observable.just(request).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt.a
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/rxjava3/core/Observable<TT;>; */
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable apply(@NotNull RxBaseRequest p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return EditorBundle.this.beforeSubmitRequest(p0);
            }
        }).observeOn(scheduler).map(C9085b.f49021e).doOnError(new C9086c(request)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.vvl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RxBaseAppActionKt.m38303b(EditorBundle.this, request);
            }
        }).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequestToCore(@NotNull EditorBundle editorBundle, @NotNull T request) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        return submitRequest(editorBundle, request, EditorBundleKt.coreScheduler(editorBundle));
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequestToIOSequence(@NotNull EditorBundle editorBundle, @NotNull T request) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        return submitRequest(editorBundle, request, EditorBundleKt.ioSequenceScheduler(editorBundle));
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequestToNote(@NotNull EditorBundle editorBundle, @NotNull T request) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        return submitRequest(editorBundle, request, EditorBundleKt.noteScheduler(editorBundle));
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequestToReader(@NotNull EditorBundle editorBundle, @NotNull T request) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        return submitRequest(editorBundle, request, EditorBundleKt.readerScheduler(editorBundle));
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequestToCore(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull T request) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        return submitRequestToCore(rxBaseAppAction.getEditorBundle(), request);
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequestToIOSequence(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull T request) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        return submitRequestToIOSequence(rxBaseAppAction.getEditorBundle(), request);
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequestToNote(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull T request) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        return submitRequestToNote(rxBaseAppAction.getEditorBundle(), request);
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequestToReader(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull T request) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        return submitRequestToReader(rxBaseAppAction.getEditorBundle(), request);
    }

    @NotNull
    public static final <T extends RxBaseRequest<?>> Observable<T> submitRequest(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull T request, @NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        return submitRequest(rxBaseAppAction.getEditorBundle(), request, scheduler);
    }
}
