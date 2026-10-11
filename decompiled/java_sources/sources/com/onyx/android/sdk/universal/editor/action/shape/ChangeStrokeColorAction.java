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

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeColorAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "l", "", C6999h.f39688c, "I", ApiBroadCastReceiver.ARGS_STROKE_COLOR, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ChangeStrokeColorAction extends RxBaseAppAction<ChangeStrokeColorAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final int strokeColor;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeColorAction$a */
    /* loaded from: classes8.dex */
    public static final class C10015a<T> implements Consumer {
        public C10015a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeStrokeColorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChangeStrokeColorAction.this.m40103m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeColorAction$b */
    /* loaded from: classes8.dex */
    public static final class C10016b<T> implements Consumer {
        public C10016b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeStrokeColorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateNoteDrawingArgs(ChangeStrokeColorAction.this.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeColorAction$c */
    /* loaded from: classes8.dex */
    public static final class C10017c<T, R> implements Function {
        public C10017c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ChangeStrokeColorAction> apply(@NotNull ChangeStrokeColorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangeStrokeColorAction.this.m40102l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeColorAction$d */
    /* loaded from: classes8.dex */
    public static final class C10018d<T, R> implements Function {
        public C10018d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ChangeStrokeColorAction apply(@NotNull PreparePencilPenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangeStrokeColorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangeStrokeColorAction(@NotNull EditorBundle editorBundle, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.strokeColor = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ChangeStrokeColorAction> create() {
        Observable<ChangeStrokeColorAction> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10015a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10016b()).flatMap(new C10017c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<ChangeStrokeColorAction> m40102l() {
        PenArgs penArgs = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDrawingArgs().getPenArgs();
        if (penArgs == null) {
            penArgs = new PenArgs(null, 0, 0.0f, 0, null, 31, null);
        }
        Observable map = new PreparePencilPenAction(getEditorBundle(), penArgs).build().map(new C10018d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final ChangeStrokeColorAction m40103m() {
        EditorBundleKt.uiDrawingArgs(getEditorBundle()).setStrokeColor(this.strokeColor);
        PenArgs penArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle()).getPenArgs();
        if (penArgs != null) {
            penArgs.setColor(this.strokeColor);
        }
        return this;
    }
}
