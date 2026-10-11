package com.onyx.galaxy.note.editor.handler;

import android.app.Activity;
import android.graphics.Rect;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.common.events.DeleteAllPenBoxEvent;
import com.onyx.android.sdk.universal.common.events.HidePenBoxEvent;
import com.onyx.android.sdk.universal.common.events.ReactivePenBoxEvent;
import com.onyx.android.sdk.universal.common.events.ResetPenBoxPositionEvent;
import com.onyx.android.sdk.universal.common.events.ShowPenBoxEvent;
import com.onyx.android.sdk.universal.common.events.StylusClickPenBoxEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandler;
import com.onyx.android.sdk.universal.editor.events.app.EditorContainerLayoutChangedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.android.sdk.universal.editor.view.EditorViewHandler;
import com.onyx.galaxy.note.editor.event.ShowPlayerViewEvent;
import com.onyx.galaxy.note.editor.event.VisiblePenBoxByFullScreenEvent;
import com.onyx.galaxy.note.editor.event.VisiblePenBoxEvent;
import com.onyx.galaxy.note.editor.handler.PenBoxEventHandler;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.view.popup.PenBoxPopup;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010!\u001a\u00020\u001f¢\u0006\u0004\b&\u0010'J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0017H\u0007J\u0012\u0010\u001b\u001a\u00020\u00022\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002J\b\u0010\u001c\u001a\u00020\u0002H\u0002J\b\u0010\u001e\u001a\u00020\u001dH\u0002R\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "", "destroy", "Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;", NotificationCompat.CATEGORY_EVENT, "onShowPenBoxEvent", "Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;", "onStylusClickPenBoxEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorContainerLayoutChangedEvent;", "onEditorContainerLayoutChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;", "onResetPenBoxPositionEvent", "Lcom/onyx/galaxy/note/editor/event/ShowPlayerViewEvent;", "onShowPlayerViewEvent", "Lcom/onyx/android/sdk/universal/common/events/ReactivePenBoxEvent;", "onReactivePenBoxEvent", "Lcom/onyx/android/sdk/universal/common/events/DeleteAllPenBoxEvent;", "onDeleteAllPenBoxEvent", "Lcom/onyx/android/sdk/universal/common/events/HidePenBoxEvent;", "onHidePenBoxEvent", "Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxEvent;", "onVisiblePenBoxEvent", "Lcom/onyx/galaxy/note/editor/event/VisiblePenBoxByFullScreenEvent;", "onVisiblePenBoxByFullScreenEvent", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "i", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "d", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;", "penBoxPopup", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPenBoxEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenBoxEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/PenBoxEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1855#2,2:177\n1855#2,2:179\n*S KotlinDebug\n*F\n+ 1 PenBoxEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/PenBoxEventHandler\n*L\n41#1:177,2\n49#1:179,2\n*E\n"})
/* loaded from: classes9.dex */
public final class PenBoxEventHandler implements EventHandler {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public PenBoxPopup penBoxPopup;

    public PenBoxEventHandler(@NotNull NoteScribbleFragment scribbleFragment) {
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
        GlobalBundle.INSTANCE.register(this);
        Iterator<T> it2 = scribbleFragment.getEditorBundleManager().getEditorViewHandlers().iterator();
        while (it2.hasNext()) {
            EditorBundleKt.register(((EditorViewHandler) it2.next()).getEditorBundle(), this);
        }
    }

