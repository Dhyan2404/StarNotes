package com.onyx.android.sdk.universal.editor.action.layer;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.Command;
import com.onyx.android.sdk.note.common.command.ShapeLayerCommand;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.command.AddUndoRedoCommandAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.events.note.ReloadNoteLayerInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "shapes", "", "i", "I", "layerId", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MoveShapesToLayerAction extends RxBaseAppAction<MoveShapesToLayerAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: i, reason: from kotlin metadata */
    public final int layerId;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.MoveShapesToLayerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9594a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ int f50015f;

        public C9594a(int i) {
            this.f50015f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Command> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new AddUndoRedoCommandAction(MoveShapesToLayerAction.this.getEditorBundle(), new ShapeLayerCommand(MoveShapesToLayerAction.this.shapes, this.f50015f, MoveShapesToLayerAction.this.layerId)).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.MoveShapesToLayerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9595b<T, R> implements Function {
        public C9595b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Command it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveShapesToLayerAction moveShapesToLayerAction = MoveShapesToLayerAction.this;
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(moveShapesToLayerAction, moveShapesToLayerAction.shapes, false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.MoveShapesToLayerAction$c */
    /* loaded from: classes8.dex */
    public static final class C9596c<T> implements Consumer {
        public C9596c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(MoveShapesToLayerAction.this.getEditorBundle(), new ReloadNoteLayerInfoEvent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.layer.MoveShapesToLayerAction$d */
    /* loaded from: classes8.dex */
    public static final class C9597d<T, R> implements Function {
        public C9597d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MoveShapesToLayerAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveShapesToLayerAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MoveShapesToLayerAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapes, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
        this.layerId = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MoveShapesToLayerAction> create() {
        Object first;
        if (this.shapes.isEmpty()) {
            Observable<MoveShapesToLayerAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.shapes);
        Observable<MoveShapesToLayerAction> map = DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.layer.MoveShapesToLayerAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ShapeKt.moveToLayer(MoveShapesToLayerAction.this.shapes, MoveShapesToLayerAction.this.layerId);
                it2.postAddShapeEvent(MoveShapesToLayerAction.this.shapes);
            }
        }).flatMap(new C9594a(((Shape) first).getLayerId())).flatMap(new C9595b()).doOnNext(new C9596c()).map(new C9597d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
