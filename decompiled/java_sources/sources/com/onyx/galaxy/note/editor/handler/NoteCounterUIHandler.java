package com.onyx.galaxy.note.editor.handler;

import android.graphics.Point;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandler;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.onyx.galaxy.note.editor.data.CounterWindowLocationModel;
import com.onyx.galaxy.note.editor.event.CounterDoneEvent;
import com.onyx.galaxy.note.editor.event.CounterSegmentDoneEvent;
import com.onyx.galaxy.note.editor.event.ShowCounterEvent;
import com.onyx.galaxy.note.editor.event.ShowCounterTipsEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.view.window.CountTipsWindow;
import com.onyx.galaxy.note.editor.view.window.CounterWindow;
import com.onyx.galaxy.note.settings.data.CounterPreference;
import com.onyx.galaxy.note.utils.CounterUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010!\u001a\u00020\u001e¢\u0006\u0004\b+\u0010,J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\fH\u0007J(\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001e\u0010*\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "", "init", "destroy", "Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;", NotificationCompat.CATEGORY_EVENT, "onShowCounterEvent", "Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;", "onShowCounterTipsEvent", "Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;", "onCounterSegmentDoneEvent", "Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;", "onCounterDoneEvent", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "counterBundle", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "", "isShow", "isExpand", "c", "", "type", "b", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;", "a", "e", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "fragment", "Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;", C6998g.f39679a, "Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;", "counterWindow", "Ljava/lang/ref/WeakReference;", "Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;", C6999h.f39688c, "Ljava/lang/ref/WeakReference;", "counterTipsWindow", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteCounterUIHandler implements EventHandler {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CounterBundle counterBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment fragment;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public CounterWindow counterWindow;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public WeakReference<CountTipsWindow> counterTipsWindow;

    public NoteCounterUIHandler(@NotNull CounterBundle counterBundle, @NotNull NoteScribbleFragment fragment) {
        Intrinsics.checkNotNullParameter(counterBundle, "counterBundle");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.counterBundle = counterBundle;
        this.fragment = fragment;
        init();
    }

    /* renamed from: a */
    public final JSONObjectOption<CounterWindowLocationModel> m46210a() {
        return CounterPreference.getCounterWindowLocationOption$default(CounterPreference.INSTANCE, null, 1, null);
    }

    /* renamed from: b */
    public final void m46211b(CounterEntry counterEntry, int type) {
        CountTipsWindow countTipsWindow;
        FragmentActivity activity = this.fragment.getActivity();
        if (activity == null) {
            return;
        }
        WeakReference<CountTipsWindow> weakReference = this.counterTipsWindow;
        if (weakReference != null && (countTipsWindow = weakReference.get()) != null) {
            countTipsWindow.dismiss();
        }
        CountTipsWindow countTipsWindow2 = new CountTipsWindow(this.counterBundle, activity, this.fragment.getEditorContainerRect$note_overseasRelease());
        this.counterTipsWindow = new WeakReference<>(countTipsWindow2);
        if (type == 0) {
            countTipsWindow2.showCountDownEnd(counterEntry.getTaskModel());
        } else {
            if (type != 1) {
                return;
            }
            countTipsWindow2.showCountDownEndOne(CounterUtils.INSTANCE.getFormatedSegmentName(counterEntry.getTaskModel().getCountList(), counterEntry.getEntryState().getCountTimes()));
        }
    }

    /* renamed from: c */
    public final void m46212c(CounterBundle counterBundle, CounterEntry counterEntry, boolean isShow, boolean isExpand) {
        FragmentActivity activity = this.fragment.getActivity();
        if (activity == null) {
            return;
        }
        CounterWindow counterWindow = this.counterWindow;
        if (counterWindow != null) {
            counterWindow.dismiss();
        }
        CounterWindow counterWindow2 = new CounterWindow(counterBundle, counterEntry);
        if (isShow && counterWindow2.isShowing()) {
            return;
        }
        if (isShow) {
            CounterWindowLocationModel counterWindowLocationModel = m46210a().get();
            counterWindow2.show(activity, new Point(counterWindowLocationModel.getX(), counterWindowLocationModel.getY()), this.fragment.getEditorContainerRect$note_overseasRelease(), isExpand);
        } else {
            counterWindow2.dismiss();
        }
        this.counterWindow = counterWindow2;
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        CountTipsWindow countTipsWindow;
        CounterWindow counterWindow;
        CounterWindow counterWindow2 = this.counterWindow;
        boolean z = false;
        if (counterWindow2 != null && counterWindow2.isShowing()) {
            z = true;
        }
        if (z && (counterWindow = this.counterWindow) != null) {
            counterWindow.dismiss();
        }
        WeakReference<CountTipsWindow> weakReference = this.counterTipsWindow;
        if (weakReference != null && (countTipsWindow = weakReference.get()) != null) {
            countTipsWindow.dismiss();
        }
        this.counterWindow = null;
        this.counterTipsWindow = null;
        GlobalBundle.INSTANCE.unregister(this);
        this.counterBundle.unRegister(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void init() {
        GlobalBundle.INSTANCE.register(this);
        this.counterBundle.register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCounterDoneEvent(@NotNull CounterDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getIsManualStop() || event.getCounterEntry().isCountUp()) {
            return;
        }
        m46211b(event.getCounterEntry(), 0);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCounterSegmentDoneEvent(@NotNull CounterSegmentDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46211b(event.getCounterEntry(), 1);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowCounterEvent(@NotNull ShowCounterEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46212c(this.counterBundle, event.getCounterEntry(), event.getShow(), event.getIsExpand());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onShowCounterTipsEvent(@NotNull ShowCounterTipsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46211b(event.getCounterEntry(), event.getType());
    }
}
