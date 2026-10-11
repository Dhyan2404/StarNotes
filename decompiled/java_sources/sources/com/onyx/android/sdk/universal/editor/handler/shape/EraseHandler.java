package com.onyx.android.sdk.universal.editor.handler.shape;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.geometry.extension.MotionEventKt;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.handler.BaseEraseHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.OverlayEraserHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.SelectionEraserHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.StrokeEraserHandlerAction;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.app.DragAppendingPageEndEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraseTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideEraseViewEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowEraseViewEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartErasingArgs;
import com.onyx.android.sdk.universal.editor.events.note.UpdateEraseViewPositionEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000bH\u0007J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000fH\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0002R\u0016\u0010!\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010 ¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "", "onActivate", "onDeactivate", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;", NotificationCompat.CATEGORY_EVENT, "startErasing", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;", "onChangeEraseTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DragAppendingPageEndEvent;", "onDragAppendingPageEndEvent", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", "", "onTouchEvent", "cancelAction", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "e", "", "newHandler", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;", "b", "c", "d", "a", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", C6998g.f39679a, "I", "activeHandler", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEraseHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n800#2,11:152\n800#2,11:163\n800#2,11:174\n*S KotlinDebug\n*F\n+ 1 EraseHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler\n*L\n56#1:152,11\n57#1:163,11\n58#1:174,11\n*E\n"})
/* loaded from: classes8.dex */
public final class EraseHandler extends BaseShapeHandler {

    /* renamed from: d, reason: from kotlin metadata */
    public int activeHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EraseHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.activeHandler = -1;
    }

    /* renamed from: a */
    public final void m41020a() {
        for (BaseShapeHandlerAction<?> baseShapeHandlerAction : getShapeHandlerActionList()) {
            if (baseShapeHandlerAction instanceof BaseEraseHandlerAction) {
                ((BaseEraseHandlerAction) baseShapeHandlerAction).onCancelErase();
            }
        }
    }

    /* renamed from: b */
    public final BaseEraseHandlerAction m41021b(int newHandler) {
        BaseEraseHandlerAction strokeEraserHandlerAction;
        if (newHandler == 0) {
            strokeEraserHandlerAction = new StrokeEraserHandlerAction(getEditorBundle(), getTouchReader());
        } else if (newHandler == 1) {
            strokeEraserHandlerAction = new OverlayEraserHandlerAction(getEditorBundle(), getTouchReader());
        } else {
            if (newHandler != 2) {
                return null;
            }
            strokeEraserHandlerAction = new SelectionEraserHandlerAction(getEditorBundle(), getTouchReader());
        }
        return strokeEraserHandlerAction;
    }

    /* renamed from: c */
    public final BaseEraseHandlerAction m41022c() {
        Object firstOrNull;
        Object firstOrNull2;
        Object firstOrNull3;
        int i = this.activeHandler;
        if (i == 0) {
            List<BaseShapeHandlerAction<?>> shapeHandlerActionList = getShapeHandlerActionList();
            ArrayList arrayList = new ArrayList();
            for (Object obj : shapeHandlerActionList) {
                if (obj instanceof StrokeEraserHandlerAction) {
                    arrayList.add(obj);
                }
            }
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
            return (BaseEraseHandlerAction) firstOrNull;
        }
        if (i == 1) {
            List<BaseShapeHandlerAction<?>> shapeHandlerActionList2 = getShapeHandlerActionList();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : shapeHandlerActionList2) {
                if (obj2 instanceof OverlayEraserHandlerAction) {
                    arrayList2.add(obj2);
                }
            }
            firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList2);
            return (BaseEraseHandlerAction) firstOrNull2;
        }
        if (i != 2) {
            return null;
        }
        List<BaseShapeHandlerAction<?>> shapeHandlerActionList3 = getShapeHandlerActionList();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : shapeHandlerActionList3) {
            if (obj3 instanceof SelectionEraserHandlerAction) {
                arrayList3.add(obj3);
            }
        }
        firstOrNull3 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList3);
        return (BaseEraseHandlerAction) firstOrNull3;
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void cancelAction() {
        super.cancelAction();
        m41020a();
    }

    /* renamed from: d */
    public final void m41023d(MotionEvent event) {
        int normalizeTouchAction = DeviceFactory.INSTANCE.getCurrentDevice().normalizeTouchAction(event);
        if (normalizeTouchAction == 0) {
            if (getTouchReader().isAcceptEvent(event)) {
                m41026g(MotionEventKt.toTouchPoint(event));
                return;
            }
            return;
        }
        if (normalizeTouchAction != 1) {
            if (normalizeTouchAction == 2) {
                if (EditorBundleKt.handlerManager(getEditorBundle()).filterByFingerGesture(new Function1<HandlerManager, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.shape.EraseHandler$handleEraseView$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull HandlerManager it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(it2.hasMultiplePoint());
                    }
                })) {
                    m41025f();
                    return;
                } else {
                    if (getTouchReader().isAcceptEvent(event)) {
                        EditorBundleKt.postEvent(getEditorBundle(), new UpdateEraseViewPositionEvent(MotionEventKt.toTouchPoint(event)));
                        return;
                    }
                    return;
                }
            }
            if (normalizeTouchAction != 3) {
                return;
            }
        }
        m41025f();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void destroy() {
        super.destroy();
        disposeActions();
    }

    /* renamed from: e */
    public final NoteDrawingArgs m41024e() {
        return EditorBundleKt.uiDrawingArgs(getEditorBundle());
    }

    /* renamed from: f */
    public final void m41025f() {
        EditorBundleKt.postEvent(getEditorBundle(), new HideEraseViewEvent());
    }

    /* renamed from: g */
    public final void m41026g(TouchPoint point) {
        NoteDrawingArgs noteDrawingArgs = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDrawingArgs();
        EditorBundleKt.postEvent(getEditorBundle(), new ShowEraseViewEvent(point, noteDrawingArgs.getEraserWidth() / 2, noteDrawingArgs.getCurrentEraseType()));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        int currentEraseType = m41024e().getCurrentEraseType();
        this.activeHandler = currentEraseType;
        BaseEraseHandlerAction m41021b = m41021b(currentEraseType);
        if (m41021b == null) {
            return;
        }
        addAndExecuteAction(m41021b);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeEraseTypeEvent(@NotNull ChangeEraseTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        onDeactivate();
        m41024e().setCurrentEraseType(event.getEraseType());
        onActivate();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderSilent(RenderManager.RENDER_KEY_ERASER);
        m41025f();
        super.onDeactivate();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDragAppendingPageEndEvent(@NotNull DragAppendingPageEndEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41020a();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean onTouchEvent(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        m41023d(event);
        return super.onTouchEvent(view, event);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void startErasing(@NotNull StartErasingArgs event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41026g(event.getTouchData().getTouchPoint().copy());
        BaseEraseHandlerAction m41022c = m41022c();
        if (m41022c != null) {
            m41022c.startErasing(event);
        }
    }
}
