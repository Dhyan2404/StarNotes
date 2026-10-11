package com.onyx.android.sdk.universal.editor;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserModel;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.scheduler.ActionManager;
import com.onyx.android.sdk.base.scheduler.SchedulerManager;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.universal.editor.UIBundle;
import com.onyx.android.sdk.universal.editor.api.ApiSubscribeManager;
import com.onyx.android.sdk.universal.editor.config.DocumentState;
import com.onyx.android.sdk.universal.editor.data.CommandDataInfo;
import com.onyx.android.sdk.universal.editor.data.NoteInfo;
import com.onyx.android.sdk.universal.editor.data.UIStateInfo;
import com.onyx.android.sdk.universal.editor.display.EditorView;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeatureManager;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.onyx.android.sdk.universal.editor.helper.ActivityHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fJ\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u0004R\"\u0010\u0015\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\"\u0010\u001f\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00107\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010?\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010G\u001a\u00020@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\"\u0010O\u001a\u00020H8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\"\u0010W\u001a\u00020P8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\"\u0010_\u001a\u00020X8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\"\u0010g\u001a\u00020`8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\"\u0010o\u001a\u00020h8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bi\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\"\u0010w\u001a\u00020p8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bq\u0010r\u001a\u0004\bs\u0010t\"\u0004\bu\u0010vR\"\u0010\u007f\u001a\u00020x8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\by\u0010z\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~¨\u0006\u0082\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/UIBundle;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "init", "destroy", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "attachActivity", "Landroid/view/View;", "view", "Landroid/view/View$OnTouchListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "updateContentView", "onDocumentClosed", "resetUIStateInfo", "checkUIState", "", "a", Constants.HASIDCALL_INDEX_SIG, "isDestroyed", Constants.BOOLEAN_VALUE_SIG, "setDestroyed", "(Z)V", "b", "isOwner", "setOwner", "c", "getEnableUpdateScaleOnRotation", "setEnableUpdateScaleOnRotation", "enableUpdateScaleOnRotation", "Lorg/greenrobot/eventbus/EventBus;", "d", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "eventBus", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;", "e", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;", "getEventHandlerManager", "()Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;", "setEventHandlerManager", "(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandlerManager;)V", "eventHandlerManager", "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;", "getHandlerManager", "()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;", "setHandlerManager", "(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V", "handlerManager", "Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;", "getActivityHelper", "()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;", "setActivityHelper", "(Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;)V", "activityHelper", "Lcom/onyx/android/sdk/universal/editor/api/ApiSubscribeManager;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/api/ApiSubscribeManager;", "getApiManager", "()Lcom/onyx/android/sdk/universal/editor/api/ApiSubscribeManager;", "setApiManager", "(Lcom/onyx/android/sdk/universal/editor/api/ApiSubscribeManager;)V", "apiManager", "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeatureManager;", "i", "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeatureManager;", "getUiFeatureManager", "()Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeatureManager;", "setUiFeatureManager", "(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeatureManager;)V", "uiFeatureManager", "Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;", "j", "Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;", "getSchedulerManager", "()Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;", "setSchedulerManager", "(Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;)V", "schedulerManager", "Lcom/onyx/android/sdk/base/scheduler/ActionManager;", C4921e.f26537n, "Lcom/onyx/android/sdk/base/scheduler/ActionManager;", "getActionManager", "()Lcom/onyx/android/sdk/base/scheduler/ActionManager;", "setActionManager", "(Lcom/onyx/android/sdk/base/scheduler/ActionManager;)V", "actionManager", "Lcom/onyx/android/sdk/universal/editor/config/DocumentState;", "l", "Lcom/onyx/android/sdk/universal/editor/config/DocumentState;", "getDocumentState", "()Lcom/onyx/android/sdk/universal/editor/config/DocumentState;", "setDocumentState", "(Lcom/onyx/android/sdk/universal/editor/config/DocumentState;)V", "documentState", "Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;", "m", "Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;", "getUiStateInfo", "()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;", "setUiStateInfo", "(Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;)V", "uiStateInfo", "Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;", "getCommandDataInfo", "()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;", "setCommandDataInfo", "(Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;)V", "commandDataInfo", "Lcom/onyx/android/sdk/universal/editor/data/NoteInfo;", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/data/NoteInfo;", "getNoteInfo", "()Lcom/onyx/android/sdk/universal/editor/data/NoteInfo;", "setNoteInfo", "(Lcom/onyx/android/sdk/universal/editor/data/NoteInfo;)V", "noteInfo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UIBundle {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isDestroyed;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isOwner = true;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean enableUpdateScaleOnRotation = true;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public EventBus eventBus = new EventBus();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public EventHandlerManager eventHandlerManager = new EventHandlerManager();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public HandlerManager handlerManager = new HandlerManager();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public ActivityHelper activityHelper = new ActivityHelper();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ApiSubscribeManager apiManager = new ApiSubscribeManager();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public UIFeatureManager uiFeatureManager = new UIFeatureManager();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public SchedulerManager schedulerManager = new SchedulerManager();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public ActionManager actionManager = new ActionManager();

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public DocumentState documentState = DocumentState.PENDING;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public UIStateInfo uiStateInfo = new UIStateInfo();

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public CommandDataInfo commandDataInfo = new CommandDataInfo();

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public NoteInfo noteInfo = new NoteInfo();

    /* renamed from: b */
    public static final boolean m36708b(UIBundle this$0, View.OnTouchListener onTouchListener, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.handlerManager.isDummyProvider()) {
            return false;
        }
        UIStateInfo uIStateInfo = this$0.uiStateInfo;
        Intrinsics.checkNotNull(motionEvent);
        if (!uIStateInfo.isEnabledTouchEvent(motionEvent)) {
            return this$0.uiStateInfo.isConsumeTouchEventWhenDisableTouchEvent();
        }
        if (onTouchListener != null) {
            onTouchListener.onTouch(view, motionEvent);
        }
        HandlerManager handlerManager = this$0.handlerManager;
        Intrinsics.checkNotNull(view);
        return handlerManager.onTouchEvent(view, motionEvent);
    }

    public static /* synthetic */ void updateContentView$default(UIBundle uIBundle, View view, View.OnTouchListener onTouchListener, int i, Object obj) {
        if ((i & 2) != 0) {
            onTouchListener = null;
        }
        uIBundle.updateContentView(view, onTouchListener);
    }

    public final void attachActivity(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activityHelper.attachActivity(activity);
    }

    public final void checkUIState() {
        String stackTraceToString;
        if (this.uiStateInfo.isEnabledTouchEventByUIState()) {
            return;
        }
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(new Throwable(JSONUtils.INSTANCE.toJson(this.uiStateInfo)));
        LogUtils.file(stackTraceToString);
    }

    public final void destroy() {
        this.isDestroyed = true;
        this.actionManager.unsubscribe();
        this.eventHandlerManager.destroy();
        this.handlerManager.destroy();
        this.activityHelper.detachActivity();
        this.apiManager.destroy();
        this.commandDataInfo.destroy();
        this.noteInfo.destroy();
    }

    @NotNull
    public final ActionManager getActionManager() {
        return this.actionManager;
    }

    @NotNull
    public final ActivityHelper getActivityHelper() {
        return this.activityHelper;
    }

    @NotNull
    public final ApiSubscribeManager getApiManager() {
        return this.apiManager;
    }

    @NotNull
    public final CommandDataInfo getCommandDataInfo() {
        return this.commandDataInfo;
    }

    @NotNull
    public final DocumentState getDocumentState() {
        return this.documentState;
    }

    public final boolean getEnableUpdateScaleOnRotation() {
        return this.enableUpdateScaleOnRotation;
    }

    @NotNull
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @NotNull
    public final EventHandlerManager getEventHandlerManager() {
        return this.eventHandlerManager;
    }

    @NotNull
    public final HandlerManager getHandlerManager() {
        return this.handlerManager;
    }

    @NotNull
    public final NoteInfo getNoteInfo() {
        return this.noteInfo;
    }

    @NotNull
    public final SchedulerManager getSchedulerManager() {
        return this.schedulerManager;
    }

    @NotNull
    public final UIFeatureManager getUiFeatureManager() {
        return this.uiFeatureManager;
    }

    @NotNull
    public final UIStateInfo getUiStateInfo() {
        return this.uiStateInfo;
    }

    public final void init(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.eventHandlerManager.init(editorBundle);
        this.handlerManager.init(editorBundle);
        this.apiManager.init(editorBundle);
        this.actionManager.subscribe();
    }

    /* renamed from: isDestroyed, reason: from getter */
    public final boolean getIsDestroyed() {
        return this.isDestroyed;
    }

    /* renamed from: isOwner, reason: from getter */
    public final boolean getIsOwner() {
        return this.isOwner;
    }

    public final void onDocumentClosed() {
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "onDocumentClosed", new Object[0]);
        resetUIStateInfo();
        this.commandDataInfo = new CommandDataInfo();
    }

    public final void resetUIStateInfo() {
        checkUIState();
        this.uiStateInfo = new UIStateInfo();
    }

    public final void setActionManager(@NotNull ActionManager actionManager) {
        Intrinsics.checkNotNullParameter(actionManager, "<set-?>");
        this.actionManager = actionManager;
    }

    public final void setActivityHelper(@NotNull ActivityHelper activityHelper) {
        Intrinsics.checkNotNullParameter(activityHelper, "<set-?>");
        this.activityHelper = activityHelper;
    }

    public final void setApiManager(@NotNull ApiSubscribeManager apiSubscribeManager) {
        Intrinsics.checkNotNullParameter(apiSubscribeManager, "<set-?>");
        this.apiManager = apiSubscribeManager;
    }

    public final void setCommandDataInfo(@NotNull CommandDataInfo commandDataInfo) {
        Intrinsics.checkNotNullParameter(commandDataInfo, "<set-?>");
        this.commandDataInfo = commandDataInfo;
    }

    public final void setDestroyed(boolean z) {
        this.isDestroyed = z;
    }

    public final void setDocumentState(@NotNull DocumentState documentState) {
        Intrinsics.checkNotNullParameter(documentState, "<set-?>");
        this.documentState = documentState;
    }

    public final void setEnableUpdateScaleOnRotation(boolean z) {
        this.enableUpdateScaleOnRotation = z;
    }

    public final void setEventBus(@NotNull EventBus eventBus) {
        Intrinsics.checkNotNullParameter(eventBus, "<set-?>");
        this.eventBus = eventBus;
    }

    public final void setEventHandlerManager(@NotNull EventHandlerManager eventHandlerManager) {
        Intrinsics.checkNotNullParameter(eventHandlerManager, "<set-?>");
        this.eventHandlerManager = eventHandlerManager;
    }

    public final void setHandlerManager(@NotNull HandlerManager handlerManager) {
        Intrinsics.checkNotNullParameter(handlerManager, "<set-?>");
        this.handlerManager = handlerManager;
    }

    public final void setNoteInfo(@NotNull NoteInfo noteInfo) {
        Intrinsics.checkNotNullParameter(noteInfo, "<set-?>");
        this.noteInfo = noteInfo;
    }

    public final void setOwner(boolean z) {
        this.isOwner = z;
    }

    public final void setSchedulerManager(@NotNull SchedulerManager schedulerManager) {
        Intrinsics.checkNotNullParameter(schedulerManager, "<set-?>");
        this.schedulerManager = schedulerManager;
    }

    public final void setUiFeatureManager(@NotNull UIFeatureManager uIFeatureManager) {
        Intrinsics.checkNotNullParameter(uIFeatureManager, "<set-?>");
        this.uiFeatureManager = uIFeatureManager;
    }

    public final void setUiStateInfo(@NotNull UIStateInfo uIStateInfo) {
        Intrinsics.checkNotNullParameter(uIStateInfo, "<set-?>");
        this.uiStateInfo = uIStateInfo;
    }

    public final void updateContentView(@NotNull View view, @Nullable final View.OnTouchListener listener) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.handlerManager.subscribeTouchEvent();
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.jpn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean m36708b;
                m36708b = UIBundle.m36708b(UIBundle.this, listener, view2, motionEvent);
                return m36708b;
            }
        });
        if (view instanceof EditorView) {
            ((EditorView) view).setDispatchTouchCallback(new Function1<MotionEvent, Unit>() { // from class: com.onyx.android.sdk.universal.editor.UIBundle$updateContentView$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                    invoke2(motionEvent);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable MotionEvent motionEvent) {
                    if (motionEvent != null) {
                        UIBundle.this.getHandlerManager().dispatchTouchEvent(motionEvent);
                    }
                }
            });
        }
    }
}
