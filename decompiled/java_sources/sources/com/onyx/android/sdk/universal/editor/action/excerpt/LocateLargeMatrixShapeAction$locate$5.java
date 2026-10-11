package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.StartTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m61528d2 = {"<anonymous>", "Lio/reactivex/rxjava3/core/Observable;", "", OcrValues.LANG_ITALIAN, "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LocateLargeMatrixShapeAction$locate$5 extends Lambda implements Function1<LocateLargeMatrixShapeAction, Observable<? extends Object>> {
    final /* synthetic */ Ref.ObjectRef<Shape> $shape;
    final /* synthetic */ LocateLargeMatrixShapeAction this$0;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction$locate$5$a */
    /* loaded from: classes8.dex */
    public static final class C8807a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<Shape> f48534e;

        public C8807a(Ref.ObjectRef<Shape> objectRef) {
            this.f48534e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShapeTransformBean apply(@NotNull LocateShapeRectInPageAction it2) {
            List<? extends Shape> listOfNotNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeTransformBean shapeTransformBean = new ShapeTransformBean();
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.f48534e.element);
            return shapeTransformBean.setTransformShapes(listOfNotNull);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocateLargeMatrixShapeAction$locate$5(LocateLargeMatrixShapeAction locateLargeMatrixShapeAction, Ref.ObjectRef<Shape> objectRef) {
        super(1);
        this.this$0 = locateLargeMatrixShapeAction;
        this.$shape = objectRef;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(LocateLargeMatrixShapeAction this$0, ShapeTransformBean it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new StartTransformEvent(it2));
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final Observable<? extends Object> invoke(@NotNull LocateLargeMatrixShapeAction it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundle editorBundle = this.this$0.getEditorBundle();
        Shape shape = this.$shape.element;
        Intrinsics.checkNotNull(shape);
        String pageUniqueId = shape.getPageUniqueId();
        ShapeRectUtils shapeRectUtils = ShapeRectUtils.INSTANCE;
        Shape shape2 = this.$shape.element;
        Intrinsics.checkNotNull(shape2);
        Observable<R> map = new LocateShapeRectInPageAction(editorBundle, pageUniqueId, shapeRectUtils.getBoundingRectWithWidth(shape2)).build().map(new C8807a(this.$shape));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        C88062 c88062 = new Function1<ShapeTransformBean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.LocateLargeMatrixShapeAction$locate$5.2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ShapeTransformBean it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Boolean.valueOf(it3.hasTransformShapes());
            }
        };
        final LocateLargeMatrixShapeAction locateLargeMatrixShapeAction = this.this$0;
        return RxjavaKt.doOnNextIf(map, c88062, new Consumer() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.a
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LocateLargeMatrixShapeAction$locate$5.invoke$lambda$0(LocateLargeMatrixShapeAction.this, (ShapeTransformBean) obj);
            }
        });
    }
}
