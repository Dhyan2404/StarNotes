package com.onyx.galaxy.note.editor.p046ui;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.action.counter.StopCounterAction;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u001f\u0010 J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0001J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0001J\u000e\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0001J\u0006\u0010\u0013\u001a\u00020\fJ\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0014H\u0007R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00060\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "", "", "notifyIfRunning", "hasCounterRunning", "", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "getRunningCounterList", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "taskModel", "startCounter", "counterEntry", "", "stopCounter", NotificationCompat.CATEGORY_EVENT, "postEvent", "subscribe", "register", "unRegister", "destroy", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", "onLoginAccountChangedEvent", "", "", "a", "Ljava/util/Map;", "counterList", "Lorg/greenrobot/eventbus/EventBus;", "b", "Lorg/greenrobot/eventbus/EventBus;", "eventBus", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCounterBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CounterBundle.kt\ncom/onyx/galaxy/note/editor/ui/CounterBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,100:1\n766#2:101\n857#2,2:102\n215#3,2:104\n*S KotlinDebug\n*F\n+ 1 CounterBundle.kt\ncom/onyx/galaxy/note/editor/ui/CounterBundle\n*L\n47#1:101\n47#1:102,2\n81#1:104,2\n*E\n"})
/* loaded from: classes9.dex */
public final class CounterBundle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final CounterBundle f58974c = new CounterBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<String, CounterEntry> counterList = new LinkedHashMap();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final EventBus eventBus = new EventBus();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;", "", "()V", "defaultBundle", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "getDefaultBundle", "()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CounterBundle getDefaultBundle() {
            return CounterBundle.f58974c;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.CounterBundle$a */
    /* loaded from: classes9.dex */
    public static final class C12141a<T, R> implements Function {
        public C12141a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StopCounterAction> apply(@NotNull CounterEntry it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StopCounterAction(CounterBundle.this, it2, true, false, 8, null).build();
        }
    }

    public CounterBundle() {
        AccountDataBundle.INSTANCE.getEventBusHolder().register(this);
    }

    public final void destroy() {
        AccountDataBundle.INSTANCE.getEventBusHolder().unRegister(this);
        Iterator<Map.Entry<String, CounterEntry>> it2 = this.counterList.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().stop();
        }
        this.counterList.clear();
    }

    @NotNull
    public final List<CounterEntry> getRunningCounterList() {
        Collection<CounterEntry> values = this.counterList.values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : values) {
            if (((CounterEntry) obj).isRunning()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final boolean hasCounterRunning() {
        return CollectionKt.contains(this.counterList.values(), new Function1<CounterEntry, Boolean>() { // from class: com.onyx.galaxy.note.editor.ui.CounterBundle$hasCounterRunning$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull CounterEntry it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.isRunning());
            }
        });
    }

    public final boolean notifyIfRunning() {
        if (!(!this.counterList.isEmpty()) || !hasCounterRunning()) {
            return false;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.counter_task_not_finish_tip, false, 2, (Object) null);
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLoginAccountChangedEvent(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!this.counterList.isEmpty()) {
            Observable flatMap = Observable.fromIterable(this.counterList.values()).flatMap(new C12141a());
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            RxjavaKt.subscribeWithDefault$default(flatMap, null, null, null, 7, null);
        }
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.eventBus.post(event);
    }

    public final void register(@NotNull Object subscribe) {
        Intrinsics.checkNotNullParameter(subscribe, "subscribe");
        EventBusHolderKt.ensureRegister(this.eventBus, subscribe);
    }

    @NotNull
    public final CounterEntry startCounter(@NotNull CounterTaskModel taskModel) {
        Intrinsics.checkNotNullParameter(taskModel, "taskModel");
        CounterEntry counterEntry = this.counterList.get(taskModel.getUniqueId());
        if (counterEntry != null) {
            counterEntry.stop();
            counterEntry.clear();
        }
        CounterEntry counterEntry2 = new CounterEntry(taskModel);
        counterEntry2.getTimerHandler().setCounterBundle(this);
        this.counterList.put(taskModel.getUniqueId(), counterEntry2);
        return counterEntry2;
    }

    public final void stopCounter(@NotNull CounterEntry counterEntry) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterList.remove(counterEntry.getTaskModel().getUniqueId());
        counterEntry.stop();
    }

    public final void unRegister(@NotNull Object subscribe) {
        Intrinsics.checkNotNullParameter(subscribe, "subscribe");
        this.eventBus.unregister(subscribe);
    }
}
