package com.onyx.android.sdk.universal.editor.action.extension;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.text.TextRenderCacheManager;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocInfoAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u000e\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u0002\u001a\u0010\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0002\u001a\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u0006\u001a\u00020\u0007\u001a=\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u00020\u00022!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u0002H\n0\r\u001aA\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u0006\u0012\u0002\b\u00030\b2!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u0002H\n0\r\u001a=\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u00020\u00022!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u0002H\n0\r\u001a=\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u00020\u00022!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u0002H\n0\r\u001a=\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u00020\u00022!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\n0\r\u001a(\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\n0\u0019\u001a,\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u0006\u0012\u0002\b\u00030\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\n0\u0019\u001a=\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u00020\u00022!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\n0\r\u001aA\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u0006\u0012\u0002\b\u00030\b2!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u0002H\n0\r\u001a=\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u00020\u00022!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u0002H\n0\r\u001aA\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\n0\u0001\"\b\b\u0000\u0010\n*\u00020\u000b*\u0006\u0012\u0002\b\u00030\b2!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u0002H\n0\r\u001a\u000e\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u0002\u001a\u0012\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\b\u001a\u000e\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u0002\u001a\u000e\u0010 \u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u0002\u001a\u0012\u0010 \u001a\u0006\u0012\u0002\b\u00030\u0001*\u0006\u0012\u0002\b\u00030\b¨\u0006!"}, m61528d2 = {"clearTextRenderCache", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "closeAllReaderDocument", "", "closeReaderDocument", "path", "", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "createCoreObservable", "T", "", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function1;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "Lkotlin/ParameterName;", "name", "workBundle", "createIOObservable", "editorBundle", "createLightCoreObservable", "createLightNoteObservable", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "createMainObservable", "Lkotlin/Function0;", "createNoteObservable", "createReaderObservable", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "readerBundle", "ensureCloseDoc", "postVirtualDocViewInfo", "saveDocInfo", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DocCommonActionsKt {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$a */
    /* loaded from: classes8.dex */
    public static final class C9051a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function1<EditorBundle, T> f48952e;

        /* JADX WARN: Multi-variable type inference failed */
        public C9051a(Function1<? super EditorBundle, ? extends T> function1) {
            this.f48952e = function1;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final T apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48952e.invoke(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$b */
    /* loaded from: classes8.dex */
    public static final class C9052b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function1<WorkBundle, T> f48953e;

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48954f;

        /* JADX WARN: Multi-variable type inference failed */
        public C9052b(Function1<? super WorkBundle, ? extends T> function1, EditorBundle editorBundle) {
            this.f48953e = function1;
            this.f48954f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final T apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48953e.invoke(this.f48954f.getWorkBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$c */
    /* loaded from: classes8.dex */
    public static final class C9053c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function1<NoteBundle, T> f48955e;

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48956f;

        /* JADX WARN: Multi-variable type inference failed */
        public C9053c(Function1<? super NoteBundle, ? extends T> function1, EditorBundle editorBundle) {
            this.f48955e = function1;
            this.f48956f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final T apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48955e.invoke(EditorBundleKt.noteBundle(this.f48956f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$d */
    /* loaded from: classes8.dex */
    public static final class C9054d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function0<T> f48957e;

        /* JADX WARN: Multi-variable type inference failed */
        public C9054d(Function0<? extends T> function0) {
            this.f48957e = function0;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final T apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48957e.invoke();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$e */
    /* loaded from: classes8.dex */
    public static final class C9055e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function1<ReaderBundle, T> f48958e;

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f48959f;

        /* JADX WARN: Multi-variable type inference failed */
        public C9055e(Function1<? super ReaderBundle, ? extends T> function1, EditorBundle editorBundle) {
            this.f48958e = function1;
            this.f48959f = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final T apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48958e.invoke(EditorBundleKt.readerBundle(this.f48959f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$f */
    /* loaded from: classes8.dex */
    public static final class C9059f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48963e;

        public C9059f(EditorBundle editorBundle) {
            this.f48963e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull EditorBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f48963e.getWorkBundle().ensureCloseVirtualDoc());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$g */
    /* loaded from: classes8.dex */
    public static final class C9060g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48964e;

        public C9060g(EditorBundle editorBundle) {
            this.f48964e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditorBundle apply(@NotNull SaveDocInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48964e;
        }
    }

    @NotNull
    public static final Observable<?> clearTextRenderCache(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return createNoteObservable(editorBundle, new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$clearTextRenderCache$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                TextRenderCacheManager.INSTANCE.clear();
            }
        });
    }

    @NotNull
    public static final Observable<Unit> closeAllReaderDocument(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return createReaderObservable(editorBundle, new Function1<ReaderBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$closeAllReaderDocument$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ReaderBundle readerBundle) {
                invoke2(readerBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ReaderBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.destroyReader();
            }
        });
    }

    @NotNull
    public static final Observable<Unit> closeReaderDocument(@NotNull EditorBundle editorBundle, @NotNull final String path) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        return createReaderObservable(editorBundle, new Function1<ReaderBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$closeReaderDocument$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ReaderBundle readerBundle) {
                invoke2(readerBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ReaderBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.destroyReaderByPath(path);
            }
        });
    }

    @NotNull
    public static final <T> Observable<T> createCoreObservable(@NotNull EditorBundle editorBundle, @NotNull Function1<? super WorkBundle, ? extends T> block) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Observable<T> observeOn = createLightCoreObservable(editorBundle, block).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public static final <T> Observable<T> createIOObservable(@NotNull EditorBundle editorBundle, @NotNull Function1<? super EditorBundle, ? extends T> block) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Observable<T> observeOn = Observable.just(editorBundle).observeOn(EditorBundleKt.ioSequenceScheduler(editorBundle)).map(new C9051a(block)).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public static final <T> Observable<T> createLightCoreObservable(@NotNull EditorBundle editorBundle, @NotNull Function1<? super WorkBundle, ? extends T> block) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Observable<T> observable = (Observable<T>) Observable.just(editorBundle).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C9052b(block, editorBundle));
        Intrinsics.checkNotNullExpressionValue(observable, "map(...)");
        return observable;
    }

    @NotNull
    public static final <T> Observable<T> createLightNoteObservable(@NotNull EditorBundle editorBundle, @NotNull Function1<? super NoteBundle, ? extends T> block) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Observable<T> observable = (Observable<T>) Observable.just(editorBundle).observeOn(EditorBundleKt.noteScheduler(editorBundle)).map(new C9053c(block, editorBundle));
        Intrinsics.checkNotNullExpressionValue(observable, "map(...)");
        return observable;
    }

    @NotNull
    public static final <T> Observable<T> createMainObservable(@NotNull EditorBundle editorBundle, @NotNull Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Observable<T> observable = (Observable<T>) Observable.just(editorBundle).observeOn(AndroidSchedulers.mainThread()).map(new C9054d(block));
        Intrinsics.checkNotNullExpressionValue(observable, "map(...)");
        return observable;
    }

    @NotNull
    public static final <T> Observable<T> createNoteObservable(@NotNull EditorBundle editorBundle, @NotNull Function1<? super NoteBundle, ? extends T> block) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Observable<T> observeOn = createLightNoteObservable(editorBundle, block).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public static final <T> Observable<T> createReaderObservable(@NotNull EditorBundle editorBundle, @NotNull Function1<? super ReaderBundle, ? extends T> block) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Observable<T> observeOn = Observable.just(editorBundle).observeOn(EditorBundleKt.readerScheduler(editorBundle)).map(new C9055e(block, editorBundle)).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public static final Observable<?> ensureCloseDoc(@NotNull final EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        if (!editorBundle.getWorkBundle().getOpenDocArgs().isValidArgs()) {
            Observable<?> just = Observable.just(editorBundle);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.just(editorBundle).observeOn(EditorBundleKt.coreScheduler(editorBundle)).map(new C9059f(editorBundle));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<?> observeOn = RxjavaKt.flatMapIf(map, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$ensureCloseDoc$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$ensureCloseDoc$3

            /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$ensureCloseDoc$3$a */
            /* loaded from: classes8.dex */
            public static final class C9056a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ EditorBundle f48960e;

                public C9056a(EditorBundle editorBundle) {
                    this.f48960e = editorBundle;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull EditorBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    RenderRequestManagerKt.safeClearAllSliceCache(this.f48960e);
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$ensureCloseDoc$3$b */
            /* loaded from: classes8.dex */
            public static final class C9057b<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ EditorBundle f48961e;

                public C9057b(EditorBundle editorBundle) {
                    this.f48961e = editorBundle;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull EditorBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f48961e.getWorkBundle().getReaderBundle().destroyReader();
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$ensureCloseDoc$3$c */
            /* loaded from: classes8.dex */
            public static final class C9058c<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ EditorBundle f48962e;

                public C9058c(EditorBundle editorBundle) {
                    this.f48962e = editorBundle;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull EditorBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f48962e.getWorkBundle().getNoteBundle().getNoteDoc().close();
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable<? extends Object> doOnNext = Observable.just(EditorBundle.this).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C9056a(EditorBundle.this)).observeOn(EditorBundleKt.readerScheduler(EditorBundle.this)).doOnNext(new C9057b(EditorBundle.this)).observeOn(EditorBundleKt.noteScheduler(EditorBundle.this)).doOnNext(new C9058c(EditorBundle.this));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                return doOnNext;
            }
        }).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public static final Observable<?> postVirtualDocViewInfo(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        return createCoreObservable(editorBundle, new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt$postVirtualDocViewInfo$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                WorkBundleKt.postVirtualDocViewInfo$default(it2, null, 1, null);
            }
        });
    }

    @NotNull
    public static final Observable<?> saveDocInfo(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Observable map = new SaveDocInfoAction(editorBundle).build().map(new C9060g(editorBundle));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<Unit> closeReaderDocument(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull String path) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        return closeReaderDocument(rxBaseAppAction.getEditorBundle(), path);
    }

    @NotNull
    public static final Observable<?> saveDocInfo(@NotNull RxBaseAppAction<?> rxBaseAppAction) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        return saveDocInfo(rxBaseAppAction.getEditorBundle());
    }

    @NotNull
    public static final <T> Observable<T> createCoreObservable(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Function1<? super WorkBundle, ? extends T> block) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return createCoreObservable(rxBaseAppAction.getEditorBundle(), block);
    }

    @NotNull
    public static final <T> Observable<T> createNoteObservable(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Function1<? super NoteBundle, ? extends T> block) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return createNoteObservable(rxBaseAppAction.getEditorBundle(), block);
    }

    @NotNull
    public static final <T> Observable<T> createMainObservable(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return createMainObservable(rxBaseAppAction.getEditorBundle(), block);
    }

    @NotNull
    public static final <T> Observable<T> createReaderObservable(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Function1<? super ReaderBundle, ? extends T> block) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return createReaderObservable(rxBaseAppAction.getEditorBundle(), block);
    }

    @NotNull
    public static final Observable<?> ensureCloseDoc(@NotNull RxBaseAppAction<?> rxBaseAppAction) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        return ensureCloseDoc(rxBaseAppAction.getEditorBundle());
    }
}
