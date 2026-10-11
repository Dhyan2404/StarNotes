package com.onyx.android.sdk.universal.editor.action.selection;

import android.graphics.Matrix;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B%\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u0014\u0010\b\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/UpdateTransformShapesMatrixAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "anchorShape", "i", "Ljava/util/List;", "shapeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateTransformShapesMatrixAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateTransformShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/UpdateTransformShapesMatrixAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1#2:28\n1855#3,2:29\n*S KotlinDebug\n*F\n+ 1 UpdateTransformShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/UpdateTransformShapesMatrixAction\n*L\n24#1:29,2\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateTransformShapesMatrixAction extends RxBaseAppAction<List<? extends Shape>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape anchorShape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UpdateTransformShapesMatrixAction(@NotNull EditorBundle editorBundle, @NotNull Shape anchorShape, @NotNull List<? extends Shape> shapeList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(anchorShape, "anchorShape");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.anchorShape = anchorShape;
        this.shapeList = shapeList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Shape>> create() {
        List<? extends Shape> listOf;
        BaseShapeHandler activeHandler = EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().getActiveHandler();
        Matrix matrix = null;
        TransformHandler transformHandler = activeHandler instanceof TransformHandler ? (TransformHandler) activeHandler : null;
        if (transformHandler == null) {
            Observable<List<Shape>> just = Observable.just(this.shapeList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ShapeTransformBean shapeTransformBean = transformHandler.getShapeTransformBean();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.anchorShape);
        Iterator<Map.Entry<Shape, Matrix>> it2 = shapeTransformBean.getTransformShapeMatrix(listOf).entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Matrix value = it2.next().getValue();
            if (value != null) {
                matrix = value;
                break;
            }
        }
        if (matrix != null) {
            Iterator<T> it3 = this.shapeList.iterator();
            while (it3.hasNext()) {
                ((Shape) it3.next()).postConcat(MatrixKt.invertMatrix(matrix));
            }
        }
        Observable<List<Shape>> just2 = Observable.just(this.shapeList);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }
}
