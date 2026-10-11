package com.onyx.android.sdk.universal.editor.handler.shape;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.UniversalShapeEditAction;
import com.onyx.android.sdk.universal.editor.action.layer.MoveShapesToLayerAction;
import com.onyx.android.sdk.universal.editor.action.link.CreateShapeLinkBeanAction;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.PlaceShapesAction;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.app.ActivityPausedEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeShapeAttributesEvent;
import com.onyx.android.sdk.universal.editor.events.note.EnablePressureEraserEvent;
import com.onyx.android.sdk.universal.editor.events.note.MoveShapesToLayerEvent;
import com.onyx.android.sdk.universal.editor.events.note.PreparePressureErasingEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.events.note.RedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.RestoreUserProviderEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionBottomingEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionCopyEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionCreateShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionCutEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionDeleteEvent;
import com.onyx.android.sdk.universal.editor.events.note.SelectionToppingEvent;
import com.onyx.android.sdk.universal.editor.events.note.UndoEvent;
import com.onyx.android.sdk.universal.editor.events.note.UniversalShapeEditEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.onyx.android.sdk.universal.editor.gesture.TouchEventTransformer;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010=\u001a\u00020<¢\u0006\u0004\b>\u0010?J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\n\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0017H\u0007J\u0010\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0019H\u0007J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u001bH\u0007J\u0010\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020%H\u0016J\u0010\u0010(\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020'H\u0016J\u0010\u0010*\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020)H\u0016J\u0012\u0010+\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010,\u001a\u00020\bH\u0002J\u0014\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0.0-H\u0002R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:¨\u0006@"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "", "onActivate", "onDeactivate", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", "onThemeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;", "onUniversalShapeEditEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;", "onEraserEnabledEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/PreparePressureErasingEvent;", "onPreparePressureErasingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;", "onQuitTransformEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;", "onChangeShapeAttributesEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;", "onSelectionCopyEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;", "onSelectionCutEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;", "onSelectionToppingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;", "onSelectionBottomingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;", "onSelectionDeleteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;", "onSelectionCreateShapeLinkEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;", "onMoveShapesToLayerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;", "onUndoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;", "onRedoEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;", "onActivityPausedEvent", "isProcessing", "b", "Lio/reactivex/rxjava3/core/Observable;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "a", "Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;", "d", "Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;", "handlerAction", "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;", "e", "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;", "pressureDetectorArgs", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isEraserEnabled", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UniversalShapeHandler extends BaseShapeHandler {

    /* renamed from: d, reason: from kotlin metadata */
    public UniversalShapeEditAction handlerAction;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public PressureDetectHandlerAction.Args pressureDetectorArgs;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isEraserEnabled;

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$a */
    /* loaded from: classes8.dex */
    public static final class C10520a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ MoveShapesToLayerEvent f52399f;

        public C10520a(MoveShapesToLayerEvent moveShapesToLayerEvent) {
            this.f52399f = moveShapesToLayerEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends MoveShapesToLayerAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new MoveShapesToLayerAction(UniversalShapeHandler.this.getEditorBundle(), it2, this.f52399f.getLayerId()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$b */
    /* loaded from: classes8.dex */
    public static final class C10521b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ RedoEvent f52401f;

        public C10521b(RedoEvent redoEvent) {
            this.f52401f = redoEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeHandler.super.onRedoEvent(this.f52401f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$c */
    /* loaded from: classes8.dex */
    public static final class C10522c<T, R> implements Function {
        public C10522c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PlaceShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = UniversalShapeHandler.this.getEditorBundle();
            UniversalShapeEditAction universalShapeEditAction = UniversalShapeHandler.this.handlerAction;
            if (universalShapeEditAction == null) {
                Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
                universalShapeEditAction = null;
            }
            return new PlaceShapesAction(editorBundle, universalShapeEditAction.getPageBoxInfo(), it2, false).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$d */
    /* loaded from: classes8.dex */
    public static final class C10523d<T> implements Consumer {

        /* renamed from: e */
        public static final C10523d<T> f52403e = new C10523d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.copyShapes(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$e */
    /* loaded from: classes8.dex */
    public static final class C10524e<T> implements Predicate {

        /* renamed from: e */
        public static final C10524e<T> f52404e = new C10524e<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$f */
    /* loaded from: classes8.dex */
    public static final class C10525f<T, R> implements Function {
        public C10525f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ShapeLinkBean> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CreateShapeLinkBeanAction(UniversalShapeHandler.this.getEditorBundle(), it2).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$g */
    /* loaded from: classes8.dex */
    public static final class C10526g<T> implements Consumer {

        /* renamed from: e */
        public static final C10526g<T> f52406e = new C10526g<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.copyShapeLink(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$h */
    /* loaded from: classes8.dex */
    public static final class C10527h<T> implements Consumer {

        /* renamed from: e */
        public static final C10527h<T> f52407e = new C10527h<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShapeLinkBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.create_link_success, false, 2, (Object) null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$i */
    /* loaded from: classes8.dex */
    public static final class C10528i<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$i$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f52409e;

            /* JADX WARN: Multi-variable type inference failed */
            public a(List<? extends Shape> list) {
                this.f52409e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<Shape> apply(@NotNull DeleteShapesAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f52409e;
            }
        }

        public C10528i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> shapes) {
            Intrinsics.checkNotNullParameter(shapes, "shapes");
            return new DeleteShapesAction(UniversalShapeHandler.this.getEditorBundle(), shapes, true, false, 8, null).build().map(new a(shapes));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$j */
    /* loaded from: classes8.dex */
    public static final class C10529j<T> implements Consumer {

        /* renamed from: e */
        public static final C10529j<T> f52410e = new C10529j<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.copyShapes(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$k */
    /* loaded from: classes8.dex */
    public static final class C10530k<T, R> implements Function {
        public C10530k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteShapesAction(UniversalShapeHandler.this.getEditorBundle(), it2, true, false, 8, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$l */
    /* loaded from: classes8.dex */
    public static final class C10531l<T, R> implements Function {
        public C10531l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PlaceShapesAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = UniversalShapeHandler.this.getEditorBundle();
            UniversalShapeEditAction universalShapeEditAction = UniversalShapeHandler.this.handlerAction;
            if (universalShapeEditAction == null) {
                Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
                universalShapeEditAction = null;
            }
            return new PlaceShapesAction(editorBundle, universalShapeEditAction.getPageBoxInfo(), it2, true).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.handler.shape.UniversalShapeHandler$m */
    /* loaded from: classes8.dex */
    public static final class C10532m<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ UndoEvent f52414f;

        public C10532m(UndoEvent undoEvent) {
            this.f52414f = undoEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UniversalShapeHandler.super.onUndoEvent(this.f52414f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniversalShapeHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.pressureDetectorArgs = new PressureDetectHandlerAction.Args(0.0f, false, new RestoreUserProviderEvent(), 2, null);
        this.isEraserEnabled = true;
    }

    /* renamed from: a */
    public final Observable<List<Shape>> m41188a() {
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        return universalShapeEditAction.quitEditObservable(true);
    }

    /* renamed from: b */
    public final void m41189b() {
        if (!EditorBundleKt.handlerManager(getEditorBundle()).isSupportTouchEdit()) {
            getTouchReader().setEventFilter(ScribbleTouchReader.INSTANCE.getDISABLE_EVENT_FILTER());
            return;
        }
        ScribbleTouchReader touchReader = getTouchReader();
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        touchReader.setEventFilter((universalShapeEditAction.isEditMode() || EditorBundleKt.handlerManager(getEditorBundle()).isSupportFingerTouchEdit()) ? false : true);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean isProcessing(@Nullable MotionEvent event) {
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        return !universalShapeEditAction.isUndefinedTransformAction();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        GlobalBundle.INSTANCE.register(this);
        UniversalShapeEditAction universalShapeEditAction = new UniversalShapeEditAction(getEditorBundle(), getTouchReader());
        this.handlerAction = universalShapeEditAction;
        addAndExecuteAction(universalShapeEditAction);
        addAndExecuteAction(new PressureDetectHandlerAction(getEditorBundle(), getTouchReader(), this.pressureDetectorArgs));
        EditorBundleKt.postEvent(getEditorBundle(), new EnablePressureEraserEvent(true));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivityPausedEvent(@NotNull ActivityPausedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        if (universalShapeEditAction.isEditMode()) {
            m41188a().subscribe();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeShapeAttributesEvent(@NotNull ChangeShapeAttributesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ShapeAttributesBean shapeAttributesBean = (ShapeAttributesBean) CollectionKt.getFirst(event.getShapeAttrPairs().values());
        if (shapeAttributesBean != null && shapeAttributesBean.isChanged()) {
            UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
            if (universalShapeEditAction == null) {
                Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
                universalShapeEditAction = null;
            }
            universalShapeEditAction.updateShapeAttr(shapeAttributesBean);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        GlobalBundle.INSTANCE.unregister(this);
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderSilent(RenderManager.RENDER_KEY_UNIVERSAL);
        super.onDeactivate();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEraserEnabledEvent(@NotNull EnablePressureEraserEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.isEraserEnabled = event.getEnabled();
        this.pressureDetectorArgs.setDetectEraser(event.getEnabled());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMoveShapesToLayerEvent(@NotNull MoveShapesToLayerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        universalShapeEditAction.quitEditObservable(false).flatMap(new C10520a(event)).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPreparePressureErasingEvent(@NotNull PreparePressureErasingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        universalShapeEditAction.cancelEdit();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitTransformEvent(@NotNull QuitTransformEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41188a().subscribe();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onRedoEvent(@NotNull RedoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        if (universalShapeEditAction.isEditMode()) {
            m41188a().doOnNext(new C10521b(event)).subscribe();
        } else {
            super.onRedoEvent(event);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionBottomingEvent(@NotNull SelectionBottomingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41188a().flatMap(new C10522c()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionCopyEvent(@NotNull SelectionCopyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41188a().doOnNext(C10523d.f52403e).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionCreateShapeLinkEvent(@NotNull SelectionCreateShapeLinkEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41188a().filter(C10524e.f52404e).flatMap(new C10525f()).doOnNext(C10526g.f52406e).doOnNext(C10527h.f52407e).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionCutEvent(@NotNull SelectionCutEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41188a().flatMap(new C10528i()).doOnNext(C10529j.f52410e).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionDeleteEvent(@NotNull SelectionDeleteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41188a().flatMap(new C10530k()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSelectionToppingEvent(@NotNull SelectionToppingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41188a().flatMap(new C10531l()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        universalShapeEditAction.onThemeUpdated();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean onTouchEvent(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        TouchEventTransformer rulerTransformHandler = EditorBundleKt.handlerManager(getEditorBundle()).getRulerTransformHandler();
        if (rulerTransformHandler != null) {
            rulerTransformHandler.processMotionEvent(event);
        }
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        UniversalShapeEditAction universalShapeEditAction2 = null;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        universalShapeEditAction.onTouchEvent(event);
        if (MotionEventKt.isDownAction(event)) {
            m41189b();
            this.pressureDetectorArgs.setDetectEraser(this.isEraserEnabled && MotionEventKt.isPenTouchType(event));
        } else if (MotionEventKt.isUpAction(event)) {
            UniversalShapeEditAction universalShapeEditAction3 = this.handlerAction;
            if (universalShapeEditAction3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            } else {
                universalShapeEditAction2 = universalShapeEditAction3;
            }
            if (universalShapeEditAction2.isUndefinedTransformAction()) {
                m41188a().subscribe();
            }
        }
        return super.onTouchEvent(view, event);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onUndoEvent(@NotNull UndoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        if (universalShapeEditAction.isEditMode()) {
            m41188a().doOnNext(new C10532m(event)).subscribe();
        } else {
            super.onUndoEvent(event);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUniversalShapeEditEvent(@NotNull UniversalShapeEditEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        UniversalShapeEditAction universalShapeEditAction = this.handlerAction;
        if (universalShapeEditAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            universalShapeEditAction = null;
        }
        universalShapeEditAction.onShapeEdit(event).setShowMenu(event.getShowMenu());
    }
}
