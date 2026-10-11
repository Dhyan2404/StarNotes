package com.onyx.android.sdk.universal.editor.handler.shape;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.event.NoteShapeChangedEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.DeleteShapesRequest;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$replaceTransformShapes$2;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes8.dex */
public final class TransformHandler$replaceTransformShapes$2<T, R> implements Function {

    /* renamed from: e */
    public final /* synthetic */ TransformHandler f52377e;

    /* renamed from: f */
    public final /* synthetic */ ShapeTransformBean f52378f;

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$replaceTransformShapes$2$a */
    /* loaded from: classes8.dex */
    public static final class C10508a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ CompositeCommand f52379e;

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f52380f;

        /* JADX WARN: Multi-variable type inference failed */
        public C10508a(CompositeCommand compositeCommand, List<? extends Shape> list) {
            this.f52379e = compositeCommand;
            this.f52380f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52379e.addCommand(new UndoRedoCommand().removeShapes(this.f52380f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$replaceTransformShapes$2$b */
    /* loaded from: classes8.dex */
    public static final class C10509b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ShapeTransformBean f52381e;

        /* renamed from: f */
        public final /* synthetic */ CompositeCommand f52382f;

        public C10509b(ShapeTransformBean shapeTransformBean, CompositeCommand compositeCommand) {
            this.f52381e = shapeTransformBean;
            this.f52382f = compositeCommand;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52381e.setLastCompositeCommand(this.f52382f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$replaceTransformShapes$2$c */
    /* loaded from: classes8.dex */
    public static final class C10510c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ QuitTransformAction f52383e;

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f52384f;

        /* JADX WARN: Multi-variable type inference failed */
        public C10510c(QuitTransformAction quitTransformAction, List<? extends Shape> list) {
            this.f52383e = quitTransformAction;
            this.f52384f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull DeleteShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(this.f52383e, this.f52384f, false, 2, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$replaceTransformShapes$2$d */
    /* loaded from: classes8.dex */
    public static final class C10511d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f52385e;

        /* JADX WARN: Multi-variable type inference failed */
        public C10511d(List<? extends Shape> list) {
            this.f52385e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f52385e;
        }
    }

    public TransformHandler$replaceTransformShapes$2(TransformHandler transformHandler, ShapeTransformBean shapeTransformBean) {
        this.f52377e = transformHandler;
        this.f52378f = shapeTransformBean;
    }

    /* renamed from: c */
    public static final void m41173c(TransformHandler this$0, List validShapes, DeleteShapesRequest it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(validShapes, "$validShapes");
        Intrinsics.checkNotNullParameter(it2, "it");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new NoteShapeChangedEvent(ChangedShapeBean.INSTANCE.addRemovedShapesToChangedShapeBean(validShapes)));
    }

    @Override // io.reactivex.rxjava3.functions.Function
    @NotNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ObservableSource<? extends List<Shape>> apply(@NotNull QuitTransformAction action) {
        Intrinsics.checkNotNullParameter(action, "action");
        CompositeCommand quitCompositeCommand = action.getQuitCompositeCommand();
        final List<Shape> filterSupportHWRShapes = ShapeTypes.INSTANCE.filterSupportHWRShapes(action.getTransformShapeList());
        final DeleteShapesRequest deleteShapesRequest = new DeleteShapesRequest(EditorBundleKt.noteBundle(this.f52377e.getEditorBundle()), filterSupportHWRShapes, false, 4, null);
        deleteShapesRequest.setPostShapeChangedEvent(false);
        Observable submitRequestToNote = RxBaseAppActionKt.submitRequestToNote(this.f52377e.getEditorBundle(), deleteShapesRequest);
        Function1<DeleteShapesRequest, Boolean> function1 = new Function1<DeleteShapesRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.TransformHandler$replaceTransformShapes$2.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DeleteShapesRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!DeleteShapesRequest.this.getPostShapeChangedEvent());
            }
        };
        final TransformHandler transformHandler = this.f52377e;
        return RxjavaKt.doOnNextIf(submitRequestToNote, function1, new Consumer() { // from class: com.sunia.HTREnginev2.amn
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                TransformHandler$replaceTransformShapes$2.m41173c(TransformHandler.this, filterSupportHWRShapes, (DeleteShapesRequest) obj);
            }
        }).doOnNext(new C10508a(quitCompositeCommand, filterSupportHWRShapes)).doOnNext(new C10509b(this.f52378f, quitCompositeCommand)).flatMap(new C10510c(action, filterSupportHWRShapes)).map(new C10511d(filterSupportHWRShapes));
    }
}