    /* renamed from: f */
    public static final void m46234f(PenBoxEventHandler this$0, PenBoxPopup it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "$it");
        this$0.onResetPenBoxPositionEvent(new ResetPenBoxPositionEvent());
        it2.setState(1);
    }

    /* renamed from: g */
    public static final void m46235g(PenBoxEventHandler this$0, ShowPenBoxEvent event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        PenBoxPopup penBoxPopup = this$0.penBoxPopup;
        boolean z = false;
        if (penBoxPopup != null && penBoxPopup.isShowing()) {
            z = true;
        }
        if (z) {
            PenBoxPopup penBoxPopup2 = this$0.penBoxPopup;
            if (penBoxPopup2 != null) {
                penBoxPopup2.applyPenArgs(event.getPenArgs());
            }
        } else {
            this$0.m46239i(event.getPenArgs());
        }
        PenBoxPopup penBoxPopup3 = this$0.penBoxPopup;
        if (penBoxPopup3 != null) {
            penBoxPopup3.reloadPenList(event.getAddPen());
        }
    }

    /* renamed from: h */
    public static final void m46236h(PenBoxEventHandler this$0, StylusClickPenBoxEvent event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        PenBoxPopup penBoxPopup = this$0.penBoxPopup;
        if (penBoxPopup == null) {
            this$0.m46239i(event.getPenArgs());
        } else if (penBoxPopup != null) {
            penBoxPopup.applyPenArgs(event.getPenArgs());
        }
    }

    /* renamed from: d */
    public final EditorBundle m46237d() {
        return this.scribbleFragment.editorBundle$note_overseasRelease();
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

    /* renamed from: e */
    public final void m46238e() {
        PenBoxPopup penBoxPopup = this.penBoxPopup;
        if (penBoxPopup != null) {
            penBoxPopup.hide();
        }
        this.penBoxPopup = null;
    }

    /* renamed from: i */
    public final void m46239i(final PenArgs penArgs) {
        FragmentKt.requireActivitySafety$default(this.scribbleFragment, null, new Function1<Activity, Unit>() { // from class: com.onyx.galaxy.note.editor.handler.PenBoxEventHandler$showPenBoxPop$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Activity activity) {
                invoke2(activity);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Activity it2) {
                EditorBundle m46237d;
                NoteScribbleFragment noteScribbleFragment;
                NoteScribbleFragment noteScribbleFragment2;
                NoteScribbleFragment noteScribbleFragment3;
                PenBoxPopup penBoxPopup;
                Intrinsics.checkNotNullParameter(it2, "it");
                PenBoxEventHandler penBoxEventHandler = PenBoxEventHandler.this;
                m46237d = PenBoxEventHandler.this.m46237d();
                noteScribbleFragment = PenBoxEventHandler.this.scribbleFragment;
                int[] editorContainerLocation$note_overseasRelease = noteScribbleFragment.getEditorContainerLocation$note_overseasRelease();
                noteScribbleFragment2 = PenBoxEventHandler.this.scribbleFragment;
                Rect editorContainerRect$note_overseasRelease = noteScribbleFragment2.getEditorContainerRect$note_overseasRelease();
                noteScribbleFragment3 = PenBoxEventHandler.this.scribbleFragment;
                penBoxEventHandler.penBoxPopup = new PenBoxPopup(m46237d, editorContainerLocation$note_overseasRelease, editorContainerRect$note_overseasRelease, noteScribbleFragment3.getRootLocation$note_overseasRelease());
                penBoxPopup = PenBoxEventHandler.this.penBoxPopup;
                if (penBoxPopup != null) {
                    penBoxPopup.show(it2, penArgs);
                }
            }
        }, 1, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void init() {
        EventHandler.DefaultImpls.init(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDeleteAllPenBoxEvent(@NotNull DeleteAllPenBoxEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.penBoxPopup = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditorContainerLayoutChangedEvent(@NotNull EditorContainerLayoutChangedEvent event) {
        final PenBoxPopup penBoxPopup;
        Intrinsics.checkNotNullParameter(event, "event");
        int[] rootLocation$note_overseasRelease = this.scribbleFragment.getRootLocation$note_overseasRelease();
        PenBoxPopup penBoxPopup2 = this.penBoxPopup;
        if (Arrays.equals(penBoxPopup2 != null ? penBoxPopup2.getRootLocation() : null, rootLocation$note_overseasRelease) || (penBoxPopup = this.penBoxPopup) == null || penBoxPopup.getState() == 2) {
            return;
        }
        penBoxPopup.setState(2);
        this.scribbleFragment.getBinding$note_overseasRelease().getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.y0l
            @Override // java.lang.Runnable
            public final void run() {
                PenBoxEventHandler.m46234f(PenBoxEventHandler.this, penBoxPopup);
            }
        }, 300L);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHidePenBoxEvent(@NotNull HidePenBoxEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PenBoxPopup penBoxPopup = this.penBoxPopup;
        if (penBoxPopup != null) {
            penBoxPopup.hide();
        }
        this.penBoxPopup = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onReactivePenBoxEvent(@NotNull ReactivePenBoxEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getForceHide()) {
            m46238e();
        }
        PenBoxPopup penBoxPopup = this.penBoxPopup;
        if (penBoxPopup == null || penBoxPopup.hasSelectedPen()) {
            RxBaseAction.execute$default(new ActivatePenBoxViewAction(m46237d(), false, 2, null), null, null, null, 7, null);
        } else if (event.getResetPen()) {
            this.scribbleFragment.getPenViewModel$note_overseasRelease().getPenType().setValue(this.scribbleFragment.getPenViewModel$note_overseasRelease().getPenType().getValue());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onResetPenBoxPositionEvent(@NotNull ResetPenBoxPositionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PenBoxPopup penBoxPopup = this.penBoxPopup;
        if (penBoxPopup != null) {
            penBoxPopup.resetPosition(this.scribbleFragment.getEditorContainerLocation$note_overseasRelease(), this.scribbleFragment.getEditorContainerRect$note_overseasRelease(), this.scribbleFragment.getRootLocation$note_overseasRelease());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowPenBoxEvent(@NotNull final ShowPenBoxEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (TouchModeFeatureManager.INSTANCE.isCurTouchModeSupportEdit()) {
            this.scribbleFragment.getBinding$note_overseasRelease().getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.w0l
                @Override // java.lang.Runnable
                public final void run() {
                    PenBoxEventHandler.m46235g(PenBoxEventHandler.this, event);
                }
            });
            return;
        }
        PenBoxPopup penBoxPopup = this.penBoxPopup;
        if (penBoxPopup != null) {
            penBoxPopup.dismissAllPopup();
        }
        m46238e();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowPlayerViewEvent(@NotNull ShowPlayerViewEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        onResetPenBoxPositionEvent(new ResetPenBoxPositionEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStylusClickPenBoxEvent(@NotNull final StylusClickPenBoxEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.scribbleFragment.getBinding$note_overseasRelease().getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.x0l
            @Override // java.lang.Runnable
            public final void run() {
                PenBoxEventHandler.m46236h(PenBoxEventHandler.this, event);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVisiblePenBoxByFullScreenEvent(@NotNull VisiblePenBoxByFullScreenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PenBoxPopup penBoxPopup = this.penBoxPopup;
        if (penBoxPopup != null) {
            penBoxPopup.setVisible(event.getVisible());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVisiblePenBoxEvent(@NotNull VisiblePenBoxEvent event) {
        PenBoxPopup penBoxPopup;
        Intrinsics.checkNotNullParameter(event, "event");
        PenBoxPopup penBoxPopup2 = this.penBoxPopup;
        boolean z = false;
        if (penBoxPopup2 != null && penBoxPopup2.isPenBoxAlignedWithSidebar(event.getSlideBarType())) {
            z = true;
        }
        if (!z || (penBoxPopup = this.penBoxPopup) == null) {
            return;
        }
        penBoxPopup.setVisible(event.getVisible());
    }
}
