package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/ChangePenArgsAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ChangePenArgsAction extends RxBaseAppAction<ChangePenArgsAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final PenArgs penArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangePenArgsAction$a */
    /* loaded from: classes8.dex */
    public static final class C10004a<T> implements Consumer {
        public C10004a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangePenArgsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChangePenArgsAction.this.m40085l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangePenArgsAction$b */
    /* loaded from: classes8.dex */
    public static final class C10005b<T, R> implements Function {
        public C10005b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateUiDrawingArgsAction> apply(@NotNull ChangePenArgsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new UpdateUiDrawingArgsAction(ChangePenArgsAction.this.getEditorBundle(), ChangePenArgsAction.this.penArgs).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangePenArgsAction$c */
    /* loaded from: classes8.dex */
    public static final class C10006c<T, R> implements Function {
        public C10006c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ChangePenArgsAction> apply(@NotNull UpdateUiDrawingArgsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangePenArgsAction.this.m40086m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangePenArgsAction$d */
    /* loaded from: classes8.dex */
    public static final class C10007d<T, R> implements Function {
        public C10007d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ChangePenArgsAction apply(@NotNull ChangePenArgsAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangePenArgsAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangePenArgsAction$e */
    /* loaded from: classes8.dex */
    public static final class C10008e<T, R> implements Function {
        public C10008e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ChangePenArgsAction apply(@NotNull PreparePencilPenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangePenArgsAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangePenArgsAction(@NotNull EditorBundle editorBundle, @NotNull PenArgs penArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        this.penArgs = penArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ChangePenArgsAction> create() {
        Observable<ChangePenArgsAction> map = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10004a()).flatMap(new C10005b()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C10006c()).map(new C10007d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final ChangePenArgsAction m40085l() {
        getEditorBundle().getUiBundle().getHandlerManager().getShapeHandlerManager().activeShapeDrawingProvider(this.penArgs.getType());
        return this;
    }

    /* renamed from: m */
    public final Observable<ChangePenArgsAction> m40086m() {
        Observable map = new PreparePencilPenAction(getEditorBundle(), this.penArgs).build().map(new C10008e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
