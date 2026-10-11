package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.note.StartTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "", "l", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "i", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleHitTestShapeAndStartTransformAction extends RxBaseAppAction<HandleHitTestShapeAndStartTransformAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestShapeAndStartTransformAction$a */
    /* loaded from: classes8.dex */
    public static final class C10088a<T> implements Consumer {
        public C10088a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            List mutableList;
            Intrinsics.checkNotNullParameter(it2, "it");
            HandleHitTestShapeAndStartTransformAction handleHitTestShapeAndStartTransformAction = HandleHitTestShapeAndStartTransformAction.this;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) GetReferenceShapeAction.mergeShapeList$default(it2, false, 1, null));
            handleHitTestShapeAndStartTransformAction.m40227l(mutableList);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestShapeAndStartTransformAction$b */
    /* loaded from: classes8.dex */
    public static final class C10089b<T, R> implements Function {
        public C10089b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleHitTestShapeAndStartTransformAction apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestShapeAndStartTransformAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleHitTestShapeAndStartTransformAction(@NotNull EditorBundle editorBundle, @NotNull Shape hitTestShape, @NotNull TouchPoint touchPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.hitTestShape = hitTestShape;
        this.touchPoint = touchPoint;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleHitTestShapeAndStartTransformAction> create() {
        List listOf;
        EditorBundle editorBundle = getEditorBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.hitTestShape);
        Observable map = new GetReferenceShapeAction(editorBundle, listOf).build().doOnNext(new C10088a()).map(new C10089b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m40227l(List<Shape> shapeList) {
        shapeList.add(0, this.hitTestShape);
        EditorBundleKt.postEvent(getEditorBundle(), new StartTransformEvent(new ShapeTransformBean().setTransformShapes(shapeList)));
    }
}
