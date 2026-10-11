package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.excerpt.SaveRectExcerptArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateRectExcerptShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "l", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;", "args", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateRectExcerptShapeAction extends RxBaseAppAction<CreateRectExcerptShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SaveRectExcerptArgs args;
    public Shape shape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.CreateRectExcerptShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8709a<T, R> implements Function {
        public C8709a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateRectExcerptShapeAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateRectExcerptShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateRectExcerptShapeAction(@NotNull EditorBundle editorBundle, @NotNull SaveRectExcerptArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CreateRectExcerptShapeAction> create() {
        Observable<CreateRectExcerptShapeAction> map = DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.CreateRectExcerptShapeAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle it2) {
                Shape m37704l;
                Intrinsics.checkNotNullParameter(it2, "it");
                CreateRectExcerptShapeAction createRectExcerptShapeAction = CreateRectExcerptShapeAction.this;
                m37704l = createRectExcerptShapeAction.m37704l();
                createRectExcerptShapeAction.setShape(m37704l);
            }
        }).map(new C8709a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Shape getShape() {
        Shape shape = this.shape;
        if (shape != null) {
            return shape;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shape");
        return null;
    }

    /* renamed from: l */
    public final Shape m37704l() {
        Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(this.args.getVirtualPageBoxInfo());
        RectF copy = RectFKt.copy(this.args.getRegionInViewport());
        noteNormalizeMatrix.mapRect(copy);
        TouchPoint touchPoint = new TouchPoint(copy.left, copy.top);
        TouchPoint touchPoint2 = new TouchPoint(copy.right, copy.bottom);
        Shape create = ShapeFactory.INSTANCE.create(41);
        create.onDown(touchPoint, touchPoint);
        create.onUp(touchPoint2, touchPoint2);
        create.updateShapeRect();
        return create;
    }

    public final void setShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }
}
