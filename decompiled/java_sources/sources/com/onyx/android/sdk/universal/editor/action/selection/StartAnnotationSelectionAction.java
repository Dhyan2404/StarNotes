package com.onyx.android.sdk.universal.editor.action.selection;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.note.StartAnnotationSelectionArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/StartAnnotationSelectionAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;", "getArgs", "()Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;", "args", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartAnnotationSelectionAction extends RxBaseAppAction<StartAnnotationSelectionAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final StartAnnotationSelectionArgs args;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartAnnotationSelectionAction$a */
    /* loaded from: classes8.dex */
    public static final class C9958a<T, R> implements Function {
        public C9958a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartAnnotationSelectionAction apply(@NotNull StartAnnotationSelectionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartAnnotationSelectionAction.this.m40010l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartAnnotationSelectionAction(@NotNull EditorBundle editorBundle, @NotNull StartAnnotationSelectionArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartAnnotationSelectionAction> create() {
        Observable<StartAnnotationSelectionAction> map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C9958a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final StartAnnotationSelectionArgs getArgs() {
        return this.args;
    }

    /* renamed from: l */
    public final StartAnnotationSelectionAction m40010l() {
        ShapeHandlerManager shapeHandlerManager = EditorBundleKt.shapeHandlerManager(getEditorBundle());
        shapeHandlerManager.activeShapeProvider(ShapeHandlerManager.ANNOTATION_SELECTION_PROVIDER);
        BaseShapeHandler activeHandler = shapeHandlerManager.getActiveHandler();
        if (activeHandler != null) {
            activeHandler.startAnnotationSelection(this.args);
        }
        return this;
    }
}
