package com.onyx.galaxy.note.editor.handler;

import android.view.View;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.ActivityUpOrCancelEvent;
import com.onyx.android.sdk.universal.editor.events.note.EndEraseEvent;
import com.onyx.android.sdk.universal.editor.events.note.FunctionSwitchLastToolEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideEraseViewEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowEraseViewEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateEraseViewPositionEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.PenContext;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.handler.EraseEventHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\b\u0010\u0013\u001a\u00020\u0012H\u0014J\b\u0010\u0015\u001a\u00020\u0014H\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "", "destroy", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;", NotificationCompat.CATEGORY_EVENT, "onShowEraseViewEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;", "onUpdateEraseViewPositionEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/HideEraseViewEvent;", "onHideEraseViewEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityUpOrCancelEvent;", "onActivityUpOrCancelEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;", "onEraseEndEvent", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "switchLastTool", "Landroid/view/View;", "getEraseView", "", "getEraseViewOffset", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "eraseAutoCancelOption", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class EraseEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption eraseAutoCancelOption;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EraseEventHandler(@NotNull EditorBundle editorBundle, @NotNull NoteScribbleFragment scribbleFragment) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
        this.eraseAutoCancelOption = EraserPropertyOption.INSTANCE.getEraserAutoCancelSwitchOption();
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: b */
    public static final void m46062b(EraseEventHandler this$0, View eraseView, UpdateEraseViewPositionEvent event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(eraseView, "$eraseView");
        Intrinsics.checkNotNullParameter(event, "$event");
        int[] location = this$0.getLocation();
        float width = eraseView.getWidth() / 2.0f;
        eraseView.setX((event.getTouchPoint().getX() - width) + location[0]);
        eraseView.setY((event.getTouchPoint().getY() - width) + location[1]);
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        super.destroy();
        GlobalBundle.INSTANCE.unregister(this);
    }

    @NotNull
    public View getEraseView() {
        return this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.getEraseCircle();
    }

    @NotNull
    /* renamed from: getEraseViewOffset */
    public int[] getLocation() {
        return this.scribbleFragment.getEditorViewOffsetLocation();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivityUpOrCancelEvent(@NotNull ActivityUpOrCancelEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        View eraseView = getEraseView();
        if (ViewKt.isVisible(eraseView)) {
            ViewKt.setViewVisibleOrInvisible(eraseView, false);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEraseEndEvent(@NotNull EndEraseEvent event) {
        ShapeToolType value;
        ShapeToolType shapeToolType;
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.eraseAutoCancelOption.get() && !PencilBoxManager.INSTANCE.hasSelectedPen() && (value = this.scribbleFragment.getPenViewModel$note_overseasRelease().getPenType().getValue()) != null && value == (shapeToolType = ShapeToolType.ERASER)) {
            PenContext lastPenType = this.scribbleFragment.getPenViewModel$note_overseasRelease().getLastPenType();
            if (lastPenType.isInvalid() || lastPenType.getLastShapeTool() == shapeToolType) {
                return;
            }
            switchLastTool(getEditorBundle());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideEraseViewEvent(@NotNull HideEraseViewEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ViewKt.setViewVisibleOrInvisible(getEraseView(), false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowEraseViewEvent(@NotNull ShowEraseViewEvent event) {
        int eraseRadius;
        Intrinsics.checkNotNullParameter(event, "event");
        View eraseView = getEraseView();
        int[] location = getLocation();
        if (event.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_ERASE_TYPE java.lang.String() == 2) {
            eraseView.setBackgroundResource(C10651R.drawable.erase_stroke_bg);
            eraseRadius = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
        } else {
            eraseView.setBackgroundResource(C10651R.drawable.erase_circle_bg);
            eraseRadius = (int) (event.getEraseRadius() * 2);
        }
        float f = eraseRadius / 2.0f;
        if (eraseView.getWidth() != eraseRadius) {
            ViewKt.setLayoutWidth(eraseView, eraseRadius);
            ViewKt.setLayoutHeight(eraseView, Integer.valueOf(eraseRadius));
        }
        eraseView.setX((event.getTouchPoint().getX() - f) + location[0]);
        eraseView.setY((event.getTouchPoint().getY() - f) + location[1]);
        ViewKt.setViewVisibleOrInvisible(eraseView, true);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onUpdateEraseViewPositionEvent(@NotNull final UpdateEraseViewPositionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        final View eraseView = getEraseView();
        eraseView.post(new Runnable() { // from class: com.sunia.HTREnginev2.brf
            @Override // java.lang.Runnable
            public final void run() {
                EraseEventHandler.m46062b(EraseEventHandler.this, eraseView, event);
            }
        });
    }

    public void switchLastTool(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        EditorBundleKt.postEvent(editorBundle, new FunctionSwitchLastToolEvent());
    }
}
