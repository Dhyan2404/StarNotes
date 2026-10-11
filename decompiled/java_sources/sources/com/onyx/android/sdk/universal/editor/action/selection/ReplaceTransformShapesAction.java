package com.onyx.android.sdk.universal.editor.action.selection;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/ReplaceTransformShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "transformShapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReplaceTransformShapesAction extends RxBaseAppAction<ReplaceTransformShapesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> transformShapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.ReplaceTransformShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9940a<T, R> implements Function {
        public C9940a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplaceTransformShapesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReplaceTransformShapesAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ReplaceTransformShapesAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> transformShapes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(transformShapes, "transformShapes");
        this.transformShapes = transformShapes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ReplaceTransformShapesAction> create() {
        BaseShapeHandler activeHandler = EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().getActiveHandler();
        TransformHandler transformHandler = activeHandler instanceof TransformHandler ? (TransformHandler) activeHandler : null;
        if (transformHandler == null) {
            Observable<ReplaceTransformShapesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = transformHandler.replaceTransformShapes(this.transformShapes).map(new C9940a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
