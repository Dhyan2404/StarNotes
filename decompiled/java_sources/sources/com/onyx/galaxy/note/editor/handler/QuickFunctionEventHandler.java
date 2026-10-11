package com.onyx.galaxy.note.editor.handler;

import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.config.QuicklyFunTypeConst;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandler;
import com.onyx.android.sdk.universal.editor.events.app.CancelFingerClickTimerEvent;
import com.onyx.android.sdk.universal.editor.events.app.FingerClickEvent;
import com.onyx.android.sdk.universal.editor.events.app.MouseScaleEvent;
import com.onyx.android.sdk.universal.editor.events.app.MouseScrollEvent;
import com.onyx.android.sdk.universal.editor.events.app.SingleClickEvent;
import com.onyx.android.sdk.universal.editor.events.app.SingleTapUpEvent;
import com.onyx.android.sdk.universal.editor.events.app.StylusLongPressEvent;
import com.onyx.android.sdk.universal.editor.events.note.EditorRedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.EditorUndoEvent;
import com.onyx.android.sdk.universal.editor.events.note.FullScreenEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionLongPressEraserEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionMouseScaleEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionMouseScrollEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionPaperAdaptiveEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionScreenShotEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchColorChangeEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchEraserEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchLassoEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchLastToolEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchPenBushEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchRedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchTapePenEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchUndoEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowStylusFunctionInvalidEvent;
import com.onyx.android.sdk.universal.editor.events.note.StylusFunctionInvalidEvent;
import com.onyx.android.sdk.universal.editor.events.note.TakeScreenCaptureEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.android.sdk.universal.editor.receiver.QuicklyFunBroadCastReceiver;
import com.onyx.android.sdk.universal.editor.view.EditorViewHandler;
import com.onyx.galaxy.note.editor.action.AdaptiveScaleAction;
import com.onyx.galaxy.note.editor.action.SwitchPenBrushAction;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.utils.FullScreenHelper;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00101\u001a\u00020.¢\u0006\u0004\b<\u0010=J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\fH\u0007J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u001aH\u0007J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u001cH\u0007J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\"H\u0007J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020$H\u0007J\u0010\u0010'\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020&H\u0007J\u0010\u0010)\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020(H\u0007J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020*H\u0007J\b\u0010-\u001a\u00020,H\u0002R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u001b\u0010;\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:¨\u0006>"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "", "init", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchUndoEvent;", NotificationCompat.CATEGORY_EVENT, "onFunctionUndo", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchRedoEvent;", "onFunctionRedo", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionScreenShotEvent;", "onFunctionScreenShot", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionPaperAdaptiveEvent;", "onFunctionPaperAdaptive", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchEraserEvent;", "onFunctionSwitchEraser", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchPenBushEvent;", "onFunctionSwitchPenBush", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchTapePenEvent;", "onFunctionSwitchTape", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLastToolEvent;", "onFunctionSwitchLastShapeTool", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchColorChangeEvent;", "onFunctionSwitchColorChange", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLassoEvent;", "onFunctionSwitchLasso", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionLongPressEraserEvent;", "onStylusLongPressEraser", "Lcom/onyx/android/sdk/universal/editor/events/app/FingerClickEvent;", "onFingerClicked", "Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;", "onSingleClickEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/StylusLongPressEvent;", "onStylusLongPress", "Lcom/onyx/android/sdk/universal/editor/events/app/CancelFingerClickTimerEvent;", "onCancelFingerClickTimerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;", "onFullScreenEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StylusFunctionInvalidEvent;", "onStylusFunctionInvalidEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScrollEvent;", "onMouseScrollEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScaleEvent;", "onMouseScaleEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "e", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", "", C6997f.f39671c, "I", "fingerClickTimerKey", "Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;", C6998g.f39679a, "Lkotlin/Lazy;", "b", "()Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;", "fullScreenHelper", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nQuickFunctionEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickFunctionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n1855#2,2:247\n1855#2,2:249\n1#3:251\n*S KotlinDebug\n*F\n+ 1 QuickFunctionEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler\n*L\n70#1:247,2\n78#1:249,2\n*E\n"})
/* loaded from: classes9.dex */
public final class QuickFunctionEventHandler implements EventHandler {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    /* renamed from: f, reason: from kotlin metadata */
    public int fingerClickTimerKey;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy fullScreenHelper;

