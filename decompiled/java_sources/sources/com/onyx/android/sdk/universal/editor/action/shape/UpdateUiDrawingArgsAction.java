package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.events.note.UiDrawingArgsChangedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateUiDrawingArgsAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateUiDrawingArgsAction extends RxBaseAppAction<UpdateUiDrawingArgsAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final PenArgs penArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateUiDrawingArgsAction$a */
    /* loaded from: classes8.dex */
    public static final class C10161a<T> implements Consumer {
        public C10161a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateUiDrawingArgsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateUiDrawingArgsAction.this.m40347l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateUiDrawingArgsAction$b */
    /* loaded from: classes8.dex */
    public static final class C10162b<T> implements Consumer {
        public C10162b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateUiDrawingArgsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateNoteDrawingArgs(UpdateUiDrawingArgsAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateUiDrawingArgsAction$c */
    /* loaded from: classes8.dex */
    public static final class C10163c<T> implements Consumer {

        /* renamed from: e */
        public static final C10163c<T> f51028e = new C10163c<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateUiDrawingArgsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new UiDrawingArgsChangedEvent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.UpdateUiDrawingArgsAction$d */
    /* loaded from: classes8.dex */
    public static final class C10164d<T, R> implements Function {
        public C10164d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateUiDrawingArgsAction apply(@NotNull UpdateUiDrawingArgsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateUiDrawingArgsAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateUiDrawingArgsAction(@NotNull EditorBundle editorBundle, @NotNull PenArgs penArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        this.penArgs = penArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateUiDrawingArgsAction> create() {
        Observable<UpdateUiDrawingArgsAction> map = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10161a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10162b()).doOnNext(C10163c.f51028e).map(new C10164d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m40347l() {
        NoteDrawingArgs uiDrawingArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle());
        uiDrawingArgs.setCurrentShapeType(this.penArgs.getType());
        uiDrawingArgs.setPenArgs(this.penArgs);
        uiDrawingArgs.setStrokeColor(this.penArgs.getColor());
        uiDrawingArgs.setStrokeWidth(this.penArgs.getWidth());
        uiDrawingArgs.setPenAttrs(this.penArgs.getAttrs());
        EraserPropertyOption eraserPropertyOption = EraserPropertyOption.INSTANCE;
        uiDrawingArgs.setEraserWidth(eraserPropertyOption.getEraserWidth().get());
        uiDrawingArgs.setCurrentEraseType(eraserPropertyOption.getEraserTypeOption().get());
    }
}
