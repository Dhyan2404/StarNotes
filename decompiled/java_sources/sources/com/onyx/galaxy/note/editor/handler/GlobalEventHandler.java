package com.onyx.galaxy.note.editor.handler;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandler;
import com.onyx.android.sdk.universal.editor.events.app.EnableFreeMovePaperEvent;
import com.onyx.android.sdk.universal.editor.events.app.ReloadBoxManagerWithSettingsEvent;
import com.onyx.android.sdk.universal.editor.events.app.ShowImportSuccessEvent;
import com.onyx.android.sdk.universal.editor.events.note.ActivateShapeHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraseTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraserWidthEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeShapeTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeAlphaFactorEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeColorEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokePressureSensitivityEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeSmoothLevelEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityAmplifierEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityIgnoreThresholdEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityLowerBoundEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocitySensitivityEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityUpperBoundEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeWidthEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeSubShapeTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeTouchModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.DeleteTagShapesEvent;
import com.onyx.android.sdk.universal.editor.events.note.GraphConvertOptionUpdatedEvent;
import com.onyx.android.sdk.universal.editor.events.note.RedrawNoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowTapeShapeOverlayEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartDrawingShapeEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartEraseHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartLaserShapeDrawingEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartSelectionHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTextInputHandlerEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartUniversalShapeDrawingEvent;
import com.onyx.android.sdk.universal.editor.events.note.SwitchExcerptTypeEvent;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.editor.event.ChangeScrollerConfigEvent;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010L\u001a\u00020I¢\u0006\u0004\bM\u0010NJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0017H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0019H\u0007J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u001bH\u0007J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020%H\u0007J\u0010\u0010(\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020'H\u0007J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020/H\u0007J\u0010\u00102\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000201H\u0007J\u0010\u00104\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020AH\u0007J\u0010\u0010D\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020CH\u0007J\u0010\u0010F\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020GH\u0007R\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010K¨\u0006O"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "", NotificationCompat.CATEGORY_EVENT, "", "a", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/note/GraphConvertOptionUpdatedEvent;", "onGraphConvertOptionUpdatedEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;", "onShowImportSuccessDialog", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeWidthEvent;", "onChangeStrokeWidthEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;", "onChangeStrokeColorEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokePressureSensitivityEvent;", "onChangeStrokePressureSensitivityEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocitySensitivityEvent;", "onChangeStrokeVelocitySensitivityEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityAmplifierEvent;", "onChangeStrokeVelocityAmplifierEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityIgnoreThresholdEvent;", "onChangeStrokeVelocityIgnoreThresholdEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;", "onChangeStrokeVelocityLowerBound", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityUpperBoundEvent;", "onChangeStrokeVelocityUpperBound", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeAlphaFactorEvent;", "onChangeStrokeAlphaFactorEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeSmoothLevelEvent;", "onChangeStrokeSmoothLevelEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;", "onChangeShapeTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;", "onChangeSubShapeTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;", "onSwitchExcerptTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraserWidthEvent;", "onChangeEraserWidthEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;", "onChangeEraseTypeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;", "onChangePenArgsEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartDrawingShapeEvent;", "onStartDrawingShapeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartUniversalShapeDrawingEvent;", "onStartUniversalShapeDrawingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartLaserShapeDrawingEvent;", "onStartLaserShapeDrawingEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartEraseHandlerEvent;", "onStartEraseHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartSelectionHandlerEvent;", "onStartSelectionHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;", "onStartTextInputHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptHandlerEvent;", "onStartExcerptHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;", "onActivateShapeHandlerEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EnableFreeMovePaperEvent;", "onEnableFreeMovePaperEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;", "onReloadBoxManagerWithSettingsEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/RedrawNoteEvent;", "onRedrawNoteEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteTagShapesEvent;", "onDeleteTagShapesEvent", "Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;", "onChangeScrollerConfigEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;", "onChangeTouchModeEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowTapeShapeOverlayEvent;", "onShowTapeShapeOverlayEvent", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "e", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "editorBundleManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GlobalEventHandler implements EventHandler {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager editorBundleManager;

    public GlobalEventHandler(@NotNull EditorBundleManager editorBundleManager) {
        Intrinsics.checkNotNullParameter(editorBundleManager, "editorBundleManager");
        this.editorBundleManager = editorBundleManager;
        DocCollectionBundle.INSTANCE.ensureRegister(this);
    }

    /* renamed from: a */
    public final void m46063a(Object event) {
        this.editorBundleManager.postEvent(event);
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void init() {
        EventHandler.DefaultImpls.init(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivateShapeHandlerEvent(@NotNull ActivateShapeHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeEraseTypeEvent(@NotNull ChangeEraseTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeEraserWidthEvent(@NotNull ChangeEraserWidthEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangePenArgsEvent(@NotNull ChangePenArgsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeScrollerConfigEvent(@NotNull ChangeScrollerConfigEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeShapeTypeEvent(@NotNull ChangeShapeTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeAlphaFactorEvent(@NotNull ChangeStrokeAlphaFactorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeColorEvent(@NotNull ChangeStrokeColorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokePressureSensitivityEvent(@NotNull ChangeStrokePressureSensitivityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeSmoothLevelEvent(@NotNull ChangeStrokeSmoothLevelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocityAmplifierEvent(@NotNull ChangeStrokeVelocityAmplifierEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocityIgnoreThresholdEvent(@NotNull ChangeStrokeVelocityIgnoreThresholdEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocityLowerBound(@NotNull ChangeStrokeVelocityLowerBoundEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocitySensitivityEvent(@NotNull ChangeStrokeVelocitySensitivityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeVelocityUpperBound(@NotNull ChangeStrokeVelocityUpperBoundEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeStrokeWidthEvent(@NotNull ChangeStrokeWidthEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeSubShapeTypeEvent(@NotNull ChangeSubShapeTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangeTouchModeEvent(@NotNull ChangeTouchModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteTagShapesEvent(@NotNull DeleteTagShapesEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEnableFreeMovePaperEvent(@NotNull EnableFreeMovePaperEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGraphConvertOptionUpdatedEvent(@NotNull GraphConvertOptionUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRedrawNoteEvent(@NotNull RedrawNoteEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReloadBoxManagerWithSettingsEvent(@NotNull ReloadBoxManagerWithSettingsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowImportSuccessDialog(@NotNull ShowImportSuccessEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowTapeShapeOverlayEvent(@NotNull ShowTapeShapeOverlayEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartDrawingShapeEvent(@NotNull StartDrawingShapeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartEraseHandlerEvent(@NotNull StartEraseHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartExcerptHandlerEvent(@NotNull StartExcerptHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartLaserShapeDrawingEvent(@NotNull StartLaserShapeDrawingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartSelectionHandlerEvent(@NotNull StartSelectionHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartTextInputHandlerEvent(@NotNull StartTextInputHandlerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartUniversalShapeDrawingEvent(@NotNull StartUniversalShapeDrawingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSwitchExcerptTypeEvent(@NotNull SwitchExcerptTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46063a(event);
    }
}
