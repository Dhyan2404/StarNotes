package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeAlphaFactorAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, "F", "alphaFactor", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;F)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ChangeStrokeAlphaFactorAction extends RxBaseAppAction<ChangeStrokeAlphaFactorAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final float alphaFactor;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeAlphaFactorAction$a */
    /* loaded from: classes8.dex */
    public static final class C10013a<T> implements Consumer {
        public C10013a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeStrokeAlphaFactorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChangeStrokeAlphaFactorAction.this.m40099l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.ChangeStrokeAlphaFactorAction$b */
    /* loaded from: classes8.dex */
    public static final class C10014b<T> implements Consumer {
        public C10014b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeStrokeAlphaFactorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateNoteDrawingArgs(ChangeStrokeAlphaFactorAction.this.getEditorBundle());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangeStrokeAlphaFactorAction(@NotNull EditorBundle editorBundle, float f) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.alphaFactor = f;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ChangeStrokeAlphaFactorAction> create() {
        Observable<ChangeStrokeAlphaFactorAction> doOnNext = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C10013a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10014b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final ChangeStrokeAlphaFactorAction m40099l() {
        PenArgs penArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle()).getPenArgs();
        if (penArgs != null) {
            penArgs.setAlphaFactor(this.alphaFactor);
        }
        return this;
    }
}
