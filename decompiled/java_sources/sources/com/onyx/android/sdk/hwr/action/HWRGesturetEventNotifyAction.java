package com.onyx.android.sdk.hwr.action;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.event.HWRGestureEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u0015\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRGesturetEventNotifyAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", C6998g.f39679a, "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "setEventBusHolder", "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V", "eventBusHolder", "Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;", C6999h.f39688c, "Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;", "getEvent", "()Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;", "setEvent", "(Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;)V", NotificationCompat.CATEGORY_EVENT, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRGesturetEventNotifyAction extends HWRBaseAction<HWROutput> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public EventBusHolder eventBusHolder;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public HWRGestureEvent event;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRGesturetEventNotifyAction$a */
    /* loaded from: classes7.dex */
    public static final class C7415a<T, R> implements Function {
        public C7415a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWROutput apply(@NotNull HWRBaseAction<HWROutput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRGesturetEventNotifyAction.this.m33313n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRGesturetEventNotifyAction(@NotNull EventBusHolder eventBusHolder, @NotNull HWRGestureEvent event) {
        super(HWRBundle.INSTANCE.getEmpty());
        Intrinsics.checkNotNullParameter(eventBusHolder, "eventBusHolder");
        Intrinsics.checkNotNullParameter(event, "event");
        this.eventBusHolder = eventBusHolder;
        this.event = event;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWROutput> create() {
        Observable map = createObservable().map(new C7415a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final HWRGestureEvent getEvent() {
        return this.event;
    }

    @NotNull
    public final EventBusHolder getEventBusHolder() {
        return this.eventBusHolder;
    }

    /* renamed from: n */
    public final HWROutput m33313n() {
        this.eventBusHolder.safelyPostEvent(this.event);
        return getOutput();
    }

    public final void setEvent(@NotNull HWRGestureEvent hWRGestureEvent) {
        Intrinsics.checkNotNullParameter(hWRGestureEvent, "<set-?>");
        this.event = hWRGestureEvent;
    }

    public final void setEventBusHolder(@NotNull EventBusHolder eventBusHolder) {
        Intrinsics.checkNotNullParameter(eventBusHolder, "<set-?>");
        this.eventBusHolder = eventBusHolder;
    }
}
