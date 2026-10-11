package com.onyx.android.sdk.base.eventbus;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\b"}, m61528d2 = {"ensureRegister", "", "Lorg/greenrobot/eventbus/EventBus;", "subscriber", "", "ensureUnRegister", "safelyPostEvent", NotificationCompat.CATEGORY_EVENT, "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class EventBusHolderKt {
    public static final void ensureRegister(@NotNull EventBus eventBus, @NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(eventBus, "<this>");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        if (eventBus.isRegistered(subscriber)) {
            return;
        }
        eventBus.register(subscriber);
    }

    public static final void ensureUnRegister(@NotNull EventBus eventBus, @NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(eventBus, "<this>");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        if (eventBus.isRegistered(subscriber)) {
            eventBus.unregister(subscriber);
        }
    }

    public static final void safelyPostEvent(@NotNull EventBus eventBus, @NotNull Object event) {
        Intrinsics.checkNotNullParameter(eventBus, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        eventBus.post(event);
    }
}
