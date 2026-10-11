package com.onyx.galaxy.note.settings.data;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001J\u000e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001R\u001b\u0010\r\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/SettingsBundle;", "", NotificationCompat.CATEGORY_EVENT, "", "postEvent", "subscriber", "ensureRegister", "ensureUnRegister", "Lorg/greenrobot/eventbus/EventBus;", "a", "Lkotlin/Lazy;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "eventBus", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsBundle {

    @NotNull
    public static final SettingsBundle INSTANCE = new SettingsBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy eventBus;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<EventBus>() { // from class: com.onyx.galaxy.note.settings.data.SettingsBundle$eventBus$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EventBus invoke() {
                return new EventBus();
            }
        });
        eventBus = lazy;
    }

    public final void ensureRegister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureRegister(getEventBus(), subscriber);
    }

    public final void ensureUnRegister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureUnRegister(getEventBus(), subscriber);
    }

    @NotNull
    public final EventBus getEventBus() {
        return (EventBus) eventBus.getValue();
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEventBus().post(event);
    }
}
