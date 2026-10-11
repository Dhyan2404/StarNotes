package com.onyx.galaxy.note.editor.action.counter;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.onyx.galaxy.note.editor.event.DismissCounterSettingEvent;
import com.onyx.galaxy.note.editor.event.ShowCounterEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "e", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "counterBundle", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "taskModel", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StartCounterAction extends RxBaseAction<StartCounterAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CounterBundle counterBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CounterTaskModel taskModel;

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StartCounterAction$a */
    /* loaded from: classes9.dex */
    public static final class C11883a<T> implements Consumer {

        /* renamed from: e */
        public static final C11883a<T> f58266e = new C11883a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StartCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new DismissCounterSettingEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StartCounterAction$b */
    /* loaded from: classes9.dex */
    public static final class C11884b<T, R> implements Function {
        public C11884b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CounterEntry apply(@NotNull StartCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartCounterAction.this.counterBundle.startCounter(StartCounterAction.this.taskModel);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StartCounterAction$c */
    /* loaded from: classes9.dex */
    public static final class C11885c<T> implements Consumer {
        public C11885c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CounterEntry it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartCounterAction.this.counterBundle.postEvent(new ShowCounterEvent(it2, true, true));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StartCounterAction$d */
    /* loaded from: classes9.dex */
    public static final class C11886d<T, R> implements Function {

        /* renamed from: e */
        public static final C11886d<T, R> f58269e = new C11886d<>();

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveCounterRecordAction> apply(@NotNull CounterEntry it2) {
            List listOfNotNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(it2.getEntryRecord());
            return new SaveCounterRecordAction(listOfNotNull, null, 2, 0 == true ? 1 : 0).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StartCounterAction$e */
    /* loaded from: classes9.dex */
    public static final class C11887e<T, R> implements Function {
        public C11887e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartCounterAction apply(@NotNull SaveCounterRecordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartCounterAction.this;
        }
    }

    public StartCounterAction(@NotNull CounterBundle counterBundle, @NotNull CounterTaskModel taskModel) {
        Intrinsics.checkNotNullParameter(counterBundle, "counterBundle");
        Intrinsics.checkNotNullParameter(taskModel, "taskModel");
        this.counterBundle = counterBundle;
        this.taskModel = taskModel;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartCounterAction> create() {
        Observable<StartCounterAction> map = Observable.just(this).doOnNext(C11883a.f58266e).map(new C11884b()).doOnNext(new C11885c()).flatMap(C11886d.f58269e).map(new C11887e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
