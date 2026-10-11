package com.onyx.galaxy.note.editor.handler;

import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandler;
import com.onyx.galaxy.note.common.audio.ResourceRingPlayer;
import com.onyx.galaxy.note.editor.event.CounterDoneEvent;
import com.onyx.galaxy.note.editor.event.CounterSegmentDoneEvent;
import com.onyx.galaxy.note.editor.event.DismissCounterTipsEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.settings.data.CounterPreference;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\nH\u0007J\b\u0010\f\u001a\u00020\u0002H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/handler/CounterAlarmHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;", "", "init", "destroy", "Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;", NotificationCompat.CATEGORY_EVENT, "onCounterSegmentDoneEvent", "Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;", "onCounterDoneEvent", "Lcom/onyx/galaxy/note/editor/event/DismissCounterTipsEvent;", "onDismissCounterTipsEvent", "b", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "e", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "counterBundle", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "fragment", "Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;", C6998g.f39679a, "Lkotlin/Lazy;", "a", "()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;", "audioPlayer", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterAlarmHandler implements EventHandler {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CounterBundle counterBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment fragment;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy audioPlayer;

    public CounterAlarmHandler(@NotNull CounterBundle counterBundle, @NotNull NoteScribbleFragment fragment) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(counterBundle, "counterBundle");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.counterBundle = counterBundle;
        this.fragment = fragment;
        init();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ResourceRingPlayer>() { // from class: com.onyx.galaxy.note.editor.handler.CounterAlarmHandler$audioPlayer$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ResourceRingPlayer invoke() {
                NoteScribbleFragment noteScribbleFragment;
                noteScribbleFragment = CounterAlarmHandler.this.fragment;
                FragmentActivity requireActivity = noteScribbleFragment.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return new ResourceRingPlayer(requireActivity, CounterPreference.INSTANCE.getAlarmRes(), false, 4, null);
            }
        });
        this.audioPlayer = lazy;
    }

    /* renamed from: a */
    public final ResourceRingPlayer m46013a() {
        return (ResourceRingPlayer) this.audioPlayer.getValue();
    }

    /* renamed from: b */
    public final void m46014b() {
        m46013a().setVolume(CounterPreference.getAlarmVolumeOption$default(CounterPreference.INSTANCE, null, 1, null).get());
        m46013a().play();
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        EventHandler.DefaultImpls.destroy(this);
        GlobalBundle.INSTANCE.unregister(this);
        this.counterBundle.unRegister(this);
        m46013a().release();
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void init() {
        EventHandler.DefaultImpls.init(this);
        GlobalBundle.INSTANCE.register(this);
        this.counterBundle.register(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCounterDoneEvent(@NotNull CounterDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getCounterEntry().isCountUp() || event.getIsManualStop()) {
            return;
        }
        boolean isMultipleCountDown = event.getCounterEntry().isMultipleCountDown();
        CounterPreference counterPreference = CounterPreference.INSTANCE;
        if ((!CounterPreference.getAlarmNormalCountDownOption$default(counterPreference, null, 1, null).get() || isMultipleCountDown) && !(CounterPreference.getAlarmMultipleCountDownOption$default(counterPreference, null, 1, null).get() && isMultipleCountDown)) {
            return;
        }
        m46014b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onCounterSegmentDoneEvent(@NotNull CounterSegmentDoneEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!event.getCounterEntry().isCountUp() && CounterPreference.getAlarmMultipleCountDownOption$default(CounterPreference.INSTANCE, null, 1, null).get()) {
            m46014b();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onDismissCounterTipsEvent(@NotNull DismissCounterTipsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m46013a().stop();
    }
}
