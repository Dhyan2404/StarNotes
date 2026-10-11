package com.onyx.android.sdk.universal.editor;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.scheduler.ActionManager;
import com.onyx.android.sdk.universal.editor.EditorBundleWrapper;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction;
import com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014J\u001c\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004J\u0006\u0010\b\u001a\u00020\u0006R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "noteSearchBean", "Lio/reactivex/rxjava3/functions/Consumer;", "onNext", "", "open", "close", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/base/scheduler/ActionManager;", "b", "Lcom/onyx/android/sdk/base/scheduler/ActionManager;", "actionManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorBundleWrapper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ActionManager actionManager;

    /* renamed from: com.onyx.android.sdk.universal.editor.EditorBundleWrapper$a */
    /* loaded from: classes8.dex */
    public static final class C8148a<T, R> implements Function {
        public C8148a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditorBundleWrapper apply(@NotNull CloseDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditorBundleWrapper.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.EditorBundleWrapper$b */
    /* loaded from: classes8.dex */
    public static final class C8149b<T> implements Consumer {
        public C8149b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull EditorBundleWrapper it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleWrapper.this.actionManager.unsubscribe();
        }
    }

    public EditorBundleWrapper(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.actionManager = editorBundle.getUiBundle().getActionManager();
    }

    /* renamed from: b */
    public static final void m36685b(Consumer onNext, Object it2) {
        Intrinsics.checkNotNullParameter(onNext, "$onNext");
        Intrinsics.checkNotNullParameter(it2, "it");
        onNext.accept(Boolean.TRUE);
    }

    public final void close() {
        this.actionManager.resubscribe();
        Observable<R> map = new CloseDocumentAction(this.editorBundle, false, false, 4, null).build().map(new C8148a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<?> doOnNext = RxjavaKt.onErrorReturnItemWithLog(map, this).doOnNext(new C8149b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.actionManager.execute(doOnNext);
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final void open(@NotNull final NoteSearchBean noteSearchBean, @NotNull final Consumer<Object> onNext) {
        Intrinsics.checkNotNullParameter(noteSearchBean, "noteSearchBean");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        Observable observeOn = Observable.just(this).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<Object> observeOn2 = RxjavaKt.flatMapIf(observeOn, new Function1<EditorBundleWrapper, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.EditorBundleWrapper$open$observable$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull EditorBundleWrapper it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!EditorBundleKt.isDocumentOpen(EditorBundleWrapper.this.getEditorBundle()));
            }
        }, new Function1<EditorBundleWrapper, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.EditorBundleWrapper$open$observable$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull EditorBundleWrapper it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new OpenDocumentDataAction(this.getEditorBundle(), OpenDocArgs.INSTANCE.createFrom(NoteSearchBean.this.getNoteModel())).build();
            }
        }).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn2, "observeOn(...)");
        this.actionManager.execute(RxjavaKt.doOnNextIf(observeOn2, new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.EditorBundleWrapper$open$observable$3
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(EditorBundleKt.isDocumentOpen(EditorBundleWrapper.this.getEditorBundle()));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.hmf
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                EditorBundleWrapper.m36685b(Consumer.this, obj);
            }
        }));
    }
}