    /* renamed from: com.onyx.galaxy.note.editor.handler.QuickFunctionEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12105a<T> implements Consumer {
        public C12105a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (it2 instanceof ShapeToolType) {
                QuickFunctionEventHandler.this.scribbleFragment.ensureSwitchUserTool$note_overseasRelease((ShapeToolType) it2);
            }
        }
    }

    public QuickFunctionEventHandler(@NotNull NoteScribbleFragment scribbleFragment) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
        this.fingerClickTimerKey = -1;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FullScreenHelper>() { // from class: com.onyx.galaxy.note.editor.handler.QuickFunctionEventHandler$fullScreenHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FullScreenHelper invoke() {
                return new FullScreenHelper(QuickFunctionEventHandler.this.scribbleFragment);
            }
        });
        this.fullScreenHelper = lazy;
        init();
    }

    /* renamed from: a */
    public final EditorBundle m46261a() {
        return this.scribbleFragment.editorBundle$note_overseasRelease();
    }

    /* renamed from: b */
    public final FullScreenHelper m46262b() {
        return (FullScreenHelper) this.fullScreenHelper.getValue();
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        EventHandler.DefaultImpls.destroy(this);
        GlobalBundle.INSTANCE.unregister(this);
        Iterator<T> it2 = this.scribbleFragment.getEditorBundleManager().getEditorViewHandlers().iterator();
        while (it2.hasNext()) {
            EditorBundleKt.unregister(((EditorViewHandler) it2.next()).getEditorBundle(), this);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void init() {
        EventHandler.DefaultImpls.init(this);
        GlobalBundle.INSTANCE.register(this);
        Iterator<T> it2 = this.scribbleFragment.getEditorBundleManager().getEditorViewHandlers().iterator();
        while (it2.hasNext()) {
            EditorBundleKt.register(((EditorViewHandler) it2.next()).getEditorBundle(), this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCancelFingerClickTimerEvent(@NotNull CancelFingerClickTimerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxTimerUtil.INSTANCE.cancel(this.fingerClickTimerKey);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFingerClicked(@NotNull final FingerClickEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
        rxTimerUtil.cancel(this.fingerClickTimerKey);
        this.fingerClickTimerKey = rxTimerUtil.timer(50L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.QuickFunctionEventHandler$onFingerClicked$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                if (QuickFunctionEventHandler.this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.isClickValid()) {
                    Intent intent = new Intent(QuicklyFunBroadCastReceiver.ACTION_ON_FINGER_CLICKED);
                    intent.putExtra(QuicklyFunBroadCastReceiver.KEY_CODE_CLICK_KEY, event.getClickKey());
                    ResManager.INSTANCE.getAppContext().sendBroadcast(intent);
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFullScreenEvent(@NotNull FullScreenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46262b().onFullScreen(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionPaperAdaptive(@NotNull FunctionPaperAdaptiveEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxBaseAction.execute$default(new AdaptiveScaleAction(m46261a()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionRedo(@NotNull FunctionSwitchRedoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle m46261a = m46261a();
        if (m46261a.getUiBundle().getCommandDataInfo().getCanRedo().get() && !m46261a.getUiBundle().getCommandDataInfo().guardRedoing()) {
            EditorBundleKt.postEvent(m46261a, new EditorRedoEvent());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionScreenShot(@NotNull FunctionScreenShotEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(m46261a(), new TakeScreenCaptureEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionSwitchColorChange(@NotNull FunctionSwitchColorChangeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.getToolDragView().getParamsContainer().colorChange();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionSwitchEraser(@NotNull FunctionSwitchEraserEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (PencilBoxManager.INSTANCE.hasSelectedPen()) {
            this.scribbleFragment.ensureSwitchUserTool$note_overseasRelease(ShapeToolType.ERASER);
            return;
        }
        ShapeToolType value = this.scribbleFragment.getPenViewModel$note_overseasRelease().getPenType().getValue();
        ShapeToolType shapeToolType = ShapeToolType.ERASER;
        if (value == shapeToolType) {
            this.scribbleFragment.switchToLastTool$note_overseasRelease();
        } else {
            this.scribbleFragment.ensureSwitchUserTool$note_overseasRelease(shapeToolType);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionSwitchLasso(@NotNull FunctionSwitchLassoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (PencilBoxManager.INSTANCE.hasSelectedPen()) {
            this.scribbleFragment.ensureSwitchUserTool$note_overseasRelease(ShapeToolType.LASSO);
            return;
        }
        ShapeToolType value = this.scribbleFragment.getPenViewModel$note_overseasRelease().getPenType().getValue();
        ShapeToolType shapeToolType = ShapeToolType.LASSO;
        if (value == shapeToolType) {
            this.scribbleFragment.switchToLastTool$note_overseasRelease();
        } else {
            this.scribbleFragment.ensureSwitchUserTool$note_overseasRelease(shapeToolType);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionSwitchLastShapeTool(@NotNull FunctionSwitchLastToolEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.scribbleFragment.switchToLastTool$note_overseasRelease();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionSwitchPenBush(@NotNull FunctionSwitchPenBushEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle m46261a = m46261a();
        ShapeToolType value = this.scribbleFragment.getPenViewModel$note_overseasRelease().getPenType().getValue();
        Intrinsics.checkNotNull(value);
        new SwitchPenBrushAction(m46261a, value).build().doOnNext(new C12105a()).subscribe();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionSwitchTape(@NotNull FunctionSwitchTapePenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (PencilBoxManager.INSTANCE.hasSelectedPen()) {
            this.scribbleFragment.ensureSwitchUserTool$note_overseasRelease(ShapeToolType.TAPE_PEN);
            return;
        }
        ShapeToolType value = this.scribbleFragment.getPenViewModel$note_overseasRelease().getPenType().getValue();
        ShapeToolType shapeToolType = ShapeToolType.TAPE_PEN;
        if (value == shapeToolType) {
            this.scribbleFragment.switchToLastTool$note_overseasRelease();
        } else {
            this.scribbleFragment.ensureSwitchUserTool$note_overseasRelease(shapeToolType);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFunctionUndo(@NotNull FunctionSwitchUndoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundle m46261a = m46261a();
        if (m46261a.getUiBundle().getCommandDataInfo().getCanUndo().get() && !m46261a.getUiBundle().getCommandDataInfo().guardUndoing()) {
            EditorBundleKt.postEvent(m46261a, new EditorUndoEvent());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMouseScaleEvent(@NotNull FunctionMouseScaleEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(m46261a(), new MouseScaleEvent(event.getScale()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMouseScrollEvent(@NotNull FunctionMouseScrollEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(m46261a(), new MouseScrollEvent(event.getScroll()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSingleClickEvent(@NotNull final SingleClickEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
        rxTimerUtil.cancel(this.fingerClickTimerKey);
        this.fingerClickTimerKey = rxTimerUtil.timer(50L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.QuickFunctionEventHandler$onSingleClickEvent$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                EditorBundle m46261a;
                if (!TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit() || QuickFunctionEventHandler.this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.isClickValid()) {
                    m46261a = QuickFunctionEventHandler.this.m46261a();
                    EditorBundleKt.postEvent(m46261a, new SingleTapUpEvent(event.getTouchPoint()));
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStylusFunctionInvalidEvent(@NotNull StylusFunctionInvalidEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EditorBundleKt.postEvent(m46261a(), new ShowStylusFunctionInvalidEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStylusLongPress(@NotNull StylusLongPressEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.isLongPressActive()) {
            Intent intent = new Intent(QuicklyFunBroadCastReceiver.ACTION_ON_STYLUS_CLICK);
            intent.putExtra(QuicklyFunBroadCastReceiver.KEY_CODE_CLICK_KEY, QuicklyFunTypeConst.SETTINGS_STYLUS_LONG_PRESS);
            ResManager.INSTANCE.getAppContext().sendBroadcast(intent);
        } else {
            ShapeToolType lastShapeTool = this.scribbleFragment.getPenViewModel$note_overseasRelease().getLastPenType().getLastShapeTool();
            if (lastShapeTool != null) {
                this.scribbleFragment.ensureSwitchUserTool$note_overseasRelease(lastShapeTool);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStylusLongPressEraser(@NotNull FunctionLongPressEraserEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46261a().getUiBundle().getHandlerManager().setStylusLongPressActive(event.getIsPressed());
    }
}
