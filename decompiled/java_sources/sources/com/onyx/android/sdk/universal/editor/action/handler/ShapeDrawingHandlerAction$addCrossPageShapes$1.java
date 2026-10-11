package com.onyx.android.sdk.universal.editor.action.handler;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$addCrossPageShapes$1;
import com.onyx.android.sdk.universal.editor.data.AddShapesBackgroundResultBean;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes8.dex */
public final class ShapeDrawingHandlerAction$addCrossPageShapes$1<T, R> implements Function {

    /* renamed from: e */
    public final /* synthetic */ ShapeDrawingHandlerAction f49379e;

    /* renamed from: f */
    public final /* synthetic */ AddShapesBackgroundResultBean f49380f;

    public ShapeDrawingHandlerAction$addCrossPageShapes$1(ShapeDrawingHandlerAction shapeDrawingHandlerAction, AddShapesBackgroundResultBean addShapesBackgroundResultBean) {
        this.f49379e = shapeDrawingHandlerAction;
        this.f49380f = addShapesBackgroundResultBean;
    }

    /* renamed from: c */
    public static final void m38668c(AddShapesBackgroundResultBean result, Map.Entry entry, AddShapesBackgroundResultBean it2) {
        List listOf;
        Intrinsics.checkNotNullParameter(result, "$result");
        Intrinsics.checkNotNullParameter(entry, "$entry");
        Intrinsics.checkNotNullParameter(it2, "it");
        UndoRedoCommand undoRedoCommand = result.getUndoRedoCommand();
        if (undoRedoCommand != null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(entry.getKey());
            undoRedoCommand.addShapes(listOf);
        }
    }

    @Override // io.reactivex.rxjava3.functions.Function
    @NotNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ObservableSource<? extends AddShapesBackgroundResultBean> apply(@NotNull final Map.Entry<? extends Shape, BoxInfo> entry) {
        Observable m38660r;
        Intrinsics.checkNotNullParameter(entry, "entry");
        m38660r = this.f49379e.m38660r(entry.getKey(), entry.getValue(), false);
        C92821 c92821 = new Function1<AddShapesBackgroundResultBean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction$addCrossPageShapes$1.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull AddShapesBackgroundResultBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.canAddShape());
            }
        };
        final AddShapesBackgroundResultBean addShapesBackgroundResultBean = this.f49380f;
        return RxjavaKt.doOnNextIf(m38660r, c92821, new Consumer() { // from class: com.sunia.HTREnginev2.bmm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ShapeDrawingHandlerAction$addCrossPageShapes$1.m38668c(AddShapesBackgroundResultBean.this, entry, (AddShapesBackgroundResultBean) obj);
            }
        });
    }
}
