package com.onyx.galaxy.note.editor.handler;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler;
import com.onyx.android.sdk.universal.editor.events.app.DismissLongPressPopupEvent;
import com.onyx.android.sdk.universal.editor.events.app.ShowLongPressPastePopupEvent;
import com.onyx.android.sdk.universal.editor.events.app.ShowLongPressPopupEvent;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.editor.action.ShowLongPressPopupAction;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.view.popup.LongPressPastePopup;
import com.onyx.galaxy.note.editor.view.popup.LongPressPopup;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bH\u0007R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/events/app/ShowLongPressPastePopupEvent;", NotificationCompat.CATEGORY_EVENT, "", "onShowLongPressPastePopupEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ShowLongPressPopupEvent;", "onShowLongPressPopupEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/DismissLongPressPopupEvent;", "onDismissLongPressCanceledEvent", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;", "longPressPopup", "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPastePopup;", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPastePopup;", "longPastePopup", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LongPressEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public LongPressPopup longPressPopup;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public LongPressPastePopup longPastePopup;

    /* renamed from: com.onyx.galaxy.note.editor.handler.LongPressEventHandler$a */
    /* loaded from: classes9.dex */
    public static final class C12051a<T> implements Consumer {
        public C12051a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShowLongPressPopupAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LongPressEventHandler.this.longPressPopup = it2.getLongPressPopup();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressEventHandler(@NotNull EditorBundle editorBundle, @NotNull NoteScribbleFragment scribbleFragment) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDismissLongPressCanceledEvent(@NotNull DismissLongPressPopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        LongPressPastePopup longPressPastePopup = this.longPastePopup;
        if (longPressPastePopup != null) {
            longPressPastePopup.dismiss();
        }
        LongPressPopup longPressPopup = this.longPressPopup;
        if (longPressPopup != null) {
            longPressPopup.dismiss();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowLongPressPastePopupEvent(@NotNull ShowLongPressPastePopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Context requireContext = this.scribbleFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        LongPressPastePopup longPressPastePopup = new LongPressPastePopup(requireContext, getEditorBundle(), event.getTouchPoint());
        this.longPastePopup = longPressPastePopup;
        longPressPastePopup.show(this.scribbleFragment.getEditorBundleManager().focusEditorView(), this.scribbleFragment.getEditorViewOffsetLocation());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowLongPressPopupEvent(@NotNull ShowLongPressPopupEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (NoteConfigManager.INSTANCE.getLongPressOfPageMenuOption().get() || GlobalBundle.INSTANCE.hasPasteData()) {
            FragmentActivity requireActivity = this.scribbleFragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            Observable<ShowLongPressPopupAction> doOnNext = new ShowLongPressPopupAction(requireActivity, this.scribbleFragment.getEditorBundleManager(), event.getTouchPoint(), this.scribbleFragment.getEditorViewOffsetLocation(), (int) this.scribbleFragment.getSelectionMenuDisplayRect$note_overseasRelease().width()).build().doOnNext(new C12051a());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
            StatisticsExtKt.reportNoteEvent$default(getEditorBundle(), OnyxStatisticConstant.ID_NOTE_PAGE_LONG_PRESS_MENU, null, 2, null);
        }
    }
}
