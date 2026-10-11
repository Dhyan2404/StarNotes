package com.onyx.android.sdk.universal.editor.action.shape;

import android.annotation.TargetApi;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.pen.NeoPencilPen;
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

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/PreparePencilPenAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "l", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@TargetApi(29)
/* loaded from: classes8.dex */
public final class PreparePencilPenAction extends RxBaseAppAction<PreparePencilPenAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final PenArgs penArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.PreparePencilPenAction$a */
    /* loaded from: classes8.dex */
    public static final class C10128a<T> implements Consumer {
        public C10128a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PreparePencilPenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NeoPencilPen.INSTANCE.prepareBrushMask(PreparePencilPenAction.this.m40299l());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreparePencilPenAction(@NotNull EditorBundle editorBundle, @NotNull PenArgs penArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        this.penArgs = penArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PreparePencilPenAction> create() {
        if (this.penArgs.getType() != 46) {
            Observable<PreparePencilPenAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<PreparePencilPenAction> onErrorReturnItem = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10128a()).onErrorReturnItem(this);
        Intrinsics.checkNotNullExpressionValue(onErrorReturnItem, "onErrorReturnItem(...)");
        return onErrorReturnItem;
    }

    /* renamed from: l */
    public final NeoPenConfig m40299l() {
        NeoPenConfig defaultPenConfig = NeoPencilPen.INSTANCE.defaultPenConfig();
        defaultPenConfig.m72312setColor(this.penArgs.getColor());
        defaultPenConfig.m72321setWidth(this.penArgs.getWidth());
        return defaultPenConfig;
    }
}
