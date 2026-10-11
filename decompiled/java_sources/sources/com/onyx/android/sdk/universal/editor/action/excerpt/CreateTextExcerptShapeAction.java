package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.excerpt.SaveTextExcerptArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\"\u0010\u000e\u001a\u00020\u00068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "l", "Lcom/onyx/android/sdk/base/data/TouchPointList;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", "args", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "", "Landroid/graphics/RectF;", "i", "Ljava/util/List;", "rectList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateTextExcerptShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTextExcerptShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1313#2,2:67\n1855#3,2:69\n*S KotlinDebug\n*F\n+ 1 CreateTextExcerptShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/CreateTextExcerptShapeAction\n*L\n44#1:67,2\n60#1:69,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateTextExcerptShapeAction extends RxBaseAppAction<CreateTextExcerptShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SaveTextExcerptArgs args;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<RectF> rectList;
    public Shape shape;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.CreateTextExcerptShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8710a<T, R> implements Function {
        public C8710a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateTextExcerptShapeAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateTextExcerptShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateTextExcerptShapeAction(@NotNull EditorBundle editorBundle, @NotNull SaveTextExcerptArgs args) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        this.rectList = RectFKt.copyRectFList(args.getDisplayRectFList());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CreateTextExcerptShapeAction> create() {
        Observable<CreateTextExcerptShapeAction> map = DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.CreateTextExcerptShapeAction$create$1
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
                Shape m37706l;
                Intrinsics.checkNotNullParameter(it2, "it");
                CreateTextExcerptShapeAction.this.m37707m();
                CreateTextExcerptShapeAction createTextExcerptShapeAction = CreateTextExcerptShapeAction.this;
                m37706l = createTextExcerptShapeAction.m37706l();
                createTextExcerptShapeAction.setShape(m37706l);
            }
        }).map(new C8710a());
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
    public final Shape m37706l() {
        TouchPointList m37708n = m37708n();
        Shape create = ShapeFactory.INSTANCE.create(44);
        create.setShapeMatrix(BoxInfo.INSTANCE.getRotatedMatrix(this.args.getVirtualPageBoxInfo()));
        create.addPoints(m37708n);
        create.updateShapeRect();
        return create;
    }

    /* renamed from: m */
    public final void m37707m() {
        Sequence asSequence;
        Matrix normalizeUnRotatedMatrix = BoxInfoUtils.INSTANCE.normalizeUnRotatedMatrix(this.args.getVirtualPageBoxInfo());
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.rectList);
        Iterator it2 = asSequence.iterator();
        while (it2.hasNext()) {
            normalizeUnRotatedMatrix.mapRect((RectF) it2.next());
        }
    }

    /* renamed from: n */
    public final TouchPointList m37708n() {
        TouchPointList touchPointList = new TouchPointList();
        for (RectF rectF : this.rectList) {
            touchPointList.add(new TouchPoint(rectF.left, rectF.top));
            touchPointList.add(new TouchPoint(rectF.right, rectF.bottom));
        }
        return touchPointList;
    }

    public final void setShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }
}
