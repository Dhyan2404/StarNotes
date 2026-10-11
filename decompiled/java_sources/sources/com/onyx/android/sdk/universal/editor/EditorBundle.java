package com.onyx.android.sdk.universal.editor;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 >2\u00020\u0001:\u0001>B\t\b\u0002¢\u0006\u0004\b<\u0010=J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005J)\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\f\b\u0000\u0010\b*\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\r\u001a\u00020\f\"\f\b\u0000\u0010\b*\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\r\u0010\u000eJ$\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005\"\b\b\u0000\u0010\b*\u00020\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010J$\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005\"\b\b\u0000\u0010\b*\u00020\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010,\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00103\u001a\u00020-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u0010;\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006?"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "", "", "onDocumentClosed", "destroy", "Lio/reactivex/rxjava3/core/Observable;", "createDestroyObservable", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "T", AbstractLogger.REQUEST, "beforeSubmitRequest", "(Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "afterRequestFinally", "(Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/disposables/Disposable;", "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;", "Lkotlin/reflect/KClass;", "clazz", "cancelPendingRequest", "cancelRunningRequest", "d", "c", "Lcom/onyx/android/sdk/universal/editor/UIBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/UIBundle;", "getUiBundle", "()Lcom/onyx/android/sdk/universal/editor/UIBundle;", "setUiBundle", "(Lcom/onyx/android/sdk/universal/editor/UIBundle;)V", "uiBundle", "Lcom/onyx/android/sdk/universal/editor/DisplayBundle;", "b", "Lcom/onyx/android/sdk/universal/editor/DisplayBundle;", "getDisplayBundle", "()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;", "setDisplayBundle", "(Lcom/onyx/android/sdk/universal/editor/DisplayBundle;)V", "displayBundle", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "getWorkBundle", "()Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "setWorkBundle", "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "workBundle", "Lcom/onyx/android/sdk/universal/editor/AIBundle;", "Lcom/onyx/android/sdk/universal/editor/AIBundle;", "getAiBundle", "()Lcom/onyx/android/sdk/universal/editor/AIBundle;", "setAiBundle", "(Lcom/onyx/android/sdk/universal/editor/AIBundle;)V", "aiBundle", "Lcom/onyx/android/sdk/universal/editor/MediaBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/MediaBundle;", "getMediaBundle", "()Lcom/onyx/android/sdk/universal/editor/MediaBundle;", "setMediaBundle", "(Lcom/onyx/android/sdk/universal/editor/MediaBundle;)V", "mediaBundle", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorBundle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public UIBundle uiBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public DisplayBundle displayBundle;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public WorkBundle workBundle;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public AIBundle aiBundle;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public MediaBundle mediaBundle;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;", "", "()V", "createInstance", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final EditorBundle createInstance() {
            return new EditorBundle(null);
        }

        public Companion() {
        }
    }

    /* JADX WARN: Incorrect field signature: TT; */
    /* renamed from: com.onyx.android.sdk.universal.editor.EditorBundle$a */
    /* loaded from: classes8.dex */
    public static final class C8141a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RxBaseRequest f47508f;

        /* JADX WARN: Incorrect types in method signature: (Lcom/onyx/android/sdk/universal/editor/EditorBundle;TT;)V */
        public C8141a(RxBaseRequest rxBaseRequest) {
            this.f47508f = rxBaseRequest;
        }

        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RxBaseRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.requestManager(EditorBundle.this).removeRequest(this.f47508f);
        }
    }

    /* JADX WARN: Incorrect field signature: TT; */
    /* renamed from: com.onyx.android.sdk.universal.editor.EditorBundle$b */
    /* loaded from: classes8.dex */
    public static final class C8142b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RxBaseRequest f47510f;

        /* JADX WARN: Incorrect types in method signature: (Lcom/onyx/android/sdk/universal/editor/EditorBundle;TT;)V */
        public C8142b(RxBaseRequest rxBaseRequest) {
            this.f47510f = rxBaseRequest;
        }

        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RxBaseRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.requestManager(EditorBundle.this).addRequest(this.f47510f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.EditorBundle$c */
    /* loaded from: classes8.dex */
    public static final class C8143c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ KClass<T> f47512f;

        public C8143c(KClass<T> kClass) {
            this.f47512f = kClass;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.requestManager(EditorBundle.this).cancelPendingRequest(this.f47512f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.EditorBundle$d */
    /* loaded from: classes8.dex */
    public static final class C8144d<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ KClass<T> f47514f;

        public C8144d(KClass<T> kClass) {
            this.f47514f = kClass;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.requestManager(EditorBundle.this).cancelRunningRequest(this.f47514f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.EditorBundle$e */
    /* loaded from: classes8.dex */
    public static final class C8145e<T, R> implements Function {
        public C8145e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.ensureCloseDoc(EditorBundle.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.EditorBundle$f */
    /* loaded from: classes8.dex */
    public static final class C8146f<T, R> implements Function {
        public C8146f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DocCommonActionsKt.clearTextRenderCache(EditorBundle.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.EditorBundle$g */
    /* loaded from: classes8.dex */
    public static final class C8147g<T, R> implements Function {
        public C8147g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundle.this.m36676d();
        }
    }

    public /* synthetic */ EditorBundle(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: b */
    public static final void m36674b(EditorBundle this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DBProviderBundle.Companion.dumpAllProviderInfo$default(DBProviderBundle.INSTANCE, this$0.workBundle.getDbProviderBundle(), false, 1, null);
    }

    @NotNull
    public final <T extends RxBaseRequest<?>> Disposable afterRequestFinally(@NotNull T request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Observable doOnNext = Observable.just(request).observeOn(EditorBundleKt.requestManagerScheduler(this)).doOnNext(new C8141a(request));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @NotNull
    public final <T extends RxBaseRequest<?>> Observable<T> beforeSubmitRequest(@NotNull T request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Observable<T> doOnNext = Observable.just(request).observeOn(EditorBundleKt.requestManagerScheduler(this)).doOnNext(new C8142b(request));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: c */
    public final Observable<Unit> m36675c() {
        return DocCommonActionsKt.createMainObservable(this, new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.EditorBundle$destroyUI$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                EditorBundle.this.getUiBundle().destroy();
                EditorBundle.this.getMediaBundle().destroy();
                EditorBundle.this.getDisplayBundle().destroy();
                EditorBundle.this.getAiBundle().destroy();
            }
        });
    }

    @NotNull
    public final <T extends RxBaseBenchmarkRequest> Observable<EditorBundle> cancelPendingRequest(@NotNull KClass<T> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Observable<EditorBundle> doOnNext = Observable.just(this).observeOn(EditorBundleKt.requestManagerScheduler(this)).doOnNext(new C8143c(clazz));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final <T extends RxBaseBenchmarkRequest> Observable<EditorBundle> cancelRunningRequest(@NotNull KClass<T> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Observable<EditorBundle> doOnNext = Observable.just(this).observeOn(EditorBundleKt.requestManagerScheduler(this)).doOnNext(new C8144d(clazz));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final Observable<?> createDestroyObservable() {
        if (!EditorBundleKt.isDestroyed(this)) {
            Observable<?> doFinally = m36675c().flatMap(new C8145e()).flatMap(new C8146f()).flatMap(new C8147g()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.fmf
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    EditorBundle.m36674b(EditorBundle.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
            return doFinally;
        }
        Debug.INSTANCE.m32059w(EditorBundle.class, "repeat destroy", new Object[0]);
        Observable<?> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: d */
    public final Observable<Unit> m36676d() {
        return DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.EditorBundle$destroyWorkBundle$1
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
                EditorBundle.this.getWorkBundle().destroy();
            }
        });
    }

    public final void destroy() {
        createDestroyObservable().subscribe();
    }

    @NotNull
    public final AIBundle getAiBundle() {
        return this.aiBundle;
    }

    @NotNull
    public final DisplayBundle getDisplayBundle() {
        return this.displayBundle;
    }

    @NotNull
    public final MediaBundle getMediaBundle() {
        return this.mediaBundle;
    }

    @NotNull
    public final UIBundle getUiBundle() {
        return this.uiBundle;
    }

    @NotNull
    public final WorkBundle getWorkBundle() {
        return this.workBundle;
    }

    public final void onDocumentClosed() {
        this.uiBundle.onDocumentClosed();
        this.displayBundle.onDocumentClosed();
        DocCommonActionsKt.clearTextRenderCache(this).subscribe();
    }

    public final void setAiBundle(@NotNull AIBundle aIBundle) {
        Intrinsics.checkNotNullParameter(aIBundle, "<set-?>");
        this.aiBundle = aIBundle;
    }

    public final void setDisplayBundle(@NotNull DisplayBundle displayBundle) {
        Intrinsics.checkNotNullParameter(displayBundle, "<set-?>");
        this.displayBundle = displayBundle;
    }

    public final void setMediaBundle(@NotNull MediaBundle mediaBundle) {
        Intrinsics.checkNotNullParameter(mediaBundle, "<set-?>");
        this.mediaBundle = mediaBundle;
    }

    public final void setUiBundle(@NotNull UIBundle uIBundle) {
        Intrinsics.checkNotNullParameter(uIBundle, "<set-?>");
        this.uiBundle = uIBundle;
    }

    public final void setWorkBundle(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<set-?>");
        this.workBundle = workBundle;
    }

    public EditorBundle() {
        this.uiBundle = new UIBundle();
        this.displayBundle = new DisplayBundle(this);
        this.workBundle = new WorkBundle();
        this.aiBundle = new AIBundle();
        this.mediaBundle = new MediaBundle();
        this.uiBundle.init(this);
        this.workBundle.init(this);
    }
}
