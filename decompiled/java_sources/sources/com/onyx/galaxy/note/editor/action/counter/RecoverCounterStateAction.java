package com.onyx.galaxy.note.editor.action.counter;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.onyx.galaxy.note.editor.data.CounterWindowLocationModel;
import com.onyx.galaxy.note.editor.event.ShowCounterEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.settings.data.CounterPreference;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "list", GoogleApiAvailabilityLight.f29016b, "m", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "e", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "counterBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RecoverCounterStateAction extends RxBaseAction<RecoverCounterStateAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CounterBundle counterBundle;

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.RecoverCounterStateAction$a */
    /* loaded from: classes9.dex */
    public static final class C11874a<T, R> implements Function {
        public C11874a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RecoverCounterStateAction> apply(@NotNull RecoverCounterStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RecoverCounterStateAction.this.m45746l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.RecoverCounterStateAction$b */
    /* loaded from: classes9.dex */
    public static final class C11875b<T> implements Consumer {
        public C11875b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CounterEntry it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RecoverCounterStateAction.this.counterBundle.postEvent(new ShowCounterEvent(it2, true, ((CounterWindowLocationModel) CounterPreference.getCounterWindowLocationOption$default(CounterPreference.INSTANCE, null, 1, null).get()).getIsExpand()));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.RecoverCounterStateAction$c */
    /* loaded from: classes9.dex */
    public static final class C11876c<T, R> implements Function {
        public C11876c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RecoverCounterStateAction apply(@NotNull CounterEntry it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RecoverCounterStateAction.this;
        }
    }

    public RecoverCounterStateAction(@NotNull CounterBundle counterBundle) {
        Intrinsics.checkNotNullParameter(counterBundle, "counterBundle");
        this.counterBundle = counterBundle;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RecoverCounterStateAction> create() {
        Observable<RecoverCounterStateAction> flatMap = Observable.just(this).flatMap(new C11874a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<RecoverCounterStateAction> m45746l() {
        return this.counterBundle.hasCounterRunning() ? m45748n(this.counterBundle.getRunningCounterList()) : m45747m();
    }

    /* renamed from: m */
    public final Observable<RecoverCounterStateAction> m45747m() {
        Observable<RecoverCounterStateAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: n */
    public final Observable<RecoverCounterStateAction> m45748n(List<CounterEntry> list) {
        if (list.isEmpty()) {
            Observable<RecoverCounterStateAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable doOnNext = Observable.fromIterable(list).doOnNext(new C11875b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<RecoverCounterStateAction> map = RxjavaKt.takeLastOne(doOnNext).map(new C11876c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
