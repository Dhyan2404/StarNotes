package com.onyx.android.sdk.universal.editor.handler.shape;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.command.RedoAction;
import com.onyx.android.sdk.universal.editor.action.command.UndoAction;
import com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.events.app.ActivityPausedEvent;
import com.onyx.android.sdk.universal.editor.events.app.ActivityStopEvent;
import com.onyx.android.sdk.universal.editor.events.app.NoGesturesEvent;
import com.onyx.android.sdk.universal.editor.events.note.RedoEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartAnnotationSelectionArgs;
import com.onyx.android.sdk.universal.editor.events.note.StartErasingArgs;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import com.onyx.android.sdk.universal.editor.events.note.StartTextSelectionArgs;
import com.onyx.android.sdk.universal.editor.events.note.UndoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010;\u001a\u000206¢\u0006\u0004\bH\u0010IJ\u0012\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0018\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0017H\u0014J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u001eH\u0017J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020 H\u0017J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\"H\u0017J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020$H\u0017J\u0010\u0010'\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020&H\u0017J\u0012\u0010*\u001a\u00020\u00042\b\u0010)\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010)\u001a\u00020+H\u0016J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010)\u001a\u00020-H\u0016J\u0010\u00100\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020/H\u0016J\u0010\u00103\u001a\u00020\u00042\u0006\u00102\u001a\u000201H\u0016J\b\u00104\u001a\u00020\u0004H\u0016J\u0012\u00105\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016R\u0017\u0010;\u001a\u0002068\u0006¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R!\u0010A\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020<8\u0006¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u001a\u0010G\u001a\u00020B8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F¨\u0006J"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "action", "", "addAndExecuteAction", "disposeActions", "onActivate", "onDeactivate", "destroy", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onTouchDown", "onTouchMove", "onTouchUp", "onTouchData", "performTouchDown", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "onSingleTapUp", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "point", "normalizeTouchPoint", "Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;", "onUndoEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;", "onRedoEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/NoGesturesEvent;", "onNoGesturesEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;", "onActivityPausedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityStopEvent;", "onActivityStopEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;", "args", "startTextSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;", "startAnnotationSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;", "startExcerptEdit", "Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;", "startErasing", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "updateTouchMode", "cancelAction", "isProcessing", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "b", "Ljava/util/List;", "getShapeHandlerActionList", "()Ljava/util/List;", "shapeHandlerActionList", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "c", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "getTouchReader", "()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseShapeHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseShapeHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,150:1\n1855#2,2:151\n1855#2,2:153\n*S KotlinDebug\n*F\n+ 1 BaseShapeHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler\n*L\n49#1:151,2\n88#1:153,2\n*E\n"})
/* loaded from: classes8.dex */
public class BaseShapeHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<BaseShapeHandlerAction<?>> shapeHandlerActionList;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final ScribbleTouchReader touchReader;

    public BaseShapeHandler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.shapeHandlerActionList = new ArrayList();
        this.touchReader = new ScribbleTouchReader(false, 1, null);
    }

    public final void addAndExecuteAction(@NotNull BaseShapeHandlerAction<?> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        this.shapeHandlerActionList.add(action);
        RxBaseAction.execute$default(action, null, null, null, 7, null);
    }

    public void cancelAction() {
    }

    public void destroy() {
        disposeActions();
        Debug.INSTANCE.m32035d(getClass(), "destroy", new Object[0]);
    }

    public final void disposeActions() {
        Iterator<T> it2 = this.shapeHandlerActionList.iterator();
        while (it2.hasNext()) {
            ((BaseShapeHandlerAction) it2.next()).dispose();
        }
        this.shapeHandlerActionList.clear();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final List<BaseShapeHandlerAction<?>> getShapeHandlerActionList() {
        return this.shapeHandlerActionList;
    }

    @NotNull
    public final ScribbleTouchReader getTouchReader() {
        return this.touchReader;
    }

    public boolean isProcessing(@Nullable MotionEvent event) {
        return false;
    }

    @NotNull
    public TouchPoint normalizeTouchPoint(@NotNull BoxInfo virtualBoxInfo, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(point, "point");
        point.applyMatrix(BoxInfoUtils.INSTANCE.noteNormalizeMatrix(virtualBoxInfo));
        return point;
    }

    public void onActivate() {
        disposeActions();
        EditorBundleKt.register(this.editorBundle, this);
        Debug.INSTANCE.m32035d(getClass(), "onActivate", new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onActivityPausedEvent(@NotNull ActivityPausedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onActivityStopEvent(@NotNull ActivityStopEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    public void onDeactivate() {
        disposeActions();
        EditorBundleKt.unregister(this.editorBundle, this);
        Debug.INSTANCE.m32035d(getClass(), "onDeactivate", new Object[0]);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onNoGesturesEvent(@NotNull NoGesturesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onRedoEvent(@NotNull RedoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundle.getUiBundle().getActionManager().execute(new RedoAction(this.editorBundle));
    }

    public boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return false;
    }

    public void onTouchData(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        int action = touchData.getAction();
        if (action == 0) {
            onTouchDown(touchData);
        } else if (action == 1) {
            onTouchUp(touchData);
        } else {
            if (action != 2) {
                return;
            }
            onTouchMove(touchData);
        }
    }

    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    public boolean onTouchEvent(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        return this.touchReader.onTouchEvent(view, event);
    }

    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    public void onTouchUp(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUndoEvent(@NotNull UndoEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.editorBundle.getUiBundle().getActionManager().execute(new UndoAction(this.editorBundle));
    }

    public void performTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Iterator<T> it2 = this.shapeHandlerActionList.iterator();
        while (it2.hasNext()) {
            ((BaseShapeHandlerAction) it2.next()).performTouchDown(touchData);
        }
    }

    public void startAnnotationSelection(@NotNull StartAnnotationSelectionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
    }

    public void startErasing(@NotNull StartErasingArgs event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    public void startExcerptEdit(@NotNull StartExcerptEditArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
    }

    public void startTextSelection(@Nullable StartTextSelectionArgs args) {
    }

    public void updateTouchMode(@NotNull EditorTouchMode touchMode) {
        Intrinsics.checkNotNullParameter(touchMode, "touchMode");
        this.touchReader.updateTouchMode(touchMode);
    }
}
