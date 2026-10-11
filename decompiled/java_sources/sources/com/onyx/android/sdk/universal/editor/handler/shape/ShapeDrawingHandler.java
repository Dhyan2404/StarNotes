package com.onyx.android.sdk.universal.editor.handler.shape;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.note.common.data.shape.ShapeShaderManager;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.HWRContextLessHandleAction;
import com.onyx.android.sdk.universal.editor.action.handler.HWRGestureHandleAction;
import com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.RealtimeBeautifyHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.ShapeDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.events.app.ActivityPausedEvent;
import com.onyx.android.sdk.universal.editor.events.app.CheckRealtimeBeautifyModeEvent;
import com.onyx.android.sdk.universal.editor.events.app.NoGesturesEvent;
import com.onyx.android.sdk.universal.editor.events.app.RealtimeBeautifyModeUpdatedEvent;
import com.onyx.android.sdk.universal.editor.events.note.AppendShapeDownPointEvent;
import com.onyx.android.sdk.universal.editor.events.note.GraphConvertOptionUpdatedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\b\u0010\u001d\u001a\u00020\u0002H\u0002J\b\u0010\u001e\u001a\u00020\u0002H\u0002J\b\u0010\u001f\u001a\u00020\u0002H\u0002R\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010!¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeDrawingHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "", "onActivate", "onDeactivate", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;", NotificationCompat.CATEGORY_EVENT, "onStartDrawingShapeDownPointEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/GraphConvertOptionUpdatedEvent;", "onGraphConvertOptionUpdatedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/RealtimeBeautifyModeUpdatedEvent;", "onRealtimeBeautifyModeUpdatedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;", "onActivityPausedEvent", "cancelAction", "Lcom/onyx/android/sdk/universal/editor/events/app/NoGesturesEvent;", "onNoGesturesEvent", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "", "onSingleTapUp", "", Constants.ATTRNAME_MODE, C6999h.f39688c, "a", "b", C6997f.f39671c, "c", C6998g.f39679a, "d", "e", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;", "shaderManager", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeDrawingHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeDrawingHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ShapeDrawingHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,166:1\n800#2,11:167\n1855#2,2:178\n288#2,2:181\n1#3:180\n*S KotlinDebug\n*F\n+ 1 ShapeDrawingHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ShapeDrawingHandler\n*L\n65#1:167,11\n66#1:178,2\n119#1:181,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeDrawingHandler extends BaseShapeHandler {

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final ShapeShaderManager shaderManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeDrawingHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.shaderManager = new ShapeShaderManager();
        getTouchReader().setEnableEstimation(true);
        getTouchReader().setEditorBundle(editorBundle);
    }

    /* renamed from: a */
    public final void m41034a() {
        if (MMKVNote.INSTANCE.getGraphConvert().get()) {
            addAndExecuteAction(new HWRContextLessHandleAction(getEditorBundle(), getTouchReader()));
        }
    }

    /* renamed from: b */
    public final void m41035b() {
        if (EraserPropertyOption.INSTANCE.getScribbleEraseSwitchOption().get()) {
            addAndExecuteAction(new HWRGestureHandleAction(getEditorBundle(), getTouchReader()));
        }
    }

    /* renamed from: c */
    public final void m41036c() {
        PenArgs penArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle()).getPenArgs();
        Integer valueOf = penArgs != null ? Integer.valueOf(penArgs.getType()) : null;
        if (valueOf != null && valueOf.intValue() == 15) {
            return;
        }
        addAndExecuteAction(new RealtimeBeautifyHandlerAction(getEditorBundle(), getTouchReader()));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void cancelAction() {
        m41037d();
        m41038e();
    }

    /* renamed from: d */
    public final void m41037d() {
        for (BaseShapeHandlerAction<?> baseShapeHandlerAction : getShapeHandlerActionList()) {
            if (baseShapeHandlerAction instanceof ShapeDrawingHandlerAction) {
                ((ShapeDrawingHandlerAction) baseShapeHandlerAction).clearShapeRenderer();
            }
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void destroy() {
        super.destroy();
        this.shaderManager.clear();
    }

    /* renamed from: e */
    public final void m41038e() {
        for (BaseShapeHandlerAction<?> baseShapeHandlerAction : getShapeHandlerActionList()) {
            if (baseShapeHandlerAction instanceof ShapeDrawingHandlerAction) {
                ((ShapeDrawingHandlerAction) baseShapeHandlerAction).clearPendingShapes();
            }
        }
    }

    /* renamed from: f */
    public final void m41039f() {
        BaseShapeHandlerAction<?> baseShapeHandlerAction;
        List<BaseShapeHandlerAction<?>> shapeHandlerActionList = getShapeHandlerActionList();
        ListIterator<BaseShapeHandlerAction<?>> listIterator = shapeHandlerActionList.listIterator(shapeHandlerActionList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                baseShapeHandlerAction = null;
                break;
            } else {
                baseShapeHandlerAction = listIterator.previous();
                if (baseShapeHandlerAction instanceof HWRContextLessHandleAction) {
                    break;
                }
            }
        }
        BaseShapeHandlerAction<?> baseShapeHandlerAction2 = baseShapeHandlerAction;
        if (baseShapeHandlerAction2 != null) {
            getShapeHandlerActionList().remove(baseShapeHandlerAction2);
            baseShapeHandlerAction2.dispose();
        }
    }

    /* renamed from: g */
    public final void m41040g() {
        Object obj;
        Iterator<T> it2 = getShapeHandlerActionList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (((BaseShapeHandlerAction) obj) instanceof RealtimeBeautifyHandlerAction) {
                    break;
                }
            }
        }
        BaseShapeHandlerAction baseShapeHandlerAction = (BaseShapeHandlerAction) obj;
        if (baseShapeHandlerAction != null) {
            getShapeHandlerActionList().remove(baseShapeHandlerAction);
            baseShapeHandlerAction.dispose();
        }
    }

    /* renamed from: h */
    public final void m41041h(int mode) {
        List<BaseShapeHandlerAction<?>> shapeHandlerActionList = getShapeHandlerActionList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeHandlerActionList) {
            if (obj instanceof ShapeDrawingHandlerAction) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((ShapeDrawingHandlerAction) it2.next()).setShapeDrawingModel(mode);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        addAndExecuteAction(new ShapeDrawingHandlerAction(getEditorBundle(), getTouchReader(), this.shaderManager));
        m41034a();
        m41035b();
        addAndExecuteAction(new PressureDetectHandlerAction(getEditorBundle(), getTouchReader(), PressureDetectHandlerAction.Args.INSTANCE.shapeDrawingArgs()));
        EditorBundleKt.postEvent(getEditorBundle(), new CheckRealtimeBeautifyModeEvent());
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivityPausedEvent(@NotNull ActivityPausedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        super.onActivityPausedEvent(event);
        m41037d();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        m41037d();
        super.onDeactivate();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGraphConvertOptionUpdatedEvent(@NotNull GraphConvertOptionUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41039f();
        m41034a();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onNoGesturesEvent(@NotNull NoGesturesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        for (BaseShapeHandlerAction<?> baseShapeHandlerAction : getShapeHandlerActionList()) {
            if (baseShapeHandlerAction instanceof ShapeDrawingHandlerAction) {
                ((ShapeDrawingHandlerAction) baseShapeHandlerAction).flushPendingShapes();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRealtimeBeautifyModeUpdatedEvent(@NotNull RealtimeBeautifyModeUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41040g();
        if (event.getEnabled()) {
            m41036c();
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        if (EditorBundleKt.handlerManager(getEditorBundle()).isSupportFingerTouchEdit()) {
            m41038e();
        }
        return super.onSingleTapUp(touchPoint);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartDrawingShapeDownPointEvent(@NotNull AppendShapeDownPointEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41041h(1);
        getTouchReader().onTouchData(event.getTouchData());
    }
}
