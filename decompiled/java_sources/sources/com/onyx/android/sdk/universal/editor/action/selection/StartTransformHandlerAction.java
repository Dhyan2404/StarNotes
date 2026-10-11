package com.onyx.android.sdk.universal.editor.action.selection;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.note.TransformEditEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "transformBean", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartTransformHandlerAction extends RxBaseAppAction<StartTransformHandlerAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ShapeTransformBean transformBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartTransformHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9971a<T> implements Consumer {
        public C9971a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartTransformHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartTransformHandlerAction.this.m40035l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartTransformHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ShapeTransformBean transformBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(transformBean, "transformBean");
        this.transformBean = transformBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartTransformHandlerAction> create() {
        Observable<StartTransformHandlerAction> doOnNext = Observable.just(this).observeOn(getMainUIScheduler()).doOnNext(new C9971a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m40035l() {
        String activeProviderName = EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().getActiveProviderName();
        EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().activeShapeProvider(ShapeHandlerManager.TRANSFORM_PROVIDER);
        EditorBundleKt.postEvent(getEditorBundle(), new TransformEditEvent(this.transformBean, activeProviderName));
    }
}
