package com.onyx.android.sdk.universal.editor.action.handler;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.data.BaseExcerptEditContext;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.helper.ExcerptDelayDragCaptureHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=¢\u0006\u0004\b?\u0010@J\b\u0010\u0005\u001a\u00020\u0004H&J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J5\u0010\u0011\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00042#\b\u0002\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\b0\u000bH&J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0004R$\u0010%\u001a\u0004\u0018\u00010\u001e8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010-\u001a\u0004\u0018\u00010&8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u00104\u001a\u00020\u00048\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001b\u0010:\u001a\u0002058DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109¨\u0006A"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "", "isEditMode", "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;", "args", "", "startExcerptEdit", "saveChanged", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lkotlin/ParameterName;", "name", "shape", "onSaveCallback", "quitEdit", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "onSingleTapUp", "cancelAction", "", "shapeUniqueId", "cancelEditIfDeleted", "Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;", "editContext", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "ensureNotePage", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getDownVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setDownVirtualBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "downVirtualBoxInfo", "Lio/reactivex/rxjava3/disposables/Disposable;", "l", "Lio/reactivex/rxjava3/disposables/Disposable;", "getQuitDisposable", "()Lio/reactivex/rxjava3/disposables/Disposable;", "setQuitDisposable", "(Lio/reactivex/rxjava3/disposables/Disposable;)V", "quitDisposable", "m", Constants.HASIDCALL_INDEX_SIG, "getExitOnTouchUp", Constants.BOOLEAN_VALUE_SIG, "setExitOnTouchUp", "(Z)V", "exitOnTouchUp", "Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;", GoogleApiAvailabilityLight.f29016b, "Lkotlin/Lazy;", "getDelayDragCaptureHelper", "()Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;", "delayDragCaptureHelper", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseExcerptShapeHandlerAction extends BaseShapeHandlerAction<List<? extends TouchData>> {

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public BoxInfo downVirtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public Disposable quitDisposable;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean exitOnTouchUp;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Lazy delayDragCaptureHelper;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9155a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ BaseExcerptEditContext f49137e;

        public C9155a(BaseExcerptEditContext baseExcerptEditContext) {
            this.f49137e = baseExcerptEditContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49137e.setNotePage(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseExcerptShapeHandlerAction(@NotNull final EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ExcerptDelayDragCaptureHelper>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction$delayDragCaptureHelper$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExcerptDelayDragCaptureHelper invoke() {
                return new ExcerptDelayDragCaptureHelper(EditorBundle.this, this);
            }
        });
        this.delayDragCaptureHelper = lazy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void quitEdit$default(BaseExcerptShapeHandlerAction baseExcerptShapeHandlerAction, boolean z, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: quitEdit");
        }
        if ((i & 2) != 0) {
            function1 = new Function1<Shape, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.BaseExcerptShapeHandlerAction$quitEdit$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Shape it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Shape shape) {
                    invoke2(shape);
                    return Unit.INSTANCE;
                }
            };
        }
        baseExcerptShapeHandlerAction.quitEdit(z, function1);
    }

    public void cancelAction() {
    }

    public void cancelEditIfDeleted(@NotNull String shapeUniqueId) {
        Intrinsics.checkNotNullParameter(shapeUniqueId, "shapeUniqueId");
    }

    @NotNull
    public final Observable<NotePage> ensureNotePage(@NotNull BaseExcerptEditContext editContext) {
        Intrinsics.checkNotNullParameter(editContext, "editContext");
        NotePage notePage = editContext.getNotePage();
        if (notePage != null) {
            Observable<NotePage> just = Observable.just(notePage);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<NotePage> doOnNext = new EnsureNotePageAction(getEditorBundle(), editContext.getVirtualBoxInfo()).build().doOnNext(new C9155a(editContext));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final ExcerptDelayDragCaptureHelper getDelayDragCaptureHelper() {
        return (ExcerptDelayDragCaptureHelper) this.delayDragCaptureHelper.getValue();
    }

    @Nullable
    public final BoxInfo getDownVirtualBoxInfo() {
        return this.downVirtualBoxInfo;
    }

    public final boolean getExitOnTouchUp() {
        return this.exitOnTouchUp;
    }

    @Nullable
    public final Disposable getQuitDisposable() {
        return this.quitDisposable;
    }

    public abstract boolean isEditMode();

    public boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return false;
    }

    public abstract void quitEdit(boolean saveChanged, @NotNull Function1<? super Shape, Unit> onSaveCallback);

    public final void setDownVirtualBoxInfo(@Nullable BoxInfo boxInfo) {
        this.downVirtualBoxInfo = boxInfo;
    }

    public final void setExitOnTouchUp(boolean z) {
        this.exitOnTouchUp = z;
    }

    public final void setQuitDisposable(@Nullable Disposable disposable) {
        this.quitDisposable = disposable;
    }

    public abstract void startExcerptEdit(@NotNull StartExcerptEditArgs args);
}
