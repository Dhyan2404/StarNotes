package com.onyx.android.sdk.universal.editor.helper;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.excerpt.StartExcerptDragAndDropAction;
import com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction;
import com.onyx.android.sdk.universal.editor.data.BaseExcerptEditContext;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import com.onyx.android.sdk.universal.editor.helper.ExcerptDelayDragCaptureHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b \u0010!J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004J\u0006\u0010\n\u001a\u00020\bJ\u0006\u0010\f\u001a\u00020\u000bJ\u0018\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;", "", "Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;", "editContext", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "saveObservable", "", "startDelayDrag", "cancelDelayDrag", "", "isDragging", "shape", "c", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;", "b", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;", "excerptAction", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "saveExcerptDisposable", "d", "startDragDisposable", "e", Constants.HASIDCALL_INDEX_SIG, "isCancelDrag", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExcerptDelayDragCaptureHelper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final BaseExcerptShapeHandlerAction excerptAction;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Disposable saveExcerptDisposable;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Disposable startDragDisposable;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isCancelDrag;

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.ExcerptDelayDragCaptureHelper$a */
    /* loaded from: classes8.dex */
    public static final class C10533a<T> implements Consumer {
        public C10533a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartExcerptDragAndDropAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExcerptDelayDragCaptureHelper.this.isCancelDrag = true;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.ExcerptDelayDragCaptureHelper$b */
    /* loaded from: classes8.dex */
    public static final class C10534b<T> implements Predicate {

        /* renamed from: e */
        public static final C10534b<T> f52427e = new C10534b<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.ExcerptDelayDragCaptureHelper$c */
    /* loaded from: classes8.dex */
    public static final class C10535c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ BaseExcerptEditContext f52429f;

        public C10535c(BaseExcerptEditContext baseExcerptEditContext) {
            this.f52429f = baseExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Object first;
            Intrinsics.checkNotNullParameter(it2, "it");
            if (ExcerptDelayDragCaptureHelper.this.isCancelDrag) {
                ExcerptDelayDragCaptureHelper.this.m41212f(this.f52429f);
                return;
            }
            ExcerptDelayDragCaptureHelper excerptDelayDragCaptureHelper = ExcerptDelayDragCaptureHelper.this;
            BaseExcerptEditContext baseExcerptEditContext = this.f52429f;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it2);
            excerptDelayDragCaptureHelper.m41211c(baseExcerptEditContext, (Shape) first);
        }
    }

    public ExcerptDelayDragCaptureHelper(@NotNull EditorBundle editorBundle, @NotNull BaseExcerptShapeHandlerAction excerptAction) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(excerptAction, "excerptAction");
        this.editorBundle = editorBundle;
        this.excerptAction = excerptAction;
    }

    /* renamed from: d */
    public static final void m41209d(ExcerptDelayDragCaptureHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseExcerptShapeHandlerAction.quitEdit$default(this$0.excerptAction, false, null, 2, null);
    }

    /* renamed from: e */
    public static final void m41210e(ExcerptDelayDragCaptureHelper this$0, BaseExcerptEditContext editContext) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editContext, "$editContext");
        if (this$0.isCancelDrag) {
            return;
        }
        this$0.m41212f(editContext);
    }

    /* renamed from: c */
    public final void m41211c(final BaseExcerptEditContext editContext, Shape shape) {
        this.startDragDisposable = new StartExcerptDragAndDropAction(this.editorBundle, shape, ResManager.INSTANCE.getLong(C8045R.integer.excerpt_edit_long_press_start_drag_duration)).build().doOnNext(new C10533a()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.eyf
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExcerptDelayDragCaptureHelper.m41209d(ExcerptDelayDragCaptureHelper.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.fyf
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ExcerptDelayDragCaptureHelper.m41210e(ExcerptDelayDragCaptureHelper.this, editContext);
            }
        }).subscribe();
    }

    public final void cancelDelayDrag() {
        Disposable disposable = this.startDragDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.isCancelDrag = true;
    }

    /* renamed from: f */
    public final void m41212f(BaseExcerptEditContext editContext) {
        this.excerptAction.startExcerptEdit(new StartExcerptEditArgs(editContext.getVirtualBoxInfo(), editContext.ensureTransformShape(), editContext.getExcerptCollectionList(), editContext.getNoteModelList()));
    }

    public final boolean isDragging() {
        return (RxjavaKt.isDisposed(this.startDragDisposable) && RxjavaKt.isDisposed(this.saveExcerptDisposable)) ? false : true;
    }

    public final void startDelayDrag(@NotNull BaseExcerptEditContext editContext, @NotNull Observable<List<Shape>> saveObservable) {
        Intrinsics.checkNotNullParameter(editContext, "editContext");
        Intrinsics.checkNotNullParameter(saveObservable, "saveObservable");
        cancelDelayDrag();
        if (RxjavaKt.isDisposed(this.saveExcerptDisposable)) {
            this.isCancelDrag = false;
            this.saveExcerptDisposable = saveObservable.filter(C10534b.f52427e).doOnNext(new C10535c(editContext)).subscribe();
        }
    }
}
