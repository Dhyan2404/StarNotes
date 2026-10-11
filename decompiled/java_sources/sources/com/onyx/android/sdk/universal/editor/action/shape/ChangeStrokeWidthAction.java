package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeWidthAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "l", "", C6999h.f39688c, "F", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;F)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ChangeStrokeWidthAction extends RxBaseAppAction<ChangeStrokeWidthAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final float strokeWidth;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeWidthAction$a */
    /* loaded from: classes8.dex */
    public static final class C10033a<T> implements Consumer {
        public C10033a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeStrokeWidthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChangeStrokeWidthAction.this.m40130m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeWidthAction$b */
    /* loaded from: classes8.dex */
    public static final class C10034b<T> implements Consumer {
        public C10034b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeStrokeWidthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateNoteDrawingArgs(ChangeStrokeWidthAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeWidthAction$c */
    /* loaded from: classes8.dex */
    public static final class C10035c<T, R> implements Function {
        public C10035c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ChangeStrokeWidthAction> apply(@NotNull ChangeStrokeWidthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangeStrokeWidthAction.this.m40129l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeWidthAction$d */
    /* loaded from: classes8.dex */
    public static final class C10036d<T, R> implements Function {
        public C10036d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ChangeStrokeWidthAction apply(@NotNull PreparePencilPenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangeStrokeWidthAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangeStrokeWidthAction(@NotNull EditorBundle editorBundle, float f) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.strokeWidth = f;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ChangeStrokeWidthAction> create() {
        Observable<ChangeStrokeWidthAction> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10033a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10034b()).flatMap(new C10035c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<ChangeStrokeWidthAction> m40129l() {
        PenArgs penArgs = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDrawingArgs().getPenArgs();
        if (penArgs == null) {
            penArgs = new PenArgs(null, 0, 0.0f, 0, null, 31, null);
        }
        Observable map = new PreparePencilPenAction(getEditorBundle(), penArgs).build().map(new C10036d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final ChangeStrokeWidthAction m40130m() {
        PenArgs penArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle()).getPenArgs();
        if (penArgs != null) {
            penArgs.setWidth(this.strokeWidth);
        }
        EditorBundleKt.uiDrawingArgs(getEditorBundle()).setStrokeWidth(this.strokeWidth);
        return this;
    }
}
