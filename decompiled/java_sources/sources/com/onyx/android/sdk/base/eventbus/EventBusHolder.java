package com.onyx.android.sdk.base.eventbus;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.sun.org.apache.bcel.internal.Constants;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0014\u001a\u00020\r¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0006\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0007\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001J\u001e\u0010\u000b\u001a\u00020\u00032\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f2\u0006\u0010\u0002\u001a\u00020\u0001J\u0012\u0010\u000f\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010\u0010\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002R\u0014\u0010\u0014\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0013R4\u0010\u0019\u001a\"\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00160\u0015j\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0016`\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "", NotificationCompat.CATEGORY_EVENT, "", "post", "subscriber", "register", "unRegister", "", "tag", "dumpEventBus", "safelyPostEvent", "Ljava/lang/ref/Reference;", "Lorg/greenrobot/eventbus/EventBus;", Name.REFER, "a", "c", "", "b", "Lorg/greenrobot/eventbus/EventBus;", "eventBus", "Ljava/util/ArrayList;", "Ljava/lang/ref/WeakReference;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "subscriberList", Constants.CONSTRUCTOR_NAME, "(Lorg/greenrobot/eventbus/EventBus;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEventBusHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventBusHolder.kt\ncom/onyx/android/sdk/base/eventbus/EventBusHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1855#2,2:102\n766#2:104\n857#2,2:105\n*S KotlinDebug\n*F\n+ 1 EventBusHolder.kt\ncom/onyx/android/sdk/base/eventbus/EventBusHolder\n*L\n39#1:102,2\n80#1:104\n80#1:105,2\n*E\n"})
/* loaded from: classes7.dex */
public final class EventBusHolder {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EventBus eventBus;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<WeakReference<Object>> subscriberList;

    /* JADX WARN: Multi-variable type inference failed */
    public EventBusHolder() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* renamed from: a */
    public final void m31899a(Object subscriber) {
        if (this.eventBus.isRegistered(subscriber)) {
            this.subscriberList.add(new WeakReference<>(subscriber));
        }
    }

    /* renamed from: b */
    public final int m31900b() {
        ArrayList<WeakReference<Object>> arrayList = this.subscriberList;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((WeakReference) obj).get() != null) {
                arrayList2.add(obj);
            }
        }
        return arrayList2.size();
    }

    /* renamed from: c */
    public final void m31901c(Object subscriber) {
        if (this.eventBus.isRegistered(subscriber)) {
            return;
        }
        Iterator<WeakReference<Object>> it2 = this.subscriberList.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        while (it2.hasNext()) {
            WeakReference<Object> next = it2.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            WeakReference<Object> weakReference = next;
            Object obj = weakReference.get();
            boolean z = false;
            if (obj != null && obj.equals(subscriber)) {
                z = true;
            }
            if (z) {
                this.subscriberList.remove(weakReference);
                return;
            }
        }
    }

    public final void dumpEventBus(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (m31900b() <= 0) {
            Log.e(tag, "EventBus all unregister.");
            return;
        }
        Log.e(tag, "EventBus unregister class counting: " + this.subscriberList.size());
        Iterator<T> it2 = this.subscriberList.iterator();
        while (it2.hasNext()) {
            WeakReference weakReference = (WeakReference) it2.next();
            StringBuilder sb = new StringBuilder();
            sb.append("EventBus unregister class: ");
            Object obj = weakReference.get();
            sb.append(obj != null ? obj.getClass().getSimpleName() : null);
            Log.e(tag, sb.toString());
        }
    }

    public final void post(@Nullable Object event) {
        this.eventBus.post(event);
    }

    public final void register(@Nullable Object subscriber) {
        if (this.eventBus.isRegistered(subscriber)) {
            return;
        }
        this.eventBus.register(subscriber);
        m31899a(subscriber);
    }

    public final void safelyPostEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EventBusHolderKt.safelyPostEvent(this.eventBus, event);
    }

    public final void unRegister(@Nullable Object subscriber) {
        if (this.eventBus.isRegistered(subscriber)) {
            this.eventBus.unregister(subscriber);
            m31901c(subscriber);
        }
    }

    public EventBusHolder(@NotNull EventBus eventBus) {
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        this.eventBus = eventBus;
        this.subscriberList = new ArrayList<>();
    }

    public final void safelyPostEvent(@NotNull Reference<EventBus> reference, @NotNull Object event) {
        Intrinsics.checkNotNullParameter(reference, "reference");
        Intrinsics.checkNotNullParameter(event, "event");
        EventBus eventBus = reference.get();
        if (eventBus != null) {
            EventBusHolderKt.safelyPostEvent(eventBus, event);
        }
    }

    public /* synthetic */ EventBusHolder(EventBus eventBus, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new EventBus() : eventBus);
    }
}
